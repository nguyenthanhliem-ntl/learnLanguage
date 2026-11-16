<script setup>
import AppIcon from '@/components/ui/AppIcon.vue'

defineProps({
  items: { type: Array, required: true },
})
</script>

<template>
  <ul class="mt-6 space-y-3">
    <li
      v-for="item in items"
      :key="item"
      class="flex items-start gap-3 text-ink-700"
    >
      <span class="mt-0.5 flex h-5 w-5 shrink-0 items-center justify-center rounded-full bg-success/10 text-success">
        <AppIcon
          name="check"
          class="h-3 w-3"
        />
      </span>
      {{ item }}
    </li>
  </ul>
</template>
