import { computed } from 'vue'
import { useThemeStore } from '@/stores/theme'

/**
 * Reads design-token colours from CSS variables (--c-<token>) where Tailwind classes cannot be used,
 * e.g. the Chart.js canvas. Recomputed when switching between Light and Dark.
 */
export function useThemeColors(names) {
  const themeStore = useThemeStore()

  return computed(() => {
    // Depends on the theme so it is recomputed after the .dark class changes
    void themeStore.theme
    const style = getComputedStyle(document.documentElement)
    return Object.fromEntries(names.map((name) => {
      const channels = style.getPropertyValue(`--c-${name}`).trim()
      return [name, (alpha = 1) => `rgb(${channels} / ${alpha})`]
    }))
  })
}
