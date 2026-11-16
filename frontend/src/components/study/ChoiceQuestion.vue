<script setup>
import { computed, ref } from 'vue'
import { useKeyboardShortcuts } from '@/composables/useKeyboardShortcuts'
import AnswerFeedback from './AnswerFeedback.vue'
import NextButton from './NextButton.vue'
import QuestionPrompt from './QuestionPrompt.vue'

// Pick 1 of 4 English words from the hint (meaning or phonetic).
// Wrong pick: that option turns red, the others can still be picked (the answer is not revealed). Correct pick: green + word details below.
// Only the first pick is scored ('answered'); a later correct pick emits 'solved' to move on automatically.
const props = defineProps({
  question: { type: Object, required: true }, // { word, prompt, options: [{ id, word }] }
})
const emit = defineEmits(['answered', 'solved', 'next'])

const wrongIds = ref(new Set())
const solved = ref(false)
const answered = computed(() => solved.value || wrongIds.value.size > 0)

function choose(option) {
  if (solved.value || wrongIds.value.has(option.id)) return
  const correct = option.id === props.question.word.id
  const first = !answered.value
  if (correct) solved.value = true
  else wrongIds.value = new Set([...wrongIds.value, option.id])
  if (first) emit('answered', { correct, answer: option.word })
  else if (correct) emit('solved')
}

function isDisabled(option) {
  return solved.value || wrongIds.value.has(option.id)
}

function optionClass(option) {
  if (wrongIds.value.has(option.id)) return 'border-danger bg-danger/10 text-danger'
  if (solved.value) {
    return option.id === props.question.word.id
      ? 'border-success bg-success/10 text-success'
      : 'border-border bg-surface opacity-50'
  }
  return 'border-border bg-surface hover:border-primary-300 hover:bg-primary-50/50'
}

// Keys 1–4 pick an answer
useKeyboardShortcuts(Object.fromEntries(
  [0, 1, 2, 3].map((i) => [String(i + 1), () => {
    const option = props.question.options[i]
    if (option) choose(option)
  }]),
))
</script>

<template>
  <div class="space-y-5">
    <QuestionPrompt :question="question" />

    <!-- 4 answers: 2 rows x 2 columns, equal heights -->
    <div class="grid grid-cols-2 gap-3">
      <button
        v-for="(option, i) in question.options"
        :key="option.id"
        type="button"
        class="flex h-full w-full items-center gap-3 rounded-2xl border-2 px-3 py-3.5 text-left font-medium transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40 disabled:cursor-default sm:gap-4 sm:px-4"
        :class="optionClass(option)"
        :disabled="isDisabled(option)"
        @click="choose(option)"
      >
        <span class="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-canvas text-sm font-semibold text-ink-500">
          {{ i + 1 }}
        </span>
        <span class="min-w-0 break-words text-base sm:text-lg">{{ option.word }}</span>
      </button>
    </div>

    <div class="flex">
      <NextButton
        :answered="answered"
        @next="emit('next')"
      />
    </div>

    <!-- Correct pick: show the full word details (ReviewSession already pronounced it) -->
    <AnswerFeedback
      v-if="solved"
      :word="question.word"
      :correct="true"
      :auto-speak="false"
    />
  </div>
</template>
