<script setup>
import { computed, onMounted, ref } from 'vue'
import { useRouter } from 'vue-router'
import { libraryApi } from '@/api/library'
import { getErrorMessage } from '@/api/errors'
import { levelLabel, useStudyLanguage } from '@/composables/useStudyLanguage'
import AlertBox from '@/components/ui/AlertBox.vue'
import AppIcon from '@/components/ui/AppIcon.vue'
import t from '@/locales/vi'

// Vocabulary bank of the current language (English home page, Korean home page).
// - Top: "My vocabulary" = every word in the bank (self-added + learned from levels). Clicking it: new words come from
//     the self-added words, review still covers every learned word. Languages without self-added words (Korean)
//     just open Practice and keep the current level.
// - Bottom: the language's levels (A1–C2, TOPIK 1–6). Clicking a level: new words are drawn at random from it;
//     each level keeps its progress.
// - Below the levels: specialized banks when the language has some (English: IT vocabulary by topic), studied
//     exactly like a level.
// Choosing one opens Practice right away, starting with new words of that bank (?start=learn). The level currently used as the new-word source only gets a light border.
const router = useRouter()
const lang = useStudyLanguage()
const text = lang.code === 'en' ? t.library : t.korean.library

const overview = ref(null)
const loading = ref(true)
const error = ref('')
const busyKey = ref(null)

const MINE = 'MINE'
const pct = (learned, total) => (total ? Math.round((learned / total) * 100) : 0)

const myBank = computed(() => {
  const o = overview.value
  return o ? { ...o.myBank, pct: pct(o.myBank.learned, o.myBank.total) } : null
})

const levels = computed(() => {
  const o = overview.value
  if (!o) return []
  return o.levels.map((l) => ({
    ...l,
    label: levelLabel(l.level),
    name: text.levels[l.level],
    current: l.level === o.currentLevel,
    pct: pct(l.learned, l.total),
  }))
})

// Specialized banks (e.g. IT topics)
const topics = computed(() => {
  const o = overview.value
  if (!o?.topics?.length) return []
  return o.topics.map((l) => ({
    ...l,
    ...t.library.topics.items[l.level],
    current: l.level === o.currentLevel,
    pct: pct(l.learned, l.total),
  }))
})

async function load() {
  loading.value = true
  error.value = ''
  try {
    overview.value = await libraryApi.levels(lang.code)
  } catch (e) {
    error.value = getErrorMessage(e)
  } finally {
    loading.value = false
  }
}

/** level: a level code of the language, null = self-added bank. */
async function choose(key, level) {
  if (busyKey.value) return
  if (key === MINE && !lang.canAddWords) {
    router.push({ name: lang.routes.practice })
    return
  }
  busyKey.value = key
  error.value = ''
  try {
    if ((overview.value?.currentLevel ?? null) !== level) await libraryApi.setLevel(lang.code, level)
    router.push({ name: lang.routes.practice, query: { start: 'learn' } })
  } catch (e) {
    error.value = getErrorMessage(e)
  } finally {
    busyKey.value = null
  }
}

onMounted(load)
</script>

