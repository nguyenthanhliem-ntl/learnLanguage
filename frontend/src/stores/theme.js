import { ref, watch } from 'vue'
import { defineStore } from 'pinia'

const KEY = 'vocab.theme'

function readSaved() {
  try {
    return localStorage.getItem(KEY) === 'dark' ? 'dark' : 'light'
  } catch {
    return 'light'
  }
}

function apply(theme) {
  document.documentElement.classList.toggle('dark', theme === 'dark')
}

/** Light / Dark theme, saved in the browser. index.html applies it early to avoid a colour flash on load. */
export const useThemeStore = defineStore('theme', () => {
  const theme = ref(readSaved())
  apply(theme.value)

  watch(theme, (value) => {
    apply(value)
    try {
      localStorage.setItem(KEY, value)
    } catch {
      // if it cannot be saved, it only applies to this visit
    }
  })

  function setTheme(value) {
    theme.value = value === 'dark' ? 'dark' : 'light'
  }

  return { theme, setTheme }
})
