<script setup>
import { computed } from 'vue'
import { Bar } from 'vue-chartjs'
import { BarElement, CategoryScale, Chart as ChartJS, Legend, LinearScale, Tooltip } from 'chart.js'
import { useThemeColors } from '@/composables/useThemeColors'
import t from '@/locales/vi'

ChartJS.register(BarElement, CategoryScale, LinearScale, Tooltip, Legend)

// Biểu đồ cột nhóm: số từ mới đã học và số câu đã ôn mỗi ngày (cùng đơn vị, một trục)
const props = defineProps({
  days: { type: Array, required: true }, // [{ date, learned, reviewed }]
})

const colors = useThemeColors(['primary-600', 'stat-teal', 'ink-500', 'ink-900', 'border', 'surface'])

const labels = computed(() => props.days.map((d) => {
  const [, m, day] = d.date.split('-')
  return `${day}/${m}`
}))

const data = computed(() => ({
  labels: labels.value,
  datasets: [
    {
      label: t.dashboard.chart.learned,
      data: props.days.map((d) => d.learned),
      backgroundColor: colors.value['primary-600'](),
      hoverBackgroundColor: colors.value['primary-600'](0.85),
      borderRadius: 4,
      borderSkipped: 'start',
      maxBarThickness: 18,
    },
    {
      label: t.dashboard.chart.reviewed,
      data: props.days.map((d) => d.reviewed),
      backgroundColor: colors.value['stat-teal'](),
      hoverBackgroundColor: colors.value['stat-teal'](0.85),
      borderRadius: 4,
      borderSkipped: 'start',
      maxBarThickness: 18,
    },
  ],
}))

const options = computed(() => {
  const c = colors.value
  return {
    responsive: true,
    maintainAspectRatio: false,
    interaction: { mode: 'index', intersect: false },
    datasets: { bar: { categoryPercentage: 0.7, barPercentage: 0.9 } },
    plugins: {
      legend: {
        position: 'top',
        align: 'end',
        labels: { color: c['ink-500'](), usePointStyle: true, pointStyle: 'rectRounded', boxWidth: 10, boxHeight: 10 },
      },
      tooltip: {
        backgroundColor: c.surface(),
        titleColor: c['ink-900'](),
        bodyColor: c['ink-500'](),
        borderColor: c.border(),
        borderWidth: 1,
        padding: 10,
        boxPadding: 4,
        usePointStyle: true,
      },
    },
    scales: {
      x: {
        grid: { display: false },
        border: { color: c.border() },
        ticks: { color: c['ink-500'](), maxRotation: 0, autoSkip: true, autoSkipPadding: 8 },
      },
      y: {
        beginAtZero: true,
        grid: { color: c.border(0.6) },
        border: { display: false },
        ticks: { color: c['ink-500'](), precision: 0, maxTicksLimit: 5 },
      },
    },
  }
})
</script>

<template>
  <div class="h-64 sm:h-72">
    <Bar
      :data="data"
      :options="options"
      :aria-label="t.dashboard.chart.title"
      role="img"
    />
  </div>
</template>