<template>
  <section class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
    <AlertBox
      v-if="error"
      class="mb-4"
      :message="error"
    />

    <!-- Top part: My vocabulary (same size as a level card) -->
    <div class="grid grid-cols-2 gap-3 sm:grid-cols-3">
      <div
        v-if="loading"
        class="h-28 animate-pulse rounded-2xl bg-canvas"
        aria-busy="true"
        :aria-label="t.common.loading"
      />
      <button
        v-else-if="myBank"
        type="button"
        class="flex flex-col rounded-2xl border-2 border-border bg-surface p-4 text-left transition hover:border-primary-300 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40 disabled:cursor-wait"
        :disabled="busyKey !== null"
        :title="text.myBankDesc"
        @click="choose(MINE, null)"
      >
        <AppIcon
          name="stack"
          class="h-8 w-8 text-primary-600"
        />
        <span class="mt-2 font-semibold text-ink-900">{{ text.myBank }}</span>
        <span class="text-xs text-ink-500">
          {{ busyKey === MINE ? t.common.loading : t.library.progress(myBank.learned, myBank.total) }}
        </span>
        <span
          class="mt-3 block h-1.5 overflow-hidden rounded-full bg-border"
          role="progressbar"
          :aria-valuenow="myBank.pct"
          aria-valuemin="0"
          aria-valuemax="100"
        >
          <span
            class="block h-full rounded-full bg-primary-600"
            :style="{ width: `${myBank.pct}%` }"
          />
        </span>
      </button>
    </div>

    <!-- Bottom part: the language's levels -->
    <div class="mt-6 border-t border-border pt-6">
      <h2 class="text-lg font-semibold sm:text-xl">
        {{ text.title }}
      </h2>
      <p class="mt-1 max-w-2xl text-sm text-ink-500">
        {{ text.desc }}
      </p>

      <div class="mt-5 grid grid-cols-2 gap-3 sm:grid-cols-3">
        <template v-if="loading">
          <div
            v-for="i in 6"
            :key="i"
            class="h-28 animate-pulse rounded-2xl bg-canvas"
          />
        </template>
        <button
          v-for="card in levels"
          v-else
          :key="card.level"
          type="button"
          class="flex flex-col rounded-2xl border-2 p-4 text-left transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40 disabled:cursor-wait"
          :class="card.current ? 'border-primary-600/60 bg-surface' : 'border-border bg-surface hover:border-primary-300'"
          :disabled="busyKey !== null"
          @click="choose(card.level, card.level)"
        >
          <span class="text-2xl font-bold text-primary-600">{{ card.label }}</span>
          <span class="mt-2 font-semibold text-ink-900">{{ card.name }}</span>
          <span class="text-xs text-ink-500">
            {{ busyKey === card.level ? t.common.loading : (card.total ? t.library.progress(card.learned, card.total) : t.library.empty) }}
          </span>
          <span
            class="mt-3 block h-1.5 overflow-hidden rounded-full bg-border"
            role="progressbar"
            :aria-valuenow="card.pct"
            aria-valuemin="0"
            aria-valuemax="100"
          >
            <span
              class="block h-full rounded-full bg-primary-600"
              :style="{ width: `${card.pct}%` }"
            />
          </span>
        </button>
      </div>
    </div>

    <!-- Specialized banks (English: IT vocabulary): same card size as the levels above, description as tooltip -->
    <div
      v-if="topics.length"
      class="mt-6 border-t border-border pt-6"
    >
      <h2 class="text-lg font-semibold sm:text-xl">
        {{ t.library.topics.title }}
      </h2>

      <div class="mt-5 grid grid-cols-2 gap-3 sm:grid-cols-3">
        <button
          v-for="card in topics"
          :key="card.level"
          type="button"
          class="flex flex-col rounded-2xl border-2 p-4 text-left transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40 disabled:cursor-wait"
          :class="card.current ? 'border-primary-600/60 bg-surface' : 'border-border bg-surface hover:border-primary-300'"
          :title="card.desc"
          :disabled="busyKey !== null"
          @click="choose(card.level, card.level)"
        >
          <span class="text-2xl font-bold text-primary-600">{{ card.short }}</span>
          <span class="mt-2 font-semibold text-ink-900">{{ card.name }}</span>
          <span class="text-xs text-ink-500">
            {{ busyKey === card.level ? t.common.loading : t.library.progress(card.learned, card.total) }}
          </span>
          <span
            class="mt-3 block h-1.5 overflow-hidden rounded-full bg-border"
            role="progressbar"
            :aria-valuenow="card.pct"
            aria-valuemin="0"
            aria-valuemax="100"
          >
            <span
              class="block h-full rounded-full bg-primary-600"
              :style="{ width: `${card.pct}%` }"
            />
          </span>
        </button>
      </div>
    </div>
  </section>
</template>
