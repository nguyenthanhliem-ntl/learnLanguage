<script setup>
import DashboardMockup from './DashboardMockup.vue'
import t from '@/locales/vi'

const d = t.landing.demo
</script>

<template>
  <section class="overflow-x-clip bg-gradient-to-br from-hero-start to-hero-end py-20 md:py-28">
    <div class="mx-auto max-w-6xl px-4 text-center">
      <span
        v-reveal
        class="inline-flex items-center rounded-full bg-white/15 px-3 py-1 text-xs font-medium text-white"
      >{{ d.badge }}</span>
      <h2
        v-reveal
        class="mt-4 text-3xl font-bold text-white md:text-4xl"
      >
        {{ d.title }}
      </h2>
      <p
        v-reveal
        class="mx-auto mt-4 max-w-xl text-white/80"
      >
        {{ d.desc }}
      </p>
      <div
        v-reveal
        class="relative mt-12"
      >
        <div
          class="absolute inset-x-10 inset-y-6 rounded-3xl bg-white/20 blur-3xl"
          aria-hidden="true"
        />
        <DashboardMockup class="relative rounded-3xl border border-white/20 shadow-2xl" />
      </div>
    </div>
  </section>
</template>
