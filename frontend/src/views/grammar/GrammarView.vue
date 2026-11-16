<script setup>
import { RouterLink } from 'vue-router'
import { ASPECTS, TIME_GROUPS, comparisons, tenses } from '@/data/grammar/tenses'
import AppIcon from '@/components/ui/AppIcon.vue'
import ExampleSentence from '@/components/grammar/ExampleSentence.vue'
import t from '@/locales/vi'

// Ngữ pháp: bảng 12 thì (3 mốc thời gian × 4 dạng) và các cặp thì dễ nhầm
const groups = TIME_GROUPS.map((g) => ({
  ...g,
  items: ASPECTS.map((a) => ({
    aspect: a.label,
    tense: tenses.find((x) => x.group === g.key && x.aspect === a.key),
  })).filter((x) => x.tense),
}))
</script>

<template>
  <div class="space-y-8">
    <header>
      <span class="inline-flex rounded-full bg-primary-50 px-3 py-1 text-xs font-medium text-primary-600">
        {{ t.grammar.label }}
      </span>
      <h1 class="mt-3 text-2xl font-bold sm:text-3xl">
        {{ t.grammar.title }}
      </h1>
      <p class="mt-2 max-w-2xl text-ink-500">
        {{ t.grammar.desc }}
      </p>
    </header>

    <!-- Bảng 12 thì -->
    <section class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
      <h2 class="text-lg font-semibold">
        {{ t.grammar.overviewTitle }}
      </h2>
      <p class="mt-1 text-sm text-ink-500">
        {{ t.grammar.overviewHint }}
      </p>

      <div class="mt-5 space-y-6">
        <div
          v-for="g in groups"
          :key="g.key"
        >
          <h3 class="text-sm font-semibold uppercase tracking-wider text-ink-500">
            {{ g.label }}
          </h3>
          <div class="mt-3 grid gap-3 sm:grid-cols-2 lg:grid-cols-4">
            <RouterLink
              v-for="item in g.items"
              :key="item.tense.slug"
              :to="{ name: 'grammarTense', params: { slug: item.tense.slug } }"
              class="group flex flex-col rounded-2xl border-2 border-border bg-surface p-4 transition hover:border-primary-300 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
            >
              <span class="flex items-center justify-between gap-2">
                <span class="text-xs font-medium text-ink-500">{{ item.aspect }}</span>
                <span class="rounded-full bg-primary-50 px-2 py-0.5 text-xs font-semibold text-primary-600">{{ item.tense.level }}</span>
              </span>
              <span class="mt-2 font-semibold text-ink-900">{{ item.tense.name }}</span>
              <span class="text-sm italic text-ink-500">{{ item.tense.en }}</span>
              <span class="mt-3 rounded-lg bg-canvas px-2 py-1 text-xs font-medium text-ink-900">{{ item.tense.formulas[0].formula }}</span>
              <span class="mt-3 inline-flex items-center gap-1 text-sm font-medium text-primary-600">
                {{ t.grammar.open }}
                <AppIcon
                  name="arrowRight"
                  class="h-4 w-4 transition group-hover:translate-x-0.5"
                />
              </span>
            </RouterLink>
          </div>
        </div>
      </div>
    </section>

    <!-- Các thì dễ nhầm -->
    <section>
      <h2 class="text-lg font-semibold">
        {{ t.grammar.compareTitle }}
      </h2>
      <p class="mt-1 text-sm text-ink-500">
        {{ t.grammar.compareDesc }}
      </p>
      <div class="mt-4 space-y-3">
        <details
          v-for="c in comparisons"
          :key="c.title"
          class="group rounded-2xl border border-border bg-surface p-5 shadow-sm"
        >
          <summary class="flex cursor-pointer list-none items-center justify-between gap-3 font-semibold text-ink-900 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40">
            {{ c.title }}
            <AppIcon
              name="chevronDown"
              class="h-5 w-5 shrink-0 text-ink-500 transition group-open:rotate-180"
            />
          </summary>
          <ul class="mt-4 space-y-1.5 text-ink-900">
            <li
              v-for="p in c.points"
              :key="p"
              class="flex gap-2"
            >
              <AppIcon
                name="check"
                class="mt-1 h-4 w-4 shrink-0 text-primary-600"
              />
              <span>{{ p }}</span>
            </li>
          </ul>
          <div class="mt-4 space-y-3 rounded-xl bg-canvas p-4">
            <ExampleSentence
              v-for="ex in c.examples"
              :key="ex.en"
              :example="ex"
            />
          </div>
        </details>
      </div>
    </section>
  </div>
</template>
