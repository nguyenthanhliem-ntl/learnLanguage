<script setup>
import { onMounted, ref } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { studyApi } from '@/api/study'
import { getErrorMessage } from '@/api/errors'
import { usePracticeStore } from '@/stores/practice'
import { useStudyLanguage } from '@/composables/useStudyLanguage'
import { NEW_WORD_WITHIN, REPEAT_GAP } from '@/utils/spacing'
import AlertBox from '@/components/ui/AlertBox.vue'
import AppIcon from '@/components/ui/AppIcon.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import EmptyState from '@/components/ui/EmptyState.vue'
import ReviewSession from './ReviewSession.vue'
import LearnSession from './LearnSession.vue'
import t from '@/locales/vi'

/*
 * Practice is one continuous flow, the user does not have to choose:
 *     Review learned words  ->  (>= 70% correct) Learn new words up to today's goal  ->  Review learned words again (repeating)
 * - Every login must pass the first review round (>= 70% on first answers) before new words.
 *   Exception: choosing a level / topic card (?start=learn) goes straight to new words of that bank.
 * - Review only covers words of the level / topic being studied (the backend filters by the current level).
 *     Not passed: the next round uses other learned words; with fewer than 10 others, the words just answered wrong are reviewed again.
 * - New words learned today are saved in the backend after each Next, so leaving and coming back continues with the next word.
 * - No new words left today (or in the bank): go back to reviewing learned words; after a full cycle, start a new one.
 * - 20 correct in a row (first answers, continuous review only) or 10 skips in a row (including the first review
 *     round) stops the round, teaches 1 extra word, then review continues. An unpassed first review still requires 70% afterwards.
 */
const PASS_RATE = 0.7
const MIN_NEXT_ROUND = 10
const BONUS_STREAK = 20
const BONUS_SKIPS = 10
const EXTRA_WORDS = 10 // "Learn more" after today's goal is reached

const practice = usePracticeStore()
const route = useRoute()
const router = useRouter()
// Language of the section (English pages or the Korean menu): all API calls and links follow it
const lang = useStudyLanguage()

// loading | error | review | learn | empty
const mode = ref('loading')
const loadError = ref('')
const questions = ref([])
const roundNo = ref(0)
let reviewedIds = new Set() // words reviewed in the current cycle
let retryAction = null

async function fetchQuestions(params) {
  const res = await studyApi.getReview({ ...params, lang: lang.code })
  return res.questions
}

/** Runs a loading task; on error, shows a Retry button that runs the same task again. */
async function run(action) {
  mode.value = 'loading'
  loadError.value = ''
  try {
    await action()
  } catch (e) {
    loadError.value = getErrorMessage(e)
    retryAction = action
    mode.value = 'error'
  }
}

// Bonus word just learned: the next review round must include it within the first 10 questions
const priorityIds = ref([])
// 'gate' = first review of the session, 'review' = continuous review
const roundKind = ref('review')

function startRound(qs, priority = []) {
  questions.value = qs
  priorityIds.value = priority
  roundKind.value = practice.isPassed(lang.code) ? 'review' : 'gate'
  roundNo.value++
  mode.value = 'review'
}

// Omitted: learn up to today's goal. 1: bonus word after 20 correct answers in a row.
const learnLimit = ref(null)
const learnKey = ref(0) // every visit to learning creates a new LearnSession
const bonusReason = ref(null) // 'streak' | 'skip' while learning a bonus word
// Why the last learning step ended: 'goalReached' | 'allLearned' | 'emptyBank' (shown in the empty state)
const lastLearnReason = ref(null)
function goLearn(limit = null, reason = null) {
  learnLimit.value = limit
  bonusReason.value = reason
  learnKey.value++
  mode.value = 'learn'
}

// Streak of correct answers in the continuous review (after the session's first review has been passed)
// Streak of skipped questions: answering any question (correct or wrong) resets it
const correctStreak = ref(0)
const skipStreak = ref(0)
const bonusPending = ref(null) // null | 'streak' | 'skip'
function onAnswered({ correct }) {
  skipStreak.value = 0
  // The 20-correct streak only counts in the continuous review (not the session's first review)
  if (roundKind.value !== 'review') return
  correctStreak.value = correct ? correctStreak.value + 1 : 0
  if (correctStreak.value >= BONUS_STREAK) bonusPending.value = 'streak'
}
// 10 skips in a row: also counts in the session's first review
function onSkipped() {
  skipStreak.value++
  if (skipStreak.value >= BONUS_SKIPS) bonusPending.value = 'skip'
}

