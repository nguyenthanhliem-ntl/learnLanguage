<script setup>
import LevelLibrary from '@/components/library/LevelLibrary.vue'
import t from '@/locales/vi'

// English home: short intro and the A1–C2 vocabulary bank (choosing a level opens Practice).
// The other English pages are in the sub-menu under the header.
</script>

<template>
  <div class="space-y-6">
    <header class="relative overflow-hidden rounded-3xl bg-gradient-to-br from-hero-start to-hero-end p-6 text-white shadow-xl shadow-primary-600/10 sm:p-8">
      <span
        class="text-4xl font-bold sm:text-5xl"
        lang="en"
      >English</span>
      <h1 class="mt-3 text-2xl font-bold sm:text-3xl">
        {{ t.englishHome.title }}
      </h1>
      <p class="mt-2 max-w-2xl text-white/80">
        {{ t.englishHome.desc }}
      </p>
    </header>

    <LevelLibrary />
  </div>
</template>
