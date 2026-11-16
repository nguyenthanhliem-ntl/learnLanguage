import { ref, watch } from 'vue'
import { wordsApi } from '@/api/words'
import { useDebounceFn } from './useDebounce'

/**
 * Kiểm tra trùng khi đang gõ (debounce 300ms).
 * - {@code duplicate}: true nếu kho đã có mục giống hệt cả 4 cột (không cho lưu)
 * - {@code sameWord}: các nghĩa đã có của cùng từ này (để tham khảo)
 *
 * @param formGetter trả về { word, partOfSpeech, phonetic, meaning }
 * @param excludeId  id của từ đang sửa (bỏ qua chính nó)
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
      // Bị hủy do gõ tiếp hoặc lỗi mạng: bỏ qua, backend vẫn kiểm tra lại khi lưu
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

  /** Kiểm tra ngay, không chờ debounce (vd khi lưu bị báo trùng). */
  function checkNow() {
    const form = formGetter()
    if (form.word?.trim()) {
      checking.value = true
      run(form)
    }
  }

  watch(formGetter, (form) => {
    cancelPending()
    // Giữ danh sách nghĩa cũ trong lúc chờ để giao diện không bị giật
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
