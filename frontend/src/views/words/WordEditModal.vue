<script setup>
import { computed, reactive, ref, watch } from 'vue'
import { wordsApi } from '@/api/words'
import { getErrorDetails, getErrorMessage } from '@/api/errors'
import { useWordDuplicateCheck } from '@/composables/useWordDuplicateCheck'
import AlertBox from '@/components/ui/AlertBox.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import BaseModal from '@/components/ui/BaseModal.vue'
import WordFormFields from './WordFormFields.vue'
import t from '@/locales/vi'

const props = defineProps({
  word: { type: Object, default: null }, // null = closed
})
const emit = defineEmits(['close', 'saved'])

const FIELDS = ['word', 'partOfSpeech', 'phonetic', 'meaning']

const form = reactive({ word: '', partOfSpeech: '', phonetic: '', meaning: '' })
const saving = ref(false)
const error = ref(null)

const { checking, duplicate, sameWord, reset: resetCheck, checkNow } =
  useWordDuplicateCheck(() => ({ ...form }), () => props.word?.id)

watch(() => props.word, (w) => {
  if (!w) return
  // Older words (before the part-of-speech column) may lack it: the user must fill it in when editing
  for (const f of FIELDS) form[f] = w[f] ?? ''
  error.value = null
  resetCheck()
})

const unchanged = computed(() => props.word && FIELDS.every((f) => form[f] === (props.word[f] ?? '')))
const filled = computed(() => FIELDS.every((f) => form[f].trim() !== ''))
const canSave = computed(() => filled.value && !duplicate.value && !unchanged.value && !saving.value)

async function save() {
  if (!canSave.value) return
  saving.value = true
  error.value = null
  try {
    const updated = await wordsApi.update(props.word.id, { ...form })
    emit('saved', updated)
  } catch (e) {
    if (e.response?.status === 409) checkNow()
    error.value = { message: getErrorMessage(e), details: getErrorDetails(e) }
  } finally {
    saving.value = false
  }
}
</script>

<template>
  <BaseModal
    :open="Boolean(word)"
    :title="t.words.editTitle"
    :persistent="saving"
    @close="emit('close')"
  >
    <form
      class="space-y-5"
      novalidate
      @submit.prevent="save"
    >
      <AlertBox
        v-if="error"
        :message="error.message"
        :details="error.details"
      />
      <WordFormFields
        v-model="form"
        :checking="checking"
        :duplicate="duplicate"
        :same-word="sameWord"
      />
      <div class="flex flex-col-reverse gap-3 sm:flex-row sm:justify-end">
        <BaseButton
          variant="outline"
          :disabled="saving"
          @click="emit('close')"
        >
          {{ t.common.cancel }}
        </BaseButton>
        <BaseButton
          type="submit"
          :loading="saving"
          :disabled="!canSave"
        >
          {{ t.common.save }}
        </BaseButton>
      </div>
    </form>
  </BaseModal>
</template>
