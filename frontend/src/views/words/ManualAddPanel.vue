<script setup>
import { computed, nextTick, onMounted, reactive, ref } from 'vue'
import { RouterLink } from 'vue-router'
import { wordsApi } from '@/api/words'
import { getErrorDetails, getErrorMessage } from '@/api/errors'
import { useWordDuplicateCheck } from '@/composables/useWordDuplicateCheck'
import { useFlash } from '@/composables/useFlash'
import AlertBox from '@/components/ui/AlertBox.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import PartOfSpeech from '@/components/ui/PartOfSpeech.vue'
import SpeakButton from '@/components/ui/SpeakButton.vue'
import WordFormFields from './WordFormFields.vue'
import t from '@/locales/vi'

const emptyForm = () => ({ word: '', partOfSpeech: '', phonetic: '', meaning: '' })

const form = reactive(emptyForm())
const fields = ref(null)
const saving = ref(false)
const error = ref(null)
const recent = ref([])
const { message: flashMessage, show: showFlash } = useFlash()

const { checking, duplicate, sameWord, reset: resetCheck, checkNow } = useWordDuplicateCheck(() => ({ ...form }))

// Bắt buộc đủ 4 ô
const filled = computed(() => Object.values(form).every((v) => v.trim() !== ''))
const canSave = computed(() => filled.value && !duplicate.value && !saving.value)

async function save() {
  if (!canSave.value) return
  saving.value = true
  error.value = null
  try {
    const created = await wordsApi.create({ ...form })
    recent.value.unshift(created)
    showFlash(t.addWord.added(created.word))
    Object.assign(form, emptyForm())
    resetCheck()
    await nextTick()
    fields.value?.focus()
  } catch (e) {
    if (e.response?.status === 409) {
      checkNow() // hiện các nghĩa đang lưu
    } else {
      error.value = { message: getErrorMessage(e), details: getErrorDetails(e) }
    }
  } finally {
    saving.value = false
  }
}

onMounted(() => fields.value?.focus())
</script>

<template>
  <div class="space-y-6">
    <form
      class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6"
      novalidate
      @submit.prevent="save"
    >
      <div class="space-y-5">
        <AlertBox
          v-if="error"
          :message="error.message"
          :details="error.details"
        />

        <WordFormFields
          ref="fields"
          v-model="form"
          :checking="checking"
          :duplicate="duplicate"
          :same-word="sameWord"
          large
        />

        <div class="flex flex-col-reverse gap-3 sm:flex-row sm:items-center sm:justify-between">
          <p class="text-center text-xs text-ink-500 sm:text-left">
            {{ t.addWord.enterHint }}
          </p>
          <BaseButton
            type="submit"
            size="lg"
            :loading="saving"
            :disabled="!canSave"
          >
            {{ t.addWord.saveButton }}
          </BaseButton>
        </div>

        <AlertBox
          v-if="flashMessage"
          variant="success"
          :message="flashMessage"
        />
      </div>
    </form>

    <!-- Danh sách từ vừa thêm -->
    <section v-if="recent.length">
      <div class="mb-3 flex items-center justify-between">
        <h2 class="font-semibold">
          {{ t.addWord.recentTitle(recent.length) }}
        </h2>
        <RouterLink
          :to="{ name: 'words' }"
          class="rounded text-sm font-medium text-primary-600 hover:text-primary-700"
        >
          {{ t.addWord.viewAll }}
        </RouterLink>
      </div>
      <TransitionGroup
        tag="ul"
        class="space-y-2"
        enter-active-class="transition duration-300"
        enter-from-class="-translate-y-2 opacity-0"
      >
        <li
          v-for="w in recent"
          :key="w.id"
          class="flex items-center gap-3 rounded-2xl border border-border bg-surface px-4 py-3 shadow-sm"
        >
          <SpeakButton
            :text="w.word"
            size="sm"
          />
          <div class="min-w-0 flex-1">
            <p class="flex flex-wrap items-center gap-x-2 gap-y-0.5">
              <span class="font-semibold">{{ w.word }}</span>
              <PartOfSpeech :value="w.partOfSpeech" />
              <span class="font-mono text-sm text-ink-500">{{ w.phonetic }}</span>
            </p>
            <p class="truncate text-sm text-ink-500">
              {{ w.meaning }}
            </p>
          </div>
        </li>
      </TransitionGroup>
    </section>
  </div>
</template>
