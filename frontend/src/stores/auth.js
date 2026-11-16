import { computed, ref } from 'vue'
import { defineStore } from 'pinia'
import { authApi } from '@/api/auth'
import { usersApi } from '@/api/users'
import { clearToken, getToken, setToken } from './tokenStorage'
import { usePracticeStore } from './practice'

export const useAuthStore = defineStore('auth', () => {
  const token = ref(getToken())
  const user = ref(null)

  const isAuthenticated = computed(() => Boolean(token.value))

  function applyAuth(response) {
    usePracticeStore().reset() // every login must pass the review before learning new words
    setToken(response.token)
    token.value = response.token
    user.value = response.user
  }

  async function login(credentials) {
    applyAuth(await authApi.login(credentials))
  }

  async function register(payload) {
    applyAuth(await authApi.register(payload))
  }

  async function fetchMe() {
    user.value = await usersApi.me()
  }

  async function updateSettings(settings) {
    user.value = await usersApi.updateSettings(settings)
  }

  async function changePassword(payload) {
    await usersApi.changePassword(payload)
  }

  function logout() {
    usePracticeStore().reset()
    clearToken()
    token.value = null
    user.value = null
  }

  return { token, user, isAuthenticated, login, register, fetchMe, updateSettings, changePassword, logout }
})
