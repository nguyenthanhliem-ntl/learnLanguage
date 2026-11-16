<script setup>
import { onMounted } from 'vue'
import { useSpeech } from '@/composables/useSpeech'
import AppIcon from '@/components/ui/AppIcon.vue'
import PartOfSpeech from '@/components/ui/PartOfSpeech.vue'
import SpeakButton from '@/components/ui/SpeakButton.vue'
import t from '@/locales/vi'

// Hint part of a review question: LISTEN (pronunciation), MEANING (meaning + part of speech) or PHONETIC (part of speech + phonetic + speaker, meaning below)
const props = defineProps({
  question: { type: Object, required: true }, // { word, prompt, answer }
})

const { supported, speaking, speak, speakTap } = useSpeech()
const LISTEN_RATE = 0.85
const listen = () => speakTap(props.question.word.word, { rate: LISTEN_RATE }) // speaker press: every second press is slower

onMounted(() => {
  // Plays automatically when a listening question appears (not counted as a press)
  if (props.question.prompt === 'LISTEN') speak(props.question.word.word, { rate: LISTEN_RATE })
})

defineExpose({ listen })
</script>

<template>
  <div class="rounded-3xl border border-border bg-surface p-6 text-center shadow-sm sm:p-8">
    <p class="text-sm text-ink-500">
      {{ t.review.instructions[question.prompt][question.answer] }}
    </p>

    <!-- Listen to the pronunciation -->
    <template v-if="question.prompt === 'LISTEN'">
      <button
        type="button"
        class="mx-auto mt-5 flex h-24 w-24 items-center justify-center rounded-full bg-primary-600 text-white shadow-lg shadow-primary-600/30 transition hover:bg-primary-700 focus-visible:outline-none focus-visible:ring-4 focus-visible:ring-primary-600/40 disabled:opacity-50"
        :class="speaking ? 'scale-105' : ''"
        :disabled="!supported"
        :title="supported ? t.review.listenAgain : t.speech.unsupported"
        :aria-label="t.review.listenAgain"
        @click="listen"
      >
        <AppIcon
          name="speaker"
          class="h-12 w-12"
          :class="speaking ? 'animate-pulse' : ''"
        />
      </button>
      <p
        v-if="!supported"
        class="mt-3 text-sm text-danger"
      >
        {{ t.speech.unsupported }}
      </p>
    </template>

    <!-- Meaning + part of speech -->
    <template v-else-if="question.prompt === 'MEANING'">
      <PartOfSpeech
        :value="question.word.partOfSpeech"
        class="mt-4"
      />
      <p class="mt-2 break-words text-2xl font-bold sm:text-3xl">
        {{ question.word.meaning }}
      </p>
    </template>

    <!-- Part of speech + phonetic + speaker, meaning below -->
    <template v-else>
      <div class="mt-4 flex flex-wrap items-center justify-center gap-x-3 gap-y-2">
        <span
          v-if="question.word.partOfSpeech"
          class="text-lg italic text-ink-500"
        >({{ question.word.partOfSpeech }})</span>
        <span class="break-words font-mono text-3xl font-semibold sm:text-4xl">{{ question.word.phonetic }}</span>
        <SpeakButton :text="question.word.word" />
      </div>
      <p class="mt-3 break-words text-lg text-ink-500">
        {{ question.word.meaning }}
      </p>
    </template>
  </div>
</template>
