<script setup>
import { computed } from 'vue'
import { RouterLink } from 'vue-router'

const props = defineProps({
  variant: { type: String, default: 'primary' }, // primary | outline | ghost | danger
  size: { type: String, default: 'md' }, // sm | md | lg
  type: { type: String, default: 'button' },
  to: { type: [String, Object], default: null },
  loading: { type: Boolean, default: false },
  disabled: { type: Boolean, default: false },
  block: { type: Boolean, default: false },
})

const variants = {
  primary: 'bg-primary-600 text-white hover:bg-primary-700 shadow-sm',
  outline: 'border border-border bg-surface text-ink-900 hover:border-primary-300 hover:text-primary-600',
  ghost: 'text-ink-500 hover:bg-canvas hover:text-ink-900',
  danger: 'bg-danger text-white hover:bg-danger/90 shadow-sm',
}

const sizes = {
  sm: 'px-4 py-1.5 text-sm',
  md: 'px-5 py-2.5 text-sm',
  lg: 'px-6 py-3.5 text-base',
}

const classes = computed(() => [
  'inline-flex items-center justify-center gap-2 rounded-full font-medium transition',
  'focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40',
  'disabled:cursor-not-allowed disabled:opacity-50',
  variants[props.variant],
  sizes[props.size],
  props.block ? 'w-full' : '',
])
</script>

<template>
  <RouterLink
    v-if="to"
    :to="to"
    :class="classes"
  >
    <slot />
  </RouterLink>
  <button
    v-else
    :type="type"
    :class="classes"
    :disabled="disabled || loading"
    :aria-busy="loading"
  >
    <svg
      v-if="loading"
      class="h-4 w-4 animate-spin"
      viewBox="0 0 24 24"
      fill="none"
      aria-hidden="true"
    >
      <circle
        class="opacity-25"
        cx="12"
        cy="12"
        r="10"
        stroke="currentColor"
        stroke-width="4"
      />
      <path
        class="opacity-75"
        fill="currentColor"
        d="M4 12a8 8 0 0 1 8-8v4a4 4 0 0 0-4 4H4Z"
      />
    </svg>
    <slot />
  </button>
</template>
