import http from './http'

export const studyApi = {
  // Không truyền limit: lấy phần còn thiếu của mục tiêu hôm nay. Có limit: "Học thêm".
  getNew: (limit) =>
    http.get('/study/new', { params: { limit: limit || undefined } }).then((res) => res.data),

  remember: (wordId) => http.post(`/study/new/${wordId}/remember`).then((res) => res.data),

  // Một lượt ôn 20–30 từ. exclude: từ đã ôn trong phiên; ids: ôn đúng các từ này.
  // Gửi danh sách dạng "1,2,3" để Spring đọc được thành List<Long>.
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
