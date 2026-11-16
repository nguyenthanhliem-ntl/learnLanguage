<script setup>
import SectionHeading from './SectionHeading.vue'
import t from '@/locales/vi'

// Chỉ dùng số liệu thật của sản phẩm, không bịa số người dùng (CLAUDE.md §8.3)
const s = t.landing.stats
const colors = ['bg-stat-teal', 'bg-stat-violet', 'bg-stat-pink', 'bg-stat-blue']
</script>

<template>
  <section class="bg-surface py-20 md:py-28">
    <div class="mx-auto max-w-6xl px-4">
      <SectionHeading
        :badge="s.badge"
        :before="s.titleBefore"
        :accent="s.titleAccent"
        :after="s.titleAfter"
      />
      <div class="mt-12 grid grid-cols-1 gap-4 sm:grid-cols-2 lg:grid-cols-4">
        <div
          v-for="(item, i) in s.items"
          :key="item.value"
          v-reveal="i * 80"
          class="rounded-2xl p-6 text-white shadow-sm"
          :class="colors[i]"
        >
          <p class="text-4xl font-bold">
            {{ item.value }}
          </p>
          <p class="mt-2 text-sm text-white/90">
            {{ item.label }}
          </p>
        </div>
      </div>
    </div>
  </section>
</template>
