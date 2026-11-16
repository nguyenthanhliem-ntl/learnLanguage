<script setup>
import { computed, nextTick, onBeforeUnmount, ref } from 'vue'
import { studyApi } from '@/api/study'
import { useKeyboardShortcuts } from '@/composables/useKeyboardShortcuts'
import { useSpeech } from '@/composables/useSpeech'
import { arrangeWithGap, placeWithin, REPEAT_GAP } from '@/utils/spacing'
import AlertBox from '@/components/ui/AlertBox.vue'
import ChoiceQuestion from '@/components/study/ChoiceQuestion.vue'
import TypeQuestion from '@/components/study/TypeQuestion.vue'
import t from '@/locales/vi'

/*
 * One review round: one question at a time, only the first answer of each question counts.
 * The "Continue →" button pinned on the right: before answering it skips (no score, no schedule change;
 * a skipped word is asked again once at least 5 questions later if the round is long enough), after answering it goes to the next question.
 * Correct answer: highlighted green, the word is read aloud, its details are shown, and it moves on after 1.5 seconds.
 * Wrong answer: only highlighted red (the answer is not revealed), waits for Continue / Enter. Choice questions can be picked again;
 * a later correct pick also moves on automatically, but the score still uses the first pick.
 * At the end, emits 'finished' with a list of { word, correct, skipped }.
 * Each first answer emits 'answered' { correct }, each skipped question emits 'skipped'.
 * stopAfterCurrent: end the round right after the current question.
 */
const AUTO_NEXT_DELAY = 1500
const props = defineProps({
  questions: { type: Array, required: true },
  recentIds: { type: Array, default: () => [] }, // words asked in the previous round, to avoid repeats within 5 questions
  stopAfterCurrent: { type: Boolean, default: false },
  priorityIds: { type: Array, default: () => [] }, // bonus word just learned: must be asked within the first 10 questions
})
const emit = defineEmits(['finished', 'shown', 'answered', 'skipped'])

const queue = ref(placeWithin(arrangeWithGap(props.questions, props.recentIds), props.priorityIds))
const requeued = new Set()
const index = ref(0)
const results = ref([])
const feedback = ref(null) // { correct, answer } after answering the current question
const saving = ref(false)
const saveError = ref(false)
const nextRequested = ref(false) // Continue pressed while the result is still being saved
const { speak } = useSpeech()
const autoNext = ref(false) // counting down to move on automatically
let autoTimer = null

function cancelAutoNext() {
  clearTimeout(autoTimer)
  autoNext.value = false
}
onBeforeUnmount(cancelAutoNext)

const current = computed(() => queue.value[index.value])
const isLast = computed(() => index.value === queue.value.length - 1)

emit('shown', current.value.word.id)

async function onAnswered({ correct, answer }) {
  const q = current.value
  const answeredAt = Date.now()
  feedback.value = { correct, answer }
  results.value.push({ word: q.word, correct, skipped: false })
  emit('answered', { correct })
  if (correct) {
    autoNext.value = true
    speak(q.word.word)
  }
  saving.value = true
  saveError.value = false
  try {
    await studyApi.answer(q.word.id, { answer: q.answer, correct })
  } catch {
    saveError.value = true
  } finally {
    saving.value = false
  }
  if (nextRequested.value && current.value === q) {
    advance()
    return
  }
  // 1.5 seconds counted from the answer; if saving fails, stop so the user sees the message
  if (autoNext.value && !saveError.value && current.value === q) {
    autoTimer = setTimeout(next, Math.max(AUTO_NEXT_DELAY - (Date.now() - answeredAt), 0))
  } else {
    autoNext.value = false
  }
}

/** Choice question: wrong at first but a later correct pick (score unchanged) -> read the word, then move on automatically. */
function onSolved() {
  speak(current.value.word.word)
  cancelAutoNext()
  autoNext.value = true
  autoTimer = setTimeout(next, AUTO_NEXT_DELAY)
}

function advance() {
  cancelAutoNext()
  if (isLast.value || props.stopAfterCurrent) {
    emit('finished', results.value)
    return
  }
  feedback.value = null
  saveError.value = false
  nextRequested.value = false
  index.value++
  emit('shown', current.value.word.id)
}

function next() {
  if (!feedback.value) return
  if (saving.value) {
    nextRequested.value = true // go to the next question as soon as saving finishes
    return
  }
  advance()
}

/** "Continue →" button: skips when not answered yet, goes to the next question when answered. */
function onNext() {
  if (feedback.value) next()
  else skip()
}

async function skip() {
  if (feedback.value) return
  const q = current.value
  results.value.push({ word: q.word, correct: false, skipped: true })
  emit('skipped')
  await nextTick() // so stopAfterCurrent (set by 'skipped') is updated before moving on
  // Ask again once at least 5 questions later, if the round is long enough
  let insertAt = index.value + 1 + REPEAT_GAP
  // Do not insert re-asked questions ahead of an unasked new word, so it stays within the first 10 questions
  const pendingNew = queue.value.findLastIndex((x, i) => i > index.value && props.priorityIds.includes(x.word.id))
  if (pendingNew >= 0 && insertAt <= pendingNew) insertAt = pendingNew + 1
  if (!requeued.has(q.word.id) && insertAt <= queue.value.length) {
    requeued.add(q.word.id)
    queue.value.splice(insertAt, 0, { ...q })
  }
  advance()
}

useKeyboardShortcuts({ Enter: next })
</script>

<template>
  <div class="space-y-5">
    <Transition
      mode="out-in"
      enter-active-class="transition duration-200"
      enter-from-class="translate-x-4 opacity-0"
      leave-active-class="transition duration-150"
      leave-to-class="-translate-x-4 opacity-0"
    >
      <ChoiceQuestion
        v-if="current.answer === 'CHOICE'"
        :key="`c-${index}`"
        :question="current"
        @answered="onAnswered"
        @solved="onSolved"
        @next="onNext"
      />
      <TypeQuestion
        v-else
        :key="`t-${index}`"
        :question="current"
        @answered="onAnswered"
        @next="onNext"
      />
    </Transition>

    <AlertBox
      v-if="saveError"
      :message="t.review.saveFailed"
    />
  </div>
</template>
