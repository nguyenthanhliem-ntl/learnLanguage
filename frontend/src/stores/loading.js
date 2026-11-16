import { computed, ref } from 'vue'
import { defineStore } from 'pinia'

/**
 * Counts loading tasks (API requests, navigation).
 * The loading bar at the top is shown while at least one task is unfinished.
 */
export const useLoadingStore = defineStore('loading', () => {
  const pending = ref(0)
  // Navigation uses its own flag: redirects in guards can run beforeEach several times
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
