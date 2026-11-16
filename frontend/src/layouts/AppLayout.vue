<script setup>
import { computed, onBeforeUnmount, onMounted, ref, watch } from 'vue'
import { RouterLink, RouterView, useRoute } from 'vue-router'
import { useAuthStore } from '@/stores/auth'
import AppIcon from '@/components/ui/AppIcon.vue'
import AppLogo from '@/components/ui/AppLogo.vue'
import UserMenu from '@/components/ui/UserMenu.vue'
import t from '@/locales/vi'

const auth = useAuthStore()
const route = useRoute()

// Menu chính: Tổng quan · Từ vựng (xổ xuống: Luyện tập, Kho từ, Thêm từ) · Ngữ pháp · Bất quy tắc.
// Dùng chung cho header (desktop) và bottom navigation (mobile).
const navItems = [
  { key: 'dashboard', name: 'dashboard', icon: 'home', ...t.nav.dashboard },
  {
    key: 'vocab',
    icon: 'book',
    ...t.nav.vocab,
    children: [
      { name: 'practice', icon: 'book', ...t.nav.practice },
      { name: 'words', icon: 'stack', ...t.nav.words },
      { name: 'addWord', icon: 'plus', ...t.nav.addWord },
    ],
  },
  { key: 'grammar', name: 'grammar', icon: 'document', ...t.nav.grammar },
  { key: 'irregular', name: 'irregularVerbs', icon: 'menu', ...t.nav.irregular },
]

const routeNav = computed(() => route.meta.nav ?? route.name)

function isActive(item) {
  if (item.children) return item.children.some((c) => c.name === routeNav.value)
  return item.name === routeNav.value
}

// Menu xổ xuống "Từ vựng": 'desktop' | 'mobile' | null
const openMenu = ref(null)
const desktopMenu = ref(null)
const mobileMenu = ref(null)

function toggle(where) {
  openMenu.value = openMenu.value === where ? null : where
}

function onDocumentClick(e) {
  // ref đặt trong v-for nên là mảng
  const refValue = openMenu.value === 'desktop' ? desktopMenu.value : mobileMenu.value
  const root = Array.isArray(refValue) ? refValue[0] : refValue
  if (root && !root.contains(e.target)) openMenu.value = null
}
function onKeydown(e) {
  if (e.key === 'Escape') openMenu.value = null
}

watch(openMenu, (value) => {
  if (value) {
    document.addEventListener('click', onDocumentClick)
    document.addEventListener('keydown', onKeydown)
  } else {
    document.removeEventListener('click', onDocumentClick)
    document.removeEventListener('keydown', onKeydown)
  }
})
// Chuyển trang thì đóng menu
watch(() => route.fullPath, () => { openMenu.value = null })

onBeforeUnmount(() => {
  document.removeEventListener('click', onDocumentClick)
  document.removeEventListener('keydown', onKeydown)
})

onMounted(() => {
  // Tải lại trang thì store chưa có user: lấy lại từ /users/me (401 sẽ tự chuyển về /login)
  if (!auth.user) {
    auth.fetchMe().catch(() => {})
  }
})
</script>

