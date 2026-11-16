import { inject, provide } from 'vue'
import t from '@/locales/vi'

/**
 * Languages that can be studied. Each section of the app (English pages, Korean pages under /korean) provides its
 * language once with provideStudyLanguage(); shared components (Practice, flashcards, speaker buttons...) read it
 * with useStudyLanguage(). Adding a language: a new entry here plus its routes and data.
 */
export const LANGUAGES = {
  en: {
    code: 'en',
    speech: 'en-US',
    routes: { home: 'englishHome', practice: 'practice', words: 'words', addWord: 'addWord' },
    canAddWords: true,
  },
  ko: {
    code: 'ko',
    speech: 'ko-KR',
    routes: { home: 'koreanHome', practice: 'koreanPractice', words: 'koreanWords', addWord: null },
    canAddWords: false,
  },
}

const KEY = Symbol('studyLanguage')

export function provideStudyLanguage(code) {
  const lang = LANGUAGES[code] ?? LANGUAGES.en
  provide(KEY, lang)
  return lang
}

/** The language of the current section (English when nothing was provided). */
export function useStudyLanguage() {
  return inject(KEY, LANGUAGES.en)
}

/** Display name of a level or topic code: 'TOPIK1' → 'TOPIK 1', 'IT' → its bank name, CEFR codes stay as they are. */
export const levelLabel = (code) =>
  t.library.topics.items[code]?.name ?? (code ?? '').replace(/^TOPIK(\d)$/, 'TOPIK $1')
