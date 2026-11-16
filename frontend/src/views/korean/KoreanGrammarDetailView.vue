<script setup>
import { computed } from 'vue'
import { RouterLink, useRoute } from 'vue-router'
import { findKoreanGrammar, koreanGrammar } from '@/data/korean/grammar'
import { levelLabel } from '@/composables/useStudyLanguage'
import AppIcon from '@/components/ui/AppIcon.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import EmptyState from '@/components/ui/EmptyState.vue'
import ExampleSentence from '@/components/grammar/ExampleSentence.vue'
import GrammarExercises from '@/components/grammar/GrammarExercises.vue'
import t from '@/locales/vi'

// One Korean grammar pattern: formation · uses · notes · exercises · previous / next pattern
const tg = t.korean.grammar
const route = useRoute()
const item = computed(() => findKoreanGrammar(route.params.slug))
const index = computed(() => koreanGrammar.findIndex((g) => g.slug === route.params.slug))
const prev = computed(() => koreanGrammar[index.value - 1] ?? null)
const next = computed(() => koreanGrammar[index.value + 1] ?? null)
</script>

<template>
  <div
    v-if="!item"
    class="rounded-3xl border border-border bg-surface shadow-sm"
  >
    <EmptyState
      :title="tg.notFound"
      description=""
    >
      <BaseButton :to="{ name: 'koreanGrammar' }">
        {{ tg.back }}
      </BaseButton>
    </EmptyState>
  </div>

  <article
    v-else
    :key="item.slug"
    class="mx-auto max-w-3xl space-y-6"
  >
    <RouterLink
      :to="{ name: 'koreanGrammar' }"
      class="inline-flex items-center gap-1 text-sm font-medium text-ink-500 transition hover:text-primary-600"
    >
      <AppIcon
        name="chevronLeft"
        class="h-4 w-4"
      />
      {{ tg.back }}
    </RouterLink>

    <!-- Title -->
    <header class="relative overflow-hidden rounded-3xl bg-gradient-to-br from-hero-start to-hero-end p-6 text-white shadow-xl shadow-primary-600/10 sm:p-8">
      <span class="rounded-full bg-white/15 px-3 py-1 text-xs font-semibold">{{ levelLabel(item.level) }}</span>
      <h1
        class="mt-3 text-2xl font-bold sm:text-3xl"
        lang="ko"
      >
        {{ item.pattern }}
      </h1>
      <p class="mt-1 text-lg font-semibold text-white/90">
        {{ item.name }}
      </p>
      <p class="mt-2 text-white/80">
        {{ item.summary }}
      </p>
    </header>

    <!-- Formation -->
    <section class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
      <h2 class="text-lg font-semibold">
        {{ tg.formation }}
      </h2>
      <div class="mt-4 space-y-4">
        <div
          v-for="f in item.formation"
          :key="f.form"
          class="rounded-xl border border-border p-4"
        >
          <div class="flex flex-wrap items-center gap-2">
            <span class="rounded-full bg-primary-50 px-2.5 py-0.5 text-xs font-semibold text-primary-600">{{ f.when }}</span>
            <code
              class="rounded-lg bg-canvas px-2 py-1 text-sm font-semibold text-ink-900"
              lang="ko"
            >{{ f.form }}</code>
          </div>
          <ExampleSentence
            class="mt-3"
            :example="f.example"
          />
        </div>
      </div>
    </section>

    <!-- Uses -->
    <section class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
      <h2 class="text-lg font-semibold">
        {{ tg.uses }}
      </h2>
      <ol class="mt-4 space-y-4">
        <li
          v-for="(u, i) in item.uses"
          :key="u.text"
          class="flex gap-3"
        >
          <span class="flex h-7 w-7 shrink-0 items-center justify-center rounded-full bg-primary-50 text-sm font-semibold text-primary-600">{{ i + 1 }}</span>
          <div class="min-w-0 flex-1">
            <p class="font-medium text-ink-900">
              {{ u.text }}
            </p>
            <div class="mt-2 space-y-2 rounded-xl bg-canvas p-3">
              <ExampleSentence
                v-for="e in u.examples"
                :key="e.ko"
                :example="e"
              />
            </div>
          </div>
        </li>
      </ol>
    </section>

    <!-- Notes -->
    <section class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
      <h2 class="text-lg font-semibold">
        {{ tg.notes }}
      </h2>
      <ul class="mt-4 space-y-2.5">
        <li
          v-for="n in item.notes"
          :key="n"
          class="flex gap-2 text-ink-900"
        >
          <AppIcon
            name="lightbulb"
            class="mt-0.5 h-5 w-5 shrink-0 text-stat-violet"
          />
          <span>{{ n }}</span>
        </li>
      </ul>
    </section>

    <!-- Exercises -->
    <section class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
      <h2 class="text-lg font-semibold">
        {{ tg.exercises }}
      </h2>
      <p class="mt-1 text-sm text-ink-500">
        {{ tg.exercisesHint }}
      </p>
      <GrammarExercises
        :key="item.slug"
        class="mt-4"
        :sets="item.exercises"
        :levels="t.korean.exerciseLevels"
      />
    </section>

    <!-- Previous / next pattern -->
    <nav class="flex flex-wrap items-center justify-between gap-3">
      <RouterLink
        v-if="prev"
        :to="{ name: 'koreanGrammarDetail', params: { slug: prev.slug } }"
        class="inline-flex items-center gap-1 rounded-full px-3 py-2 text-sm font-medium text-ink-500 transition hover:bg-surface hover:text-primary-600"
        lang="ko"
      >
        <AppIcon
          name="chevronLeft"
          class="h-4 w-4"
        />
        {{ prev.pattern }}
      </RouterLink>
      <span v-else />
      <RouterLink
        v-if="next"
        :to="{ name: 'koreanGrammarDetail', params: { slug: next.slug } }"
        class="inline-flex items-center gap-1 rounded-full px-3 py-2 text-sm font-medium text-primary-600 transition hover:bg-surface"
        lang="ko"
      >
        {{ next.pattern }}
        <AppIcon
          name="chevronRight"
          class="h-4 w-4"
        />
      </RouterLink>
    </nav>
  </article>
</template>
