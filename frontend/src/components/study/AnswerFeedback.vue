<script setup>
import { onMounted } from 'vue'
import { useSpeech } from '@/composables/useSpeech'
import AppIcon from '@/components/ui/AppIcon.vue'
import PartOfSpeech from '@/components/ui/PartOfSpeech.vue'
import SpeakButton from '@/components/ui/SpeakButton.vue'
import t from '@/locales/vi'

// Shown after each question: Correct/Wrong, the answer with phonetic and meaning, and the word is pronounced again
const props = defineProps({
  word: { type: Object, required: true },
  correct: { type: Boolean, required: true },
  userAnswer: { type: String, default: '' }, // the user's wrong answer (listen – type)
  autoSpeak: { type: Boolean, default: true }, // disable when the caller already pronounces the word
})

const { speak } = useSpeech()
onMounted(() => {
  if (props.autoSpeak) speak(props.word.word)
})
</script>

<template>
  <div
    class="rounded-2xl border-2 p-5"
    :class="correct ? 'border-success bg-success/10' : 'border-danger bg-danger/10'"
    role="status"
  >
    <p
      class="flex items-center gap-2 font-semibold"
      :class="correct ? 'text-success' : 'text-danger'"
    >
      <AppIcon
        :name="correct ? 'checkCircle' : 'xCircle'"
        class="h-6 w-6"
      />
      {{ correct ? t.review.correct : t.review.wrong }}
    </p>
    <p
      v-if="!correct && userAnswer"
      class="mt-1 text-sm text-ink-500"
    >
      {{ t.review.yourAnswer }} <span class="font-medium text-danger line-through">{{ userAnswer }}</span>
    </p>
    <div class="mt-3 flex items-start gap-3">
      <SpeakButton
        :text="word.word"
        size="sm"
      />
      <div class="min-w-0">
        <p class="flex flex-wrap items-center gap-x-2 gap-y-1">
          <span class="text-lg font-bold">{{ word.word }}</span>
          <PartOfSpeech :value="word.partOfSpeech" />
          <span
            v-if="word.phonetic"
            class="font-mono text-ink-500"
          >{{ word.phonetic }}</span>
        </p>
        <p class="mt-0.5 text-ink-700">
          {{ word.meaning }}
        </p>
      </div>
    </div>
  </div>
</template>
