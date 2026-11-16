import { onBeforeUnmount } from 'vue'

/** Returns a function that only runs {@code fn} after calls stop for {@code ms} milliseconds. Cancelled when the component unmounts. */
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
