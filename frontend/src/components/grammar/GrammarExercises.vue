<script setup>
import { computed, reactive, ref } from 'vue'
import { LEVELS } from '@/data/grammar/tenseExercises'
import { matchesAnswer } from '@/utils/answer'
import AppIcon from '@/components/ui/AppIcon.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import t from '@/locales/vi'

// Exercises for one tense, in 3 levels Easy · Medium · Hard (tabs). Two question types:
//     fill   – type into the "___" blank, then Check / Enter
//     choice – pick one of the options (only the first pick counts, the correct answer is always shown)
// Each level has its own score and Retry button. Graded in the browser only, results are not saved.
const props = defineProps({
  sets: { type: Object, required: true }, // { easy: [...], medium: [...], hard: [...] }
})

const levels = LEVELS.filter((l) => props.sets[l.key]?.length)
const level = ref(levels[0]?.key ?? 'easy')

// Per-question state for each level: { value, picked, result }
const state = reactive(Object.fromEntries(levels.map((l) => [
  l.key,
  props.sets[l.key].map(() => ({ value: '', picked: null, result: null })),
])))

const items = computed(() => props.sets[level.value] ?? [])
const current = computed(() => state[level.value] ?? [])
const currentLevel = computed(() => levels.find((l) => l.key === level.value))

function stats(key) {
  const s = state[key] ?? []
  return { done: s.filter((x) => x.result !== null).length, correct: s.filter((x) => x.result === true).length, total: s.length }
}

function checkFill(i) {
  const s = current.value[i]
  if (s.result !== null) return
  s.result = matchesAnswer(s.value, items.value[i].answers)
}

function pick(i, option) {
  const s = current.value[i]
  if (s.result !== null) return
  s.picked = option
  s.result = option === items.value[i].answer
}

function reset() {
  current.value.forEach((s) => {
    s.value = ''
    s.picked = null
    s.result = null
  })
}

// Split the sentence around the "___" blank so the input / answer sits inside the sentence
const parts = (q) => {
  const i = q.indexOf('___')
  return i < 0 ? [q, ''] : [q.slice(0, i), q.slice(i + 3)]
}

function optionClass(ex, s, option) {
  if (s.result === null) return 'border-border bg-surface text-ink-900 hover:border-primary-300'
  if (option === ex.answer) return 'border-success bg-success/10 text-success'
  if (option === s.picked) return 'border-danger bg-danger/10 text-danger'
  return 'border-border bg-surface text-ink-400'
}

const correctAnswer = (ex) => (ex.type === 'choice' ? ex.answer : ex.answers[0])
</script>

<template>
  <div>
    <!-- Level picker -->
    <div
      class="grid grid-cols-3 gap-2 rounded-2xl bg-canvas p-1"
      role="tablist"
      :aria-label="t.grammar.levelLabel"
    >
      <button
        v-for="l in levels"
        :key="l.key"
        type="button"
        role="tab"
        class="flex flex-col items-center rounded-xl px-2 py-2 text-sm font-semibold transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
        :class="level === l.key ? 'bg-surface text-primary-600 shadow-sm' : 'text-ink-500 hover:text-ink-900'"
        :aria-selected="level === l.key"
        @click="level = l.key"
      >
        {{ l.label }}
        <span class="text-xs font-medium text-ink-500">{{ t.grammar.levelProgress(stats(l.key).done, stats(l.key).total) }}</span>
      </button>
    </div>
    <p class="mt-3 text-sm text-ink-500">
      {{ currentLevel?.desc }}
    </p>

    <ol
      :key="level"
      class="mt-4 space-y-3"
    >
      <li
        v-for="(ex, i) in items"
        :key="ex.q"
        class="rounded-2xl border p-4 transition"
        :class="current[i].result === true ? 'border-success bg-success/10' : current[i].result === false ? 'border-danger bg-danger/10' : 'border-border bg-surface'"
      >
        <!-- Fill-in question -->
        <form
          v-if="ex.type === 'fill'"
          class="flex flex-wrap items-center gap-x-2 gap-y-3"
          novalidate
          @submit.prevent="checkFill(i)"
        >
          <span class="mr-1 text-sm font-semibold text-ink-500">{{ i + 1 }}.</span>
          <span class="text-ink-900">{{ parts(ex.q)[0] }}</span>
          <input
            v-model="current[i].value"
            type="text"
            :placeholder="t.grammar.answerPlaceholder"
            :aria-label="`${t.grammar.answerPlaceholder} ${i + 1}`"
            :disabled="current[i].result !== null"
            autocomplete="off"
            autocapitalize="off"
            spellcheck="false"
            class="w-44 rounded-xl border-2 bg-surface px-3 py-1.5 font-semibold text-ink-900 transition focus:border-primary-600 focus:outline-none focus:ring-2 focus:ring-primary-600/40 sm:w-52"
            :class="current[i].result === true ? 'border-success text-success' : current[i].result === false ? 'border-danger' : 'border-border'"
          >
          <span class="text-ink-900">{{ parts(ex.q)[1] }}</span>
          <BaseButton
            type="submit"
            size="sm"
            class="ml-auto"
            :disabled="current[i].result !== null"
          >
            {{ t.grammar.check }}
          </BaseButton>
        </form>

        <!-- Choice question -->
        <div v-else>
          <p class="text-ink-900">
            <span class="mr-1 text-sm font-semibold text-ink-500">{{ i + 1 }}.</span>
            {{ parts(ex.q)[0] }}<span class="mx-1 inline-block min-w-[3rem] border-b-2 border-ink-400 text-center font-semibold text-primary-600">{{ current[i].picked ?? '' }}</span>{{ parts(ex.q)[1] }}
          </p>
          <div class="mt-3 grid grid-cols-2 gap-2 sm:grid-cols-4">
            <button
              v-for="option in ex.options"
              :key="option"
              type="button"
              class="rounded-xl border-2 px-3 py-2 text-sm font-medium transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40 disabled:cursor-default"
              :class="optionClass(ex, current[i], option)"
              :disabled="current[i].result !== null"
              @click="pick(i, option)"
            >
              {{ option }}
            </button>
          </div>
        </div>

        <div
          v-if="current[i].result !== null"
          class="mt-3 flex items-start gap-2 text-sm"
          role="status"
        >
          <AppIcon
            :name="current[i].result ? 'checkCircle' : 'xCircle'"
            class="mt-0.5 h-5 w-5 shrink-0"
            :class="current[i].result ? 'text-success' : 'text-danger'"
          />
          <p class="flex flex-wrap gap-x-1 text-ink-900">
            <span
              class="font-semibold"
              :class="current[i].result ? 'text-success' : 'text-danger'"
            >{{ current[i].result ? t.grammar.correct : t.grammar.wrong }}</span>
            <span v-if="!current[i].result">{{ t.grammar.answerIs }} <strong>{{ correctAnswer(ex) }}</strong>.</span>
            <span class="text-ink-500">{{ ex.explain }}</span>
          </p>
        </div>
      </li>
    </ol>

    <div class="mt-4 flex flex-wrap items-center justify-between gap-3">
      <p
        class="text-sm font-medium text-ink-500"
        aria-live="polite"
      >
        <template v-if="stats(level).done">
          {{ t.grammar.score(stats(level).correct, stats(level).done) }}
          <template v-if="stats(level).done === stats(level).total">
            · {{ t.grammar.levelDone }}
          </template>
        </template>
      </p>
      <BaseButton
        v-if="stats(level).done"
        variant="outline"
        size="sm"
        @click="reset"
      >
        {{ t.grammar.retry }}
      </BaseButton>
    </div>
  </div>
</template>
