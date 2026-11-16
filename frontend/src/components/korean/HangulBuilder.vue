<script setup>
import { computed, ref } from 'vue'
import { FINALS, INITIALS, VOWELS, compose, romanize } from '@/utils/hangul'
import SpeakButton from '@/components/ui/SpeakButton.vue'
import t from '@/locales/vi'

// Build a syllable from initial + vowel (+ batchim) and listen to it.
const th = t.korean.hangul

// Finals offered in the picker: the common single ones (index in FINALS)
const FINAL_CHOICES = ['', 'ㄱ', 'ㄴ', 'ㄷ', 'ㄹ', 'ㅁ', 'ㅂ', 'ㅅ', 'ㅇ', 'ㅈ', 'ㅊ', 'ㅋ', 'ㅌ', 'ㅍ', 'ㅎ', 'ㄲ', 'ㅆ']

const initial = ref(INITIALS.indexOf('ㅎ'))
const vowel = ref(VOWELS.indexOf('ㅏ'))
const final = ref('ㄴ')

const syllable = computed(() => compose(initial.value, vowel.value, FINALS.indexOf(final.value)))
const roman = computed(() => romanize(syllable.value))

const chip = (active) =>
  active
    ? 'border-primary-600 bg-primary-50 text-primary-600'
    : 'border-border bg-surface text-ink-900 hover:border-primary-300'
</script>

<template>
  <div class="space-y-5">
    <div class="flex items-center gap-4 rounded-2xl bg-canvas p-5">
      <span
        class="text-6xl font-bold text-primary-600"
        lang="ko"
        aria-live="polite"
      >{{ syllable }}</span>
      <div>
        <p class="text-lg font-semibold text-ink-900">
          {{ roman }}
        </p>
        <p class="text-sm text-ink-500">
          {{ INITIALS[initial] }} + {{ VOWELS[vowel] }}<template v-if="final">
            + {{ final }}
          </template>
        </p>
      </div>
      <SpeakButton
        class="ml-auto"
        :text="syllable"
        size="lg"
      />
    </div>

    <fieldset>
      <legend class="text-sm font-semibold text-ink-500">
        {{ th.initial }}
      </legend>
      <div class="mt-2 flex flex-wrap gap-2">
        <button
          v-for="(j, i) in INITIALS"
          :key="j"
          type="button"
          lang="ko"
          class="h-10 w-10 rounded-xl border-2 text-lg font-semibold transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
          :class="chip(initial === i)"
          :aria-pressed="initial === i"
          @click="initial = i"
        >
          {{ j }}
        </button>
      </div>
    </fieldset>

    <fieldset>
      <legend class="text-sm font-semibold text-ink-500">
        {{ th.vowel }}
      </legend>
      <div class="mt-2 flex flex-wrap gap-2">
        <button
          v-for="(j, i) in VOWELS"
          :key="j"
          type="button"
          lang="ko"
          class="h-10 w-10 rounded-xl border-2 text-lg font-semibold transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
          :class="chip(vowel === i)"
          :aria-pressed="vowel === i"
          @click="vowel = i"
        >
          {{ j }}
        </button>
      </div>
    </fieldset>

    <fieldset>
      <legend class="text-sm font-semibold text-ink-500">
        {{ th.final }}
      </legend>
      <div class="mt-2 flex flex-wrap gap-2">
        <button
          v-for="j in FINAL_CHOICES"
          :key="j || 'none'"
          type="button"
          lang="ko"
          class="h-10 min-w-[2.5rem] rounded-xl border-2 px-2 text-lg font-semibold transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
          :class="chip(final === j)"
          :aria-pressed="final === j"
          @click="final = j"
        >
          <span
            v-if="!j"
            class="text-sm"
          >{{ th.none }}</span>
          <template v-else>
            {{ j }}
          </template>
        </button>
      </div>
    </fieldset>
  </div>
</template>
