import { fileURLToPath, URL } from 'node:url'
import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

export default defineConfig({
  plugins: [vue()],
  resolve: {
    alias: {
      '@': fileURLToPath(new URL('./src', import.meta.url)),
    },
  },
  server: {
    port: 5173,
    // Khi dev, gọi /api sẽ được chuyển sang backend Spring Boot (đổi cổng bằng biến API_TARGET nếu cần)
    proxy: {
      '/api': process.env.API_TARGET || 'http://localhost:8080',
    },
  },
})
