<script setup>
import { useSpeech } from '@/composables/useSpeech'
import AppIcon from './AppIcon.vue'
import t from '@/locales/vi'

const props = defineProps({
  text: { type: String, default: '' },
  size: { type: String, default: 'md' }, // sm | md | lg
  variant: { type: String, default: 'default' }, // default | hero (trên nền gradient)
})

// Bấm lần chẵn (2, 4...) với cùng một từ thì đọc chậm lại
const { supported, speaking, speakTap } = useSpeech()

const sizes = {
  sm: 'h-8 w-8',
  md: 'h-10 w-10',
  lg: 'h-16 w-16',
}
const iconSizes = { sm: 'h-4 w-4', md: 'h-5 w-5', lg: 'h-8 w-8' }
const variants = {
  default: 'bg-primary-50 text-primary-600 hover:bg-primary-100 focus-visible:ring-primary-600/40',
  hero: 'bg-white/15 text-white hover:bg-white/25 focus-visible:ring-white/40',
}
</script>

<template>
  <button
    type="button"
    class="inline-flex shrink-0 items-center justify-center rounded-full transition focus-visible:outline-none focus-visible:ring-2 disabled:cursor-not-allowed disabled:opacity-40"
    :class="[sizes[size], variants[variant] ?? variants.default, speaking ? (variant === 'hero' ? 'ring-2 ring-white/40' : 'ring-2 ring-primary-600/40') : '']"
    :disabled="!supported || !props.text.trim()"
    :title="supported ? t.speech.listen : t.speech.unsupported"
    :aria-label="supported ? t.speech.listen : t.speech.unsupported"
    @click="speakTap(props.text)"
  >
    <AppIcon
      name="speaker"
      :class="[iconSizes[size], speaking ? 'animate-pulse' : '']"
    />
  </button>
</template>
