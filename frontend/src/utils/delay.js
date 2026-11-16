/** Thời gian hiển thị thông báo thành công trước khi chuyển trang. */
export const SUCCESS_REDIRECT_DELAY = 1200

export function delay(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms))
}
