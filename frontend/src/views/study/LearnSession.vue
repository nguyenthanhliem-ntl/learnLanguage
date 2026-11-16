<script setup>
import { computed, onMounted, ref } from 'vue'
import { studyApi } from '@/api/study'
import { levelLabel, useStudyLanguage } from '@/composables/useStudyLanguage'
import { getErrorMessage } from '@/api/errors'
import { useKeyboardShortcuts } from '@/composables/useKeyboardShortcuts'
import AlertBox from '@/components/ui/AlertBox.vue'
import AppIcon from '@/components/ui/AppIcon.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import Flashcard from '@/components/study/Flashcard.vue'
import t from '@/locales/vi'

/*
 * Learning new words in Practice: fetches what is left of today's goal (the backend subtracts today's learned words,
 * so leaving and coming back continues with the next word). Each Next saves that word to the review schedule right away.
 * When there are no words left, emits 'finished' so PracticeView switches to review.
 *   finished: { reason: 'goalReached' | 'allLearned' | 'emptyBank', learned, learnedIds, learnedToday, dailyGoal }
 */
const props = defineProps({
  limit: { type: Number, default: null }, // 1 = bonus word
  bonusReason: { type: String, default: null }, // 'streak' (20 correct in a row) | 'skip' (10 skips in a row)
})
const emit = defineEmits(['finished'])
const lang = useStudyLanguage()

const phase = ref('loading') // loading | error | learning
const info = ref(null)
const loadError = ref('')

const words = ref([])
const index = ref(0)
const flipped = ref(false)
const busy = ref(false)
const actionError = ref('')
const learnedCount = ref(0)
const learnedIds = [] // ids of the words Next was pressed on in this batch

const current = computed(() => words.value[index.value])
const isLast = computed(() => index.value === words.value.length - 1)
const learnedToday = computed(() => (info.value?.learnedToday ?? 0) + learnedCount.value)
const dailyGoal = computed(() => info.value?.dailyGoal ?? 0)
const progress = computed(() => (dailyGoal.value ? Math.min(learnedToday.value / dailyGoal.value, 1) * 100 : 0))

function finish(reason) {
  emit('finished', {
    reason,
    learned: learnedCount.value,
    learnedIds: [...learnedIds],
    learnedToday: learnedToday.value,
    dailyGoal: dailyGoal.value,
  })
}

async function load() {
  phase.value = 'loading'
  loadError.value = ''
  try {
    const res = await studyApi.getNew(props.limit, lang.code)
    info.value = res
    if (res.words.length) {
      words.value = res.words
      index.value = 0
      flipped.value = false
      phase.value = 'learning'
    } else if (res.totalWords === 0) {
      finish('emptyBank')
    } else if (res.notLearnedCount === 0) {
      finish('allLearned')
    } else {
      finish('goalReached')
    }
  } catch (e) {
    loadError.value = getErrorMessage(e)
    phase.value = 'error'
  }
}

async function next() {
  if (phase.value !== 'learning' || busy.value || !current.value) return
  busy.value = true
  actionError.value = ''
  try {
    await studyApi.remember(current.value.id)
    learnedIds.push(current.value.id)
    learnedCount.value++
    if (isLast.value) {
      // End of batch: today's goal reached or the bank has no new words left
      const remaining = (info.value?.notLearnedCount ?? 0) - learnedCount.value
      finish(remaining > 0 ? 'goalReached' : 'allLearned')
    } else {
      flipped.value = false
      index.value++
    }
  } catch (e) {
    actionError.value = getErrorMessage(e)
  } finally {
    busy.value = false
  }
}

function flip() {
  if (phase.value === 'learning') flipped.value = !flipped.value
}

useKeyboardShortcuts({
  ' ': flip,
  Enter: next,
  ArrowRight: next,
})

onMounted(load)
</script>

<template>
  <!-- Loading -->
  <div
    v-if="phase === 'loading'"
    class="space-y-6"
    aria-busy="true"
    :aria-label="t.common.loading"
  >
    <div class="h-3 w-full animate-pulse rounded-full bg-border" />
    <div class="h-80 animate-pulse rounded-3xl bg-surface shadow-sm sm:h-96" />
    <div class="h-12 animate-pulse rounded-full bg-border" />
  </div>

  <div
    v-else-if="phase === 'error'"
    class="space-y-4"
  >
    <AlertBox :message="loadError" />
    <BaseButton
      variant="outline"
      @click="load"
    >
      {{ t.common.retry }}
    </BaseButton>
  </div>

  <!-- Learning -->
  <div
    v-else-if="phase === 'learning' && current"
    class="space-y-6"
  >
    <div>
      <div class="mb-2 flex items-center justify-between text-sm">
        <span class="font-medium">
          {{ t.learn.todayProgress }}
          <span
            v-if="info?.studyLevel"
            class="ml-1 rounded-full bg-primary-50 px-2 py-0.5 text-xs text-primary-600"
          >{{ levelLabel(info.studyLevel) }}</span>
        </span>
        <span class="font-semibold text-primary-600">{{ learnedToday }}/{{ dailyGoal }}</span>
      </div>
      <div
        class="h-3 overflow-hidden rounded-full bg-primary-50"
        role="progressbar"
        :aria-valuenow="learnedToday"
        aria-valuemin="0"
        :aria-valuemax="dailyGoal"
      >
        <div
          class="h-full rounded-full bg-primary-600 transition-[width] duration-500"
          :style="{ width: `${progress}%` }"
        />
      </div>
    </div>

    <p
      v-if="limit"
      class="rounded-2xl bg-success/10 px-4 py-3 text-center text-sm font-medium text-success"
    >
      {{ bonusReason === 'skip' ? t.learn.bonusSkip : t.learn.bonus }}
    </p>

    <Transition
      mode="out-in"
      enter-active-class="transition duration-200"
      enter-from-class="translate-x-4 opacity-0"
      leave-active-class="transition duration-150"
      leave-to-class="-translate-x-4 opacity-0"
    >
      <Flashcard
        :key="current.id"
        v-model:flipped="flipped"
        :word="current"
      />
    </Transition>

    <AlertBox
      v-if="actionError"
      :message="actionError"
    />

    <div>
      <BaseButton
        size="lg"
        block
        :loading="busy"
        @click="next"
      >
        {{ t.learn.next }}
        <AppIcon
          v-if="!busy"
          name="arrowRight"
          class="h-5 w-5"
        />
      </BaseButton>
    </div>

    <p class="hidden text-center text-xs text-ink-400 md:block">
      {{ t.learn.shortcuts }}
    </p>
  </div>
</template>
