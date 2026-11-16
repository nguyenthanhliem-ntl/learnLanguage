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
 * Trạng thái Luyện tập trong một lần đăng nhập: đã vượt qua phần ôn (≥70%) hay chưa.
 * Đăng nhập / đăng xuất sẽ reset, nên mỗi lần đăng nhập vào Luyện tập đều phải ôn trước.
 */
export const usePracticeStore = defineStore('practice', () => {
  const reviewPassed = ref(readSaved())

  function setReviewPassed(value) {
    reviewPassed.value = value
    try {
      if (value) sessionStorage.setItem(KEY, '1')
      else sessionStorage.removeItem(KEY)
    } catch {
      // bỏ qua: chỉ mất trạng thái khi tải lại trang
    }
  }

  function reset() {
    setReviewPassed(false)
  }

  return { reviewPassed, setReviewPassed, reset }
})
