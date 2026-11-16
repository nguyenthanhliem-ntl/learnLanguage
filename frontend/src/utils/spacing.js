/** Một từ không được xuất hiện lại trong vòng chừng này câu. */
export const REPEAT_GAP = 5

/**
 * Sắp xếp lại danh sách câu hỏi sao cho mỗi từ cách lần xuất hiện trước ít nhất {@code gap} câu,
 * tính cả các câu vừa hỏi ở lượt trước ({@code recentIds}). Kho quá ít từ thì làm tốt nhất có thể.
 */
export function arrangeWithGap(questions, recentIds = [], gap = REPEAT_GAP) {
  const pending = [...questions]
  const out = []
  while (pending.length) {
    const recent = [...recentIds, ...out.map((q) => q.word.id)].slice(-gap)
    let i = pending.findIndex((q) => !recent.includes(q.word.id))
    if (i < 0) i = 0
    out.push(pending.splice(i, 1)[0])
  }
  return out
}

/** Từ vừa học (từ thưởng) phải được ôn trong chừng này câu đầu của lượt ôn kế tiếp. */
export const NEW_WORD_WITHIN = 10

/**
 * Đặt câu hỏi của các từ trong {@code ids} vào một vị trí ngẫu nhiên trong {@code limit} câu đầu.
 * Các câu khác giữ nguyên thứ tự.
 */
export function placeWithin(questions, ids = [], limit = NEW_WORD_WITHIN) {
  const out = [...questions]
  for (const id of ids) {
    const from = out.findIndex((q) => q.word.id === id)
    if (from < 0) continue // từ không có trong lượt
    const [q] = out.splice(from, 1)
    const to = Math.floor(Math.random() * Math.min(limit, out.length + 1))
    out.splice(to, 0, q)
  }
  return out
}
