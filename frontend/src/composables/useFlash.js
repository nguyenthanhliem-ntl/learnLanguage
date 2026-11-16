import { onBeforeUnmount, ref } from 'vue'

/** Short message that hides itself after {@code ms} milliseconds. */
export function useFlash(ms = 3000) {
  const message = ref('')
  let timer = null

  function show(text) {
    message.value = text
    clearTimeout(timer)
    timer = setTimeout(() => {
      message.value = ''
    }, ms)
  }

  onBeforeUnmount(() => clearTimeout(timer))
  return { message, show }
}
