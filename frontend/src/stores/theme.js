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

/** Giao diện Sáng / Tối, lưu trong trình duyệt. index.html áp dụng sớm để không bị nháy màu khi tải trang. */
export const useThemeStore = defineStore('theme', () => {
  const theme = ref(readSaved())
  apply(theme.value)

  watch(theme, (value) => {
    apply(value)
    try {
      localStorage.setItem(KEY, value)
    } catch {
      // không lưu được thì chỉ áp dụng cho lần mở này
    }
  })

  function setTheme(value) {
    theme.value = value === 'dark' ? 'dark' : 'light'
  }

  return { theme, setTheme }
})
