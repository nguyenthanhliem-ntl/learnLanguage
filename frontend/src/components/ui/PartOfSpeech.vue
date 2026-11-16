<script setup>
defineProps({
  value: { type: String, default: '' },
})
</script>

<template>
  <span
    v-if="value"
    class="inline-flex items-center whitespace-nowrap rounded-md bg-primary-50 px-1.5 py-0.5 text-xs font-medium italic text-primary-600"
  >{{ value }}</span>
</template>
