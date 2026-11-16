import { onBeforeUnmount, ref } from 'vue'

/** Thông báo ngắn tự ẩn sau {@code ms} mili-giây. */
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