/** Keep reviewing learned words; once every word in the cycle has been reviewed, start a new cycle (from the beginning). */
async function continueReview(priority = []) {
  let qs = await fetchQuestions({ exclude: [...reviewedIds] })
  if (qs.length === 0 && reviewedIds.size > 0) {
    reviewedIds = new Set()
    qs = await fetchQuestions()
  }
  // Bonus word not in the round (not due yet): fetch a question for that word alone
  const missing = priority.filter((id) => !qs.some((q) => q.word.id === id))
  if (missing.length) qs = [...qs, ...await fetchQuestions({ ids: missing })]
  // Round too short (old words already reviewed in this cycle): top up with other learned words so the bonus word has 10 questions around it
  if (priority.length && qs.length < NEW_WORD_WITHIN) {
    const extra = (await fetchQuestions()).filter((q) => !qs.some((x) => x.word.id === q.word.id))
    qs = [...qs, ...extra]
  }
  if (qs.length === 0) {
    mode.value = 'empty' // no learned words and no new words left
    return
  }
  startRound(qs, priority)
}

/** First review not passed: use other learned words, or review the words just answered wrong when the bank is small. */
async function nextGateRound(wrongIds) {
  let qs = await fetchQuestions({ exclude: [...reviewedIds] })
  if (qs.length < MIN_NEXT_ROUND) {
    qs = await fetchQuestions({ ids: wrongIds })
  }
  startRound(qs)
}

async function start() {
  // Opened from a level / topic card: learn new words of that bank first, without the first review
  if (route.query.start === 'learn') {
    router.replace({ query: {} })
    practice.setReviewPassed(true, lang.code)
    goLearn()
    return
  }
  if (practice.isPassed(lang.code)) {
    goLearn()
    return
  }
  const qs = await fetchQuestions()
  if (qs.length === 0) {
    // Nothing learned yet: nothing to review, go straight to new words
    practice.setReviewPassed(true, lang.code)
    goLearn()
    return
  }
  startRound(qs)
}

// The last 5 words asked, so the next round does not repeat a word within 5 questions
const recentIds = ref([])
function onShown(wordId) {
  reviewedIds.add(wordId) // only count words that were actually asked, since a round can stop early for a bonus word
  recentIds.value = [...recentIds.value, wordId].slice(-REPEAT_GAP)
}

function onRoundFinished(results) {
  // Skipped questions do not count as correct/wrong
  const answered = results.filter((r) => !r.skipped)
  const correct = answered.filter((r) => r.correct).length

  // Bonus word: the round stops early to learn 1 new word; an unpassed first review continues afterwards
  if (bonusPending.value) {
    const reason = bonusPending.value
    bonusPending.value = null
    correctStreak.value = 0
    skipStreak.value = 0
    goLearn(1, reason)
    return
  }

  if (!practice.isPassed(lang.code)) {
    // Skipping everything (already known) also counts as passed
    if (answered.length === 0 || correct / answered.length >= PASS_RATE) {
      practice.setReviewPassed(true, lang.code)
      goLearn()
    } else {
      const wrongIds = answered.filter((r) => !r.correct).map((r) => r.word.id)
      run(() => nextGateRound(wrongIds))
    }
    return
  }
  run(continueReview)
}

function onLearnFinished({ learnedIds = [], reason = null } = {}) {
  lastLearnReason.value = reason
  // Bonus word (a single word): it appears within the first 10 questions of the next review round.
  // Daily-goal new words: learn them all in one go, then continue reviewing as usual.
  const priority = bonusReason.value ? learnedIds : []
  // An empty new-word source (e.g. no self-added words yet) still reviews learned words; with nothing to review, continueReview shows the empty bank state
  run(() => continueReview(priority))
}

