<script setup>
import { computed, ref } from 'vue'
import { PHRASE_GROUPS, commonPhrases } from '@/data/english/commonPhrases'
import { normalizeAnswer } from '@/utils/answer'
import AppIcon from '@/components/ui/AppIcon.vue'
import EmptyState from '@/components/ui/EmptyState.vue'
import SpeakButton from '@/components/ui/SpeakButton.vue'
import t from '@/locales/vi'

// Common English phrases (idioms, everyday expressions, phrasal verbs): phrase · IPA · meaning,
// with an example sentence. Search by phrase or meaning and filter by group.
const tp = t.phrases
const query = ref('')
const filter = ref('all') // all | idiom | daily | phrasal

const filters = [{ key: 'all', label: tp.all }, ...PHRASE_GROUPS]
const groupLabel = Object.fromEntries(PHRASE_GROUPS.map((g) => [g.key, g.label]))
const activeGroup = computed(() => PHRASE_GROUPS.find((g) => g.key === filter.value) ?? null)

const rows = computed(() => {
  const q = normalizeAnswer(query.value)
  return commonPhrases.filter((p) => {
    if (filter.value !== 'all' && p.group !== filter.value) return false
    if (!q) return true
    return [p.phrase, p.meaning, p.example].some((s) => normalizeAnswer(s).includes(q))
  })
})
</script>

<template>
  <div class="space-y-6">
    <header>
      <span class="inline-flex rounded-full bg-primary-50 px-3 py-1 text-xs font-medium text-primary-600">
        {{ tp.label }}
      </span>
      <h1 class="mt-3 text-2xl font-bold sm:text-3xl">
        {{ tp.title }}
      </h1>
      <p class="mt-2 max-w-2xl text-ink-500">
        {{ tp.desc }}
      </p>
    </header>

    <section class="rounded-2xl border border-border bg-surface p-4 shadow-sm sm:p-6">
      <!-- Search -->
      <label class="relative block">
        <span class="sr-only">{{ tp.search }}</span>
        <AppIcon
          name="search"
          class="pointer-events-none absolute left-3 top-1/2 h-5 w-5 -translate-y-1/2 text-ink-400"
        />
        <input
          v-model="query"
          type="search"
          :placeholder="tp.search"
          autocomplete="off"
          class="w-full rounded-full border border-border bg-surface py-2.5 pl-10 pr-4 text-ink-900 placeholder:text-ink-400 focus:border-primary-600 focus:outline-none focus:ring-2 focus:ring-primary-600/40"
        >
      </label>

      <!-- Filters -->
      <div
        class="mt-4 flex flex-wrap gap-2"
        role="group"
        :aria-label="tp.filterLabel"
      >
        <button
          v-for="f in filters"
          :key="f.key"
          type="button"
          class="rounded-full border px-3 py-1.5 text-sm font-medium transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
          :class="filter === f.key ? 'border-primary-600 bg-primary-50 text-primary-600' : 'border-border text-ink-500 hover:text-ink-900'"
          :aria-pressed="filter === f.key"
          @click="filter = f.key"
        >
          {{ f.label }}
        </button>
      </div>
      <p
        class="mt-3 text-sm text-ink-500"
        aria-live="polite"
      >
        {{ tp.count(rows.length) }}
        <template v-if="activeGroup">
          {{ activeGroup.desc }}
        </template>
      </p>

      <!-- Table (desktop) -->
      <div
        v-if="rows.length"
        class="mt-4 hidden overflow-hidden rounded-2xl border border-border md:block"
      >
        <table class="w-full text-left">
          <thead class="bg-canvas text-sm text-ink-500">
            <tr>
              <th class="w-14 px-4 py-3" />
              <th class="px-4 py-3 font-medium">
                {{ tp.phrase }}
              </th>
              <th class="px-4 py-3 font-medium">
                {{ tp.ipa }}
              </th>
              <th class="px-4 py-3 font-medium">
                {{ tp.meaning }}
              </th>
            </tr>
          </thead>
          <tbody class="divide-y divide-border">
            <tr
              v-for="p in rows"
              :key="p.phrase"
              class="align-top"
            >
              <td class="px-4 py-3">
                <SpeakButton
                  :text="p.phrase"
                  size="sm"
                />
              </td>
              <td class="px-4 py-3">
                <p class="font-semibold text-primary-600">
                  {{ p.phrase }}
                </p>
                <p
                  v-if="filter === 'all'"
                  class="mt-0.5 text-xs text-ink-400"
                >
                  {{ groupLabel[p.group] }}
                </p>
              </td>
              <td class="px-4 py-3 font-mono text-sm text-danger">
                {{ p.ipa }}
              </td>
              <td class="px-4 py-3">
                <p class="text-ink-900">
                  {{ p.meaning }}
                </p>
                <p class="mt-1 flex items-start gap-1.5 text-sm text-ink-500">
                  <SpeakButton
                    :text="p.example"
                    size="sm"
                    class="-mt-1 scale-75"
                  />
                  <span><span class="italic text-ink-900">{{ p.example }}</span> – {{ p.exampleVi }}</span>
                </p>
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
          v-for="p in rows"
          :key="p.phrase"
          class="rounded-2xl border border-border p-4"
        >
          <div class="flex items-start gap-3">
            <SpeakButton
              :text="p.phrase"
              size="sm"
            />
            <div class="min-w-0 flex-1">
              <p class="font-semibold text-primary-600">
                {{ p.phrase }}
              </p>
              <p class="font-mono text-sm text-danger">
                {{ p.ipa }}
              </p>
              <p class="mt-1 text-ink-900">
                {{ p.meaning }}
              </p>
              <p class="mt-1 text-sm text-ink-500">
                <span class="italic text-ink-900">{{ p.example }}</span> – {{ p.exampleVi }}
              </p>
            </div>
          </div>
        </li>
      </ul>

      <EmptyState
        v-if="!rows.length"
        :title="tp.emptyTitle"
        :description="tp.emptyDesc"
      />
    </section>
  </div>
</template>
