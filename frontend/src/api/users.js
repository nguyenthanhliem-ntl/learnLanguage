import http from './http'

export const usersApi = {
  me: () => http.get('/users/me').then((res) => res.data),
  updateSettings: (payload) => http.put('/users/me/settings', payload).then((res) => res.data),
  changePassword: (payload) => http.put('/users/me/password', payload),
}
