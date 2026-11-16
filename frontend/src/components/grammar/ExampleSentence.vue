<script setup>
import SpeakButton from '@/components/ui/SpeakButton.vue'

// Một câu ví dụ: tiếng Anh + nút loa, nghĩa tiếng Việt bên dưới
defineProps({
  example: { type: Object, required: true }, // { en, vi }
})
</script>

<template>
  <div class="flex items-start gap-2">
    <SpeakButton
      :text="example.en"
      size="sm"
      class="mt-0.5"
    />
    <div class="min-w-0">
      <p class="font-medium text-ink-900">
        {{ example.en }}
      </p>
      <p class="text-sm text-ink-500">
        {{ example.vi }}
      </p>
    </div>
  </div>
</template>
