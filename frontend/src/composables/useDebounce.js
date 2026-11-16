import { onBeforeUnmount } from 'vue'

/** Trả về hàm chỉ chạy {@code fn} sau khi ngừng gọi {@code ms} mili-giây. Tự hủy khi component unmount. */
export function useDebounceFn(fn, ms = 300) {
  let timer = null

  function debounced(...args) {
    clearTimeout(timer)
    timer = setTimeout(() => fn(...args), ms)
  }

  debounced.cancel = () => clearTimeout(timer)

  onBeforeUnmount(() => clearTimeout(timer))
  return debounced
}
