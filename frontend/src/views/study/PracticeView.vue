<script setup>
import { onMounted, ref } from 'vue'
import { studyApi } from '@/api/study'
import { getErrorMessage } from '@/api/errors'
import { usePracticeStore } from '@/stores/practice'
import { NEW_WORD_WITHIN, REPEAT_GAP } from '@/utils/spacing'
import AlertBox from '@/components/ui/AlertBox.vue'
import AppIcon from '@/components/ui/AppIcon.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import EmptyState from '@/components/ui/EmptyState.vue'
import ReviewSession from './ReviewSession.vue'
import LearnSession from './LearnSession.vue'
import t from '@/locales/vi'

/*
 * Luyện tập là một luồng liền mạch, người dùng không phải chọn:
 *   Ôn từ đã học  ->  (đúng >= 70%) Học từ mới tới hết mục tiêu hôm nay  ->  Ôn lại từ đã học (lặp lại)
 * - Mỗi lần đăng nhập phải qua lượt ôn đầu tiên (>= 70% ở lần chọn đầu) mới tới từ mới.
 *   Chưa đạt: lượt sau gồm các từ đã học khác; còn dưới 10 từ khác thì ôn lại các từ vừa sai.
 * - Số từ mới đã học hôm nay lưu ở backend sau mỗi lần Next, nên thoát ra vào lại sẽ học tiếp từ kế tiếp.
 * - Hết từ mới hôm nay (hoặc kho hết từ mới): quay lại ôn các từ đã học; ôn hết thì bắt đầu vòng mới.
 * - Đúng 20 câu liên tiếp (lần trả lời đầu, chỉ ở phần ôn liên tục) hoặc bỏ qua 10 câu liên tiếp (tính cả lượt
 *   ôn đầu phiên) thì dừng lượt, học thêm 1 từ mới rồi ôn tiếp. Lượt ôn đầu chưa đạt thì vẫn phải đạt 70% sau đó.
 */
const PASS_RATE = 0.7
const MIN_NEXT_ROUND = 10
const BONUS_STREAK = 20
const BONUS_SKIPS = 10

const practice = usePracticeStore()

// loading | error | review | learn | empty
const mode = ref('loading')
const loadError = ref('')
const questions = ref([])
const roundNo = ref(0)
let reviewedIds = new Set() // các từ đã ôn trong vòng hiện tại
let retryAction = null

async function fetchQuestions(params) {
  const res = await studyApi.getReview(params)
  return res.questions
}

/** Chạy một tác vụ tải, lỗi thì hiện nút Thử lại gọi lại đúng tác vụ đó. */
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

// Từ thưởng vừa học: lượt ôn kế tiếp phải có từ này trong 10 câu đầu
const priorityIds = ref([])
// 'gate' = ôn đầu phiên, 'review' = ôn liên tục
const roundKind = ref('review')

function startRound(qs, priority = []) {
  questions.value = qs
  priorityIds.value = priority
  roundKind.value = practice.reviewPassed ? 'review' : 'gate'
  roundNo.value++
  mode.value = 'review'
}

// Không truyền: học tới hết mục tiêu hôm nay. 1: từ thưởng sau 20 câu đúng liên tiếp.
const learnLimit = ref(null)
const learnKey = ref(0) // mỗi lần vào học là một LearnSession mới
const bonusReason = ref(null) // 'streak' | 'skip' khi đang học từ thưởng
function goLearn(limit = null, reason = null) {
  learnLimit.value = limit
  bonusReason.value = reason
  learnKey.value++
  mode.value = 'learn'
}

// Chuỗi câu đúng liên tiếp trong phần ôn liên tục (sau khi đã qua lượt ôn đầu phiên)
// Chuỗi câu bỏ qua liên tiếp: trả lời bất kỳ câu nào (đúng hay sai) thì đếm lại
const correctStreak = ref(0)
const skipStreak = ref(0)
const bonusPending = ref(null) // null | 'streak' | 'skip'
function onAnswered({ correct }) {
  skipStreak.value = 0
  // Chuỗi đúng 20 câu chỉ tính ở phần ôn liên tục (không tính ôn đầu phiên)
  if (roundKind.value !== 'review') return
  correctStreak.value = correct ? correctStreak.value + 1 : 0
  if (correctStreak.value >= BONUS_STREAK) bonusPending.value = 'streak'
}
// Bỏ qua 10 câu liên tiếp: tính cả ở lượt ôn đầu phiên
function onSkipped() {
  skipStreak.value++
  if (skipStreak.value >= BONUS_SKIPS) bonusPending.value = 'skip'
}

