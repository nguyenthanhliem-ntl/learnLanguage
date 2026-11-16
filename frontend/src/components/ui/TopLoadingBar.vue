<script setup>
import { onBeforeUnmount, ref, watch } from 'vue'
import { useLoadingStore } from '@/stores/loading'

// Thin progress bar at the top: creeps towards ~90% while loading, jumps to 100% when done, then hides
const loading = useLoadingStore()
const progress = ref(0)
const visible = ref(false)

let trickleTimer = null
let hideTimer = null
let showDelayTimer = null

function begin() {
  clearTimeout(hideTimer)
  if (visible.value) return
  // Wait 100ms before showing so very fast requests do not make the bar flicker
  showDelayTimer = setTimeout(() => {
    visible.value = true
    progress.value = 8
    trickleTimer = setInterval(() => {
      // Slows down as it gets closer to 90%
      progress.value += (90 - progress.value) * 0.08
    }, 200)
  }, 100)
}

function finish() {
  clearTimeout(showDelayTimer)
  clearInterval(trickleTimer)
  if (!visible.value) return
  progress.value = 100
  hideTimer = setTimeout(() => {
    visible.value = false
    progress.value = 0
  }, 300)
}

watch(() => loading.active, (active) => (active ? begin() : finish()), { immediate: true })

onBeforeUnmount(() => {
  clearTimeout(showDelayTimer)
  clearTimeout(hideTimer)
  clearInterval(trickleTimer)
})
</script>

<template>
  <div
    class="pointer-events-none fixed inset-x-0 top-0 z-50 h-1 transition-opacity duration-300"
    :class="visible ? 'opacity-100' : 'opacity-0'"
    role="progressbar"
    :aria-hidden="!visible"
    :aria-valuenow="Math.round(progress)"
    aria-valuemin="0"
    aria-valuemax="100"
  >
    <div
      class="h-full rounded-r-full bg-primary-600 shadow-[0_0_8px] shadow-primary-600/60 transition-[width] duration-200 ease-out"
      :style="{ width: `${progress}%` }"
    />
  </div>
</template>
