<script setup>
import { RouterLink, RouterView } from 'vue-router'
import AppLogo from '@/components/ui/AppLogo.vue'
</script>

<template>
  <div class="relative min-h-screen overflow-hidden bg-canvas">
    <!-- Decorative blurred blue layer in the background -->
    <div
      class="pointer-events-none absolute -top-40 left-1/2 h-96 w-[48rem] max-w-[150vw] -translate-x-1/2 rounded-full bg-primary-600/10 blur-3xl"
      aria-hidden="true"
    />
    <header class="relative mx-auto flex max-w-6xl items-center px-4 py-5">
      <RouterLink
        to="/"
        class="rounded-lg"
      >
        <AppLogo />
      </RouterLink>
    </header>
    <main class="relative mx-auto flex max-w-6xl justify-center px-4 pb-16 pt-6 md:pt-12">
      <RouterView />
    </main>
  </div>
</template>
