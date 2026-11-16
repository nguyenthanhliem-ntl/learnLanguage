<script setup>
import { RouterLink } from 'vue-router'
import AppLogo from '@/components/ui/AppLogo.vue'
import t from '@/locales/vi'

const f = t.landing.footer
const n = t.landing.nav
const year = new Date().getFullYear()
</script>

<template>
  <footer class="border-t border-border bg-surface">
    <div class="mx-auto grid max-w-6xl gap-10 px-4 py-14 sm:grid-cols-2 md:grid-cols-4">
      <div class="sm:col-span-2">
        <RouterLink
          :to="{ name: 'landing' }"
          class="rounded-lg"
        >
          <AppLogo />
        </RouterLink>
        <p class="mt-4 max-w-sm text-sm text-ink-500">
          {{ f.desc }}
        </p>
      </div>
      <div>
        <p class="text-sm font-semibold">
          {{ f.product }}
        </p>
        <ul class="mt-4 space-y-2 text-sm text-ink-500">
          <li>
            <RouterLink
              :to="{ name: 'landing', hash: '#tinh-nang' }"
              class="hover:text-primary-600"
            >
              {{ n.features }}
            </RouterLink>
          </li>
          <li>
            <RouterLink
              :to="{ name: 'landing', hash: '#cach-hoc' }"
              class="hover:text-primary-600"
            >
              {{ n.howItWorks }}
            </RouterLink>
          </li>
          <li>
            <RouterLink
              :to="{ name: 'landing', hash: '#hoi-dap' }"
              class="hover:text-primary-600"
            >
              {{ n.faq }}
            </RouterLink>
          </li>
        </ul>
      </div>
      <div>
        <p class="text-sm font-semibold">
          {{ f.account }}
        </p>
        <ul class="mt-4 space-y-2 text-sm text-ink-500">
          <li>
            <RouterLink
              :to="{ name: 'login' }"
              class="hover:text-primary-600"
            >
              {{ f.login }}
            </RouterLink>
          </li>
          <li>
            <RouterLink
              :to="{ name: 'register' }"
              class="hover:text-primary-600"
            >
              {{ f.register }}
            </RouterLink>
          </li>
        </ul>
      </div>
    </div>
    <div class="border-t border-border">
      <p class="mx-auto max-w-6xl px-4 py-6 text-center text-xs text-ink-500 sm:text-left">
        {{ f.copyright(year) }}
      </p>
    </div>
  </footer>
</template>
