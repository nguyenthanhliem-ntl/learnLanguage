import axios from 'axios'
import router from '@/router'
import { getToken } from '@/stores/tokenStorage'
import { useAuthStore } from '@/stores/auth'
import { useLoadingStore } from '@/stores/loading'

// Shared Axios instance for every API module
const http = axios.create({
  baseURL: '/api',
  timeout: 30000,
})

// Requests sent with { silent: true } do not show the loading bar (e.g. duplicate checks while typing)
function trackDone(config) {
  if (config && !config.silent) {
    useLoadingStore().done()
  }
}

// Attach the JWT to every request and show the loading bar
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

// 401: clear the token and go to /login.
// Skip /auth/* because a wrong password on login also returns 401 and the form shows the error itself.
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
