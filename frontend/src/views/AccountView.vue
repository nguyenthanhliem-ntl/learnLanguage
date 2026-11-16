<script setup>
import { computed, reactive, ref, watch } from 'vue'
import { useAuthStore } from '@/stores/auth'
import { getErrorDetails, getErrorMessage } from '@/api/errors'
import AlertBox from '@/components/ui/AlertBox.vue'
import AppIcon from '@/components/ui/AppIcon.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import BaseInput from '@/components/ui/BaseInput.vue'
import t from '@/locales/vi'

const GOALS = [10, 20, 30, 50]

const auth = useAuthStore()

const memberSince = computed(() => {
  if (!auth.user?.createdAt) return ''
  return new Date(auth.user.createdAt).toLocaleDateString('vi-VN')
})

// ---- New words per day ----
const selected = ref(auth.user?.dailyGoal ?? null)
const savingGoal = ref(false)
const goalStatus = ref(null) // { variant, message }

// The user may be loaded after entering the page (page reload)
watch(() => auth.user?.dailyGoal, (goal) => {
  if (selected.value === null && goal) selected.value = goal
})

const goalDirty = computed(() => selected.value !== null && selected.value !== auth.user?.dailyGoal)

async function saveGoal() {
  savingGoal.value = true
  goalStatus.value = null
  try {
    await auth.updateSettings({ dailyGoal: selected.value })
    goalStatus.value = { variant: 'success', message: t.common.saved }
  } catch (e) {
    goalStatus.value = { variant: 'danger', message: getErrorMessage(e) }
  } finally {
    savingGoal.value = false
  }
}

// ---- Change password ----
const pw = reactive({ current: '', next: '', confirm: '' })
const savingPw = ref(false)
const pwStatus = ref(null) // { variant, message, details }

const pwMismatch = computed(() => pw.confirm.length > 0 && pw.confirm !== pw.next)
const pwTooShort = computed(() => pw.next.length > 0 && pw.next.length < 6)
const canChangePw = computed(() =>
  pw.current && pw.next && pw.confirm && !pwMismatch.value && !pwTooShort.value && !savingPw.value,
)

async function changePassword() {
  if (!canChangePw.value) return
  savingPw.value = true
  pwStatus.value = null
  try {
    await auth.changePassword({ currentPassword: pw.current, newPassword: pw.next })
    pw.current = ''
    pw.next = ''
    pw.confirm = ''
    pwStatus.value = { variant: 'success', message: t.account.passwordChanged, details: [] }
  } catch (e) {
    pwStatus.value = { variant: 'danger', message: getErrorMessage(e), details: getErrorDetails(e) }
  } finally {
    savingPw.value = false
  }
}
</script>

<template>
  <div class="mx-auto max-w-3xl space-y-6">
    <div>
      <h1 class="text-2xl font-bold sm:text-3xl">
        {{ t.account.title }}
      </h1>
      <p class="mt-1 text-ink-500">
        {{ t.account.subtitle }}
      </p>
    </div>

    <!-- Account information -->
    <section class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
      <h2 class="font-semibold">
        {{ t.account.infoTitle }}
      </h2>
      <div class="mt-4 flex items-center gap-4">
        <span class="flex h-14 w-14 shrink-0 items-center justify-center rounded-full bg-primary-600 text-xl font-semibold text-white">
          {{ auth.user?.username?.charAt(0).toUpperCase() }}
        </span>
        <dl class="grid min-w-0 gap-x-8 gap-y-1 text-sm sm:grid-cols-2">
          <div class="min-w-0">
            <dt class="text-ink-500">
              {{ t.auth.username }}
            </dt>
            <dd class="truncate font-medium">
              {{ auth.user?.username }}
            </dd>
          </div>
          <div>
            <dt class="text-ink-500">
              {{ t.account.memberSince }}
            </dt>
            <dd class="font-medium">
              {{ memberSince }}
            </dd>
          </div>
        </dl>
      </div>
    </section>

    <!-- Change password -->
    <section class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
      <h2 class="font-semibold">
        {{ t.account.passwordTitle }}
      </h2>
      <form
        class="mt-4 space-y-4"
        novalidate
        @submit.prevent="changePassword"
      >
        <BaseInput
          v-model="pw.current"
          type="password"
          :label="t.account.currentPassword"
          autocomplete="current-password"
          required
        />
        <div class="grid gap-4 sm:grid-cols-2">
          <BaseInput
            v-model="pw.next"
            type="password"
            :label="t.account.newPassword"
            :placeholder="t.auth.passwordPlaceholder"
            :error="pwTooShort ? t.account.passwordTooShort : ''"
            autocomplete="new-password"
            required
          />
          <BaseInput
            v-model="pw.confirm"
            type="password"
            :label="t.auth.confirmPassword"
            :error="pwMismatch ? t.auth.passwordMismatch : ''"
            autocomplete="new-password"
            required
          />
        </div>
        <div class="flex flex-col gap-3 sm:flex-row sm:items-center">
          <BaseButton
            type="submit"
            :loading="savingPw"
            :disabled="!canChangePw"
          >
            {{ t.account.changePassword }}
          </BaseButton>
          <AlertBox
            v-if="pwStatus"
            :variant="pwStatus.variant"
            :message="pwStatus.message"
            :details="pwStatus.details"
            class="sm:flex-1"
          />
        </div>
      </form>
    </section>

    <!-- New words per day -->
    <section class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6">
      <h2 class="font-semibold">
        {{ t.account.dailyGoalTitle }}
      </h2>
      <p class="mt-1 text-sm text-ink-500">
        {{ t.account.dailyGoalDesc }}
      </p>

      <div
        class="mt-5 grid grid-cols-2 gap-3 sm:grid-cols-4"
        role="radiogroup"
        :aria-label="t.account.dailyGoalTitle"
      >
        <button
          v-for="goal in GOALS"
          :key="goal"
          type="button"
          role="radio"
          :aria-checked="selected === goal"
          class="relative rounded-2xl border-2 p-4 text-left transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
          :class="selected === goal ? 'border-primary-600 bg-primary-50' : 'border-border hover:border-primary-300'"
          @click="selected = goal; goalStatus = null"
        >
          <AppIcon
            v-if="selected === goal"
            name="check"
            class="absolute right-3 top-3 h-5 w-5 text-primary-600"
          />
          <span
            class="block text-3xl font-bold"
            :class="selected === goal ? 'text-primary-600' : 'text-ink-900'"
          >{{ goal }}</span>
          <span class="block text-xs text-ink-500">{{ t.account.dailyGoalUnit }}</span>
          <span class="mt-2 block text-sm font-medium">{{ t.account.dailyGoalLevels[goal] }}</span>
        </button>
      </div>

      <div class="mt-5 flex flex-col gap-3 sm:flex-row sm:items-center">
        <BaseButton
          :loading="savingGoal"
          :disabled="!goalDirty"
          @click="saveGoal"
        >
          {{ t.common.save }}
        </BaseButton>
        <AlertBox
          v-if="goalStatus"
          :variant="goalStatus.variant"
          :message="goalStatus.message"
          class="sm:flex-1"
        />
      </div>
    </section>
  </div>
</template>
