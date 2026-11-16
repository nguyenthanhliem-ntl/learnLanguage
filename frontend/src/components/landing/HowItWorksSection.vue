<script setup>
import AppIcon from '@/components/ui/AppIcon.vue'
import CheckList from './CheckList.vue'
import PracticeDemo from './PracticeDemo.vue'
import t from '@/locales/vi'

// 3 two-column intro blocks, alternating sides (CLAUDE.md §8.2)
const a = t.landing.how.addWords
const p = t.landing.how.practice
const d = t.landing.how.dashboard
const pill = 'inline-flex items-center rounded-full bg-primary-50 px-3 py-1 text-xs font-medium text-primary-600'
</script>

<template>
  <section
    id="cach-hoc"
    class="bg-canvas py-20 md:py-28"
  >
    <div class="mx-auto max-w-6xl space-y-24 px-4 md:space-y-32">
      <!-- Quick word entry: text left, mock-up right -->
      <div class="grid items-center gap-10 md:grid-cols-2 md:gap-16">
        <div v-reveal>
          <span :class="pill">{{ a.badge }}</span>
          <h3 class="mt-4 text-2xl font-bold md:text-3xl">
            {{ a.titleBefore }}<span class="text-primary-600">{{ a.titleAccent }}</span>
          </h3>
          <p class="mt-4 text-ink-500">
            {{ a.desc }}
          </p>
          <CheckList :items="a.points" />
        </div>
        <div
          v-reveal
          class="space-y-4"
          aria-hidden="true"
        >
          <div class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
            <p class="font-semibold">
              {{ a.mockTitle }}
            </p>
            <div class="mt-4 space-y-3 text-sm">
              <div>
                <span class="mb-1 block text-xs font-medium text-ink-500">{{ a.labels.word }} *</span>
                <div class="flex items-center gap-2">
                  <div class="flex-1 rounded-xl border border-border px-3 py-2.5">
                    {{ a.mockWord }}
                  </div>
                  <span class="flex h-10 w-10 items-center justify-center rounded-full bg-primary-50 text-primary-600">
                    <AppIcon
                      name="speaker"
                      class="h-5 w-5"
                    />
                  </span>
                </div>
                <div class="mt-2 rounded-xl border border-primary-200 bg-primary-50/60 px-3 py-2 text-xs text-ink-500">
                  {{ a.mockExisting }} <span class="font-medium text-ink-900">{{ a.mockExistingItem }}</span>
                </div>
              </div>
              <div class="grid gap-3 sm:grid-cols-2">
                <div>
                  <span class="mb-1 block text-xs font-medium text-ink-500">{{ a.labels.pos }} *</span>
                  <div class="rounded-xl border border-border px-3 py-2.5">
                    {{ a.mockPos }}
                  </div>
                </div>
                <div>
                  <span class="mb-1 block text-xs font-medium text-ink-500">{{ a.labels.phonetic }} *</span>
                  <div class="rounded-xl border border-border px-3 py-2.5 font-mono">
                    {{ a.mockPhonetic }}
                  </div>
                </div>
              </div>
              <div>
                <span class="mb-1 block text-xs font-medium text-ink-500">{{ a.labels.meaning }} *</span>
                <div class="rounded-xl border border-border px-3 py-2.5">
                  {{ a.mockMeaning }}
                </div>
              </div>
              <div class="flex justify-end">
                <span class="rounded-full bg-primary-600 px-6 py-2.5 font-medium text-white">{{ a.mockSave }}</span>
              </div>
            </div>
          </div>
          <div class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
            <div class="flex items-center justify-between gap-2">
              <p class="font-semibold">
                {{ a.importTitle }}
              </p>
              <span class="truncate text-xs text-ink-500">{{ a.importFile }}</span>
            </div>
            <div class="mt-4 grid grid-cols-3 gap-2 text-center text-white">
              <div class="rounded-xl bg-stat-teal p-3">
                <p class="text-xl font-bold">
                  48
                </p>
                <p class="text-[11px]">
                  {{ a.importAdded }}
                </p>
              </div>
              <div class="rounded-xl bg-stat-violet p-3">
                <p class="text-xl font-bold">
                  3
                </p>
                <p class="text-[11px]">
                  {{ a.importDup }}
                </p>
              </div>
              <div class="rounded-xl bg-stat-pink p-3">
                <p class="text-xl font-bold">
                  1
                </p>
                <p class="text-[11px]">
                  {{ a.importErr }}
                </p>
              </div>
            </div>
            <p class="mt-3 text-xs text-ink-500">
              {{ a.importErrRow }}
            </p>
          </div>
        </div>
      </div>

      <!-- Practice: mock-up left (interactive), text right -->
      <div class="grid items-center gap-10 md:grid-cols-2 md:gap-16">
        <div
          v-reveal
          class="md:order-2"
        >
          <span :class="pill">{{ p.badge }}</span>
          <h3 class="mt-4 text-2xl font-bold md:text-3xl">
            {{ p.titleBefore }}<span class="text-primary-600">{{ p.titleAccent }}</span>
          </h3>
          <p class="mt-4 text-ink-500">
            {{ p.desc }}
          </p>
          <CheckList :items="p.points" />
          <p class="mt-6 text-sm text-ink-400">
            {{ p.tryIt }}
          </p>
        </div>
        <div
          v-reveal
          class="md:order-1"
        >
          <PracticeDemo />
        </div>
      </div>

      <!-- Dashboard and streak: text left, mock-up right -->
      <div class="grid items-center gap-10 md:grid-cols-2 md:gap-16">
        <div v-reveal>
          <span :class="pill">{{ d.badge }}</span>
          <h3 class="mt-4 text-2xl font-bold md:text-3xl">
            {{ d.titleBefore }}<span class="text-primary-600">{{ d.titleAccent }}</span>{{ d.titleAfter }}
          </h3>
          <p class="mt-4 text-ink-500">
            {{ d.desc }}
          </p>
          <CheckList :items="d.points" />
        </div>
        <div
          v-reveal
          aria-hidden="true"
        >
          <div class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
            <div class="grid grid-cols-2 gap-3">
              <div class="rounded-2xl border border-border p-4">
                <span class="flex h-9 w-9 items-center justify-center rounded-full bg-stat-blue text-white">
                  <AppIcon
                    name="book"
                    class="h-5 w-5"
                  />
                </span>
                <p class="mt-3 text-2xl font-bold">
                  12<span class="text-sm font-medium text-ink-400">/20</span>
                </p>
                <p class="text-xs text-ink-500">
                  {{ d.today }}
                </p>
              </div>
              <div class="rounded-2xl border border-border p-4">
                <span class="flex h-9 w-9 items-center justify-center rounded-full bg-stat-pink text-white">
                  <AppIcon
                    name="fire"
                    class="h-5 w-5"
                  />
                </span>
                <p class="mt-3 text-2xl font-bold">
                  {{ d.streakValue }}
                </p>
                <p class="text-xs text-ink-500">
                  {{ d.streak }}
                </p>
              </div>
            </div>
            <div class="mt-4 rounded-2xl bg-canvas p-4">
              <p class="text-xs font-semibold text-ink-700">
                {{ d.chain }}
              </p>
              <div class="mt-3 grid grid-cols-7 gap-1.5 text-center text-[10px] text-ink-500">
                <div
                  v-for="(day, i) in t.landing.solution.progress.days"
                  :key="day"
                >
                  <div
                    class="mx-auto mb-1 h-7 w-7 rounded-full bg-primary-600"
                    :class="i === 6 ? 'ring-4 ring-primary-200' : ''"
                  />{{ day }}
                </div>
              </div>
            </div>
            <div class="mt-4">
              <p class="text-xs font-semibold text-ink-700">
                {{ d.bank }}
              </p>
              <div class="mt-2 flex h-3 gap-0.5 overflow-hidden rounded-full">
                <div
                  class="bg-success"
                  style="width: 43%"
                />
                <div
                  class="bg-primary-600"
                  style="width: 32%"
                />
                <div
                  class="flex-1 bg-ink-400"
                />
              </div>
              <div class="mt-2 flex flex-wrap gap-x-4 gap-y-1 text-xs text-ink-500">
                <span
                  v-for="(b, i) in t.landing.mockup.bankItems"
                  :key="b.label"
                  class="inline-flex items-center gap-1.5"
                ><span
                  class="h-2 w-2 rounded-full"
                  :class="['bg-success', 'bg-primary-600', 'bg-ink-400'][i]"
                />{{ b.label }} {{ b.value }}</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
