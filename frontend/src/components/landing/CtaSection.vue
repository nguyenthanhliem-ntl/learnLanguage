<script setup>
import AppIcon from '@/components/ui/AppIcon.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import t from '@/locales/vi'

const c = t.landing.cta
</script>

<template>
  <section class="bg-surface py-20 md:py-28">
    <div class="mx-auto max-w-6xl px-4">
      <div
        v-reveal
        class="grid items-center gap-10 overflow-hidden rounded-3xl bg-primary-50 p-8 md:grid-cols-2 md:p-14"
      >
        <div>
          <h2 class="text-3xl font-bold leading-tight md:text-4xl">
            {{ c.titleBefore }}<span class="text-primary-600">{{ c.titleAccent }}</span>
          </h2>
          <p class="mt-4 text-ink-500">
            {{ c.desc }}
          </p>
          <div class="mt-8 flex flex-col gap-3 sm:flex-row">
            <BaseButton
              size="lg"
              :to="{ name: 'register' }"
            >
              {{ c.register }}
            </BaseButton>
            <BaseButton
              variant="outline"
              size="lg"
              :to="{ name: 'login' }"
            >
              {{ c.login }}
            </BaseButton>
          </div>
        </div>

        <!-- Ảnh mô phỏng màn Học từ mới -->
        <div
          class="mx-auto w-full max-w-sm rounded-3xl border border-border bg-surface p-5 shadow-xl shadow-primary-600/10"
          aria-hidden="true"
        >
          <div class="flex items-center justify-between text-xs">
            <span class="font-medium">{{ c.mockLabel }}</span>
            <span class="font-semibold text-primary-600">{{ c.mockProgress }}</span>
          </div>
          <div class="mt-2 h-2 overflow-hidden rounded-full bg-primary-50">
            <div
              class="h-full rounded-full bg-primary-600"
              style="width: 35%"
            />
          </div>
          <div class="relative mt-5 rounded-3xl border border-border p-10 text-center">
            <span class="absolute right-3 top-3 flex h-8 w-8 items-center justify-center rounded-full bg-primary-50 text-primary-600">
              <AppIcon
                name="speaker"
                class="h-4 w-4"
              />
            </span>
            <p class="text-4xl font-bold">
              {{ c.mockWord }}
            </p>
            <span class="mx-auto mt-6 flex h-12 w-12 items-center justify-center rounded-full bg-primary-600 text-white">
              <AppIcon
                name="refresh"
                class="h-6 w-6"
              />
            </span>
          </div>
          <div class="mt-4 flex items-center justify-center gap-2 rounded-full bg-primary-600 py-3 text-sm font-medium text-white">
            {{ c.mockNext }}
            <AppIcon
              name="arrowRight"
              class="h-4 w-4"
            />
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
