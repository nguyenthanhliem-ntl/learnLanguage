<script setup>
import { onMounted, ref } from 'vue'
import { libraryApi } from '@/api/library'
import { getErrorMessage } from '@/api/errors'
import { LANGUAGES, levelLabel } from '@/composables/useStudyLanguage'
import AlertBox from '@/components/ui/AlertBox.vue'
import AppIcon from '@/components/ui/AppIcon.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import t from '@/locales/vi'

// Dashboard: one card per language with the vocabulary progress (whole bank and level words),
// the level being studied and shortcuts to Practice and to the language's home page.
const td = t.dashboard
const languages = Object.values(LANGUAGES)

const cards = ref([])
const loading = ref(true)
const error = ref('')

const pct = (learned, total) => (total ? Math.round((learned / total) * 100) : 0)

async function load() {
  loading.value = true
  error.value = ''
  try {
    const overviews = await Promise.all(languages.map((l) => libraryApi.levels(l.code)))
    cards.value = languages.map((lang, i) => {
      const o = overviews[i]
      // Levels plus specialized banks (e.g. IT topics)
      const banks = [...o.levels, ...(o.topics ?? [])]
      const levelTotal = banks.reduce((sum, l) => sum + l.total, 0)
      const levelLearned = banks.reduce((sum, l) => sum + l.learned, 0)
      return {
        lang,
        text: td.languages[lang.code],
        learned: o.myBank.learned,
        total: o.myBank.total,
        pct: pct(levelLearned, levelTotal),
        levelLearned,
        levelTotal,
        // Level being studied, the self-added bank, or nothing yet
        studying: o.currentLevel ? levelLabel(o.currentLevel) : (o.myBank.total ? td.ownBank : null),
      }
    })
  } catch (e) {
    error.value = getErrorMessage(e)
  } finally {
    loading.value = false
  }
}

onMounted(load)
</script>

<template>
  <section>
    <h2 class="text-lg font-semibold sm:text-xl">
      {{ td.languagesTitle }}
    </h2>
    <p class="mt-1 max-w-2xl text-sm text-ink-500">
      {{ td.languagesDesc }}
    </p>

    <AlertBox
      v-if="error"
      class="mt-4"
      :message="error"
    />

    <div class="mt-4 grid gap-4 md:grid-cols-2">
      <template v-if="loading">
        <div
          v-for="l in languages"
          :key="l.code"
          class="h-52 animate-pulse rounded-2xl bg-surface shadow-sm"
          aria-busy="true"
          :aria-label="t.common.loading"
        />
      </template>
      <article
        v-for="card in cards"
        v-else
        :key="card.lang.code"
        class="flex flex-col rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6"
      >
        <div class="flex items-start justify-between gap-3">
          <div>
            <h3 class="text-xl font-bold text-ink-900">
              {{ card.text.name }}
            </h3>
            <p class="text-sm text-ink-500">
              <span :lang="card.lang.code">{{ card.text.native }}</span> · {{ card.text.scale }}
            </p>
          </div>
          <span class="rounded-full bg-primary-50 px-3 py-1 text-xs font-semibold text-primary-600">
            <template v-if="card.studying">{{ td.currentLevel }}: {{ card.studying }}</template>
            <template v-else>{{ td.notStarted }}</template>
          </span>
        </div>

        <p class="mt-5 text-3xl font-bold text-primary-600">
          {{ card.learned }}<span class="text-base font-medium text-ink-500"> / {{ card.total }}</span>
        </p>
        <p class="text-sm text-ink-500">
          {{ td.learnedLabel }}
        </p>

        <div class="mt-4">
          <div
            class="h-2 overflow-hidden rounded-full bg-border"
            role="progressbar"
            :aria-valuenow="card.pct"
            aria-valuemin="0"
            aria-valuemax="100"
          >
            <div
              class="h-full rounded-full bg-primary-600"
              :style="{ width: `${card.pct}%` }"
            />
          </div>
          <p class="mt-1.5 text-xs text-ink-500">
            {{ td.levelsDone(card.levelLearned, card.levelTotal) }}
          </p>
        </div>

        <div class="mt-5 flex flex-wrap gap-2">
          <BaseButton :to="{ name: card.lang.routes.practice }">
            <AppIcon
              name="book"
              class="h-5 w-5"
            />
            {{ td.continue }}
          </BaseButton>
          <BaseButton
            variant="outline"
            :to="{ name: card.lang.routes.home }"
          >
            {{ td.open }} {{ card.text.name }}
            <AppIcon
              name="arrowRight"
              class="h-4 w-4"
            />
          </BaseButton>
        </div>
      </article>
    </div>
  </section>
</template>
