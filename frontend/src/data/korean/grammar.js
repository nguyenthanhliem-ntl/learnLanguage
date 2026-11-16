import beginner from './grammarBeginner'
import advanced from './grammarAdvanced'

// All Korean grammar patterns in study order (TOPIK 1 → 6)
export const koreanGrammar = [...beginner, ...advanced]

export const KOREAN_GRAMMAR_LEVELS = ['TOPIK1', 'TOPIK2', 'TOPIK3', 'TOPIK4', 'TOPIK5', 'TOPIK6']

export const findKoreanGrammar = (slug) => koreanGrammar.find((g) => g.slug === slug) ?? null
