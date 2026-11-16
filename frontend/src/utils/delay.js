/** How long the success message is shown before navigating. */
export const SUCCESS_REDIRECT_DELAY = 1200

export function delay(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms))
}
