<script setup>
import { onBeforeUnmount, onMounted, ref } from 'vue'
import { RouterLink } from 'vue-router'
import AppIcon from '@/components/ui/AppIcon.vue'
import AppLogo from '@/components/ui/AppLogo.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import t from '@/locales/vi'

const l = t.landing.nav
const links = [
  { hash: '#tinh-nang', label: l.features },
  { hash: '#cach-hoc', label: l.howItWorks },
  { hash: '#hoi-dap', label: l.faq },
]

const open = ref(false)
const scrolled = ref(false)
const onScroll = () => { scrolled.value = window.scrollY > 8 }

onMounted(() => window.addEventListener('scroll', onScroll, { passive: true }))
onBeforeUnmount(() => window.removeEventListener('scroll', onScroll))
</script>

<template>
  <header
    class="sticky top-0 z-50 border-b border-border/70 bg-surface/85 backdrop-blur transition-shadow"
    :class="scrolled ? 'shadow-sm' : ''"
  >
    <div class="mx-auto flex h-16 max-w-6xl items-center justify-between gap-4 px-4">
      <RouterLink
        :to="{ name: 'landing' }"
        class="rounded-lg"
      >
        <AppLogo />
      </RouterLink>

      <nav
        class="hidden items-center gap-8 text-sm font-medium text-ink-500 md:flex"
        :aria-label="l.mainLabel"
      >
        <RouterLink
          v-for="link in links"
          :key="link.hash"
          :to="{ name: 'landing', hash: link.hash }"
          class="rounded transition hover:text-primary-600"
        >
          {{ link.label }}
        </RouterLink>
      </nav>

      <div class="flex items-center gap-2">
        <BaseButton
          variant="outline"
          class="hidden !py-2 sm:inline-flex"
          :to="{ name: 'login' }"
        >
          {{ l.login }}
        </BaseButton>
        <BaseButton
          class="hidden !py-2 sm:inline-flex"
          :to="{ name: 'register' }"
        >
          {{ l.start }}
        </BaseButton>
        <button
          type="button"
          class="flex h-10 w-10 items-center justify-center rounded-full text-ink-900 transition hover:bg-canvas focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40 md:hidden"
          :aria-label="open ? l.closeMenu : l.openMenu"
          :aria-expanded="open"
          aria-controls="landing-mobile-menu"
          @click="open = !open"
        >
          <AppIcon
            :name="open ? 'close' : 'menu'"
            class="h-6 w-6"
          />
        </button>
      </div>
    </div>

    <div
      v-if="open"
      id="landing-mobile-menu"
      class="border-t border-border bg-surface md:hidden"
    >
      <nav class="mx-auto flex max-w-6xl flex-col gap-1 px-4 py-4 text-sm font-medium">
        <RouterLink
          v-for="link in links"
          :key="link.hash"
          :to="{ name: 'landing', hash: link.hash }"
          class="rounded-xl px-3 py-2 hover:bg-primary-50 hover:text-primary-600"
          @click="open = false"
        >
          {{ link.label }}
        </RouterLink>
        <div class="mt-2 grid grid-cols-2 gap-2">
          <BaseButton
            variant="outline"
            :to="{ name: 'login' }"
          >
            {{ l.login }}
          </BaseButton>
          <BaseButton :to="{ name: 'register' }">
            {{ l.start }}
          </BaseButton>
        </div>
      </nav>
    </div>
  </header>
</template>
