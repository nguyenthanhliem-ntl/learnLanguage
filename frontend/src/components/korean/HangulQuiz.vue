<script setup>
import { computed, onMounted, ref } from 'vue'
import { FINALS, INITIALS, VOWELS, compose, romanize } from '@/utils/hangul'
import { useSpeech } from '@/composables/useSpeech'
import AppIcon from '@/components/ui/AppIcon.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import t from '@/locales/vi'

// Reading practice, 10 questions per round, built from random simple syllables:
//   read   – see a syllable, pick its romanization
//   listen – hear a syllable, pick the right one
// Only the first pick counts. Nothing is saved.
const ROUND = 10
const th = t.korean.hangul
const { supported, speak } = useSpeech()

const BASIC_INITIALS = ['ㄱ', 'ㄴ', 'ㄷ', 'ㄹ', 'ㅁ', 'ㅂ', 'ㅅ', 'ㅇ', 'ㅈ', 'ㅊ', 'ㅋ', 'ㅌ', 'ㅍ', 'ㅎ', 'ㄲ', 'ㄸ', 'ㅃ', 'ㅆ', 'ㅉ']
const SIMPLE_VOWELS = ['ㅏ', 'ㅑ', 'ㅓ', 'ㅕ', 'ㅗ', 'ㅛ', 'ㅜ', 'ㅠ', 'ㅡ', 'ㅣ', 'ㅐ', 'ㅔ', 'ㅘ', 'ㅝ', 'ㅟ']
const SIMPLE_FINALS = ['', '', '', 'ㄱ', 'ㄴ', 'ㄹ', 'ㅁ', 'ㅂ', 'ㅇ'] // empty more often: open syllables are easier

const pick = (list) => list[Math.floor(Math.random() * list.length)]
const randomSyllable = () =>
  compose(INITIALS.indexOf(pick(BASIC_INITIALS)), VOWELS.indexOf(pick(SIMPLE_VOWELS)), FINALS.indexOf(pick(SIMPLE_FINALS)))

function shuffle(list) {
  const a = [...list]
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1))
    ;[a[i], a[j]] = [a[j], a[i]]
  }
  return a
}

function makeQuestion() {
  const answer = randomSyllable()
  const type = supported && Math.random() < 0.5 ? 'listen' : 'read'
  const label = (s) => (type === 'read' ? romanize(s) : s)
  // 3 distractors whose label differs from the answer and from each other
  const labels = new Set([label(answer)])
  const options = [answer]
  while (options.length < 4) {
    const s = randomSyllable()
    if (!labels.has(label(s))) {
      labels.add(label(s))
      options.push(s)
    }
  }
  return { type, answer, options: shuffle(options).map((s) => ({ syllable: s, label: label(s) })), picked: null }
}

const questions = ref([])
const index = ref(0)
const current = computed(() => questions.value[index.value])
const score = computed(() => questions.value.filter((q) => q.picked === q.answer).length)
const answered = computed(() => questions.value.filter((q) => q.picked !== null).length)
const finished = computed(() => answered.value === ROUND && index.value === ROUND - 1)

function play() {
  if (current.value?.type === 'listen') speak(current.value.answer)
}

function start() {
  questions.value = Array.from({ length: ROUND }, makeQuestion)
  index.value = 0
  play()
}

function choose(option) {
  const q = current.value
  if (q.picked !== null) return
  q.picked = option.syllable
  speak(q.answer)
}

function next() {
  if (index.value < ROUND - 1) {
    index.value++
    play()
  }
}

function optionClass(q, option) {
  if (q.picked === null) return 'border-border bg-surface text-ink-900 hover:border-primary-300'
  if (option.syllable === q.answer) return 'border-success bg-success/10 text-success'
  if (option.syllable === q.picked) return 'border-danger bg-danger/10 text-danger'
  return 'border-border bg-surface text-ink-400'
}

onMounted(start)
</script>

<template>
  <div
    v-if="current"
    class="space-y-5"
  >
    <div class="flex items-center justify-between text-sm text-ink-500">
      <span>{{ index + 1 }}/{{ ROUND }}</span>
      <span aria-live="polite">{{ th.quizScore(score, answered) }}</span>
    </div>
    <div
      class="h-2 overflow-hidden rounded-full bg-border"
      role="progressbar"
      :aria-valuenow="answered"
      aria-valuemin="0"
      :aria-valuemax="ROUND"
    >
      <div
        class="h-full rounded-full bg-primary-600 transition-all"
        :style="{ width: `${(answered / ROUND) * 100}%` }"
      />
    </div>

    <div class="flex flex-col items-center gap-3 rounded-2xl bg-canvas p-6 text-center">
      <p class="text-sm font-medium text-ink-500">
        {{ current.type === 'read' ? th.quizRead : th.quizListen }}
      </p>
      <span
        v-if="current.type === 'read'"
        class="text-6xl font-bold text-primary-600"
        lang="ko"
      >{{ current.answer }}</span>
      <button
        v-else
        type="button"
        class="flex h-20 w-20 items-center justify-center rounded-full bg-primary-600 text-white shadow-lg transition hover:bg-primary-700 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
        :aria-label="th.quizListenAgain"
        @click="play"
      >
        <AppIcon
          name="speaker"
          class="h-9 w-9"
        />
      </button>
    </div>

    <div class="grid grid-cols-2 gap-3">
      <button
        v-for="option in current.options"
        :key="option.syllable"
        type="button"
        class="rounded-2xl border-2 px-4 py-4 text-xl font-semibold transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40 disabled:cursor-default"
        :class="optionClass(current, option)"
        :lang="current.type === 'listen' ? 'ko' : undefined"
        :disabled="current.picked !== null"
        @click="choose(option)"
      >
        {{ option.label }}
      </button>
    </div>

    <div
      v-if="current.picked !== null"
      class="flex flex-wrap items-center justify-between gap-3"
      role="status"
    >
      <p
        class="font-medium"
        :class="current.picked === current.answer ? 'text-success' : 'text-danger'"
      >
        <template v-if="current.picked === current.answer">
          {{ th.correct }}
        </template>
        <template v-else>
          {{ th.wrong }} <strong lang="ko">{{ current.answer }}</strong> ({{ romanize(current.answer) }})
        </template>
      </p>
      <BaseButton
        v-if="!finished"
        @click="next"
      >
        {{ th.quizNext }}
      </BaseButton>
    </div>

    <div
      v-if="finished"
      class="flex flex-wrap items-center justify-between gap-3 rounded-2xl border border-border p-4"
    >
      <p class="font-semibold text-ink-900">
        {{ th.quizDone }} {{ th.quizScore(score, ROUND) }}
      </p>
      <BaseButton
        variant="outline"
        @click="start"
      >
        {{ th.quizRestart }}
      </BaseButton>
    </div>
  </div>
</template>
