<script setup>
import { onMounted } from 'vue'
import { useSpeech } from '@/composables/useSpeech'
import AppIcon from '@/components/ui/AppIcon.vue'
import SpeakButton from '@/components/ui/SpeakButton.vue'
import t from '@/locales/vi'

// 3D flip card: the front only shows the English word; the rotate icon flips it to show part of speech, phonetic and meaning.
// Render a new instance for each new word (change :key) so the card always starts on the front.
const props = defineProps({
  word: { type: Object, required: true },
  autoSpeak: { type: Boolean, default: true },
})
const flipped = defineModel('flipped', { type: Boolean, default: false })

const { speak } = useSpeech()

onMounted(() => {
  if (props.autoSpeak) speak(props.word.word)
})
</script>

<template>
  <div class="perspective-1000 w-full">
    <div
      class="preserve-3d relative h-80 w-full transition-transform duration-500 sm:h-96"
      :class="flipped ? 'rotate-y-180' : ''"
    >
      <!-- Front: English word only -->
      <div
        class="backface-hidden absolute inset-0 flex flex-col items-center justify-center rounded-3xl border border-border bg-surface p-6 text-center shadow-xl shadow-primary-600/10"
        :aria-hidden="flipped"
      >
        <SpeakButton
          :text="word.word"
          class="absolute right-5 top-5"
        />
        <p class="break-words text-4xl font-bold text-ink-900 sm:text-5xl">
          {{ word.word }}
        </p>
        <button
          type="button"
          class="absolute bottom-6 flex h-14 w-14 items-center justify-center rounded-full bg-primary-600 text-white shadow-lg shadow-primary-600/30 transition hover:rotate-180 hover:bg-primary-700 focus-visible:outline-none focus-visible:ring-4 focus-visible:ring-primary-600/40"
          :title="t.learn.flip"
          :aria-label="t.learn.flip"
          :tabindex="flipped ? -1 : 0"
          @click="flipped = true"
        >
          <AppIcon
            name="refresh"
            class="h-7 w-7 transition-transform duration-500"
          />
        </button>
      </div>

      <!-- Back: part of speech, phonetic + speaker button, meaning -->
      <div
        class="backface-hidden rotate-y-180 absolute inset-0 flex flex-col items-center justify-center rounded-3xl bg-gradient-to-br from-hero-start to-hero-end px-6 pb-20 pt-6 text-center text-white shadow-xl shadow-primary-600/10"
        :aria-hidden="!flipped"
      >
        <p class="break-words text-3xl font-bold">
          {{ word.word }}
        </p>
        <div class="mt-2 flex flex-wrap items-center justify-center gap-x-3 gap-y-1 text-white/80">
          <span
            v-if="word.partOfSpeech"
            class="rounded-md bg-white/15 px-2 py-0.5 text-sm italic"
          >{{ word.partOfSpeech }}</span>
          <span
            v-if="word.phonetic"
            class="font-mono text-lg"
          >{{ word.phonetic }}</span>
          <SpeakButton
            :text="word.word"
            size="sm"
            variant="hero"
            :tabindex="flipped ? 0 : -1"
          />
        </div>
        <div class="my-5 h-px w-16 bg-white/30" />
        <p class="text-xs font-medium uppercase tracking-wider text-white/80">
          {{ t.learn.meaning }}
        </p>
        <p class="mt-2 break-words text-2xl font-semibold sm:text-3xl">
          {{ word.meaning }}
        </p>
        <button
          type="button"
          class="absolute bottom-6 flex h-12 w-12 items-center justify-center rounded-full bg-white/15 text-white transition hover:bg-white/25 focus-visible:outline-none focus-visible:ring-4 focus-visible:ring-white/40"
          :title="t.learn.flip"
          :aria-label="t.learn.flip"
          :tabindex="flipped ? 0 : -1"
          @click="flipped = false"
        >
          <AppIcon
            name="refresh"
            class="h-6 w-6"
          />
        </button>
      </div>
    </div>
    <p
      v-if="!flipped"
      class="mt-3 text-center text-xs text-ink-400"
    >
      {{ t.learn.flipHint }}
    </p>
    <!-- Avoid layout shift when the hint is hidden -->
    <p
      v-else
      class="mt-3 text-center text-xs text-transparent"
      aria-hidden="true"
    >
      .
    </p>
  </div>
</template>
