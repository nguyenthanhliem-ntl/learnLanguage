<script setup>
import { useAuthStore } from '@/stores/auth'
import LanguageCards from '@/components/library/LanguageCards.vue'
import MonthlyHeatmap from '@/components/ui/MonthlyHeatmap.vue'
import t from '@/locales/vi'

// Dashboard for every language: "Today" card (greeting + monthly study frequency of all languages)
// and one progress card per language.
const auth = useAuthStore()
</script>

<template>
  <div class="space-y-6">
    <!-- "Today" card -->
    <section class="relative overflow-hidden rounded-3xl bg-gradient-to-br from-hero-start to-hero-end p-6 text-white shadow-xl shadow-primary-600/10 sm:p-8">
      <div
        class="pointer-events-none absolute -right-16 -top-16 h-56 w-56 rounded-full bg-white/10 blur-2xl"
        aria-hidden="true"
      />
      <div class="relative">
        <p class="text-sm font-medium text-white/80">
          {{ t.dashboard.todayTitle }}
        </p>
        <h1 class="mt-2 text-2xl font-bold sm:text-3xl">
          {{ t.topbar.greeting(auth.user?.username ?? '') }}
        </h1>

        <!-- Monthly study frequency -->
        <MonthlyHeatmap
          variant="hero"
          class="mt-6"
        />
      </div>
    </section>

    <!-- Progress of each language -->
    <LanguageCards />
  </div>
</template>
