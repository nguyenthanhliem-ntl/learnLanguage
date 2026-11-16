<script setup>
import { ref, useId } from 'vue'
import SectionHeading from './SectionHeading.vue'
import t from '@/locales/vi'

// Accordion: mở một mục, icon đổi +/− (CLAUDE.md §8.2)
const f = t.landing.faq
const openIndex = ref(-1)
const baseId = useId()

function toggle(i) {
  openIndex.value = openIndex.value === i ? -1 : i
}
</script>

<template>
  <section
    id="hoi-dap"
    class="bg-canvas py-20 md:py-28"
  >
    <div class="mx-auto max-w-6xl px-4">
      <SectionHeading
        :badge="f.badge"
        :before="f.titleBefore"
        :accent="f.titleAccent"
      />
      <div class="mx-auto mt-12 max-w-3xl space-y-3">
        <div
          v-for="(item, i) in f.items"
          :key="item.q"
          v-reveal
          class="rounded-2xl border border-border bg-surface shadow-sm"
        >
          <button
            :id="`${baseId}-q${i}`"
            type="button"
            class="flex w-full items-center justify-between gap-4 rounded-2xl px-5 py-4 text-left font-semibold focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
            :aria-expanded="openIndex === i"
            :aria-controls="`${baseId}-a${i}`"
            @click="toggle(i)"
          >
            {{ item.q }}
            <span
              class="flex h-8 w-8 shrink-0 items-center justify-center rounded-full bg-primary-50 text-lg text-primary-600"
              aria-hidden="true"
            >{{ openIndex === i ? '−' : '+' }}</span>
          </button>
          <div
            :id="`${baseId}-a${i}`"
            role="region"
            :aria-labelledby="`${baseId}-q${i}`"
            class="grid transition-all duration-300"
            :class="openIndex === i ? 'grid-rows-[1fr]' : 'grid-rows-[0fr]'"
          >
            <div class="overflow-hidden">
              <p class="px-5 pb-5 text-sm leading-relaxed text-ink-500">
                {{ item.a }}
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