<template>
  <div class="min-h-screen bg-canvas">
    <header class="sticky top-0 z-30 border-b border-border bg-surface/90 backdrop-blur">
      <div class="mx-auto flex h-16 max-w-6xl items-center justify-between gap-4 px-4">
        <RouterLink
          :to="{ name: 'dashboard' }"
          class="shrink-0 rounded-lg"
        >
          <AppLogo />
        </RouterLink>

        <!-- Menu giữa (desktop) -->
        <nav
          class="hidden items-center gap-1 md:flex"
          :aria-label="t.nav.label"
        >
          <template
            v-for="item in navItems"
            :key="item.key"
          >
            <!-- Nhóm có menu xổ xuống -->
            <div
              v-if="item.children"
              ref="desktopMenu"
              class="relative"
            >
              <button
                type="button"
                class="flex items-center gap-2 rounded-full px-3 py-2 text-sm font-medium transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40 lg:px-4"
                :title="item.label"
                :class="isActive(item) || openMenu === 'desktop' ? 'bg-primary-50 text-primary-600' : 'text-ink-500 hover:bg-canvas hover:text-ink-900'"
                :aria-expanded="openMenu === 'desktop'"
                aria-haspopup="true"
                @click="toggle('desktop')"
              >
                <AppIcon
                  :name="item.icon"
                  class="h-5 w-5"
                />
                <span class="hidden lg:inline">{{ item.label }}</span>
                <AppIcon
                  name="chevronDown"
                  class="h-4 w-4 transition"
                  :class="openMenu === 'desktop' ? 'rotate-180' : ''"
                />
              </button>
              <div
                v-if="openMenu === 'desktop'"
                class="absolute left-0 top-full z-40 mt-2 w-52 rounded-2xl border border-border bg-surface p-1.5 shadow-xl"
                role="menu"
              >
                <RouterLink
                  v-for="child in item.children"
                  :key="child.name"
                  :to="{ name: child.name }"
                  class="flex items-center gap-3 rounded-xl px-3 py-2.5 text-sm font-medium transition"
                  :class="routeNav === child.name ? 'bg-primary-50 text-primary-600' : 'text-ink-900 hover:bg-canvas'"
                  :aria-current="routeNav === child.name ? 'page' : undefined"
                  role="menuitem"
                >
                  <AppIcon
                    :name="child.icon"
                    class="h-5 w-5"
                  />
                  {{ child.label }}
                </RouterLink>
              </div>
            </div>

            <RouterLink
              v-else
              :to="{ name: item.name }"
              class="flex items-center gap-2 rounded-full px-3 py-2 text-sm font-medium transition lg:px-4"
              :class="isActive(item) ? 'bg-primary-50 text-primary-600' : 'text-ink-500 hover:bg-canvas hover:text-ink-900'"
              :aria-current="isActive(item) ? 'page' : undefined"
              :title="item.label"
            >
              <AppIcon
                :name="item.icon"
                class="h-5 w-5"
              />
              <span class="hidden lg:inline">{{ item.label }}</span>
            </RouterLink>
          </template>
        </nav>

        <UserMenu />
      </div>
    </header>

    <main class="mx-auto max-w-6xl px-4 pb-28 pt-6 md:pb-12 md:pt-8">
      <RouterView />
    </main>

    <!-- Bottom navigation (mobile) -->
    <nav
      class="fixed inset-x-0 bottom-0 z-30 border-t border-border bg-surface md:hidden"
      :aria-label="t.nav.label"
    >
      <ul class="grid grid-cols-4">
        <li
          v-for="item in navItems"
          :key="item.key"
        >
          <!-- Nhóm "Từ vựng": bấm để bật danh sách phía trên thanh menu -->
          <div
            v-if="item.children"
            ref="mobileMenu"
            class="relative"
          >
            <div
              v-if="openMenu === 'mobile'"
              class="absolute bottom-full left-1/2 z-40 mb-2 w-56 -translate-x-1/2 rounded-2xl border border-border bg-surface p-1.5 shadow-xl"
              role="menu"
            >
              <RouterLink
                v-for="child in item.children"
                :key="child.name"
                :to="{ name: child.name }"
                class="flex items-center gap-3 rounded-xl px-3 py-3 text-sm font-medium transition"
                :class="routeNav === child.name ? 'bg-primary-50 text-primary-600' : 'text-ink-900 hover:bg-canvas'"
                :aria-current="routeNav === child.name ? 'page' : undefined"
                role="menuitem"
              >
                <AppIcon
                  :name="child.icon"
                  class="h-5 w-5"
                />
                {{ child.label }}
              </RouterLink>
            </div>
            <button
              type="button"
              class="flex w-full flex-col items-center gap-1 py-2.5 text-[11px] font-medium transition focus-visible:outline-none"
              :class="isActive(item) || openMenu === 'mobile' ? 'text-primary-600' : 'text-ink-500'"
              :aria-expanded="openMenu === 'mobile'"
              aria-haspopup="true"
              @click="toggle('mobile')"
            >
              <span
                class="flex h-8 w-12 items-center justify-center rounded-full transition"
                :class="isActive(item) || openMenu === 'mobile' ? 'bg-primary-50' : ''"
              >
                <AppIcon
                  :name="item.icon"
                  class="h-5 w-5"
                />
              </span>
              {{ item.short }}
            </button>
          </div>

          <RouterLink
            v-else
            :to="{ name: item.name }"
            class="flex flex-col items-center gap-1 py-2.5 text-[11px] font-medium transition"
            :class="isActive(item) ? 'text-primary-600' : 'text-ink-500'"
            :aria-current="isActive(item) ? 'page' : undefined"
          >
            <span
              class="flex h-8 w-12 items-center justify-center rounded-full transition"
              :class="isActive(item) ? 'bg-primary-50' : ''"
            >
              <AppIcon
                :name="item.icon"
                class="h-5 w-5"
              />
            </span>
            {{ item.short }}
          </RouterLink>
        </li>
      </ul>
    </nav>
  </div>
</template>
