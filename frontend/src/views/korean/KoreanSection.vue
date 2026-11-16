<script setup>
import { RouterView } from 'vue-router'
import { provideStudyLanguage } from '@/composables/useStudyLanguage'

// Parent of every /korean page: sets the study language so shared pages (Practice, Word bank)
// and components (speaker buttons, flashcards) work in Korean.
provideStudyLanguage('ko')
</script>

<template>
  <RouterView />
</template>
