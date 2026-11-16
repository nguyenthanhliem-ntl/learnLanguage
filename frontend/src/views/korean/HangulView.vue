<script setup>
import { computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import {
  aspiratedConsonants, basicConsonants, basicVowels, batchimSounds, compoundVowels, soundRules, tenseConsonants,
} from '@/data/korean/hangul'
import LetterCard from '@/components/korean/LetterCard.vue'
import HangulBuilder from '@/components/korean/HangulBuilder.vue'
import HangulQuiz from '@/components/korean/HangulQuiz.vue'
import SpeakButton from '@/components/ui/SpeakButton.vue'
import t from '@/locales/vi'

// Hangul alphabet for beginners: vowels · consonants · batchim (+ sound rules) · syllable builder · reading quiz.
// The tab is kept in the URL (?tab=...) so a reload stays on the same tab.
const th = t.korean.hangul
const TABS = ['vowels', 'consonants', 'batchim', 'builder', 'quiz']

const route = useRoute()
const router = useRouter()
const tab = computed(() => (TABS.includes(route.query.tab) ? route.query.tab : 'vowels'))
const setTab = (key) => router.replace({ query: key === 'vowels' ? {} : { tab: key } })

const vowelGroups = [
  { title: th.basicVowels, desc: th.basicVowelsDesc, items: basicVowels },
  { title: th.compoundVowels, desc: th.compoundVowelsDesc, items: compoundVowels },
]
const consonantGroups = [
  { title: th.basicConsonants, desc: th.basicConsonantsDesc, items: basicConsonants },
  { title: th.aspirated, desc: th.aspiratedDesc, items: aspiratedConsonants },
  { title: th.tense, desc: th.tenseDesc, items: tenseConsonants },
]
</script>

<template>
  <div class="space-y-6">
    <header>
      <span class="inline-flex rounded-full bg-primary-50 px-3 py-1 text-xs font-medium text-primary-600">
        {{ th.label }}
      </span>
      <h1 class="mt-3 text-2xl font-bold sm:text-3xl">
        {{ th.title }}
      </h1>
      <p class="mt-2 max-w-3xl text-ink-500">
        {{ th.desc }}
      </p>
    </header>

    <div
      class="flex gap-1 overflow-x-auto rounded-2xl bg-surface p-1 shadow-sm"
      role="tablist"
    >
      <button
        v-for="key in TABS"
        :key="key"
        type="button"
        role="tab"
        class="shrink-0 rounded-xl px-4 py-2 text-sm font-semibold transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
        :class="tab === key ? 'bg-primary-50 text-primary-600' : 'text-ink-500 hover:text-ink-900'"
        :aria-selected="tab === key"
        @click="setTab(key)"
      >
        {{ th.tabs[key] }}
      </button>
    </div>

    <!-- Vowels / consonants: groups of letter cards -->
    <template v-if="tab === 'vowels' || tab === 'consonants'">
      <section
        v-for="group in (tab === 'vowels' ? vowelGroups : consonantGroups)"
        :key="group.title"
        class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6"
      >
        <h2 class="text-lg font-semibold">
          {{ group.title }} <span class="text-sm font-medium text-ink-500">({{ group.items.length }})</span>
        </h2>
        <p class="mt-1 text-sm text-ink-500">
          {{ group.desc }}
        </p>
        <div class="mt-4 grid grid-cols-2 gap-3 sm:grid-cols-3 lg:grid-cols-5">
          <LetterCard
            v-for="item in group.items"
            :key="item.letter"
            :item="item"
          />
        </div>
      </section>
    </template>

    <!-- Batchim + sound rules -->
    <template v-else-if="tab === 'batchim'">
      <section class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
        <h2 class="text-lg font-semibold">
          {{ th.batchimTitle }}
        </h2>
        <p class="mt-1 text-sm text-ink-500">
          {{ th.batchimDesc }}
        </p>
        <div class="mt-4 grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
          <div
            v-for="b in batchimSounds"
            :key="b.sound"
            class="rounded-2xl border border-border p-4"
          >
            <p class="flex items-baseline gap-2">
              <span class="text-sm text-ink-500">{{ th.batchimSound }}</span>
              <span
                class="text-2xl font-bold text-primary-600"
                lang="ko"
              >{{ b.sound }}</span>
              <span class="font-semibold text-ink-900">[{{ b.roman }}]</span>
            </p>
            <p class="mt-2 text-sm text-ink-500">
              {{ th.batchimLetters }}:
              <span
                class="font-semibold text-ink-900"
                lang="ko"
              >{{ b.letters.join(' ') }}</span>
            </p>
            <ul class="mt-3 space-y-1.5">
              <li
                v-for="e in b.examples"
                :key="e.ko"
                class="flex items-center gap-2 text-sm"
              >
                <SpeakButton
                  :text="e.ko"
                  size="sm"
                />
                <span
                  class="font-semibold text-ink-900"
                  lang="ko"
                >{{ e.ko }}</span>
                <span class="text-ink-500">– {{ e.vi }}</span>
              </li>
            </ul>
          </div>
        </div>
      </section>

      <section class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
        <h2 class="text-lg font-semibold">
          {{ th.rulesTitle }}
        </h2>
        <div class="mt-4 space-y-4">
          <div
            v-for="rule in soundRules"
            :key="rule.name"
            class="rounded-xl border border-border p-4"
          >
            <p class="font-semibold text-ink-900">
              {{ rule.name }}
            </p>
            <p class="mt-1 text-sm text-ink-500">
              {{ rule.desc }}
            </p>
            <ul class="mt-3 flex flex-wrap gap-x-6 gap-y-2">
              <li
                v-for="e in rule.examples"
                :key="e.ko"
                class="flex items-center gap-2 text-sm"
              >
                <SpeakButton
                  :text="e.ko"
                  size="sm"
                />
                <span
                  class="font-semibold text-ink-900"
                  lang="ko"
                >{{ e.ko }}</span>
                <span
                  class="text-primary-600"
                  lang="ko"
                >→ {{ e.said }}</span>
                <span class="text-ink-500">{{ e.vi }}</span>
              </li>
            </ul>
          </div>
        </div>
      </section>
    </template>

    <!-- Syllable builder -->
    <section
      v-else-if="tab === 'builder'"
      class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6"
    >
      <h2 class="text-lg font-semibold">
        {{ th.builderTitle }}
      </h2>
      <p class="mt-1 text-sm text-ink-500">
        {{ th.builderDesc }}
      </p>
      <HangulBuilder class="mt-4" />
    </section>

    <!-- Reading quiz -->
    <section
      v-else
      class="mx-auto max-w-2xl rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6"
    >
      <h2 class="text-lg font-semibold">
        {{ th.quizTitle }}
      </h2>
      <p class="mt-1 text-sm text-ink-500">
        {{ th.quizDesc }}
      </p>
      <HangulQuiz class="mt-4" />
    </section>
  </div>
</template>
