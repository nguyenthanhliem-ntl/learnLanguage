import http from './http'

export const libraryApi = {
  // Tiến độ kho tự thêm và từng cấp độ A1–C2, kèm cấp độ đang học
  levels: () => http.get('/library/levels').then((res) => res.data),

  // level: 'A1'…'C2', null = học từ kho tự thêm. Trả về thông tin user mới.
  setLevel: (level) => http.put('/library/level', { level }).then((res) => res.data),
}
