<script setup>
import LandingNavbar from '@/components/landing/LandingNavbar.vue'
import HeroSection from '@/components/landing/HeroSection.vue'
import ProblemSection from '@/components/landing/ProblemSection.vue'
import SolutionSection from '@/components/landing/SolutionSection.vue'
import HowItWorksSection from '@/components/landing/HowItWorksSection.vue'
import DemoSection from '@/components/landing/DemoSection.vue'
import StatsSection from '@/components/landing/StatsSection.vue'
import FaqSection from '@/components/landing/FaqSection.vue'
import CtaSection from '@/components/landing/CtaSection.vue'
import LandingFooter from '@/components/landing/LandingFooter.vue'

// Landing page cho khách (CLAUDE.md §8.3). Đã đăng nhập thì router chuyển thẳng vào Tổng quan.
</script>

<template>
  <div class="min-h-screen bg-canvas">
    <LandingNavbar />
    <main>
      <HeroSection />
      <ProblemSection />
      <SolutionSection />
      <HowItWorksSection />
      <DemoSection />
      <StatsSection />
      <!-- TODO: Section nhận xét người dùng – chỉ thêm khi có nhận xét thật (CLAUDE.md §8.3) -->
      <FaqSection />
      <CtaSection />
    </main>
    <LandingFooter />
  </div>
</template>
