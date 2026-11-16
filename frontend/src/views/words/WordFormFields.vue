<script setup>
import { ref, useId } from 'vue'
import BaseInput from '@/components/ui/BaseInput.vue'
import PartOfSpeech from '@/components/ui/PartOfSpeech.vue'
import SpeakButton from '@/components/ui/SpeakButton.vue'
import StatusBadge from '@/components/ui/StatusBadge.vue'
import t from '@/locales/vi'

// 4 input fields shared by the Add word form and the Edit word dialog
const form = defineModel({ type: Object, required: true }) // { word, partOfSpeech, phonetic, meaning }

defineProps({
  checking: { type: Boolean, default: false },
  duplicate: { type: Boolean, default: false },
  sameWord: { type: Array, default: () => [] },
  large: { type: Boolean, default: false },
})

const posListId = useId()
const wordInput = ref(null)

defineExpose({
  focus: () => wordInput.value?.focus(),
})
</script>

<template>
  <div class="space-y-5">
    <!-- Word + speaker button -->
    <div>
      <div class="flex items-start gap-3">
        <div class="min-w-0 flex-1">
          <BaseInput
            ref="wordInput"
            v-model="form.word"
            :class="large ? 'text-lg' : ''"
            :label="t.wordForm.word"
            :placeholder="t.wordForm.wordPlaceholder"
            :hint="checking ? t.wordForm.checking : ''"
            maxlength="100"
            autocapitalize="off"
            spellcheck="false"
            required
          />
        </div>
        <SpeakButton
          :text="form.word"
          class="mt-[30px]"
        />
      </div>

      <!-- Existing meanings of this word -->
      <div
        v-if="sameWord.length"
        class="mt-2 rounded-xl border px-4 py-3 text-sm"
        :class="duplicate ? 'border-danger/30 bg-danger/5' : 'border-primary-200 bg-primary-50/60'"
      >
        <p :class="duplicate ? 'font-medium text-danger' : 'text-ink-500'">
          {{ duplicate ? t.wordForm.duplicate : t.wordForm.existingMeanings(sameWord.length) }}
        </p>
        <ul class="mt-2 space-y-1.5">
          <li
            v-for="w in sameWord"
            :key="w.id"
            class="flex flex-wrap items-center gap-x-2 gap-y-1"
          >
            <span class="font-semibold text-ink-900">{{ w.word }}</span>
            <PartOfSpeech :value="w.partOfSpeech" />
            <span
              v-if="w.phonetic"
              class="font-mono text-ink-500"
            >{{ w.phonetic }}</span>
            <span class="text-ink-700">— {{ w.meaning }}</span>
            <StatusBadge :status="w.status" />
          </li>
        </ul>
      </div>
    </div>

    <div class="grid gap-5 sm:grid-cols-2">
      <BaseInput
        v-model="form.partOfSpeech"
        :label="t.wordForm.partOfSpeech"
        :placeholder="t.wordForm.partOfSpeechPlaceholder"
        :list="posListId"
        maxlength="50"
        autocapitalize="off"
        spellcheck="false"
        required
      />
      <BaseInput
        v-model="form.phonetic"
        :label="t.wordForm.phonetic"
        :placeholder="t.wordForm.phoneticPlaceholder"
        maxlength="100"
        spellcheck="false"
        required
        mono
      />
    </div>
    <!-- Common part-of-speech suggestions, free text still allowed -->
    <datalist :id="posListId">
      <option
        v-for="p in t.wordForm.partOfSpeechSuggestions"
        :key="p"
        :value="p"
      />
    </datalist>

    <BaseInput
      v-model="form.meaning"
      :label="t.wordForm.meaning"
      :placeholder="t.wordForm.meaningPlaceholder"
      maxlength="1000"
      required
    />
  </div>
</template>
