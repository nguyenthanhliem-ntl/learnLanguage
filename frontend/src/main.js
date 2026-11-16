import { createApp } from 'vue'
import { createPinia } from 'pinia'
import App from './App.vue'
import router from './router'
import { useThemeStore } from './stores/theme'
import { vReveal } from './directives/reveal'
import './assets/main.css'

const app = createApp(App)
app.use(createPinia())
useThemeStore() // áp dụng giao diện Sáng/Tối đã lưu
app.directive('reveal', vReveal)
app.use(router)
app.mount('#app')
