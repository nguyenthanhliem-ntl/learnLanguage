<script setup>
import AppIcon from '@/components/ui/AppIcon.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import DashboardMockup from './DashboardMockup.vue'
import t from '@/locales/vi'

const h = t.landing.hero
</script>

<template>
  <section class="overflow-x-clip bg-surface pt-16 md:pt-24">
    <div class="mx-auto max-w-6xl px-4 text-center">
      <span
        v-reveal
        class="inline-flex items-center gap-1.5 rounded-full bg-primary-50 px-3 py-1 text-xs font-medium text-primary-600"
      >
        <AppIcon
          name="sparkles"
          class="h-3.5 w-3.5"
        />
        {{ h.badge }}
      </span>
      <h1
        v-reveal
        class="mx-auto mt-6 max-w-3xl text-4xl font-extrabold leading-tight tracking-tight sm:text-5xl md:text-6xl"
      >
        {{ h.titleBefore }}<span class="text-primary-600">{{ h.titleAccent }}</span>
      </h1>
      <p
        v-reveal
        class="mx-auto mt-5 max-w-xl text-base text-ink-500 md:text-lg"
      >
        {{ h.desc }}
      </p>
      <div
        v-reveal
        class="mt-8 flex flex-col items-center justify-center gap-3 sm:flex-row"
      >
        <BaseButton
          size="lg"
          class="w-full sm:w-auto"
          :to="{ name: 'register' }"
        >
          {{ h.start }}
          <AppIcon
            name="arrowRight"
            class="h-4 w-4"
          />
        </BaseButton>
        <BaseButton
          variant="outline"
          size="lg"
          class="w-full sm:w-auto"
          :to="{ name: 'landing', hash: '#cach-hoc' }"
        >
          {{ h.howItWorks }}
        </BaseButton>
      </div>
    </div>

    <!-- Dashboard mock-up on a blue gradient -->
    <div
      v-reveal
      class="relative mx-auto mt-14 max-w-6xl px-4 pb-20 md:mt-16 md:pb-28"
    >
      <div class="relative">
        <div
          class="absolute inset-x-6 bottom-0 top-10 rounded-3xl bg-primary-600/30 blur-3xl"
          aria-hidden="true"
        />
        <div class="relative rounded-3xl bg-gradient-to-br from-hero-start to-hero-end p-2 shadow-xl shadow-primary-600/10 sm:p-4 md:p-6">
          <DashboardMockup class="shadow-xl" />
        </div>

        <!-- Floating cards (large screens only, to avoid horizontal scrolling) -->
        <div
          class="animate-float absolute -left-8 top-1/3 hidden items-center gap-3 rounded-2xl border border-border bg-surface px-4 py-3 text-left shadow-xl shadow-primary-600/10 lg:flex"
          aria-hidden="true"
        >
          <span class="flex h-9 w-9 items-center justify-center rounded-full bg-success/10 text-success">
            <AppIcon
              name="check"
              class="h-5 w-5"
            />
          </span>
          <div>
            <p class="text-sm font-semibold">
              {{ h.floatCorrect }}
            </p>
            <p class="font-mono text-xs text-ink-500">
              {{ h.floatCorrectSub }}
            </p>
          </div>
        </div>
        <div
          class="animate-float absolute -right-8 bottom-24 hidden items-center gap-3 rounded-2xl border border-border bg-surface px-4 py-3 text-left shadow-xl shadow-primary-600/10 [animation-delay:1.2s] lg:flex"
          aria-hidden="true"
        >
          <span class="flex h-9 w-9 items-center justify-center rounded-full bg-stat-pink/10 text-stat-pink">
            <AppIcon
              name="fire"
              class="h-5 w-5"
            />
          </span>
          <div>
            <p class="text-sm font-semibold">
              {{ h.floatStreak }}
            </p>
            <p class="text-xs text-ink-500">
              {{ h.floatStreakSub }}
            </p>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
