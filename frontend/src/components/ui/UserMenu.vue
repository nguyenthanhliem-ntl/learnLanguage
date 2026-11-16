<script setup>
import { computed, onBeforeUnmount, ref, watch } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import { useAuthStore } from '@/stores/auth'
import { useThemeStore } from '@/stores/theme'
import AppIcon from './AppIcon.vue'
import t from '@/locales/vi'

// User menu at the right of the header: Account, Light/Dark theme, Sign out
const auth = useAuthStore()
const themeStore = useThemeStore()
const router = useRouter()
const route = useRoute()

const open = ref(false)
const root = ref(null)

const username = computed(() => auth.user?.username ?? '')
const initial = computed(() => username.value.charAt(0).toUpperCase())

function onDocumentClick(e) {
  if (root.value && !root.value.contains(e.target)) open.value = false
}
function onKeydown(e) {
  if (e.key === 'Escape') open.value = false
}

watch(open, (value) => {
  if (value) {
    document.addEventListener('click', onDocumentClick)
    document.addEventListener('keydown', onKeydown)
  } else {
    document.removeEventListener('click', onDocumentClick)
    document.removeEventListener('keydown', onKeydown)
  }
})
// Close the menu on navigation
watch(() => route.fullPath, () => { open.value = false })

onBeforeUnmount(() => {
  document.removeEventListener('click', onDocumentClick)
  document.removeEventListener('keydown', onKeydown)
})

function goAccount() {
  open.value = false
  router.push({ name: 'account' })
}

function logout() {
  open.value = false
  auth.logout()
  router.replace({ name: 'login' })
}

const themes = [
  { value: 'light', label: t.userMenu.light, icon: 'sun' },
  { value: 'dark', label: t.userMenu.dark, icon: 'moon' },
]
</script>

<template>
  <div
    ref="root"
    class="relative"
  >
    <button
      type="button"
      class="flex items-center gap-2 rounded-full border border-border bg-surface py-1 pl-1 pr-2 transition hover:border-primary-300 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40 sm:pr-3"
      :aria-expanded="open"
      aria-haspopup="menu"
      @click="open = !open"
    >
      <span class="flex h-8 w-8 items-center justify-center rounded-full bg-primary-600 text-sm font-semibold text-white">
        {{ initial }}
      </span>
      <span class="hidden max-w-[10rem] truncate text-sm font-medium sm:block">{{ username }}</span>
      <AppIcon
        name="chevronDown"
        class="h-4 w-4 text-ink-400 transition"
        :class="open ? 'rotate-180' : ''"
      />
    </button>

    <Transition
      enter-active-class="transition duration-150"
      enter-from-class="-translate-y-1 opacity-0"
      leave-active-class="transition duration-100"
      leave-to-class="opacity-0"
    >
      <div
        v-if="open"
        role="menu"
        class="absolute right-0 top-full z-40 mt-2 w-64 overflow-hidden rounded-2xl border border-border bg-surface shadow-xl"
      >
        <div class="border-b border-border px-4 py-3">
          <p class="truncate font-semibold">
            {{ username }}
          </p>
          <p class="text-xs text-ink-500">
            {{ t.userMenu.signedIn }}
          </p>
        </div>

        <div class="p-2">
          <button
            type="button"
            role="menuitem"
            class="flex w-full items-center gap-3 rounded-xl px-3 py-2.5 text-sm font-medium transition hover:bg-canvas"
            @click="goAccount"
          >
            <AppIcon
              name="user"
              class="h-5 w-5 text-ink-500"
            />
            {{ t.userMenu.account }}
          </button>

          <!-- Light / Dark theme -->
          <div class="px-3 py-2.5">
            <p class="mb-2 text-xs font-medium text-ink-500">
              {{ t.userMenu.theme }}
            </p>
            <div
              class="grid grid-cols-2 gap-1 rounded-full bg-canvas p-1"
              role="radiogroup"
              :aria-label="t.userMenu.theme"
            >
              <button
                v-for="opt in themes"
                :key="opt.value"
                type="button"
                role="radio"
                :aria-checked="themeStore.theme === opt.value"
                class="flex items-center justify-center gap-1.5 rounded-full px-3 py-1.5 text-sm font-medium transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
                :class="themeStore.theme === opt.value ? 'bg-surface text-primary-600 shadow-sm' : 'text-ink-500 hover:text-ink-900'"
                @click="themeStore.setTheme(opt.value)"
              >
                <AppIcon
                  :name="opt.icon"
                  class="h-4 w-4"
                />
                {{ opt.label }}
              </button>
            </div>
          </div>
        </div>

        <div class="border-t border-border p-2">
          <button
            type="button"
            role="menuitem"
            class="flex w-full items-center gap-3 rounded-xl px-3 py-2.5 text-sm font-medium text-danger transition hover:bg-danger/10"
            @click="logout"
          >
            <AppIcon
              name="logout"
              class="h-5 w-5"
            />
            {{ t.auth.logout }}
          </button>
        </div>
      </div>
    </Transition>
  </div>
</template>
