<script setup>
import { nextTick, onBeforeUnmount, ref, watch } from 'vue'
import AppIcon from './AppIcon.vue'
import t from '@/locales/vi'

const props = defineProps({
  open: { type: Boolean, default: false },
  title: { type: String, required: true },
  // Không cho đóng khi đang lưu
  persistent: { type: Boolean, default: false },
})
const emit = defineEmits(['close'])

const panel = ref(null)
let lastFocused = null

function close() {
  if (!props.persistent) emit('close')
}

function onKeydown(e) {
  if (e.key === 'Escape') close()
}

watch(() => props.open, async (open) => {
  if (open) {
    lastFocused = document.activeElement
    document.addEventListener('keydown', onKeydown)
    await nextTick()
    // Focus ô nhập đầu tiên (hoặc chính panel)
    const first = panel.value?.querySelector('input, textarea, select, button:not([data-close])')
    ;(first ?? panel.value)?.focus()
  } else {
    document.removeEventListener('keydown', onKeydown)
    lastFocused?.focus?.()
  }
})

onBeforeUnmount(() => document.removeEventListener('keydown', onKeydown))
</script>

<template>
  <Teleport to="body">
    <Transition
      enter-active-class="transition duration-200"
      enter-from-class="opacity-0"
      leave-active-class="transition duration-150"
      leave-to-class="opacity-0"
    >
      <div
        v-if="open"
        class="fixed inset-0 z-40 flex items-end justify-center bg-black/50 p-0 sm:items-center sm:p-4"
        @click.self="close"
      >
        <div
          ref="panel"
          role="dialog"
          aria-modal="true"
          :aria-label="title"
          tabindex="-1"
          class="max-h-[90vh] w-full overflow-y-auto rounded-t-3xl bg-surface p-6 shadow-xl focus:outline-none sm:max-w-lg sm:rounded-3xl"
        >
          <div class="mb-5 flex items-start justify-between gap-4">
            <h2 class="text-lg font-semibold">
              {{ title }}
            </h2>
            <button
              type="button"
              data-close
              class="-m-1 rounded-full p-1 text-ink-400 transition hover:bg-canvas hover:text-ink-900 disabled:opacity-40"
              :disabled="persistent"
              :aria-label="t.common.close"
              @click="close"
            >
              <AppIcon
                name="close"
                class="h-5 w-5"
              />
            </button>
          </div>
          <slot />
        </div>
      </div>
    </Transition>
  </Teleport>
</template>
