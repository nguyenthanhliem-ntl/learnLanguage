<script setup>
import AppIcon from '@/components/ui/AppIcon.vue'
import SectionHeading from './SectionHeading.vue'
import t from '@/locales/vi'

const p = t.landing.problem
</script>

<template>
  <section class="bg-canvas py-20 md:py-28">
    <div class="mx-auto max-w-6xl px-4 text-center">
      <SectionHeading
        :badge="p.badge"
        :before="p.titleBefore"
        :accent="p.titleAccent"
        :after="p.titleAfter"
        :desc="p.desc"
      />
      <ul
        v-reveal
        class="mx-auto mt-10 flex max-w-3xl flex-wrap justify-center gap-3"
      >
        <li
          v-for="pain in p.pains"
          :key="pain"
          class="inline-flex items-center gap-2 rounded-full border border-danger/20 bg-surface px-4 py-2 text-sm font-medium text-ink-700 shadow-sm"
        >
          <span class="flex h-5 w-5 items-center justify-center rounded-full bg-danger/10 text-danger">
            <AppIcon
              name="close"
              class="h-3 w-3"
            />
          </span>
          {{ pain }}
        </li>
      </ul>
    </div>
  </section>
</template>
