<script setup>
import { computed, reactive, ref, watch } from 'vue'
import { IRREGULAR_NOTES, PATTERNS, irregularVerbs } from '@/data/grammar/irregularVerbs'
import { normalizeAnswer } from '@/utils/answer'
import AppIcon from '@/components/ui/AppIcon.vue'
import EmptyState from '@/components/ui/EmptyState.vue'
import SpeakButton from '@/components/ui/SpeakButton.vue'
import t from '@/locales/vi'

// Irregular verbs table: search, filter by group (common / A-B-C patterns), self-test (hide V2, V3)
const query = ref('')
const filter = ref('all') // all | common | AAA | ABB | ABA | ABC
const selfTest = ref(false)
const revealed = reactive(new Set()) // V2/V3 cells revealed in self-test mode, key "v1:col"

const filters = computed(() => [
  { key: 'all', label: t.irregular.all },
  { key: 'common', label: t.irregular.common },
  ...PATTERNS.map((p) => ({ key: p.key, label: p.label, title: `${p.desc}: ${p.example}` })),
])

const rows = computed(() => {
  const q = normalizeAnswer(query.value)
  return irregularVerbs.filter((v) => {
    if (filter.value === 'common' && !v.common) return false
    if (PATTERNS.some((p) => p.key === filter.value) && v.pattern !== filter.value) return false
    if (!q) return true
    return [v.v1, v.v2, v.v3, v.meaning].some((s) => normalizeAnswer(s).includes(q))
  })
})

const activePattern = computed(() => PATTERNS.find((p) => p.key === filter.value) ?? null)

// Changing the mode / filter hides everything again
watch([selfTest, filter], () => revealed.clear())

const isHidden = (v, col) => selfTest.value && !revealed.has(`${v.v1}:${col}`)
const reveal = (v, col) => revealed.add(`${v.v1}:${col}`)
// Read all 3 forms (for "/" forms, read the first one)
const spoken = (v) => [v.v1, v.v2, v.v3].map((f) => f.split('/')[0]).join(', ')
</script>

