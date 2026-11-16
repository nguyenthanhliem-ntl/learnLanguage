// Lưu JWT trong sessionStorage: đóng tab / trình duyệt là tự đăng xuất (tải lại trang vẫn giữ đăng nhập).
// Bọc try/catch vì trình duyệt có thể chặn storage.
const KEY = 'vocab.token'

// Bản cũ lưu token trong localStorage (còn nguyên sau khi đóng trình duyệt): xóa đi để không tự đăng nhập lại
try {
  localStorage.removeItem(KEY)
} catch {
  // bỏ qua
}

export function getToken() {
  try {
    return sessionStorage.getItem(KEY)
  } catch {
    return null
  }
}

export function setToken(token) {
  try {
    sessionStorage.setItem(KEY, token)
  } catch {
    // bỏ qua: không lưu được thì user phải đăng nhập lại khi tải lại trang
  }
}

export function clearToken() {
  try {
    sessionStorage.removeItem(KEY)
  } catch {
    // bỏ qua
  }
}
