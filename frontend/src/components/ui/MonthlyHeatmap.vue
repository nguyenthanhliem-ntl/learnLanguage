<script setup>
import { computed, nextTick, onMounted, ref } from 'vue'
import { statsApi } from '@/api/stats'
import { getErrorMessage } from '@/api/errors'
import AlertBox from './AlertBox.vue'
import AppIcon from './AppIcon.vue'
import t from '@/locales/vi'

// Monthly study frequency: one small cell per day in a single row, day number above each cell.
// Single colour, light -> dark by review questions answered that day (old and new words); hover a cell for details (title).
// Covers the last 12 months, the current month by default.
// variant "hero": sits inside the gradient block ("Today" card), so it has no frame of its own and uses white.
const props = defineProps({
  variant: { type: String, default: 'card' }, // card | hero
})
const MONTHS_BACK = 12
// Thresholds of daily review questions per colour level: 0 | 1–199 | 200–499 | 500–799 | 800–999 | 1000+
const LEVELS = [1, 200, 500, 800, 1000]
const THEMES = {
  card: {
    root: 'rounded-2xl border border-border bg-surface p-5 shadow-sm',
    title: 'font-semibold',
    sub: 'text-ink-500',
    navBtn: 'text-ink-500 hover:bg-canvas hover:text-ink-900 focus-visible:ring-primary-600/40',
    select: 'border-border bg-surface text-ink-900 focus:ring-primary-600/40',
    day: 'font-medium text-ink-500',
    dayToday: 'font-bold text-primary-600',
    future: 'border border-dashed border-border',
    loading: 'bg-canvas',
    today: 'ring-2 ring-primary-600 ring-offset-1 ring-offset-surface',
    legend: 'text-ink-500',
    levels: ['bg-canvas border border-border', 'bg-primary-600/15', 'bg-primary-600/35', 'bg-primary-600/55', 'bg-primary-600/80', 'bg-primary-600'],
  },
  hero: {
    root: '',
    title: 'font-semibold text-white',
    sub: 'text-white/80',
    navBtn: 'text-white/80 hover:bg-white/10 hover:text-white focus-visible:ring-white/60',
    select: 'border-white/30 bg-white/10 text-white focus:ring-white/60',
    day: 'font-medium text-white/70',
    dayToday: 'font-bold text-white',
    future: 'border border-dashed border-white/30',
    loading: 'bg-white/10',
    today: 'outline outline-2 outline-offset-1 outline-white',
    legend: 'text-white/80',
    levels: ['bg-white/10 border border-white/20', 'bg-white/25', 'bg-white/45', 'bg-white/65', 'bg-white/85', 'bg-white'],
  },
}
const theme = computed(() => THEMES[props.variant] ?? THEMES.card)

const pad = (n) => String(n).padStart(2, '0')
const toKey = (y, m) => `${y}-${pad(m)}` // m: 1–12

const now = new Date()
const months = Array.from({ length: MONTHS_BACK }, (_, i) => {
  const d = new Date(now.getFullYear(), now.getMonth() - i, 1)
  return { key: toKey(d.getFullYear(), d.getMonth() + 1), year: d.getFullYear(), month: d.getMonth() + 1 }
}) // [current month, previous month, ...]
const todayIso = `${toKey(now.getFullYear(), now.getMonth() + 1)}-${pad(now.getDate())}`

const index = ref(0) // 0 = current month
const current = computed(() => months[index.value])
const days = ref([])
const loading = ref(true)
const error = ref('')
const strip = ref(null) // horizontal scroll container of the day row

// Narrow screens: scroll the day row so today is centred
async function scrollToToday() {
  await nextTick()
  const el = strip.value
  const target = el?.querySelector('[data-today]')
  if (!el || !target) return
  el.scrollLeft = target.offsetLeft - el.clientWidth / 2 + target.clientWidth / 2
}

async function load() {
  loading.value = true
  error.value = ''
  try {
    days.value = await statsApi.monthly(current.value.key)
    scrollToToday()
  } catch (e) {
    error.value = getErrorMessage(e)
    days.value = []
  } finally {
    loading.value = false
  }
}

function go(step) {
  const next = index.value + step
  if (next < 0 || next >= MONTHS_BACK || loading.value) return
  index.value = next
  load()
}

function levelOf(total) {
  let level = 0
  LEVELS.forEach((min, i) => { if (total >= min) level = i + 1 })
  return level
}

const formatDay = (iso) => {
  const [y, m, d] = iso.split('-')
  return `${d}/${m}/${y}`
}

