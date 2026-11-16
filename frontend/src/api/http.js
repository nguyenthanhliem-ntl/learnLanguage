import axios from 'axios'
import router from '@/router'
import { getToken } from '@/stores/tokenStorage'
import { useAuthStore } from '@/stores/auth'
import { useLoadingStore } from '@/stores/loading'

// Axios instance dùng chung cho mọi module API
const http = axios.create({
  baseURL: '/api',
  timeout: 30000,
})

// Request gửi kèm { silent: true } sẽ không bật loading bar (vd kiểm tra trùng khi đang gõ)
function trackDone(config) {
  if (config && !config.silent) {
    useLoadingStore().done()
  }
}

// Tự gắn JWT vào mọi request và bật loading bar
http.interceptors.request.use((config) => {
  const token = getToken()
  if (token) {
    config.headers.Authorization = `Bearer ${token}`
  }
  if (!config.silent) {
    useLoadingStore().start()
  }
  return config
})

// 401: xóa token và chuyển về /login.
// Bỏ qua /auth/* vì sai mật khẩu khi đăng nhập cũng trả 401, form tự hiển thị lỗi.
http.interceptors.response.use(
  (response) => {
    trackDone(response.config)
    return response
  },
  (error) => {
    trackDone(error.config)
    const isAuthCall = error.config?.url?.startsWith('/auth/')
    if (error.response?.status === 401 && !isAuthCall) {
      useAuthStore().logout()
      const current = router.currentRoute.value
      if (current.name !== 'login') {
        router.push({ name: 'login', query: { redirect: current.fullPath } })
      }
    }
    return Promise.reject(error)
  },
)

export default http
