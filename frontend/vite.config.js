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
    // In dev, /api calls are proxied to the Spring Boot backend (change the port with API_TARGET if needed)
    proxy: {
      '/api': process.env.API_TARGET || 'http://localhost:8080',
    },
  },
})
