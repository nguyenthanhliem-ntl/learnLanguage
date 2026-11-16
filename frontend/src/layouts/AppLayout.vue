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

// Main menu: Dashboard (all languages) · Languages (dropdown: English, Korean, ...).
// Shared by the header (desktop) and the bottom navigation (mobile).
// Each language is a section (route meta "section") with its own sub-menu shown under the header.
// Adding a language: one entry in the dropdown and one list in sectionMenus.
const navItems = [
  { key: 'dashboard', name: 'dashboard', icon: 'home', ...t.nav.dashboard },
  {
    key: 'languages',
    icon: 'language',
    ...t.nav.languages,
    children: [
      { name: 'englishHome', section: 'en', badge: 'EN', ...t.nav.english },
      { name: 'koreanHome', section: 'ko', badge: 'KO', ...t.nav.korean },
    ],
  },
]

const sectionMenus = {
  en: [
    { name: 'englishHome', icon: 'squares', ...t.nav.levels },
    { name: 'practice', icon: 'book', ...t.nav.practice },
    { name: 'words', icon: 'stack', ...t.nav.words },
    { name: 'addWord', icon: 'plus', ...t.nav.addWord },
    { name: 'grammar', icon: 'document', ...t.nav.grammar },
    { name: 'irregularVerbs', icon: 'menu', ...t.nav.irregular },
    { name: 'commonPhrases', icon: 'sparkles', ...t.nav.phrases },
  ],
  ko: [
    { name: 'koreanHome', icon: 'squares', ...t.nav.levels },
    { name: 'koreanHangul', icon: 'language', ...t.nav.koreanHangul },
    { name: 'koreanPractice', icon: 'book', ...t.nav.practice },
    { name: 'koreanWords', icon: 'stack', ...t.nav.words },
    { name: 'koreanGrammar', icon: 'document', ...t.nav.grammar },
  ],
}

const routeNav = computed(() => route.meta.nav ?? route.name)
const section = computed(() => route.meta.section ?? null)
// Sub-menu of the language being viewed (none on the Dashboard / Account pages)
const sectionMenu = computed(() => sectionMenus[section.value] ?? [])
const currentLanguage = computed(() => navItems[1].children.find((c) => c.section === section.value) ?? null)

const isChildActive = (child) => child.section === section.value

function isActive(item) {
  if (item.children) return item.children.some(isChildActive)
  return item.name === routeNav.value
}

// Open dropdown: '<group key>:desktop' | '<group key>:mobile' | null
const openMenu = ref(null)
const desktopMenu = ref([])
const mobileMenu = ref([])

const menuId = (item, where) => `${item.key}:${where}`
const isOpen = (item, where) => openMenu.value === menuId(item, where)

function toggle(item, where) {
  openMenu.value = isOpen(item, where) ? null : menuId(item, where)
}

