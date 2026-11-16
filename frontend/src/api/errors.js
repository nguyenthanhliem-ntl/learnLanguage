import t from '@/locales/vi'

/** Lấy thông báo lỗi tiếng Việt từ response dạng { code, message, details } của backend. */
export function getErrorMessage(error) {
  if (!error?.response) {
    return t.errors.network
  }
  return error.response.data?.message || t.errors.unknown
}

/** Danh sách lỗi chi tiết (vd lỗi validate từng trường), bỏ phần "field: " ở đầu. */
export function getErrorDetails(error) {
  const details = error?.response?.data?.details
  if (!Array.isArray(details)) return []
  return details.map((d) => d.replace(/^[\w.]+:\s*/, ''))
}
