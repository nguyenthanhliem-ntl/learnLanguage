<script setup>
import { computed } from 'vue'
import { RouterLink, useRoute } from 'vue-router'
import { comparisons, findTense, tenses } from '@/data/grammar/tenses'
import { tenseExercises } from '@/data/grammar/tenseExercises'
import AppIcon from '@/components/ui/AppIcon.vue'
import EmptyState from '@/components/ui/EmptyState.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import ExampleSentence from '@/components/grammar/ExampleSentence.vue'
import GrammarExercises from '@/components/grammar/GrammarExercises.vue'
import t from '@/locales/vi'

// Chi tiết một thì: công thức · cách dùng · dấu hiệu nhận biết · lưu ý · so sánh · bài tập
const route = useRoute()
const tense = computed(() => findTense(route.params.slug))
const index = computed(() => tenses.findIndex((x) => x.slug === route.params.slug))
const prev = computed(() => tenses[index.value - 1] ?? null)
const next = computed(() => tenses[index.value + 1] ?? null)
const related = computed(() => comparisons.filter((c) => c.tenses.includes(route.params.slug)))
const exerciseSets = computed(() => tenseExercises[route.params.slug] ?? null)

const formulaStyles = {
  positive: 'bg-success/10 text-success',
  negative: 'bg-danger/10 text-danger',
  question: 'bg-primary-50 text-primary-600',
}
</script>

<template>
  <div
    v-if="!tense"
    class="rounded-3xl border border-border bg-surface shadow-sm"
  >
    <EmptyState
      :title="t.grammar.notFound"
      description=""
    >
      <BaseButton :to="{ name: 'grammar' }">
        {{ t.grammar.back }}
      </BaseButton>
    </EmptyState>
  </div>

  <article
    v-else
    :key="tense.slug"
    class="mx-auto max-w-3xl space-y-6"
  >
    <RouterLink
      :to="{ name: 'grammar' }"
      class="inline-flex items-center gap-1 text-sm font-medium text-ink-500 transition hover:text-primary-600"
    >
      <AppIcon
        name="chevronLeft"
        class="h-4 w-4"
      />
      {{ t.grammar.back }}
    </RouterLink>

    <!-- Tiêu đề -->
    <header class="relative overflow-hidden rounded-3xl bg-gradient-to-br from-hero-start to-hero-end p-6 text-white shadow-xl shadow-primary-600/10 sm:p-8">
      <div class="flex flex-wrap items-center gap-2">
        <span class="rounded-full bg-white/15 px-3 py-1 text-xs font-semibold">{{ tense.level }}</span>
        <span class="text-sm text-white/80">{{ tense.en }}</span>
      </div>
      <h1 class="mt-3 text-2xl font-bold sm:text-3xl">
        {{ tense.name }}
      </h1>
      <p class="mt-2 text-white/80">
        {{ tense.summary }}
      </p>
    </header>

    <!-- Công thức -->
    <section class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
      <h2 class="text-lg font-semibold">
        {{ t.grammar.formula }}
      </h2>
      <div class="mt-4 space-y-4">
        <div
          v-for="f in tense.formulas"
          :key="f.type"
          class="rounded-xl border border-border p-4"
        >
          <div class="flex flex-wrap items-center gap-2">
            <span
              class="rounded-full px-2.5 py-0.5 text-xs font-semibold"
              :class="formulaStyles[f.type]"
            >{{ t.grammar.formulaTypes[f.type] }}</span>
            <code class="rounded-lg bg-canvas px-2 py-1 text-sm font-semibold text-ink-900">{{ f.formula }}</code>
          </div>
          <p
            v-if="f.alt"
            class="mt-2 text-sm text-ink-500"
          >
            {{ t.grammar.withBe }} <code class="rounded bg-canvas px-1.5 py-0.5 font-semibold text-ink-900">{{ f.alt }}</code>
          </p>
          <ExampleSentence
            class="mt-3"
            :example="f.example"
          />
        </div>
      </div>
    </section>

    <!-- Cách dùng -->
    <section class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
      <h2 class="text-lg font-semibold">
        {{ t.grammar.uses }}
      </h2>
      <ol class="mt-4 space-y-4">
        <li
          v-for="(u, i) in tense.uses"
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
                v-for="ex in u.examples"
                :key="ex.en"
                :example="ex"
              />
            </div>
          </div>
        </li>
      </ol>
    </section>

    <!-- Dấu hiệu nhận biết -->
    <section class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
      <h2 class="text-lg font-semibold">
        {{ t.grammar.signals }}
      </h2>
      <ul class="mt-4 flex flex-wrap gap-2">
        <li
          v-for="s in tense.signals"
          :key="s"
          class="rounded-full bg-primary-50 px-3 py-1 text-sm font-medium text-primary-600"
        >
          {{ s }}
        </li>
      </ul>
    </section>

    <!-- Trường hợp đặc biệt & lưu ý -->
    <section class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
      <h2 class="text-lg font-semibold">
        {{ t.grammar.notes }}
      </h2>
      <ul class="mt-4 space-y-2.5">
        <li
          v-for="n in tense.notes"
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

    <!-- So sánh với thì dễ nhầm -->
    <section
      v-if="related.length"
      class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6"
    >
      <h2 class="text-lg font-semibold">
        {{ t.grammar.related }}
      </h2>
      <div class="mt-4 space-y-4">
        <div
          v-for="c in related"
          :key="c.title"
          class="rounded-xl border border-border p-4"
        >
          <p class="font-semibold text-ink-900">
            {{ c.title }}
          </p>
          <ul class="mt-2 space-y-1 text-sm text-ink-900">
            <li
              v-for="p in c.points"
              :key="p"
              class="flex gap-2"
            >
              <AppIcon
                name="check"
                class="mt-0.5 h-4 w-4 shrink-0 text-primary-600"
              />
              <span>{{ p }}</span>
            </li>
          </ul>
          <div class="mt-3 space-y-2">
            <ExampleSentence
              v-for="ex in c.examples"
              :key="ex.en"
              :example="ex"
            />
          </div>
        </div>
      </div>
    </section>

    <!-- Bài tập -->
    <section
      v-if="exerciseSets"
      class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6"
    >
      <h2 class="text-lg font-semibold">
        {{ t.grammar.exercises }}
      </h2>
      <p class="mt-1 text-sm text-ink-500">
        {{ t.grammar.exercisesHint }}
      </p>
      <GrammarExercises
        :key="tense.slug"
        class="mt-4"
        :sets="exerciseSets"
      />
    </section>

    <!-- Thì trước / tiếp theo -->
    <nav class="flex flex-wrap items-center justify-between gap-3">
      <RouterLink
        v-if="prev"
        :to="{ name: 'grammarTense', params: { slug: prev.slug } }"
        class="inline-flex items-center gap-1 rounded-full px-3 py-2 text-sm font-medium text-ink-500 transition hover:bg-surface hover:text-primary-600"
      >
        <AppIcon
          name="chevronLeft"
          class="h-4 w-4"
        />
        {{ prev.name }}
      </RouterLink>
      <span v-else />
      <RouterLink
        v-if="next"
        :to="{ name: 'grammarTense', params: { slug: next.slug } }"
        class="inline-flex items-center gap-1 rounded-full px-3 py-2 text-sm font-medium text-primary-600 transition hover:bg-surface"
      >
        {{ next.name }}
        <AppIcon
          name="chevronRight"
          class="h-4 w-4"
        />
      </RouterLink>
    </nav>
  </article>
</template>
