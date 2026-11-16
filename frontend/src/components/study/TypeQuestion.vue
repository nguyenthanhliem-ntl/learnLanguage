<script setup>
import { computed, nextTick, onMounted, ref } from 'vue'
import AppIcon from '@/components/ui/AppIcon.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import AnswerFeedback from './AnswerFeedback.vue'
import NextButton from './NextButton.vue'
import QuestionPrompt from './QuestionPrompt.vue'
import { normalizeAnswer } from '@/utils/answer'
import t from '@/locales/vi'

// Gõ từ tiếng Anh theo gợi ý (nghe, nghĩa hoặc phiên âm). Không phân biệt hoa/thường, bỏ khoảng trắng thừa.
// Hàng nút giữ nguyên bố cục: Gợi ý · Kiểm tra · Tiếp tục →.
// Bấm Kiểm tra: đúng hay sai đều hiện đầy đủ thông tin từ bên dưới; gõ sai thì giữ nguyên chữ đã gõ,
// để trống thì điền luôn từ đúng vào ô nhập.
const props = defineProps({
  question: { type: Object, required: true }, // { word, prompt }
})
const emit = defineEmits(['answered', 'next'])

const answer = ref('')
const showHint = ref(false)
const result = ref(null) // null = chưa trả lời, true / false
const typed = ref('') // câu người dùng đã gõ, để hiện "Bạn trả lời" khi sai
const input = ref(null)

const target = computed(() => props.question.word.word)

const normalize = normalizeAnswer

// Bấm Kiểm tra khi ô còn trống = chưa biết từ này, tính là trả lời sai
function check() {
  if (result.value !== null) return
  typed.value = answer.value.trim()
  result.value = typed.value !== '' && normalize(typed.value) === normalize(target.value)
  // Để trống: điền từ đúng vào ô nhập. Gõ sai: giữ nguyên chữ đã gõ, đáp án chỉ hiện ở AnswerFeedback bên dưới
  // (AnswerFeedback tự phát âm khi hiện ra)
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

    <!-- Hàng nút cố định: trái là Gợi ý + Kiểm tra/Kết quả, phải là Tiếp tục -->
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

    <!-- Đã trả lời: hiện đầy đủ thông tin của từ (đúng thì ReviewSession đã tự phát âm) -->
    <AnswerFeedback
      v-if="result !== null"
      :word="question.word"
      :correct="result"
      :user-answer="result ? '' : typed"
      :auto-speak="!result"
    />
  </form>
</template>
