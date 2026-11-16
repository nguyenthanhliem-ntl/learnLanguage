<script setup>
import { RouterLink } from 'vue-router'
import AppIcon from '@/components/ui/AppIcon.vue'
import LevelLibrary from '@/components/library/LevelLibrary.vue'
import t from '@/locales/vi'

// Korean home: short intro, the beginner path (Hangul → TOPIK 1 vocabulary → beginner grammar)
// and the TOPIK 1–6 vocabulary bank (same component as the English Dashboard, in Korean mode).
const tk = t.korean
</script>

<template>
  <div class="space-y-6">
    <header class="relative overflow-hidden rounded-3xl bg-gradient-to-br from-hero-start to-hero-end p-6 text-white shadow-xl shadow-primary-600/10 sm:p-8">
      <div class="flex items-center gap-3">
        <span
          class="text-4xl font-bold sm:text-5xl"
          lang="ko"
        >한국어</span>
      </div>
      <h1 class="mt-3 text-2xl font-bold sm:text-3xl">
        {{ tk.home.title }}
      </h1>
      <p class="mt-2 max-w-2xl text-white/80">
        {{ tk.home.desc }}
      </p>
    </header>

    <section>
      <h2 class="text-lg font-semibold sm:text-xl">
        {{ tk.home.stepsTitle }}
      </h2>
      <ol class="mt-4 grid gap-3 sm:grid-cols-3">
        <li
          v-for="(step, i) in tk.home.steps"
          :key="step.to"
        >
          <RouterLink
            :to="{ name: step.to }"
            class="flex h-full flex-col rounded-2xl border-2 border-border bg-surface p-4 transition hover:border-primary-300 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
          >
            <span class="flex items-center gap-3">
              <span class="flex h-9 w-9 items-center justify-center rounded-full bg-primary-50 text-sm font-bold text-primary-600">{{ i + 1 }}</span>
              <AppIcon
                :name="step.icon"
                class="h-5 w-5 text-primary-600"
              />
            </span>
            <span class="mt-3 font-semibold text-ink-900">{{ step.title }}</span>
            <span class="mt-1 flex-1 text-sm text-ink-500">{{ step.desc }}</span>
            <span class="mt-3 inline-flex items-center gap-1 text-sm font-medium text-primary-600">
              {{ tk.home.open }}
              <AppIcon
                name="arrowRight"
                class="h-4 w-4"
              />
            </span>
          </RouterLink>
        </li>
      </ol>
    </section>

    <LevelLibrary />
  </div>
</template>
