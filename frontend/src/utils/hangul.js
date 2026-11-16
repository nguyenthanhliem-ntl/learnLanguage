// Hangul helpers: split / build syllables and romanize Korean (Revised Romanization, by pronunciation).
// Also used by the script that generates the Korean vocabulary data, so keep it free of browser APIs.

const BASE = 0xac00
const LAST = 0xd7a3
const VOWEL_COUNT = 21
const FINAL_COUNT = 28

/** Initial consonants in Unicode order. */
export const INITIALS = ['ㄱ', 'ㄲ', 'ㄴ', 'ㄷ', 'ㄸ', 'ㄹ', 'ㅁ', 'ㅂ', 'ㅃ', 'ㅅ', 'ㅆ', 'ㅇ', 'ㅈ', 'ㅉ', 'ㅊ', 'ㅋ', 'ㅌ', 'ㅍ', 'ㅎ']
/** Vowels in Unicode order. */
export const VOWELS = ['ㅏ', 'ㅐ', 'ㅑ', 'ㅒ', 'ㅓ', 'ㅔ', 'ㅕ', 'ㅖ', 'ㅗ', 'ㅘ', 'ㅙ', 'ㅚ', 'ㅛ', 'ㅜ', 'ㅝ', 'ㅞ', 'ㅟ', 'ㅠ', 'ㅡ', 'ㅢ', 'ㅣ']
/** Final consonants (batchim) in Unicode order; index 0 = none. */
export const FINALS = ['', 'ㄱ', 'ㄲ', 'ㄳ', 'ㄴ', 'ㄵ', 'ㄶ', 'ㄷ', 'ㄹ', 'ㄺ', 'ㄻ', 'ㄼ', 'ㄽ', 'ㄾ', 'ㄿ', 'ㅀ', 'ㅁ', 'ㅂ', 'ㅄ', 'ㅅ', 'ㅆ', 'ㅇ', 'ㅈ', 'ㅊ', 'ㅋ', 'ㅌ', 'ㅍ', 'ㅎ']

const ROMAN_INITIAL = ['g', 'kk', 'n', 'd', 'tt', 'r', 'm', 'b', 'pp', 's', 'ss', '', 'j', 'jj', 'ch', 'k', 't', 'p', 'h']
const ROMAN_VOWEL = ['a', 'ae', 'ya', 'yae', 'eo', 'e', 'yeo', 'ye', 'o', 'wa', 'wae', 'oe', 'yo', 'u', 'wo', 'we', 'wi', 'yu', 'eu', 'ui', 'i']

export const isSyllable = (ch) => {
  const c = ch?.codePointAt(0)
  return c >= BASE && c <= LAST
}

/** Splits a syllable into indexes { initial, vowel, final } of INITIALS / VOWELS / FINALS, or null. */
export function decompose(ch) {
  if (!isSyllable(ch)) return null
  const n = ch.codePointAt(0) - BASE
  return {
    initial: Math.floor(n / (VOWEL_COUNT * FINAL_COUNT)),
    vowel: Math.floor((n % (VOWEL_COUNT * FINAL_COUNT)) / FINAL_COUNT),
    final: n % FINAL_COUNT,
  }
}

/** Builds a syllable from indexes of INITIALS / VOWELS / FINALS (final 0 = no batchim). */
export function compose(initial, vowel, final = 0) {
  return String.fromCodePoint(BASE + (initial * VOWEL_COUNT + vowel) * FINAL_COUNT + final)
}

// Initial / final indexes used by the sound rules
const I = Object.fromEntries(INITIALS.map((j, i) => [j, i]))
const VOWEL_I = 20

// Sound of each final: k, n, t, l, m, p, ng
const FINAL_SOUND = {
  ㄱ: 'k', ㄲ: 'k', ㄳ: 'k', ㄺ: 'k', ㅋ: 'k',
  ㄴ: 'n', ㄵ: 'n', ㄶ: 'n',
  ㄷ: 't', ㅅ: 't', ㅆ: 't', ㅈ: 't', ㅊ: 't', ㅌ: 't', ㅎ: 't',
  ㄹ: 'l', ㄼ: 'l', ㄽ: 'l', ㄾ: 'l', ㅀ: 'l',
  ㅁ: 'm', ㄻ: 'm',
  ㅂ: 'p', ㅍ: 'p', ㅄ: 'p', ㄿ: 'p',
  ㅇ: 'ng',
}

