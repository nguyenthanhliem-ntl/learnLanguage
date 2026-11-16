import { onBeforeUnmount, ref } from 'vue'

const supported =
  typeof window !== 'undefined' && 'speechSynthesis' in window && 'SpeechSynthesisUtterance' in window

/** Prefer a good en-US voice (Google/Microsoft), then any English voice. */
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

// How many times the user pressed the speaker for each word (shared by every speaker button): even presses play slower
const tapCounts = new Map()

// Chrome loads the voice list asynchronously: call it once up front so the first playback has a voice
if (supported) {
  window.speechSynthesis.getVoices()
}

/**
 * Pronounces English with the Web Speech API.
 * If the browser does not support it, {@code supported = false} and speak() does nothing.
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
   * Plays when the user presses a speaker button: for each word, presses 1, 3, 5... read at {@code rate},
   * presses 2, 4, 6... read slowly ({@code SLOW_RATE}) so every sound is clear.
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
