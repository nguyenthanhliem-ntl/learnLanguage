import { onBeforeUnmount, onMounted } from 'vue'

/**
 * Registers keyboard shortcuts while the component is shown.
 * {@code handlers} looks like { ' ': fn, ArrowRight: fn, '1': fn }. Ignored while typing in an input
 * or while a popup is open.
 */
export function useKeyboardShortcuts(handlers) {
  function onKeydown(e) {
    if (e.ctrlKey || e.metaKey || e.altKey) return
    const target = e.target
    const typing = target instanceof HTMLElement &&
      (target.isContentEditable || ['INPUT', 'TEXTAREA', 'SELECT'].includes(target.tagName))
    if (typing || document.querySelector('[role="dialog"]')) return

    const handler = handlers[e.key]
    if (handler) {
      e.preventDefault()
      handler(e)
    }
  }

  onMounted(() => window.addEventListener('keydown', onKeydown))
  onBeforeUnmount(() => window.removeEventListener('keydown', onKeydown))
}
