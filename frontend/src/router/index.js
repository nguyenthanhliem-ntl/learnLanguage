import { createRouter, createWebHistory } from 'vue-router'
import { getToken } from '@/stores/tokenStorage'
import { useLoadingStore } from '@/stores/loading'
import PublicLayout from '@/layouts/PublicLayout.vue'
import AppLayout from '@/layouts/AppLayout.vue'

const routes = [
  // Landing page cho khách; đã đăng nhập thì guestOnly chuyển sang Tổng quan
  {
    path: '/',
    name: 'landing',
    component: () => import('@/views/LandingView.vue'),
    meta: { guestOnly: true },
  },
  {
    path: '/login',
    component: PublicLayout,
    meta: { guestOnly: true },
    children: [{ path: '', name: 'login', component: () => import('@/views/auth/LoginView.vue') }],
  },
  {
    path: '/register',
    component: PublicLayout,
    meta: { guestOnly: true },
    children: [{ path: '', name: 'register', component: () => import('@/views/auth/RegisterView.vue') }],
  },
  {
    path: '/',
    component: AppLayout,
    meta: { requiresAuth: true },
    children: [
      { path: 'dashboard', name: 'dashboard', component: () => import('@/views/DashboardView.vue') },
      { path: 'practice', name: 'practice', component: () => import('@/views/study/PracticeView.vue') },
      { path: 'words', name: 'words', component: () => import('@/views/words/WordListView.vue') },
      { path: 'words/new', name: 'addWord', component: () => import('@/views/words/AddWordView.vue') },
      { path: 'account', name: 'account', component: () => import('@/views/AccountView.vue') },
      { path: 'grammar', name: 'grammar', component: () => import('@/views/grammar/GrammarView.vue') },
      { path: 'irregular-verbs', name: 'irregularVerbs', component: () => import('@/views/grammar/IrregularVerbsView.vue') },
      {
        path: 'grammar/:slug',
        name: 'grammarTense',
        component: () => import('@/views/grammar/GrammarTenseView.vue'),
        meta: { nav: 'grammar' }, // menu "Ngữ pháp" vẫn sáng khi xem một thì
      },
      // Đường dẫn cũ trước khi gộp Học từ mới + Ôn tập thành Luyện tập
      { path: 'learn', redirect: { name: 'practice' } },
      { path: 'review', redirect: { name: 'practice' } },
      { path: 'settings', redirect: { name: 'account' } },
    ],
  },
  {
    path: '/:pathMatch(.*)*',
    redirect: '/',
  },
]

const router = createRouter({
  history: createWebHistory(),
  routes,
  // Link neo (#cach-hoc...) cuộn tới section, chừa chỗ cho header dính 64px
  scrollBehavior(to, from, savedPosition) {
    if (to.hash) return { el: to.hash, top: 72, behavior: 'smooth' }
    return savedPosition ?? { top: 0 }
  },
})

// Route guard: trang trong app cần đăng nhập; trang đăng nhập/đăng ký thì không cho vào khi đã đăng nhập
router.beforeEach((to) => {
  useLoadingStore().setRouting(true)
  const loggedIn = Boolean(getToken())
  if (to.meta.requiresAuth && !loggedIn) {
    return { name: 'login', query: { redirect: to.fullPath } }
  }
  if (to.meta.guestOnly && loggedIn) {
    return { name: 'dashboard' }
  }
  return true
})

// Tắt loading bar của chuyển trang khi xong (kể cả khi lỗi tải component)
router.afterEach(() => useLoadingStore().setRouting(false))
router.onError(() => useLoadingStore().setRouting(false))

export default router