function retry() {
  if (retryAction) run(retryAction)
}

onMounted(() => run(start))
</script>

<template>
  <div class="mx-auto max-w-2xl space-y-5">
    <!-- Title + current mode -->
    <div class="flex items-center justify-between gap-3">
      <div class="flex min-w-0 flex-wrap items-center gap-3">
        <h1 class="text-2xl font-bold sm:text-3xl">
          {{ t.practice.title }}
        </h1>
        <span
          v-if="mode === 'review' || mode === 'learn'"
          class="inline-flex items-center gap-1.5 rounded-full px-3 py-1 text-sm font-medium"
          :class="mode === 'review' ? 'bg-primary-50 text-primary-600' : 'bg-success/10 text-success'"
        >
          <AppIcon
            :name="mode === 'review' ? 'refresh' : 'book'"
            class="h-4 w-4"
          />
          {{ mode === 'review' ? t.practice.modeReview : t.practice.modeLearn }}
        </span>
      </div>
      <BaseButton
        variant="ghost"
        class="shrink-0 whitespace-nowrap"
        :to="{ name: lang.routes.home }"
      >
        {{ t.practice.stop }}
      </BaseButton>
    </div>

    <!-- Loading -->
    <div
      v-if="mode === 'loading'"
      class="space-y-5"
      aria-busy="true"
      :aria-label="t.common.loading"
    >
      <div class="h-3 w-full animate-pulse rounded-full bg-border" />
      <div class="h-48 animate-pulse rounded-3xl bg-surface shadow-sm" />
      <div class="space-y-3">
        <div
          v-for="i in 4"
          :key="i"
          class="h-14 animate-pulse rounded-2xl bg-surface shadow-sm"
        />
      </div>
    </div>

    <div
      v-else-if="mode === 'error'"
      class="space-y-4"
    >
      <AlertBox :message="loadError" />
      <BaseButton
        variant="outline"
        @click="retry"
      >
        {{ t.common.retry }}
      </BaseButton>
    </div>

    <!-- Review -->
    <template v-else-if="mode === 'review'">
      <ReviewSession
        :key="roundNo"
        :questions="questions"
        :recent-ids="recentIds"
        :priority-ids="priorityIds"
        :stop-after-current="bonusPending !== null"
        @shown="onShown"
        @answered="onAnswered"
        @skipped="onSkipped"
        @finished="onRoundFinished"
      />
    </template>

    <!-- Learn new words -->
    <LearnSession
      v-else-if="mode === 'learn'"
      :key="learnKey"
      :limit="learnLimit"
      :bonus-reason="bonusReason"
      @finished="onLearnFinished"
    />

    <!-- Empty bank -->
    <div
      v-else-if="mode === 'empty'"
      class="rounded-3xl border border-border bg-surface shadow-sm"
    >
      <!-- Today's goal already reached and nothing learned yet in this level / topic: offer extra new words -->
      <EmptyState
        v-if="lastLearnReason === 'goalReached'"
        :title="t.learn.goalReachedTitle"
        :description="t.learn.goalReachedDesc"
      >
        <BaseButton @click="goLearn(EXTRA_WORDS)">
          {{ t.learn.learnExtra(EXTRA_WORDS) }}
        </BaseButton>
        <BaseButton
          variant="outline"
          :to="{ name: lang.routes.home }"
        >
          {{ t.learn.chooseLevel }}
        </BaseButton>
      </EmptyState>
      <EmptyState
        v-else
        :title="t.learn.emptyBankTitle"
        :description="t.learn.emptyBankDesc"
      >
        <BaseButton :to="{ name: lang.routes.home }">
          {{ t.learn.chooseLevel }}
        </BaseButton>
        <BaseButton
          v-if="lang.canAddWords"
          variant="outline"
          :to="{ name: lang.routes.addWord }"
        >
          {{ t.words.emptyAdd }}
        </BaseButton>
        <BaseButton
          v-if="lang.canAddWords"
          variant="outline"
          :to="{ name: lang.routes.addWord, query: { tab: 'excel' } }"
        >
          {{ t.words.emptyImport }}
        </BaseButton>
      </EmptyState>
    </div>
  </div>
</template>
