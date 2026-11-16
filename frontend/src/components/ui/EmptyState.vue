<script setup>
defineProps({
  title: { type: String, required: true },
  description: { type: String, default: '' },
})
</script>

<template>
  <div class="flex flex-col items-center px-6 py-14 text-center">
    <!-- Minh họa: chồng flashcard -->
    <svg
      class="h-28 w-36"
      viewBox="0 0 144 112"
      fill="none"
      aria-hidden="true"
    >
      <ellipse
        cx="72"
        cy="104"
        rx="52"
        ry="6"
        class="fill-primary-50"
      />
      <rect
        x="30"
        y="22"
        width="76"
        height="56"
        rx="12"
        transform="rotate(-10 30 22)"
        class="fill-primary-100"
      />
      <rect
        x="40"
        y="26"
        width="76"
        height="56"
        rx="12"
        transform="rotate(6 40 26)"
        class="fill-primary-200"
      />
      <rect
        x="34"
        y="30"
        width="76"
        height="56"
        rx="12"
        class="fill-surface stroke-border"
        stroke-width="2"
      />
      <rect
        x="48"
        y="46"
        width="40"
        height="7"
        rx="3.5"
        class="fill-primary-600"
      />
      <rect
        x="48"
        y="60"
        width="28"
        height="5"
        rx="2.5"
        class="fill-border"
      />
      <circle
        cx="118"
        cy="24"
        r="10"
        class="fill-primary-600"
      />
      <path
        d="M118 19v10m-5-5h10"
        class="stroke-surface"
        stroke-width="2.5"
        stroke-linecap="round"
      />
    </svg>
    <h3 class="mt-6 text-lg font-semibold">
      {{ title }}
    </h3>
    <p
      v-if="description"
      class="mt-2 max-w-sm text-sm text-ink-500"
    >
      {{ description }}
    </p>
    <div
      v-if="$slots.default"
      class="mt-6 flex flex-wrap justify-center gap-3"
    >
      <slot />
    </div>
  </div>
</template>
