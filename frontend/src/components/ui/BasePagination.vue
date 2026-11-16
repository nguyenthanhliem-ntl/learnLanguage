<script setup>
import AppIcon from './AppIcon.vue'
import t from '@/locales/vi'

// page starts at 0 (like the backend), shown to the user starting at 1
const props = defineProps({
  page: { type: Number, required: true },
  totalPages: { type: Number, required: true },
  disabled: { type: Boolean, default: false },
})
const emit = defineEmits(['change'])

function go(p) {
  if (p >= 0 && p < props.totalPages && p !== props.page) emit('change', p)
}
</script>

<template>
  <nav
    v-if="totalPages > 1"
    class="flex items-center justify-between gap-3"
    :aria-label="t.pagination.label"
  >
    <button
      type="button"
      class="inline-flex items-center gap-1 rounded-full border border-border bg-surface px-4 py-2 text-sm font-medium transition hover:border-primary-300 hover:text-primary-600 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40 disabled:cursor-not-allowed disabled:opacity-40"
      :disabled="disabled || page === 0"
      @click="go(page - 1)"
    >
      <AppIcon
        name="chevronLeft"
        class="h-4 w-4"
      />
      {{ t.pagination.prev }}
    </button>
    <span class="text-sm text-ink-500">{{ t.pagination.status(page + 1, totalPages) }}</span>
    <button
      type="button"
      class="inline-flex items-center gap-1 rounded-full border border-border bg-surface px-4 py-2 text-sm font-medium transition hover:border-primary-300 hover:text-primary-600 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40 disabled:cursor-not-allowed disabled:opacity-40"
      :disabled="disabled || page >= totalPages - 1"
      @click="go(page + 1)"
    >
      {{ t.pagination.next }}
      <AppIcon
        name="chevronRight"
        class="h-4 w-4"
      />
    </button>
  </nav>
</template>
