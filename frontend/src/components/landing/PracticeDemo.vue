<script setup>
import { ref } from 'vue'
import { useSpeech } from '@/composables/useSpeech'
import AppIcon from '@/components/ui/AppIcon.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import PartOfSpeech from '@/components/ui/PartOfSpeech.vue'
import t from '@/locales/vi'

// Hai câu ôn mẫu cho khách thử trên landing: nghĩa → chọn từ, phiên âm → gõ từ
const p = t.landing.how.practice
const { speak } = useSpeech()

// --- Chọn đáp án ---
const chosen = ref(null)
function choose(option) {
  if (chosen.value) return
  chosen.value = option
  speak(p.choiceAnswer)
}
function optionClass(option) {
  if (!chosen.value) return 'border-border hover:border-primary-300'
  if (option === p.choiceAnswer) return 'border-success bg-success/10 text-success'
  if (option === chosen.value) return 'border-danger bg-danger/10 text-danger'
  return 'border-border opacity-50'
}

// --- Gõ từ ---
const typed = ref('')
const typedResult = ref(null) // null | true | false
const showHint = ref(false)
function check() {
  if (!typed.value.trim()) return
  typedResult.value = typed.value.trim().replace(/\s+/g, ' ').toLowerCase() === p.typeAnswer
  speak(p.typeAnswer)
}
function resetType() {
  typed.value = ''
  typedResult.value = null
  showHint.value = false
}
</script>

<template>
  <div class="space-y-4">
    <!-- Nghĩa → chọn từ -->
    <div class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
      <div class="flex items-center justify-between">
        <span class="rounded-full bg-primary-50 px-3 py-1 text-xs font-medium text-primary-600">{{ p.choiceBadge }}</span>
        <button
          v-if="chosen"
          type="button"
          class="rounded text-xs font-medium text-primary-600 hover:underline"
          @click="chosen = null"
        >
          {{ p.retry }}
        </button>
      </div>
      <p class="mt-4 text-sm text-ink-500">
        {{ p.choicePrompt }}
      </p>
      <p class="mt-1 flex flex-wrap items-center gap-2 text-xl font-bold">
        {{ p.choiceMeaning }}
        <PartOfSpeech :value="p.choicePos" />
      </p>
      <div class="mt-4 space-y-2">
        <button
          v-for="(option, i) in p.choiceOptions"
          :key="option"
          type="button"
          class="flex w-full items-center gap-3 rounded-2xl border-2 bg-surface px-4 py-2.5 text-left text-sm font-medium transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
          :class="optionClass(option)"
          :disabled="Boolean(chosen)"
          @click="choose(option)"
        >
          <span class="flex h-7 w-7 items-center justify-center rounded-full bg-canvas text-xs font-bold text-ink-500">{{ i + 1 }}</span>
          {{ option }}
        </button>
      </div>
      <p
        v-if="chosen"
        class="mt-3 rounded-xl px-3 py-2 text-sm"
        :class="chosen === p.choiceAnswer ? 'bg-success/10 text-success' : 'bg-danger/10 text-danger'"
        role="status"
      >
        <b>{{ chosen === p.choiceAnswer ? p.correct : p.wrong }}</b> {{ p.choiceAnswer }} – {{ p.choiceMeaning }}
      </p>
    </div>

    <!-- Phiên âm → gõ từ -->
    <form
      class="rounded-2xl border border-border bg-surface p-5 text-center shadow-sm sm:p-6"
      autocomplete="off"
      novalidate
      @submit.prevent="check"
    >
      <div class="flex items-center justify-between">
        <span class="rounded-full bg-primary-50 px-3 py-1 text-xs font-medium text-primary-600">{{ p.typeBadge }}</span>
        <button
          v-if="typedResult !== null"
          type="button"
          class="rounded text-xs font-medium text-primary-600 hover:underline"
          @click="resetType"
        >
          {{ p.retry }}
        </button>
      </div>
      <p class="mt-4 text-sm text-ink-500">
        {{ p.typePrompt }}
      </p>
      <PartOfSpeech
        :value="p.typePos"
        class="mt-2"
      />
      <p class="mt-1 font-mono text-2xl font-semibold">
        {{ p.typePhonetic }}
      </p>
      <input
        v-model="typed"
        type="text"
        spellcheck="false"
        autocapitalize="off"
        :placeholder="p.typePlaceholder"
        :aria-label="p.typePrompt"
        :disabled="typedResult !== null"
        class="mx-auto mt-3 block w-full max-w-xs rounded-2xl border-2 bg-canvas px-4 py-3 text-center text-lg font-semibold text-ink-900 outline-none transition placeholder:text-base placeholder:font-normal placeholder:text-ink-400 focus:border-primary-600 focus:ring-2 focus:ring-primary-600/40"
        :class="typedResult === null ? 'border-border' : typedResult ? 'border-success' : 'border-danger'"
      >
      <p class="mt-2 min-h-[1.25rem] text-xs text-primary-600">
        {{ showHint ? p.hintText(p.typeAnswer[0], p.typeAnswer.length) : '' }}
      </p>
      <div
        v-if="typedResult === null"
        class="mt-2 flex flex-wrap justify-center gap-2"
      >
        <BaseButton
          variant="outline"
          :disabled="showHint"
          @click="showHint = true"
        >
          <AppIcon
            name="lightbulb"
            class="h-4 w-4"
          />
          {{ p.hint }}
        </BaseButton>
        <BaseButton
          type="submit"
          :disabled="!typed.trim()"
        >
          {{ p.check }}
        </BaseButton>
      </div>
      <p
        v-else
        class="mt-3 rounded-xl px-3 py-2 text-sm"
        :class="typedResult ? 'bg-success/10 text-success' : 'bg-danger/10 text-danger'"
        role="status"
      >
        <b>{{ typedResult ? p.correct : p.wrong }}</b> {{ p.typeAnswer }} <span class="font-mono">{{ p.typePhonetic }}</span> – {{ p.typeMeaning }}
      </p>
    </form>
  </div>
</template>