/** Ôn tiếp các từ đã học; đã ôn hết trong vòng này thì bắt đầu vòng mới (hiện lại từ đầu). */
async function continueReview(priority = []) {
  let qs = await fetchQuestions({ exclude: [...reviewedIds] })
  if (qs.length === 0 && reviewedIds.size > 0) {
    reviewedIds = new Set()
    qs = await fetchQuestions()
  }
  // Từ thưởng chưa có trong lượt (chưa đến hạn ôn) thì lấy thêm câu hỏi cho riêng từ đó
  const missing = priority.filter((id) => !qs.some((q) => q.word.id === id))
  if (missing.length) qs = [...qs, ...await fetchQuestions({ ids: missing })]
  // Lượt quá ngắn (các từ cũ đều đã ôn trong vòng này): bù bằng từ đã học khác để từ thưởng có 10 câu xung quanh
  if (priority.length && qs.length < NEW_WORD_WITHIN) {
    const extra = (await fetchQuestions()).filter((q) => !qs.some((x) => x.word.id === q.word.id))
    qs = [...qs, ...extra]
  }
  if (qs.length === 0) {
    mode.value = 'empty' // chưa có từ nào đã học và cũng không còn từ mới
    return
  }
  startRound(qs, priority)
}

/** Lượt ôn đầu chưa đạt: lấy từ đã học khác, kho còn ít thì ôn lại từ vừa sai. */
async function nextGateRound(wrongIds) {
  let qs = await fetchQuestions({ exclude: [...reviewedIds] })
  if (qs.length < MIN_NEXT_ROUND) {
    qs = await fetchQuestions({ ids: wrongIds })
  }
  startRound(qs)
}

async function start() {
  if (practice.reviewPassed) {
    goLearn()
    return
  }
  const qs = await fetchQuestions()
  if (qs.length === 0) {
    // Chưa học từ nào: không có gì để ôn, vào thẳng từ mới
    practice.setReviewPassed(true)
    goLearn()
    return
  }
  startRound(qs)
}

// 5 từ hỏi gần nhất, để lượt sau không hỏi lại một từ trong vòng 5 câu
const recentIds = ref([])
function onShown(wordId) {
  reviewedIds.add(wordId) // chỉ tính từ đã thực sự hỏi, lượt có thể dừng giữa chừng để học từ thưởng
  recentIds.value = [...recentIds.value, wordId].slice(-REPEAT_GAP)
}

function onRoundFinished(results) {
  // Câu bỏ qua không tính đúng/sai
  const answered = results.filter((r) => !r.skipped)
  const correct = answered.filter((r) => r.correct).length

  // Từ thưởng: lượt dừng sớm để học 1 từ mới; lượt ôn đầu (nếu chưa đạt) vẫn tiếp tục sau đó
  if (bonusPending.value) {
    const reason = bonusPending.value
    bonusPending.value = null
    correctStreak.value = 0
    skipStreak.value = 0
    goLearn(1, reason)
    return
  }

  if (!practice.reviewPassed) {
    // Bỏ qua hết (đã thuộc) cũng coi như đạt
    if (answered.length === 0 || correct / answered.length >= PASS_RATE) {
      practice.setReviewPassed(true)
      goLearn()
    } else {
      const wrongIds = answered.filter((r) => !r.correct).map((r) => r.word.id)
      run(() => nextGateRound(wrongIds))
    }
    return
  }
  run(continueReview)
}

function onLearnFinished({ learnedIds = [] } = {}) {
  // Từ thưởng (1 từ đơn lẻ): từ đó nằm trong 10 câu đầu của lượt ôn kế tiếp.
  // Lượt từ mới theo mục tiêu ngày: học liền hết rồi ôn liên tục như thường.
  const priority = bonusReason.value ? learnedIds : []
  // Nguồn từ mới trống (vd chưa tự thêm từ nào) vẫn ôn các từ đã học; không có gì để ôn thì continueReview báo kho trống
  run(() => continueReview(priority))
}

function retry() {
  if (retryAction) run(retryAction)
}

onMounted(() => run(start))
</script>

<template>
  <div class="mx-auto max-w-2xl space-y-5">
    <!-- Tiêu đề + chế độ hiện tại -->
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
        :to="{ name: 'dashboard' }"
      >
        {{ t.practice.stop }}
      </BaseButton>
    </div>

    <!-- Đang tải -->
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

    <!-- Ôn tập -->
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

    <!-- Học từ mới -->
    <LearnSession
      v-else-if="mode === 'learn'"
      :key="learnKey"
      :limit="learnLimit"
      :bonus-reason="bonusReason"
      @finished="onLearnFinished"
    />

    <!-- Kho trống -->
    <div
      v-else-if="mode === 'empty'"
      class="rounded-3xl border border-border bg-surface shadow-sm"
    >
      <EmptyState
        :title="t.learn.emptyBankTitle"
        :description="t.learn.emptyBankDesc"
      >
        <BaseButton :to="{ name: 'dashboard' }">
          {{ t.learn.chooseLevel }}
        </BaseButton>
        <BaseButton
          variant="outline"
          :to="{ name: 'addWord' }"
        >
          {{ t.words.emptyAdd }}
        </BaseButton>
        <BaseButton
          variant="outline"
          :to="{ name: 'addWord', query: { tab: 'excel' } }"
        >
          {{ t.words.emptyImport }}
        </BaseButton>
      </EmptyState>
    </div>
  </div>
</template>
