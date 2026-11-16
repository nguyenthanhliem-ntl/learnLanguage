import { createApp } from 'vue'
import { createPinia } from 'pinia'
import App from './App.vue'
import router from './router'
import { useThemeStore } from './stores/theme'
import { vReveal } from './directives/reveal'
import './assets/main.css'

const app = createApp(App)
app.use(createPinia())
useThemeStore() // apply the saved Light/Dark theme
app.directive('reveal', vReveal)
app.use(router)
app.mount('#app')
