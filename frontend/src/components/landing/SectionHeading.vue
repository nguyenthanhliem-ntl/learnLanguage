<script setup>
// Standard landing section heading: small pill + title with highlighted keywords + description (CLAUDE.md §8.2)
defineProps({
  badge: { type: String, required: true },
  before: { type: String, default: '' },
  accent: { type: String, default: '' },
  after: { type: String, default: '' },
  desc: { type: String, default: '' },
})
</script>

<template>
  <div class="text-center">
    <span
      v-reveal
      class="inline-flex items-center gap-1.5 rounded-full bg-primary-50 px-3 py-1 text-xs font-medium text-primary-600"
    >{{ badge }}</span>
    <h2
      v-reveal
      class="mt-4 text-3xl font-bold tracking-tight md:text-4xl"
    >
      {{ before }}<span class="text-primary-600">{{ accent }}</span>{{ after }}
    </h2>
    <p
      v-if="desc"
      v-reveal
      class="mx-auto mt-4 max-w-xl text-ink-500"
    >
      {{ desc }}
    </p>
  </div>
</template>
