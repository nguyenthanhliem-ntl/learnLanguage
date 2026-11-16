<script setup>
import { RouterLink } from 'vue-router'
import { KOREAN_GRAMMAR_LEVELS, koreanGrammar } from '@/data/korean/grammar'
import { levelLabel } from '@/composables/useStudyLanguage'
import t from '@/locales/vi'

// Korean grammar: patterns grouped by TOPIK level, in study order
const tg = t.korean.grammar
const groups = KOREAN_GRAMMAR_LEVELS.map((level) => ({
  level,
  label: levelLabel(level),
  name: t.korean.library.levels[level],
  items: koreanGrammar.filter((g) => g.level === level),
})).filter((g) => g.items.length)
</script>

<template>
  <div class="space-y-8">
    <header>
      <span class="inline-flex rounded-full bg-primary-50 px-3 py-1 text-xs font-medium text-primary-600">
        {{ tg.label }}
      </span>
      <h1 class="mt-3 text-2xl font-bold sm:text-3xl">
        {{ tg.title }}
      </h1>
      <p class="mt-2 max-w-2xl text-ink-500">
        {{ tg.desc }} {{ tg.count(koreanGrammar.length) }}.
      </p>
    </header>

    <section
      v-for="g in groups"
      :key="g.level"
      class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6"
    >
      <h2 class="flex flex-wrap items-baseline gap-2 text-lg font-semibold">
        <span class="text-primary-600">{{ g.label }}</span>
        <span class="text-sm font-medium text-ink-500">{{ g.name }}</span>
      </h2>
      <div class="mt-4 grid gap-3 sm:grid-cols-2 lg:grid-cols-3">
        <RouterLink
          v-for="item in g.items"
          :key="item.slug"
          :to="{ name: 'koreanGrammarDetail', params: { slug: item.slug } }"
          class="flex flex-col rounded-2xl border-2 border-border bg-surface p-4 transition hover:border-primary-300 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
        >
          <span
            class="font-semibold text-primary-600"
            lang="ko"
          >{{ item.pattern }}</span>
          <span class="mt-1 font-semibold text-ink-900">{{ item.name }}</span>
          <span class="mt-1 line-clamp-2 text-sm text-ink-500">{{ item.summary }}</span>
        </RouterLink>
      </div>
    </section>
  </div>
</template>
