<script setup>
import { computed, reactive, ref } from 'vue'
import { RouterLink, useRouter } from 'vue-router'
import { useAuthStore } from '@/stores/auth'
import { getErrorDetails, getErrorMessage } from '@/api/errors'
import BaseButton from '@/components/ui/BaseButton.vue'
import BaseInput from '@/components/ui/BaseInput.vue'
import AlertBox from '@/components/ui/AlertBox.vue'
import t from '@/locales/vi'
import { delay, SUCCESS_REDIRECT_DELAY } from '@/utils/delay'

const auth = useAuthStore()
const router = useRouter()

const form = reactive({ username: '', password: '', confirm: '' })
const loading = ref(false)
const error = ref(null)
const success = ref(false)

const mismatch = computed(() => form.confirm.length > 0 && form.confirm !== form.password)
const canSubmit = computed(() => form.username && form.password && form.confirm && !mismatch.value)

async function submit() {
  if (!canSubmit.value || loading.value || success.value) return
  loading.value = true
  error.value = null
  try {
    await auth.register({ username: form.username, password: form.password })
    success.value = true
    await delay(SUCCESS_REDIRECT_DELAY)
    await router.replace({ name: 'dashboard' })
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
      {{ t.auth.registerTitle }}
    </h1>
    <p class="mt-2 text-ink-500">
      {{ t.auth.registerSubtitle }}
    </p>

    <form
      class="mt-8 space-y-5"
      novalidate
      @submit.prevent="submit"
    >
      <AlertBox
        v-if="success"
        variant="success"
        :message="t.auth.registerSuccess"
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
        :hint="t.auth.usernameHint"
        autocomplete="username"
        required
      />
      <BaseInput
        v-model="form.password"
        type="password"
        :label="t.auth.password"
        :placeholder="t.auth.passwordPlaceholder"
        autocomplete="new-password"
        required
      />
      <BaseInput
        v-model="form.confirm"
        type="password"
        :label="t.auth.confirmPassword"
        :error="mismatch ? t.auth.passwordMismatch : ''"
        autocomplete="new-password"
        required
      />
      <BaseButton
        type="submit"
        size="lg"
        block
        :loading="loading"
        :disabled="!canSubmit || success"
      >
        {{ t.auth.registerButton }}
      </BaseButton>
    </form>

    <p class="mt-6 text-center text-sm text-ink-500">
      {{ t.auth.hasAccount }}
      <RouterLink
        :to="{ name: 'login' }"
        class="rounded font-medium text-primary-600 hover:text-primary-700"
      >
        {{ t.auth.goLogin }}
      </RouterLink>
    </p>
  </div>
</template>
