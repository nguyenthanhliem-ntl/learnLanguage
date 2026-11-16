import { onBeforeUnmount, onMounted } from 'vue'

/**
 * Đăng ký phím tắt khi component đang hiển thị.
 * {@code handlers} dạng { ' ': fn, ArrowRight: fn, '1': fn }. Bỏ qua khi đang gõ trong ô nhập
 * hoặc khi đang có popup mở.
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
