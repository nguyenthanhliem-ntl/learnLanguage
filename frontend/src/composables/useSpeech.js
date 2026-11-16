import { onBeforeUnmount, ref } from 'vue'

const supported =
  typeof window !== 'undefined' && 'speechSynthesis' in window && 'SpeechSynthesisUtterance' in window

/** Ưu tiên giọng en-US chất lượng tốt (Google/Microsoft), sau đó tới bất kỳ giọng tiếng Anh nào. */
function pickVoice() {
  const voices = window.speechSynthesis.getVoices()
  return (
    voices.find((v) => v.lang === 'en-US' && /Google|Microsoft|Samantha/i.test(v.name)) ||
    voices.find((v) => v.lang === 'en-US') ||
    voices.find((v) => v.lang?.toLowerCase().startsWith('en')) ||
    null
  )
}

export const NORMAL_RATE = 0.9
export const SLOW_RATE = 0.5

// Số lần người dùng bấm nút loa của từng từ (dùng chung mọi nút loa): lần chẵn phát chậm
const tapCounts = new Map()

// Chrome tải danh sách giọng bất đồng bộ: gọi trước một lần để lần phát đầu có giọng
if (supported) {
  window.speechSynthesis.getVoices()
}

/**
 * Phát âm tiếng Anh bằng Web Speech API.
 * Trình duyệt không hỗ trợ thì {@code supported = false} và speak() không làm gì.
 */
export function useSpeech() {
  const speaking = ref(false)

  function speak(text, { rate = NORMAL_RATE } = {}) {
    if (!supported || !text?.trim()) return false
    const synth = window.speechSynthesis
    synth.cancel()
    const utterance = new SpeechSynthesisUtterance(text.trim())
    utterance.lang = 'en-US'
    utterance.rate = rate
    const voice = pickVoice()
    if (voice) utterance.voice = voice
    utterance.onstart = () => { speaking.value = true }
    utterance.onend = () => { speaking.value = false }
    utterance.onerror = () => { speaking.value = false }
    synth.speak(utterance)
    return true
  }

  /**
   * Phát khi người dùng bấm nút loa: với mỗi từ, lần bấm 1, 3, 5... đọc tốc độ {@code rate},
   * lần 2, 4, 6... đọc chậm ({@code SLOW_RATE}) để nghe rõ từng âm.
   */
  function speakTap(text, { rate = NORMAL_RATE } = {}) {
    const key = text?.trim().toLowerCase()
    if (!key) return false
    const count = (tapCounts.get(key) ?? 0) + 1
    tapCounts.set(key, count)
    return speak(text, { rate: count % 2 === 0 ? SLOW_RATE : rate })
  }

  function stop() {
    if (supported) window.speechSynthesis.cancel()
    speaking.value = false
  }

  onBeforeUnmount(() => {
    if (speaking.value) stop()
  })

  return { supported, speaking, speak, speakTap, stop }
}
