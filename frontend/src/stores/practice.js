import { ref } from 'vue'
import { defineStore } from 'pinia'

const KEY = 'vocab.practice.reviewPassed'

function readSaved() {
  try {
    return sessionStorage.getItem(KEY) === '1'
  } catch {
    return false
  }
}

/**
 * Practice state for one login session: whether the review (≥70%) has been passed.
 * Signing in / out resets it, so every login has to review first in Practice.
 */
export const usePracticeStore = defineStore('practice', () => {
  const reviewPassed = ref(readSaved())

  function setReviewPassed(value) {
    reviewPassed.value = value
    try {
      if (value) sessionStorage.setItem(KEY, '1')
      else sessionStorage.removeItem(KEY)
    } catch {
      // ignore: the state is only lost on page reload
    }
  }

  function reset() {
    setReviewPassed(false)
  }

  return { reviewPassed, setReviewPassed, reset }
})
