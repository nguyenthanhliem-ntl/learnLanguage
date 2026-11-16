import { computed } from 'vue'
import { useThemeStore } from '@/stores/theme'

/**
 * Đọc màu design token từ biến CSS (--c-<token>) cho những chỗ không dùng được class Tailwind,
 * vd canvas của Chart.js. Tự tính lại khi đổi giao diện Sáng/Tối.
 */
export function useThemeColors(names) {
  const themeStore = useThemeStore()

  return computed(() => {
    // Phụ thuộc vào theme để tính lại sau khi class .dark đổi
    void themeStore.theme
    const style = getComputedStyle(document.documentElement)
    return Object.fromEntries(names.map((name) => {
      const channels = style.getPropertyValue(`--c-${name}`).trim()
      return [name, (alpha = 1) => `rgb(${channels} / ${alpha})`]
    }))
  })
}
