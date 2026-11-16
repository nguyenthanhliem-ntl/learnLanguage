<script setup>
import { useAuthStore } from '@/stores/auth'
import LevelLibrary from '@/components/library/LevelLibrary.vue'
import MonthlyHeatmap from '@/components/ui/MonthlyHeatmap.vue'
import t from '@/locales/vi'

// Tổng quan: card "Hôm nay" (lời chào + tần suất học theo tháng) và kho từ vựng A1–C2
const auth = useAuthStore()
</script>

<template>
  <div class="space-y-6">
    <!-- Card "Hôm nay" -->
    <section class="relative overflow-hidden rounded-3xl bg-gradient-to-br from-hero-start to-hero-end p-6 text-white shadow-xl shadow-primary-600/10 sm:p-8">
      <div
        class="pointer-events-none absolute -right-16 -top-16 h-56 w-56 rounded-full bg-white/10 blur-2xl"
        aria-hidden="true"
      />
      <div class="relative">
        <p class="text-sm font-medium text-white/80">
          {{ t.dashboard.todayTitle }}
        </p>
        <h1 class="mt-2 text-2xl font-bold sm:text-3xl">
          {{ t.topbar.greeting(auth.user?.username ?? '') }}
        </h1>

        <!-- Tần suất học theo tháng -->
        <MonthlyHeatmap
          variant="hero"
          class="mt-6"
        />
      </div>
    </section>

    <!-- Kho từ vựng theo cấp độ -->
    <LevelLibrary />
  </div>
</template>
