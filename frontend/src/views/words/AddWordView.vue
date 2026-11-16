<script setup>
import { computed } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import AppIcon from '@/components/ui/AppIcon.vue'
import ManualAddPanel from './ManualAddPanel.vue'
import ExcelImportPanel from './ExcelImportPanel.vue'
import t from '@/locales/vi'

const route = useRoute()
const router = useRouter()

// The tab is kept in the URL (?tab=excel) so a reload keeps the right tab
const tabs = [
  { key: 'manual', label: t.addWord.tabManual, icon: 'pencil' },
  { key: 'excel', label: t.addWord.tabExcel, icon: 'document' },
]
const active = computed(() => (route.query.tab === 'excel' ? 'excel' : 'manual'))

function select(key) {
  router.replace({ query: key === 'manual' ? {} : { tab: key } })
}
</script>

<template>
  <div class="space-y-6">
    <div>
      <h1 class="text-2xl font-bold sm:text-3xl">
        {{ t.addWord.title }}
      </h1>
      <p class="mt-1 text-ink-500">
        {{ t.addWord.subtitle }}
      </p>
    </div>

    <div
      class="inline-flex w-full rounded-full border border-border bg-surface p-1 sm:w-auto"
      role="tablist"
    >
      <button
        v-for="tab in tabs"
        :key="tab.key"
        type="button"
        role="tab"
        :aria-selected="active === tab.key"
        class="inline-flex flex-1 items-center justify-center gap-2 rounded-full px-5 py-2 text-sm font-medium transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40 sm:flex-none"
        :class="active === tab.key ? 'bg-primary-600 text-white shadow-sm' : 'text-ink-500 hover:text-ink-900'"
        @click="select(tab.key)"
      >
        <AppIcon
          :name="tab.icon"
          class="h-4 w-4"
        />
        {{ tab.label }}
      </button>
    </div>

    <!-- v-show keeps the entered data when switching tabs -->
    <div
      v-show="active === 'manual'"
      class="max-w-2xl"
    >
      <ManualAddPanel />
    </div>
    <div v-show="active === 'excel'">
      <ExcelImportPanel />
    </div>
  </div>
</template>
