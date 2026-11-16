import { computed, ref } from 'vue'
import { defineStore } from 'pinia'

/**
 * Đếm số tác vụ đang tải (request API, chuyển trang).
 * Loading bar trên đầu trang hiện khi còn ít nhất 1 tác vụ chưa xong.
 */
export const useLoadingStore = defineStore('loading', () => {
  const pending = ref(0)
  // Chuyển trang dùng cờ riêng: redirect trong guard có thể chạy beforeEach nhiều lần
  const routing = ref(false)
  const active = computed(() => pending.value > 0 || routing.value)

  function start() {
    pending.value += 1
  }

  function done() {
    pending.value = Math.max(0, pending.value - 1)
  }

  function setRouting(value) {
    routing.value = value
  }

  return { pending, routing, active, start, done, setRouting }
})
