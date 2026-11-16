import http from './http'

export const libraryApi = {
  // Progress of the self-added bank and of each level (A1–C2, TOPIK1–TOPIK6...), plus the level being studied
  levels: (lang = 'en') => http.get('/library/levels', { params: { lang } }).then((res) => res.data),

  // level: a level of that language, null = study from the self-added bank. Returns the updated overview.
  setLevel: (lang, level) => http.put('/library/level', { language: lang, level }).then((res) => res.data),
}
