import { ref } from 'vue'
import { defineStore } from 'pinia'

const KEY = 'vocab.practice.reviewPassed'

function readSaved() {
  try {
    const raw = sessionStorage.getItem(KEY)
    // Older versions stored '1' for English only
    if (raw === '1') return { en: true }
    return raw ? JSON.parse(raw) : {}
  } catch {
    return {}
  }
}

/**
 * Practice state for one login session, per language: whether the first review (≥70%) has been passed.
 * Signing in / out resets it, so every login has to review first in Practice.
 */
export const usePracticeStore = defineStore('practice', () => {
  const passed = ref(readSaved())

  function save() {
    try {
      if (Object.values(passed.value).some(Boolean)) sessionStorage.setItem(KEY, JSON.stringify(passed.value))
      else sessionStorage.removeItem(KEY)
    } catch {
      // ignore: the state is only lost on page reload
    }
  }

  const isPassed = (lang = 'en') => Boolean(passed.value[lang])

  function setReviewPassed(value, lang = 'en') {
    passed.value = { ...passed.value, [lang]: value }
    save()
  }

  function reset() {
    passed.value = {}
    save()
  }

  return { isPassed, setReviewPassed, reset }
})