// Linking before a silent ㅇ: [final left behind, consonant moved to the next syllable]
const LINK = {
  ㄱ: ['', 'ㄱ'], ㄲ: ['', 'ㄲ'], ㄴ: ['', 'ㄴ'], ㄷ: ['', 'ㄷ'], ㄹ: ['', 'ㄹ'], ㅁ: ['', 'ㅁ'], ㅂ: ['', 'ㅂ'],
  ㅅ: ['', 'ㅅ'], ㅆ: ['', 'ㅆ'], ㅈ: ['', 'ㅈ'], ㅊ: ['', 'ㅊ'], ㅋ: ['', 'ㅋ'], ㅌ: ['', 'ㅌ'], ㅍ: ['', 'ㅍ'],
  ㄳ: ['ㄱ', 'ㅅ'], ㄵ: ['ㄴ', 'ㅈ'], ㄺ: ['ㄹ', 'ㄱ'], ㄻ: ['ㄹ', 'ㅁ'], ㄼ: ['ㄹ', 'ㅂ'], ㄽ: ['ㄹ', 'ㅅ'],
  ㄾ: ['ㄹ', 'ㅌ'], ㄿ: ['ㄹ', 'ㅍ'], ㅄ: ['ㅂ', 'ㅅ'], ㅎ: ['', 'ㅇ'], ㄶ: ['', 'ㄴ'], ㅀ: ['', 'ㄹ'],
}

const ASPIRATE = { ㄱ: 'ㅋ', ㄷ: 'ㅌ', ㅈ: 'ㅊ', ㅂ: 'ㅍ' }
const WITHOUT_H = { ㅎ: '', ㄶ: 'ㄴ', ㅀ: 'ㄹ' }

/** Applies the sound rules between a final and the next initial; returns the new [final, initial] jamo. */
function joinSounds(fin, ini, nextVowel) {
  if (!fin) return [fin, ini]
  const sound = FINAL_SOUND[fin]

  if (ini === 'ㅇ') {
    if (fin === 'ㅇ') return [fin, ini]
    const [left, moved] = LINK[fin]
    // Palatalization: 같이 → 가치, 굳이 → 구지
    if (nextVowel === VOWEL_I && moved === 'ㅌ') return [left, 'ㅊ']
    if (nextVowel === VOWEL_I && moved === 'ㄷ') return [left, 'ㅈ']
    return [left, moved]
  }
  if (fin in WITHOUT_H) {
    if (ASPIRATE[ini]) return [WITHOUT_H[fin], ASPIRATE[ini]]
    if (ini === 'ㅅ') return [WITHOUT_H[fin], 'ㅆ']
    if (ini === 'ㄴ') return [fin === 'ㅀ' ? 'ㄹ' : 'ㄴ', fin === 'ㅀ' ? 'ㄹ' : 'ㄴ']
  }
  if (ini === 'ㅎ') {
    if (sound === 'k') return [fin === 'ㄺ' ? 'ㄹ' : '', 'ㅋ']
    if (sound === 't') return ['', nextVowel === VOWEL_I && fin === 'ㄷ' ? 'ㅊ' : 'ㅌ']
    if (sound === 'p') return [fin === 'ㄼ' ? 'ㄹ' : '', 'ㅍ']
    return [fin, ini]
  }
  if (ini === 'ㄹ') {
    if (fin === 'ㄴ' || sound === 'l') return ['ㄹ', 'ㄹ']
    if (sound === 'm' || sound === 'ng') return [fin, 'ㄴ']
    if (sound === 'k') return ['ㅇ', 'ㄴ']
    if (sound === 'p') return ['ㅁ', 'ㄴ']
    if (sound === 't') return ['ㄴ', 'ㄴ']
  }
  if (ini === 'ㄴ' && sound === 'l') return ['ㄹ', 'ㄹ']
  if (ini === 'ㄴ' || ini === 'ㅁ') {
    if (sound === 'k') return ['ㅇ', ini]
    if (sound === 't') return ['ㄴ', ini]
    if (sound === 'p') return ['ㅁ', ini]
  }
  return [fin, ini]
}

function romanizeWord(word) {
  const syllables = [...word].map((ch) => {
    const d = decompose(ch)
    return d ? { ini: INITIALS[d.initial], vowel: d.vowel, fin: FINALS[d.final] } : { raw: ch }
  })
  for (let k = 0; k < syllables.length - 1; k++) {
    const a = syllables[k]
    const b = syllables[k + 1]
    if (a.raw !== undefined || b.raw !== undefined) continue
    const [fin, ini] = joinSounds(a.fin, b.ini, b.vowel)
    a.fin = fin
    b.ini = ini
  }
  return syllables.map((s, k) => {
    if (s.raw !== undefined) return s.raw
    const prev = syllables[k - 1]
    // ㄹ is "l" after another ㄹ (설날 → seollal), otherwise "r" before a vowel
    const initial = s.ini === 'ㄹ' && prev?.fin === 'ㄹ' ? 'l' : ROMAN_INITIAL[I[s.ini]]
    const final = s.fin ? FINAL_SOUND[s.fin] : ''
    return initial + ROMAN_VOWEL[s.vowel] + final
  }).join('')
}

/** Romanization by pronunciation, e.g. 한국어 → hangugeo, 감사합니다 → gamsahamnida. Words are handled separately. */
export function romanize(text) {
  return (text ?? '').split(/(\s+)/).map((part) => (/\s/.test(part) ? part : romanizeWord(part))).join('')
}
