import http from './http'

export const statsApi = {
  dashboard: () => http.get('/stats/dashboard').then((res) => res.data),
  // days: 7 or 30
  activity: (days = 7) => http.get('/stats/activity', { params: { days } }).then((res) => res.data),
  // month: 'yyyy-MM' within the last 12 months
  monthly: (month) => http.get('/stats/monthly', { params: { month } }).then((res) => res.data),
}