<template>
  <div class="space-y-6">
    <header>
      <span class="inline-flex rounded-full bg-primary-50 px-3 py-1 text-xs font-medium text-primary-600">
        {{ t.irregular.label }}
      </span>
      <h1 class="mt-3 text-2xl font-bold sm:text-3xl">
        {{ t.irregular.title }}
      </h1>
      <p class="mt-2 max-w-2xl text-ink-500">
        {{ t.irregular.desc }}
      </p>
    </header>

    <section class="rounded-2xl border border-border bg-surface p-4 shadow-sm sm:p-6">
      <!-- Search + self-test -->
      <div class="flex flex-col gap-3 sm:flex-row sm:items-center">
        <label class="relative flex-1">
          <span class="sr-only">{{ t.irregular.search }}</span>
          <AppIcon
            name="search"
            class="pointer-events-none absolute left-3 top-1/2 h-5 w-5 -translate-y-1/2 text-ink-400"
          />
          <input
            v-model="query"
            type="search"
            :placeholder="t.irregular.search"
            autocomplete="off"
            class="w-full rounded-full border border-border bg-surface py-2.5 pl-10 pr-4 text-ink-900 placeholder:text-ink-400 focus:border-primary-600 focus:outline-none focus:ring-2 focus:ring-primary-600/40"
          >
        </label>
        <label class="inline-flex cursor-pointer select-none items-center gap-2 text-sm font-medium text-ink-900">
          <input
            v-model="selfTest"
            type="checkbox"
            class="h-4 w-4 rounded border-border accent-primary-600"
          >
          {{ t.irregular.selfTest }}
        </label>
      </div>

      <!-- Filters -->
      <div
        class="mt-4 flex flex-wrap gap-2"
        role="group"
        :aria-label="t.irregular.filterLabel"
      >
        <button
          v-for="f in filters"
          :key="f.key"
          type="button"
          class="rounded-full px-3 py-1.5 text-sm font-medium transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
          :class="filter === f.key ? 'bg-primary-600 text-white' : 'bg-canvas text-ink-500 hover:text-ink-900'"
          :title="f.title"
          :aria-pressed="filter === f.key"
          @click="filter = f.key"
        >
          {{ f.label }}
        </button>
      </div>
      <p class="mt-3 text-sm text-ink-500">
        <template v-if="activePattern">
          {{ activePattern.desc }}, vd <span class="font-medium text-ink-900">{{ activePattern.example }}</span>.
        </template>
        {{ t.irregular.count(rows.length) }}
        <template v-if="selfTest">
          · {{ t.irregular.selfTestHint }}
        </template>
      </p>

      <!-- Table (desktop) -->
      <div
        v-if="rows.length"
        class="mt-4 hidden overflow-hidden rounded-xl border border-border md:block"
      >
        <table class="w-full text-left">
          <thead class="bg-canvas text-sm text-ink-500">
            <tr>
              <th class="px-4 py-3 font-medium">
                {{ t.irregular.v1 }}
              </th>
              <th class="px-4 py-3 font-medium">
                {{ t.irregular.v2 }}
              </th>
              <th class="px-4 py-3 font-medium">
                {{ t.irregular.v3 }}
              </th>
              <th class="px-4 py-3 font-medium">
                {{ t.irregular.meaning }}
              </th>
              <th class="w-14 px-4 py-3">
                <span class="sr-only">{{ t.speech.listen }}</span>
              </th>
            </tr>
          </thead>
          <tbody>
            <tr
              v-for="v in rows"
              :key="v.v1"
              class="border-t border-border"
            >
              <td class="px-4 py-2.5 font-semibold text-ink-900">
                {{ v.v1 }}
                <span
                  v-if="v.common"
                  class="ml-1 align-middle text-xs text-stat-pink"
                  :title="t.irregular.common"
                >★</span>
              </td>
              <td
                v-for="col in ['v2', 'v3']"
                :key="col"
                class="px-4 py-2.5 font-medium text-primary-600"
              >
                <button
                  v-if="isHidden(v, col)"
                  type="button"
                  class="rounded-lg border border-dashed border-border px-3 py-1 text-xs text-ink-400 transition hover:border-primary-300 hover:text-primary-600"
                  @click="reveal(v, col)"
                >
                  {{ t.irregular.reveal }}
                </button>
                <template v-else>
                  {{ v[col] }}
                </template>
              </td>
              <td class="px-4 py-2.5 text-ink-500">
                {{ v.meaning }}
              </td>
              <td class="px-4 py-2">
                <SpeakButton
                  :text="spoken(v)"
                  size="sm"
                />
              </td>
            </tr>
          </tbody>
        </table>
      </div>

      <!-- Card list (mobile) -->
      <ul
        v-if="rows.length"
        class="mt-4 space-y-2 md:hidden"
      >
        <li
          v-for="v in rows"
          :key="v.v1"
          class="flex items-center gap-3 rounded-xl border border-border p-3"
        >
          <div class="min-w-0 flex-1">
            <p class="flex flex-wrap items-center gap-x-1.5 gap-y-1 font-semibold">
              <span class="text-ink-900">{{ v.v1 }}</span>
              <span
                v-if="v.common"
                class="text-xs text-stat-pink"
              >★</span>
              <template
                v-for="col in ['v2', 'v3']"
                :key="col"
              >
                <span class="text-ink-400">–</span>
                <button
                  v-if="isHidden(v, col)"
                  type="button"
                  class="rounded-md border border-dashed border-border px-2 py-0.5 text-xs font-medium text-ink-400"
                  @click="reveal(v, col)"
                >
                  {{ col === 'v2' ? t.irregular.v2Short : t.irregular.v3Short }}
                </button>
                <span
                  v-else
                  class="text-primary-600"
                >{{ v[col] }}</span>
              </template>
            </p>
            <p class="mt-0.5 text-sm text-ink-500">
              {{ v.meaning }}
            </p>
          </div>
          <SpeakButton
            :text="spoken(v)"
            size="sm"
          />
        </li>
      </ul>

      <div
        v-if="!rows.length"
        class="mt-4"
      >
        <EmptyState
          :title="t.irregular.emptyTitle"
          :description="t.irregular.emptyDesc"
        />
      </div>
    </section>

    <!-- Notes -->
    <section class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
      <h2 class="text-lg font-semibold">
        {{ t.irregular.notes }}
      </h2>
      <ul class="mt-4 space-y-2.5">
        <li
          v-for="n in IRREGULAR_NOTES"
          :key="n"
          class="flex gap-2 text-ink-900"
        >
          <AppIcon
            name="lightbulb"
            class="mt-0.5 h-5 w-5 shrink-0 text-stat-violet"
          />
          <span>{{ n }}</span>
        </li>
      </ul>
    </section>
  </div>
</template>
