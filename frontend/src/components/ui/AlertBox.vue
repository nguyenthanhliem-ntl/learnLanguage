<script setup>
import AppIcon from './AppIcon.vue'

defineProps({
  message: { type: String, required: true },
  details: { type: Array, default: () => [] },
  variant: { type: String, default: 'danger' }, // danger | success
})
</script>

<template>
  <div
    role="alert"
    class="flex gap-3 rounded-xl px-4 py-3 text-sm"
    :class="variant === 'success' ? 'bg-success/10 text-success' : 'bg-danger/10 text-danger'"
  >
    <AppIcon
      :name="variant === 'success' ? 'check' : 'alert'"
      class="mt-0.5 h-5 w-5 shrink-0"
    />
    <div>
      <p class="font-medium">
        {{ message }}
      </p>
      <ul
        v-if="details.length"
        class="mt-1 list-disc pl-4"
      >
        <li
          v-for="d in details"
          :key="d"
        >
          {{ d }}
        </li>
      </ul>
    </div>
  </div>
</template>
