import http from './http'

export const studyApi = {
  // Without limit: what is left of today's goal. With limit: "Learn more".
  getNew: (limit) =>
    http.get('/study/new', { params: { limit: limit || undefined } }).then((res) => res.data),

  remember: (wordId) => http.post(`/study/new/${wordId}/remember`).then((res) => res.data),

  // One review round of 20–30 words. exclude: words reviewed this session; ids: review exactly these words.
  // Send lists as "1,2,3" so Spring can read them as List<Long>.
  getReview: ({ ids = [], exclude = [] } = {}) =>
    http.get('/study/review', {
      params: {
        ids: ids.length ? ids.join(',') : undefined,
        exclude: exclude.length ? exclude.join(',') : undefined,
      },
    }).then((res) => res.data),

  // answer: 'CHOICE' | 'TYPE'
  answer: (wordId, { answer, correct }) =>
    http.post(`/study/review/${wordId}/answer`, { answer, correct }).then((res) => res.data),
}
