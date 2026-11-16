// So sánh câu trả lời gõ tay: bỏ ký tự ẩn (zero-width, BOM do dán / bộ gõ chèn vào), chuẩn hóa Unicode,
// đổi nháy cong thành nháy thẳng (doesn’t = doesn't), gộp khoảng trắng, không phân biệt hoa/thường
export function normalizeAnswer(s) {
  return (s ?? '')
    .normalize('NFC')
    .replace(/[\u200B-\u200D\u2060\uFEFF]/g, '')
    .replace(/[\u2018\u2019\u02BC]/g, "'")
    .trim()
    .replace(/\s+/g, ' ')
    .toLowerCase()
}

/** Câu trả lời khớp một trong các đáp án chấp nhận (để trống là sai). */
export function matchesAnswer(typed, answers) {
  const t = normalizeAnswer(typed)
  return t !== '' && answers.some((a) => normalizeAnswer(a) === t)
}
