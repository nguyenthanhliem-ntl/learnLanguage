import http from './http'

export const libraryApi = {
  // Progress of the self-added bank and of each level A1–C2, plus the level being studied
  levels: () => http.get('/library/levels').then((res) => res.data),

  // level: 'A1'…'C2', null = study from the self-added bank. Returns the updated user.
  setLevel: (level) => http.put('/library/level', { level }).then((res) => res.data),
}
