<script setup>
import SpeakButton from '@/components/ui/SpeakButton.vue'
import t from '@/locales/vi'

// One Hangul letter: the letter, its name (consonants), romanization, Vietnamese approximation and an example word.
defineProps({
  item: { type: Object, required: true }, // { letter, name?, roman, sound, say, example: { ko, vi } }
})
const th = t.korean.hangul
</script>

<template>
  <div class="flex flex-col rounded-2xl border border-border bg-surface p-4">
    <div class="flex items-start justify-between gap-2">
      <div>
        <span
          class="block text-4xl font-bold leading-none text-primary-600"
          lang="ko"
        >{{ item.letter }}</span>
        <span
          v-if="item.name"
          class="mt-1 block text-xs text-ink-500"
          lang="ko"
        >{{ item.name }}</span>
      </div>
      <SpeakButton
        :text="item.say"
        size="sm"
      />
    </div>
    <dl class="mt-3 space-y-0.5 text-sm">
      <div class="flex gap-1">
        <dt class="text-ink-500">
          {{ th.roman }}:
        </dt>
        <dd class="font-semibold text-ink-900">
          {{ item.roman }}
        </dd>
      </div>
      <div class="flex gap-1">
        <dt class="shrink-0 text-ink-500">
          {{ th.sound }}:
        </dt>
        <dd class="text-ink-900">
          {{ item.sound }}
        </dd>
      </div>
    </dl>
    <div class="mt-3 flex items-center gap-2 border-t border-border pt-3">
      <SpeakButton
        :text="item.example.ko"
        size="sm"
      />
      <span class="min-w-0 text-sm">
        <span
          class="font-semibold text-ink-900"
          lang="ko"
        >{{ item.example.ko }}</span>
        <span class="text-ink-500"> – {{ item.example.vi }}</span>
      </span>
    </div>
  </div>
</template>
