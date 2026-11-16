import { createRouter, createWebHistory } from 'vue-router'
import { getToken } from '@/stores/tokenStorage'
import { useLoadingStore } from '@/stores/loading'
import PublicLayout from '@/layouts/PublicLayout.vue'
import AppLayout from '@/layouts/AppLayout.vue'

const EN = { section: 'en' }

const routes = [
  // Landing page for visitors; signed-in users are sent to the Dashboard by guestOnly
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
      { path: 'account', name: 'account', component: () => import('@/views/AccountView.vue') },
      // English section (meta.section selects the language sub-menu in AppLayout)
      { path: 'english', name: 'englishHome', component: () => import('@/views/EnglishHomeView.vue'), meta: EN },
      { path: 'practice', name: 'practice', component: () => import('@/views/study/PracticeView.vue'), meta: EN },
      { path: 'words', name: 'words', component: () => import('@/views/words/WordListView.vue'), meta: EN },
      { path: 'words/new', name: 'addWord', component: () => import('@/views/words/AddWordView.vue'), meta: EN },
      { path: 'grammar', name: 'grammar', component: () => import('@/views/grammar/GrammarView.vue'), meta: EN },
      {
        path: 'irregular-verbs',
        name: 'irregularVerbs',
        component: () => import('@/views/grammar/IrregularVerbsView.vue'),
        meta: EN,
      },
      {
        path: 'phrases',
        name: 'commonPhrases',
        component: () => import('@/views/english/CommonPhrasesView.vue'),
        meta: EN,
      },
      {
        path: 'grammar/:slug',
        name: 'grammarTense',
        component: () => import('@/views/grammar/GrammarTenseView.vue'),
        meta: { ...EN, nav: 'grammar' }, // keep the "Grammar" item highlighted while viewing a tense
      },
      // Korean section: the same Practice / Word bank pages, plus Hangul and Korean grammar
      {
        path: 'korean',
        component: () => import('@/views/korean/KoreanSection.vue'),
        meta: { section: 'ko' },
        children: [
          { path: '', name: 'koreanHome', component: () => import('@/views/korean/KoreanHomeView.vue') },
          { path: 'hangul', name: 'koreanHangul', component: () => import('@/views/korean/HangulView.vue') },
          { path: 'practice', name: 'koreanPractice', component: () => import('@/views/study/PracticeView.vue') },
          { path: 'words', name: 'koreanWords', component: () => import('@/views/words/WordListView.vue') },
          { path: 'grammar', name: 'koreanGrammar', component: () => import('@/views/korean/KoreanGrammarView.vue') },
          {
            path: 'grammar/:slug',
            name: 'koreanGrammarDetail',
            component: () => import('@/views/korean/KoreanGrammarDetailView.vue'),
            meta: { nav: 'koreanGrammar' },
          },
        ],
      },
      // Old paths from before Learn new words + Review were merged into Practice
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
  // Anchor links (#cach-hoc...) scroll to the section, leaving room for the 64px sticky header
  scrollBehavior(to, from, savedPosition) {
    if (to.hash) return { el: to.hash, top: 72, behavior: 'smooth' }
    return savedPosition ?? { top: 0 }
  },
})

// Route guard: app pages require login; login/sign-up pages are not available once signed in
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

// Turn off the navigation loading bar when done (even if loading the component fails)
router.afterEach(() => useLoadingStore().setRouting(false))
router.onError(() => useLoadingStore().setRouting(false))

export default router
