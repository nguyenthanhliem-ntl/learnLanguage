<script setup>
import { ref } from 'vue'
import AppIcon from '@/components/ui/AppIcon.vue'
import SpeakButton from '@/components/ui/SpeakButton.vue'
import SectionHeading from './SectionHeading.vue'
import t from '@/locales/vi'

const s = t.landing.solution
const flipped = ref(false)
const sm2Heights = ['h-[8%] bg-primary-200', 'h-[16%] bg-primary-300', 'h-[30%] bg-primary-600/70', 'h-[55%] bg-primary-600', 'h-full bg-success']
const weekHeights = ['h-[45%]', 'h-[70%]', 'h-[55%]', 'h-[90%]', 'h-[35%]', 'h-[80%]', 'h-full']
</script>

<template>
  <section
    id="tinh-nang"
    class="bg-surface py-20 md:py-28"
  >
    <div class="mx-auto max-w-6xl px-4">
      <SectionHeading
        :badge="s.badge"
        :before="s.titleBefore"
        :accent="s.titleAccent"
        :desc="s.desc"
      />

      <div class="mt-12 grid gap-6 md:grid-cols-3">
        <!-- Sample flashcard: can be flipped and pronounced -->
        <article
          v-reveal
          class="overflow-hidden rounded-2xl border border-border bg-surface shadow-sm"
        >
          <div class="flex h-56 items-center justify-center bg-canvas p-6">
            <div class="perspective-1000 w-full max-w-[220px]">
              <div
                class="preserve-3d relative h-40 transition-transform duration-500"
                :class="flipped ? 'rotate-y-180' : ''"
              >
                <div class="backface-hidden absolute inset-0 flex flex-col items-center justify-center rounded-2xl border border-border bg-surface shadow-sm">
                  <SpeakButton
                    :text="s.flashcard.word"
                    size="sm"
                    class="absolute right-2 top-2"
                  />
                  <span class="text-2xl font-bold">{{ s.flashcard.word }}</span>
                  <button
                    type="button"
                    class="mt-3 flex h-10 w-10 items-center justify-center rounded-full bg-primary-600 text-white transition hover:rotate-180 hover:bg-primary-700 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
                    :aria-label="s.flashcard.flip"
                    :tabindex="flipped ? -1 : 0"
                    @click="flipped = true"
                  >
                    <AppIcon
                      name="refresh"
                      class="h-5 w-5 transition-transform duration-500"
                    />
                  </button>
                </div>
                <div class="backface-hidden rotate-y-180 absolute inset-0 flex flex-col items-center justify-center rounded-2xl bg-gradient-to-br from-hero-start to-hero-end text-white shadow-sm">
                  <span class="flex items-center gap-2 text-sm text-white/80">
                    <span class="italic">{{ s.flashcard.pos }}</span>
                    <span class="font-mono">{{ s.flashcard.phonetic }}</span>
                  </span>
                  <span class="mt-1 text-xl font-semibold">{{ s.flashcard.meaning }}</span>
                  <button
                    type="button"
                    class="mt-3 flex h-9 w-9 items-center justify-center rounded-full bg-white/15 transition hover:bg-white/25 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-white/40"
                    :aria-label="s.flashcard.flip"
                    :tabindex="flipped ? 0 : -1"
                    @click="flipped = false"
                  >
                    <AppIcon
                      name="refresh"
                      class="h-4 w-4"
                    />
                  </button>
                </div>
              </div>
            </div>
          </div>
          <div class="p-6">
            <h3 class="text-lg font-semibold">
              {{ s.flashcard.title }}
            </h3>
            <p class="mt-2 text-sm text-ink-500">
              {{ s.flashcard.desc }}
            </p>
          </div>
        </article>

        <!-- SM-2 -->
        <article
          v-reveal="100"
          class="overflow-hidden rounded-2xl border border-border bg-surface shadow-sm"
        >
          <div class="flex h-56 items-center justify-center bg-canvas p-6">
            <div
              class="w-full max-w-[240px] rounded-2xl border border-border bg-surface p-4 shadow-sm"
              aria-hidden="true"
            >
              <p class="text-xs font-semibold text-ink-700">
                {{ s.sm2.caption }}
              </p>
              <div class="mt-3 flex h-24 items-end gap-2">
                <div
                  v-for="(cls, i) in sm2Heights"
                  :key="i"
                  class="w-full flex-1 rounded-t-md"
                  :class="cls"
                />
              </div>
              <div class="mt-1 grid grid-cols-5 text-center text-[10px] text-ink-500">
                <span
                  v-for="(step, i) in s.sm2.steps"
                  :key="step"
                  :class="i === s.sm2.steps.length - 1 ? 'font-semibold text-success' : ''"
                >{{ step }}</span>
              </div>
            </div>
          </div>
          <div class="p-6">
            <h3 class="text-lg font-semibold">
              {{ s.sm2.title }}
            </h3>
            <p class="mt-2 text-sm text-ink-500">
              {{ s.sm2.desc }}
            </p>
          </div>
        </article>

        <!-- Progress -->
        <article
          v-reveal="200"
          class="overflow-hidden rounded-2xl border border-border bg-surface shadow-sm"
        >
          <div class="flex h-56 items-center justify-center bg-canvas p-6">
            <div
              class="w-full max-w-[240px] rounded-2xl border border-border bg-surface p-4 shadow-sm"
              aria-hidden="true"
            >
              <div class="flex items-center justify-between">
                <p class="text-xs font-semibold text-ink-700">
                  {{ s.progress.caption }}
                </p>
                <span class="rounded-full bg-stat-pink/10 px-2 py-0.5 text-[10px] font-semibold text-stat-pink">{{ s.progress.streak }}</span>
              </div>
              <div class="mt-3 flex h-20 items-end gap-1.5">
                <div
                  v-for="(h, i) in weekHeights"
                  :key="i"
                  class="flex-1 rounded-t-md bg-primary-600"
                  :class="h"
                />
              </div>
              <div class="mt-1 grid grid-cols-7 text-center text-[10px] text-ink-400">
                <span
                  v-for="d in s.progress.days"
                  :key="d"
                >{{ d }}</span>
              </div>
            </div>
          </div>
          <div class="p-6">
            <h3 class="text-lg font-semibold">
              {{ s.progress.title }}
            </h3>
            <p class="mt-2 text-sm text-ink-500">
              {{ s.progress.desc }}
            </p>
          </div>
        </article>
      </div>
    </div>
  </section>
</template>