function onDocumentClick(e) {
  // refs inside v-for are arrays: close when the click is outside every dropdown group
  const roots = [...(desktopMenu.value ?? []), ...(mobileMenu.value ?? [])]
  if (!roots.some((root) => root?.contains(e.target))) openMenu.value = null
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
// Close the menu on navigation
watch(() => route.fullPath, () => { openMenu.value = null })

onBeforeUnmount(() => {
  document.removeEventListener('click', onDocumentClick)
  document.removeEventListener('keydown', onKeydown)
})

onMounted(() => {
  // After a page reload the store has no user yet: fetch it from /users/me (a 401 redirects to /login)
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

        <!-- Centre menu (desktop) -->
        <nav
          class="hidden items-center gap-1 md:flex"
          :aria-label="t.nav.label"
        >
          <template
            v-for="item in navItems"
            :key="item.key"
          >
            <!-- Group with a dropdown -->
            <div
              v-if="item.children"
              ref="desktopMenu"
              class="relative"
            >
              <button
                type="button"
                class="flex items-center gap-2 rounded-full px-3 py-2 text-sm font-medium transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40 lg:px-4"
                :title="item.label"
                :class="isActive(item) || isOpen(item, 'desktop') ? 'bg-primary-50 text-primary-600' : 'text-ink-500 hover:bg-canvas hover:text-ink-900'"
                :aria-expanded="isOpen(item, 'desktop')"
                aria-haspopup="true"
                @click="toggle(item, 'desktop')"
              >
                <AppIcon
                  :name="item.icon"
                  class="h-5 w-5"
                />
                <span>{{ currentLanguage?.label ?? item.label }}</span>
                <AppIcon
                  name="chevronDown"
                  class="h-4 w-4 transition"
                  :class="isOpen(item, 'desktop') ? 'rotate-180' : ''"
                />
              </button>
              <div
                v-if="isOpen(item, 'desktop')"
                class="absolute left-0 top-full z-40 mt-2 w-56 rounded-2xl border border-border bg-surface p-1.5 shadow-xl"
                role="menu"
              >
                <RouterLink
                  v-for="child in item.children"
                  :key="child.name"
                  :to="{ name: child.name }"
                  class="flex items-center gap-3 rounded-xl px-3 py-2.5 text-sm font-medium transition"
                  :class="isChildActive(child) ? 'bg-primary-50 text-primary-600' : 'text-ink-900 hover:bg-canvas'"
                  :aria-current="isChildActive(child) ? 'true' : undefined"
                  role="menuitem"
                >
                  <span class="flex h-7 w-9 items-center justify-center rounded-lg bg-primary-50 text-xs font-bold text-primary-600">{{ child.badge }}</span>
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
              <span>{{ item.label }}</span>
            </RouterLink>
          </template>
        </nav>

        <UserMenu />
      </div>

      <!-- Sub-menu of the language being viewed -->
      <nav
        v-if="sectionMenu.length"
        class="border-t border-border"
        :aria-label="currentLanguage?.label"
      >
        <ul class="mx-auto flex max-w-6xl gap-1 overflow-x-auto px-4 py-1.5">
          <li
            v-for="item in sectionMenu"
            :key="item.name"
            class="shrink-0"
          >
            <RouterLink
              :to="{ name: item.name }"
              class="flex items-center gap-1.5 rounded-full px-3 py-1.5 text-sm font-medium transition focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
              :class="routeNav === item.name ? 'bg-primary-50 text-primary-600' : 'text-ink-500 hover:bg-canvas hover:text-ink-900'"
              :aria-current="routeNav === item.name ? 'page' : undefined"
            >
              <AppIcon
                :name="item.icon"
                class="h-4 w-4"
              />
              {{ item.label }}
            </RouterLink>
          </li>
        </ul>
      </nav>
    </header>

    <main class="mx-auto max-w-6xl px-4 pb-28 pt-6 md:pb-12 md:pt-8">
      <RouterView />
    </main>

    <!-- Bottom navigation (mobile) -->
    <nav
      class="fixed inset-x-0 bottom-0 z-30 border-t border-border bg-surface md:hidden"
      :aria-label="t.nav.label"
    >
      <ul class="grid grid-cols-2">
        <li
          v-for="item in navItems"
          :key="item.key"
        >
          <!-- Dropdown group: tap to open the list above the menu bar -->
          <div
            v-if="item.children"
            ref="mobileMenu"
            class="relative"
          >
            <div
              v-if="isOpen(item, 'mobile')"
              class="absolute bottom-full right-2 z-40 mb-2 w-56 rounded-2xl border border-border bg-surface p-1.5 shadow-xl"
              role="menu"
            >
              <RouterLink
                v-for="child in item.children"
                :key="child.name"
                :to="{ name: child.name }"
                class="flex items-center gap-3 rounded-xl px-3 py-3 text-sm font-medium transition"
                :class="isChildActive(child) ? 'bg-primary-50 text-primary-600' : 'text-ink-900 hover:bg-canvas'"
                :aria-current="isChildActive(child) ? 'true' : undefined"
                role="menuitem"
              >
                <span class="flex h-7 w-9 items-center justify-center rounded-lg bg-primary-50 text-xs font-bold text-primary-600">{{ child.badge }}</span>
                {{ child.label }}
              </RouterLink>
            </div>
            <button
              type="button"
              class="flex w-full flex-col items-center gap-1 py-2.5 text-[11px] font-medium transition focus-visible:outline-none"
              :class="isActive(item) || isOpen(item, 'mobile') ? 'text-primary-600' : 'text-ink-500'"
              :aria-expanded="isOpen(item, 'mobile')"
              aria-haspopup="true"
              @click="toggle(item, 'mobile')"
            >
              <span
                class="flex h-8 w-12 items-center justify-center rounded-full transition"
                :class="isActive(item) || isOpen(item, 'mobile') ? 'bg-primary-50' : ''"
              >
                <AppIcon
                  :name="item.icon"
                  class="h-5 w-5"
                />
              </span>
              {{ currentLanguage?.short ?? item.short }}
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
