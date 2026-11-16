<script setup>
import { reactive, ref } from 'vue'
import { RouterLink, useRoute, useRouter } from 'vue-router'
import { useAuthStore } from '@/stores/auth'
import { getErrorDetails, getErrorMessage } from '@/api/errors'
import BaseButton from '@/components/ui/BaseButton.vue'
import BaseInput from '@/components/ui/BaseInput.vue'
import AlertBox from '@/components/ui/AlertBox.vue'
import t from '@/locales/vi'
import { delay, SUCCESS_REDIRECT_DELAY } from '@/utils/delay'

const auth = useAuthStore()
const route = useRoute()
const router = useRouter()

const form = reactive({ username: '', password: '' })
const loading = ref(false)
const error = ref(null)
const success = ref(false)

async function submit() {
  if (loading.value || success.value) return
  loading.value = true
  error.value = null
  try {
    await auth.login({ username: form.username, password: form.password })
    success.value = true
    await delay(SUCCESS_REDIRECT_DELAY)
    // Only allow redirects to internal paths ("/..." but not "//other-domain")
    const target = route.query.redirect
    const redirect = typeof target === 'string' && target.startsWith('/') && !target.startsWith('//')
      ? target
      : { name: 'dashboard' }
    await router.replace(redirect)
  } catch (e) {
    error.value = { message: getErrorMessage(e), details: getErrorDetails(e) }
  } finally {
    loading.value = false
  }
}
</script>

<template>
  <div class="w-full max-w-md rounded-3xl border border-border bg-surface p-6 shadow-xl shadow-primary-600/10 sm:p-8">
    <h1 class="text-2xl font-bold sm:text-3xl">
      {{ t.auth.loginTitle }}
    </h1>
    <p class="mt-2 text-ink-500">
      {{ t.auth.loginSubtitle }}
    </p>

    <form
      class="mt-8 space-y-5"
      novalidate
      @submit.prevent="submit"
    >
      <AlertBox
        v-if="success"
        variant="success"
        :message="t.auth.loginSuccess"
      />
      <AlertBox
        v-else-if="error"
        :message="error.message"
        :details="error.details"
      />
      <BaseInput
        v-model="form.username"
        :label="t.auth.username"
        :placeholder="t.auth.usernamePlaceholder"
        autocomplete="username"
        required
      />
      <BaseInput
        v-model="form.password"
        type="password"
        :label="t.auth.password"
        autocomplete="current-password"
        required
      />
      <BaseButton
        type="submit"
        size="lg"
        block
        :loading="loading"
        :disabled="!form.username || !form.password || success"
      >
        {{ t.auth.loginButton }}
      </BaseButton>
    </form>

    <p class="mt-6 text-center text-sm text-ink-500">
      {{ t.auth.noAccount }}
      <RouterLink
        :to="{ name: 'register' }"
        class="rounded font-medium text-primary-600 hover:text-primary-700"
      >
        {{ t.auth.goRegister }}
      </RouterLink>
    </p>
  </div>
</template>
