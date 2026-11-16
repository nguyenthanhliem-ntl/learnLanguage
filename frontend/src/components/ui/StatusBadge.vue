<script setup>
import { computed } from 'vue'
import t from '@/locales/vi'

const props = defineProps({
  status: { type: String, required: true }, // NOT_STARTED | LEARNING | MASTERED
})

const styles = {
  NOT_STARTED: 'border border-border bg-canvas text-ink-500',
  LEARNING: 'bg-primary-50 text-primary-600',
  MASTERED: 'bg-success/10 text-success',
}

const cls = computed(() => styles[props.status] ?? styles.NOT_STARTED)
</script>

<template>
  <span
    class="inline-flex items-center whitespace-nowrap rounded-full px-2.5 py-0.5 text-xs font-medium"
    :class="cls"
  >
    {{ t.wordStatus[status] ?? t.wordStatus.NOT_STARTED }}
  </span>
</template>
