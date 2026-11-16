<script setup>
import AppIcon from '@/components/ui/AppIcon.vue'
import AppLogo from '@/components/ui/AppLogo.vue'
import t from '@/locales/vi'

// Ảnh mô phỏng trang Tổng quan của app (dữ liệu minh họa), dùng ở Hero và Demo
const m = t.landing.mockup
const navIcons = ['home', 'book', 'stack', 'plus']
const statStyles = [
  { icon: 'book', box: 'bg-stat-blue' },
  { icon: 'refresh', box: 'bg-stat-violet' },
  { icon: 'checkCircle', box: 'bg-stat-teal' },
  { icon: 'fire', box: 'bg-stat-pink' },
]
const learned = [14, 20, 18, 20, 9, 20, 12]
const reviewed = [10, 16, 12, 22, 8, 18, 12]
const max = Math.max(...learned, ...reviewed)
const bankBars = ['bg-success', 'bg-primary-600', 'bg-ink-400']
const bankTotal = m.bankItems.reduce((s, b) => s + b.value, 0)
</script>

<template>
  <div
    class="overflow-hidden rounded-2xl bg-canvas text-left"
    aria-hidden="true"
  >
    <!-- Header của app -->
    <div class="flex items-center justify-between gap-3 border-b border-border bg-surface px-4 py-3">
      <AppLogo class="text-sm" />
      <div class="hidden items-center gap-1 text-xs font-medium text-ink-500 md:flex">
        <span
          v-for="(label, i) in m.nav"
          :key="label"
          class="flex items-center gap-1.5 rounded-full px-3 py-1.5"
          :class="i === 0 ? 'bg-primary-50 text-primary-600' : ''"
        >
          <AppIcon
            :name="navIcons[i]"
            class="h-4 w-4"
          />{{ label }}
        </span>
      </div>
      <span class="flex h-7 w-7 items-center justify-center rounded-full bg-primary-600 text-xs font-semibold text-white">L</span>
    </div>

    <div class="space-y-3 p-3 sm:space-y-4 sm:p-5">
      <!-- Card Hôm nay -->
      <div class="flex items-center justify-between gap-3 rounded-2xl bg-gradient-to-br from-hero-start to-hero-end p-4 text-white">
        <div class="min-w-0">
          <p class="truncate font-bold sm:text-lg">
            {{ m.greeting }}
          </p>
          <p class="truncate text-xs text-white/80 sm:text-sm">
            {{ m.summary }}
          </p>
        </div>
        <span class="hidden shrink-0 items-center gap-1.5 rounded-full bg-surface px-4 py-2 text-xs font-medium text-primary-600 sm:inline-flex">
          <AppIcon
            name="book"
            class="h-4 w-4"
          />{{ m.practice }}
        </span>
      </div>

      <!-- 4 thẻ số liệu -->
      <div class="grid grid-cols-2 gap-2 sm:gap-3 lg:grid-cols-4">
        <div
          v-for="(s, i) in m.stats"
          :key="s.label"
          class="rounded-xl border border-border bg-surface p-3"
        >
          <div class="flex items-start justify-between">
            <p class="text-[11px] text-ink-500">
              {{ s.label }}
            </p>
            <span
              class="flex h-6 w-6 items-center justify-center rounded-full text-white"
              :class="statStyles[i].box"
            >
              <AppIcon
                :name="statStyles[i].icon"
                class="h-3.5 w-3.5"
              />
            </span>
          </div>
          <p class="mt-1 text-xl font-bold sm:text-2xl">
            {{ s.value }}
          </p>
        </div>
      </div>

      <div class="grid gap-3 sm:gap-4 lg:grid-cols-3">
        <!-- Biểu đồ -->
        <div class="rounded-xl border border-border bg-surface p-3 sm:p-4 lg:col-span-2">
          <div class="flex flex-wrap items-center justify-between gap-2">
            <p class="text-sm font-semibold">
              {{ m.activity }}
            </p>
            <div class="flex gap-3 text-[11px] text-ink-500">
              <span class="inline-flex items-center gap-1"><span class="h-2 w-2 rounded-sm bg-primary-600" />{{ m.learned }}</span>
              <span class="inline-flex items-center gap-1"><span class="h-2 w-2 rounded-sm bg-stat-teal" />{{ m.reviewed }}</span>
            </div>
          </div>
          <div class="mt-3 flex h-28 items-end gap-2 sm:h-32 sm:gap-3">
            <div
              v-for="(d, i) in m.days"
              :key="d"
              class="flex h-full flex-1 items-end gap-0.5"
            >
              <div
                class="flex-1 rounded-t bg-primary-600"
                :style="{ height: `${(learned[i] / max) * 100}%` }"
              />
              <div
                class="flex-1 rounded-t bg-stat-teal"
                :style="{ height: `${(reviewed[i] / max) * 100}%` }"
              />
            </div>
          </div>
          <div class="mt-1 flex gap-2 text-center text-[10px] text-ink-400 sm:gap-3">
            <span
              v-for="d in m.days"
              :key="d"
              class="flex-1"
            >{{ d }}</span>
          </div>
        </div>

        <!-- Tổng kho -->
        <div class="rounded-xl border border-border bg-surface p-3 sm:p-4">
          <p class="text-sm font-semibold">
            {{ m.bank }}
          </p>
          <p class="text-[11px] text-ink-500">
            {{ m.bankTotal }}
          </p>
          <div class="mt-3 flex h-2.5 gap-0.5 overflow-hidden rounded-full">
            <div
              v-for="(b, i) in m.bankItems"
              :key="b.label"
              :class="bankBars[i]"
              :style="{ width: `${(b.value / bankTotal) * 100}%` }"
            />
          </div>
          <ul class="mt-3 space-y-1.5 text-xs">
            <li
              v-for="(b, i) in m.bankItems"
              :key="b.label"
              class="flex justify-between text-ink-500"
            >
              <span class="inline-flex items-center gap-1.5"><span
                class="h-2 w-2 rounded-full"
                :class="bankBars[i]"
              />{{ b.label }}</span>
              <b class="text-ink-900">{{ b.value }}</b>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>