// One cell per day of the month: past days have data, future days stay empty
const cells = computed(() => {
  const { year, month } = current.value
  const daysInMonth = new Date(year, month, 0).getDate()
  const byDate = Object.fromEntries(days.value.map((d) => [d.date, d]))
  const result = []
  for (let day = 1; day <= daysInMonth; day++) {
    const date = `${toKey(year, month)}-${pad(day)}`
    const data = byDate[date]
    const learned = data?.learned ?? 0
    const reviewed = data?.reviewed ?? 0
    const future = !data && date > todayIso
    result.push({
      date,
      day,
      future,
      level: levelOf(reviewed),
      today: date === todayIso,
      label: future ? formatDay(date) : t.dashboard.monthly.cellLabel(formatDay(date), learned, reviewed),
    })
  }
  return result
})

// New words learned in the month
const learnedInMonth = computed(() => days.value.reduce((s, d) => s + d.learned, 0))

onMounted(load)
</script>

<template>
  <section :class="theme.root">
    <div class="flex flex-wrap items-center justify-between gap-3">
      <div>
        <h2 :class="theme.title">
          {{ t.dashboard.monthly.title }}
        </h2>
        <p
          v-if="!loading && !error"
          class="text-sm"
          :class="theme.sub"
        >
          {{ t.dashboard.monthly.summary(learnedInMonth) }}
        </p>
      </div>

      <!-- Month picker: last 12 months -->
      <div class="flex items-center gap-1">
        <button
          type="button"
          class="flex h-9 w-9 items-center justify-center rounded-full transition focus-visible:outline-none focus-visible:ring-2 disabled:opacity-40"
          :class="theme.navBtn"
          :disabled="index >= MONTHS_BACK - 1 || loading"
          :aria-label="t.dashboard.monthly.prev"
          :title="t.dashboard.monthly.prev"
          @click="go(1)"
        >
          <AppIcon
            name="arrowRight"
            class="h-4 w-4 rotate-180"
          />
        </button>
        <select
          :value="index"
          class="rounded-full border px-3 py-1.5 text-sm font-medium focus:outline-none focus:ring-2"
          :class="theme.select"
          :aria-label="t.dashboard.monthly.pick"
          :disabled="loading"
          @change="index = Number($event.target.value); load()"
        >
          <option
            v-for="(m, i) in months"
            :key="m.key"
            :value="i"
            class="bg-surface text-ink-900"
          >
            {{ t.dashboard.monthly.monthName(m.month, m.year) }}
          </option>
        </select>
        <button
          type="button"
          class="flex h-9 w-9 items-center justify-center rounded-full transition focus-visible:outline-none focus-visible:ring-2 disabled:opacity-40"
          :class="theme.navBtn"
          :disabled="index === 0 || loading"
          :aria-label="t.dashboard.monthly.next"
          :title="t.dashboard.monthly.next"
          @click="go(-1)"
        >
          <AppIcon
            name="arrowRight"
            class="h-4 w-4"
          />
        </button>
      </div>
    </div>

    <AlertBox
      v-if="error"
      class="mt-4"
      :message="error"
    />

    <div
      v-else
      class="mt-4"
    >
      <!-- Days of the month in one row: day number on top, coloured cell below; narrow screens scroll horizontally inside the frame -->
      <div
        ref="strip"
        class="relative -mx-1 overflow-x-auto px-1 py-1"
      >
        <div
          class="grid gap-1"
          :class="loading ? 'animate-pulse' : ''"
          :style="{ gridTemplateColumns: `repeat(${cells.length}, minmax(1.25rem, 1fr))` }"
          :aria-busy="loading"
        >
          <div
            v-for="cell in cells"
            :key="cell.date"
            class="flex flex-col items-center gap-1"
            :data-today="cell.today || undefined"
          >
            <span
              class="text-[10px] tabular-nums"
              :class="cell.today ? theme.dayToday : theme.day"
            >{{ cell.day }}</span>
            <span
              role="img"
              class="h-4 w-4 rounded sm:h-5 sm:w-5"
              :class="[
                loading ? theme.loading : cell.future ? theme.future : theme.levels[cell.level],
                cell.today ? theme.today : '',
              ]"
              :aria-label="cell.label"
              :title="cell.label"
            />
          </div>
        </div>
      </div>

      <!-- Colour level legend -->
      <div
        class="mt-3 flex items-center justify-end gap-1.5 text-xs"
        :class="theme.legend"
      >
        <span>{{ t.dashboard.monthly.less }}</span>
        <span
          v-for="(cls, i) in theme.levels"
          :key="i"
          class="h-3.5 w-3.5 rounded"
          :class="cls"
          :title="t.dashboard.monthly.levelRange(i, LEVELS)"
        />
        <span>{{ t.dashboard.monthly.more }}</span>
      </div>
    </div>
  </section>
</template>
