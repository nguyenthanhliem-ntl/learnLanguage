import http from './http'

export const statsApi = {
  dashboard: () => http.get('/stats/dashboard').then((res) => res.data),
  // days: 7 hoặc 30
  activity: (days = 7) => http.get('/stats/activity', { params: { days } }).then((res) => res.data),
  // month: 'yyyy-MM' trong 12 tháng gần nhất
  monthly: (month) => http.get('/stats/monthly', { params: { month } }).then((res) => res.data),
}
