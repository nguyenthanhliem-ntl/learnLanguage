<script setup>
import AppIcon from '@/components/ui/AppIcon.vue'
import t from '@/locales/vi'

// "Continue →" button pinned to the right of the question's button row.
// Not answered yet: skip this question. Answered: go to the next question.
defineProps({
  answered: { type: Boolean, default: false },
})
defineEmits(['next'])
</script>

<template>
  <button
    type="button"
    class="ml-auto inline-flex shrink-0 items-center gap-1 rounded-full px-3 py-2 text-sm font-medium transition hover:bg-surface focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
    :class="answered ? 'text-primary-600 hover:text-primary-700' : 'text-ink-500 hover:text-ink-900'"
    :title="answered ? undefined : t.review.skipHint"
    @click="$emit('next')"
  >
    {{ t.review.next }}
    <AppIcon
      name="arrowRight"
      class="h-4 w-4"
    />
  </button>
</template>
