<script setup>
import { computed } from 'vue'
import { useStudyLanguage } from '@/composables/useStudyLanguage'
import { romanize } from '@/utils/hangul'
import SpeakButton from '@/components/ui/SpeakButton.vue'

// One example sentence: the sentence + speaker button, Vietnamese meaning below.
// English examples are { en, vi }; Korean examples are { ko, vi } and also show the romanization.
const props = defineProps({
  example: { type: Object, required: true },
})
const lang = useStudyLanguage()
const sentence = computed(() => props.example.ko ?? props.example.en)
const roman = computed(() => (props.example.ko ? romanize(props.example.ko) : ''))
</script>

<template>
  <div class="flex items-start gap-2">
    <SpeakButton
      :text="sentence"
      size="sm"
      class="mt-0.5"
    />
    <div class="min-w-0">
      <p
        class="font-medium text-ink-900"
        :lang="lang.code"
      >
        {{ sentence }}
      </p>
      <p
        v-if="roman"
        class="text-xs italic text-ink-400"
      >
        {{ roman }}
      </p>
      <p class="text-sm text-ink-500">
        {{ example.vi }}
      </p>
    </div>
  </div>
</template>
