/**
 * v-reveal: phần tử hiện dần (mờ → rõ, trượt lên) khi cuộn tới.
 * v-reveal="150" để trễ 150ms. Người dùng bật "giảm chuyển động" thì hiện luôn.
 */
const reduceMotion = () =>
  typeof window !== 'undefined' && window.matchMedia?.('(prefers-reduced-motion: reduce)').matches

let observer = null
function getObserver() {
  if (!observer) {
    observer = new IntersectionObserver((entries) => {
      entries.forEach((e) => {
        if (e.isIntersecting) {
          e.target.classList.add('is-visible')
          observer.unobserve(e.target)
        }
      })
    }, { threshold: 0.1, rootMargin: '0px 0px -40px 0px' })
  }
  return observer
}

export const vReveal = {
  mounted(el, binding) {
    if (reduceMotion() || !('IntersectionObserver' in window)) return
    el.classList.add('reveal')
    if (binding.value) el.style.transitionDelay = `${binding.value}ms`
    getObserver().observe(el)
  },
  unmounted(el) {
    observer?.unobserve(el)
  },
}
