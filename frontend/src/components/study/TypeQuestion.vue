<script setup>
import { computed, nextTick, onMounted, ref } from 'vue'
import AppIcon from '@/components/ui/AppIcon.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import AnswerFeedback from './AnswerFeedback.vue'
import NextButton from './NextButton.vue'
import QuestionPrompt from './QuestionPrompt.vue'
import { normalizeAnswer } from '@/utils/answer'
import t from '@/locales/vi'

// Type the English word from the hint (listen, meaning or phonetic). Case-insensitive, extra spaces ignored.
// The button row keeps its layout: Hint · Check · Continue →.
// Check: correct or wrong, the full word details are shown below; a wrong answer keeps what was typed,
// an empty answer fills in the correct word.
const props = defineProps({
  question: { type: Object, required: true }, // { word, prompt }
})
const emit = defineEmits(['answered', 'next'])

const answer = ref('')
const showHint = ref(false)
const result = ref(null) // null = not answered yet, true / false
const typed = ref('') // what the user typed, shown as "Your answer" when wrong
const input = ref(null)

const target = computed(() => props.question.word.word)

const normalize = normalizeAnswer

// Checking with an empty input = the word is unknown, counted as wrong
function check() {
  if (result.value !== null) return
  typed.value = answer.value.trim()
  result.value = typed.value !== '' && normalize(typed.value) === normalize(target.value)
  // Empty: fill in the correct word. Wrong: keep what was typed, the answer only appears in AnswerFeedback below
  // (AnswerFeedback pronounces the word when it appears)
  if (!result.value && typed.value === '') answer.value = target.value
  emit('answered', { correct: result.value, answer: typed.value })
}

onMounted(async () => {
  await nextTick()
  input.value?.focus()
})
</script>

<template>
  <form
    class="space-y-5"
    novalidate
    @submit.prevent="check"
  >
    <QuestionPrompt :question="question" />

    <input
      ref="input"
      v-model="answer"
      type="text"
      :placeholder="t.review.answerPlaceholder"
      :aria-label="t.review.answerPlaceholder"
      :aria-invalid="result === false"
      :disabled="result !== null"
      autocomplete="off"
      autocapitalize="off"
      spellcheck="false"
      class="w-full rounded-2xl border-2 bg-surface px-4 py-4 text-center text-2xl font-semibold placeholder:text-base placeholder:font-normal placeholder:text-ink-400 transition focus:border-primary-600 focus:outline-none focus:ring-2 focus:ring-primary-600/40"
      :class="{
        'border-border text-ink-900': result === null,
        'border-success bg-success/10 text-success': result === true,
        'border-danger bg-danger/10 text-ink-900': result === false,
      }"
    >

    <p
      v-if="showHint && result === null"
      class="text-center text-sm font-medium text-primary-600"
    >
      {{ t.review.hintText(target.charAt(0), target.length) }}
    </p>

    <!-- Fixed button row: Hint + Check/Result on the left, Continue on the right -->
    <div class="flex flex-wrap items-center gap-2 sm:gap-3">
      <BaseButton
        variant="outline"
        :disabled="showHint || result !== null"
        @click="showHint = true; input?.focus()"
      >
        <AppIcon
          name="lightbulb"
          class="h-5 w-5"
        />
        {{ t.review.hint }}
      </BaseButton>
      <BaseButton
        type="submit"
        :disabled="result !== null"
      >
        {{ t.review.check }}
      </BaseButton>
      <NextButton
        :answered="result !== null"
        @next="emit('next')"
      />
    </div>

    <!-- Answered: show the full word details (when correct, ReviewSession already pronounced it) -->
    <AnswerFeedback
      v-if="result !== null"
      :word="question.word"
      :correct="result"
      :user-answer="result ? '' : typed"
      :auto-speak="!result"
    />
  </form>
</template>
