import { ref, watch } from 'vue'
import { wordsApi } from '@/api/words'
import { useDebounceFn } from './useDebounce'

/**
 * Duplicate check while typing (300ms debounce).
 * - {@code duplicate}: true if the bank already has an entry identical in all 4 columns (saving is blocked)
 * - {@code sameWord}: existing meanings of the same word (for reference)
 *
 * @param formGetter returns { word, partOfSpeech, phonetic, meaning }
 * @param excludeId  id of the word being edited (skips itself)
 */
export function useWordDuplicateCheck(formGetter, excludeId = () => null) {
  const checking = ref(false)
  const duplicate = ref(false)
  const sameWord = ref([])
  let controller = null

  async function run(form) {
    const own = new AbortController()
    controller = own
    try {
      const res = await wordsApi.check({ ...form, excludeId: excludeId() ?? undefined }, own.signal)
      if (controller === own) {
        duplicate.value = res.exists
        sameWord.value = res.sameWord
      }
    } catch {
      // Cancelled by further typing or a network error: ignore, the backend checks again on save
    } finally {
      if (controller === own) checking.value = false
    }
  }

  const debouncedRun = useDebounceFn(run, 300)

  function cancelPending() {
    debouncedRun.cancel()
    controller?.abort()
    controller = null
    checking.value = false
  }

  function reset() {
    cancelPending()
    duplicate.value = false
    sameWord.value = []
  }

  /** Checks immediately without waiting for the debounce (e.g. when saving reports a duplicate). */
  function checkNow() {
    const form = formGetter()
    if (form.word?.trim()) {
      checking.value = true
      run(form)
    }
  }

  watch(formGetter, (form) => {
    cancelPending()
    // Keep the previous meanings while waiting so the UI does not jump
    duplicate.value = false
    if (form.word?.trim()) {
      checking.value = true
      debouncedRun(form)
    } else {
      sameWord.value = []
    }
  }, { deep: true })

  return { checking, duplicate, sameWord, reset, checkNow }
}
