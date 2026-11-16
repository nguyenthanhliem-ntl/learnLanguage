import http from './http'

export const wordsApi = {
  list: ({ q, page = 0, size = 20 } = {}) =>
    http.get('/words', { params: { q: q || undefined, page, size } }).then((res) => res.data),

  // Gọi liên tục khi đang gõ nên không bật loading bar.
  // params: { word, partOfSpeech, phonetic, meaning, excludeId }
  check: (params, signal) =>
    http.get('/words/check', { params, silent: true, signal }).then((res) => res.data),

  create: (payload) => http.post('/words', payload).then((res) => res.data),
  update: (id, payload) => http.put(`/words/${id}`, payload).then((res) => res.data),
  remove: (id) => http.delete(`/words/${id}`),

  importExcel: (file) => {
    const form = new FormData()
    form.append('file', file)
    return http.post('/words/import', form, { timeout: 120000 }).then((res) => res.data)
  },

  downloadTemplate: () =>
    http.get('/words/import/template', { responseType: 'blob' }).then((res) => res.data),
}
