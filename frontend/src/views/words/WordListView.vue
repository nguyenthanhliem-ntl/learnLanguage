<script setup>
import { computed, onMounted, ref, watch } from 'vue'
import { wordsApi } from '@/api/words'
import { getErrorMessage } from '@/api/errors'
import { useDebounceFn } from '@/composables/useDebounce'
import { useFlash } from '@/composables/useFlash'
import AlertBox from '@/components/ui/AlertBox.vue'
import AppIcon from '@/components/ui/AppIcon.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import BaseModal from '@/components/ui/BaseModal.vue'
import BasePagination from '@/components/ui/BasePagination.vue'
import EmptyState from '@/components/ui/EmptyState.vue'
import PartOfSpeech from '@/components/ui/PartOfSpeech.vue'
import SpeakButton from '@/components/ui/SpeakButton.vue'
import StatusBadge from '@/components/ui/StatusBadge.vue'
import WordEditModal from './WordEditModal.vue'
import t from '@/locales/vi'

const PAGE_SIZE = 20

const q = ref('')
const page = ref(0)
const data = ref(null)
const loading = ref(false)
const error = ref('')
const { message: flashMessage, show: showFlash } = useFlash()

const editing = ref(null)
const deleting = ref(null)
const deleteBusy = ref(false)

const items = computed(() => data.value?.items ?? [])
const isEmptyBank = computed(() => data.value && data.value.totalElements === 0 && !q.value.trim())
const isNoResult = computed(() => data.value && data.value.totalElements === 0 && q.value.trim())

// Bỏ kết quả của request cũ nếu người dùng đã gõ/chuyển trang tiếp
let requestId = 0

async function load() {
  const id = ++requestId
  loading.value = true
  error.value = ''
  try {
    const res = await wordsApi.list({ q: q.value.trim(), page: page.value, size: PAGE_SIZE })
    if (id !== requestId) return
    // Xóa hết từ ở trang cuối thì lùi về trang trước
    if (res.items.length === 0 && page.value > 0 && res.totalPages > 0) {
      page.value = res.totalPages - 1
      return load()
    }
    data.value = res
  } catch (e) {
    if (id === requestId) error.value = getErrorMessage(e)
  } finally {
    if (id === requestId) loading.value = false
  }
}

const searchDebounced = useDebounceFn(() => {
  page.value = 0
  load()
}, 300)
watch(q, searchDebounced)

function changePage(p) {
  page.value = p
  load()
  window.scrollTo({ top: 0, behavior: 'smooth' })
}

function onSaved(updated) {
  const idx = data.value.items.findIndex((w) => w.id === updated.id)
  if (idx >= 0) data.value.items[idx] = updated
  editing.value = null
  showFlash(t.words.updated)
}

async function confirmDelete() {
  const target = deleting.value
  deleteBusy.value = true
  try {
    await wordsApi.remove(target.id)
    deleting.value = null
    showFlash(t.words.deleted(target.word))
    await load()
  } catch (e) {
    deleting.value = null
    error.value = getErrorMessage(e)
  } finally {
    deleteBusy.value = false
  }
}

onMounted(load)
</script>

<template>
  <div class="space-y-6">
    <!-- Tiêu đề -->
    <div class="flex flex-col gap-4 sm:flex-row sm:items-end sm:justify-between">
      <div>
        <h1 class="text-2xl font-bold sm:text-3xl">
          {{ t.words.title }}
        </h1>
        <p class="mt-1 text-ink-500">
          <template v-if="data">
            {{ t.words.total(data.totalElements) }}
          </template>
          <span
            v-else
            class="inline-block h-4 w-28 animate-pulse rounded bg-border align-middle"
          />
        </p>
      </div>
      <BaseButton :to="{ name: 'addWord' }">
        <AppIcon
          name="plus"
          class="h-5 w-5"
        />
        {{ t.words.addButton }}
      </BaseButton>
    </div>

    <!-- Tìm kiếm (ẩn khi kho trống) -->
    <div
      v-if="!isEmptyBank"
      class="relative"
    >
      <AppIcon
        name="search"
        class="pointer-events-none absolute left-4 top-1/2 h-5 w-5 -translate-y-1/2 text-ink-400"
      />
      <input
        v-model="q"
        type="search"
        :placeholder="t.words.searchPlaceholder"
        :aria-label="t.words.searchPlaceholder"
        class="w-full rounded-full border border-border bg-surface py-3 pl-12 pr-4 text-ink-900 placeholder:text-ink-400 transition focus:border-primary-600 focus:outline-none focus:ring-2 focus:ring-primary-600/40"
      >
    </div>

    <AlertBox
      v-if="flashMessage"
      variant="success"
      :message="flashMessage"
    />
    <div
      v-if="error"
      class="space-y-3"
    >
      <AlertBox :message="error" />
      <BaseButton
        variant="outline"
        @click="load"
      >
        {{ t.common.retry }}
      </BaseButton>
    </div>

    <!-- Lần tải đầu: skeleton -->
    <div
      v-if="!data && loading"
      class="space-y-2"
      aria-busy="true"
      :aria-label="t.common.loading"
    >
      <div
        v-for="i in 6"
        :key="i"
        class="flex animate-pulse items-center gap-4 rounded-2xl border border-border bg-surface px-4 py-4"
      >
        <span class="h-8 w-8 rounded-full bg-border" />
        <div class="flex-1 space-y-2">
          <span class="block h-4 w-1/4 rounded bg-border" />
          <span class="block h-3 w-1/2 rounded bg-canvas" />
        </div>
        <span class="hidden h-5 w-16 rounded-full bg-canvas sm:block" />
      </div>
    </div>

    <!-- Kho trống -->
    <div
      v-else-if="isEmptyBank"
      class="rounded-3xl border border-border bg-surface shadow-sm"
    >
      <EmptyState
        :title="t.words.emptyTitle"
        :description="t.words.emptyDesc"
      >
        <BaseButton :to="{ name: 'addWord' }">
          {{ t.words.emptyAdd }}
        </BaseButton>
        <BaseButton
          variant="outline"
          :to="{ name: 'addWord', query: { tab: 'excel' } }"
        >
          {{ t.words.emptyImport }}
        </BaseButton>
      </EmptyState>
    </div>

    <!-- Không có kết quả tìm kiếm -->
    <div
      v-else-if="isNoResult"
      class="rounded-3xl border border-border bg-surface shadow-sm"
    >
      <EmptyState
        :title="t.words.noResultTitle"
        :description="t.words.noResultDesc(q.trim())"
      >
        <BaseButton
          variant="outline"
          @click="q = ''"
        >
          {{ t.words.clearSearch }}
        </BaseButton>
      </EmptyState>
    </div>

    <!-- Danh sách -->
    <div
      v-else-if="data"
      class="space-y-4 transition-opacity"
      :class="loading ? 'opacity-60' : ''"
      :aria-busy="loading"
    >
      <!-- Desktop: bảng -->
      <div class="hidden overflow-hidden rounded-2xl border border-border bg-surface shadow-sm md:block">
        <table class="w-full text-left text-sm">
          <thead class="bg-canvas text-ink-500">
            <tr>
              <th class="px-5 py-3 font-medium">
                {{ t.words.columns.word }}
              </th>
              <th class="px-5 py-3 font-medium">
                {{ t.words.columns.meaning }}
              </th>
              <th class="px-5 py-3 font-medium">
                {{ t.words.columns.status }}
              </th>
              <th class="px-5 py-3 text-right font-medium">
                <span class="sr-only">{{ t.words.columns.actions }}</span>
              </th>
            </tr>
          </thead>
          <tbody>
            <tr
              v-for="w in items"
              :key="w.id"
              class="border-t border-border transition hover:bg-canvas/60"
            >
              <td class="px-5 py-3">
                <div class="flex items-center gap-3">
                  <SpeakButton
                    :text="w.word"
                    size="sm"
                  />
                  <div class="min-w-0">
                    <p class="flex flex-wrap items-center gap-x-2 gap-y-0.5">
                      <span class="font-semibold text-ink-900">{{ w.word }}</span>
                      <PartOfSpeech :value="w.partOfSpeech" />
                    </p>
                    <p
                      v-if="w.phonetic"
                      class="font-mono text-xs text-ink-500"
                    >
                      {{ w.phonetic }}
                    </p>
                  </div>
                </div>
              </td>
              <td class="max-w-xs px-5 py-3 text-ink-700">
                <p class="line-clamp-2">
                  {{ w.meaning }}
                </p>
              </td>
              <td class="px-5 py-3">
                <StatusBadge :status="w.status" />
              </td>
              <td class="px-5 py-3">
                <div class="flex justify-end gap-1">
                  <button
                    type="button"
                    class="rounded-full p-2 text-ink-400 transition hover:bg-primary-50 hover:text-primary-600 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
                    :title="t.common.edit"
                    :aria-label="`${t.common.edit} ${w.word}`"
                    @click="editing = w"
                  >
                    <AppIcon
                      name="pencil"
                      class="h-5 w-5"
                    />
                  </button>
                  <button
                    type="button"
                    class="rounded-full p-2 text-ink-400 transition hover:bg-danger/10 hover:text-danger focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-primary-600/40"
                    :title="t.common.delete"
                    :aria-label="`${t.common.delete} ${w.word}`"
                    @click="deleting = w"
                  >
                    <AppIcon
                      name="trash"
                      class="h-5 w-5"
                    />
                  </button>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>

      <!-- Mobile: thẻ -->
      <ul class="space-y-2 md:hidden">
        <li
          v-for="w in items"
          :key="w.id"
          class="rounded-2xl border border-border bg-surface p-4 shadow-sm"
        >
          <div class="flex items-start gap-3">
            <SpeakButton
              :text="w.word"
              size="sm"
            />
            <div class="min-w-0 flex-1">
              <div class="flex flex-wrap items-center gap-2">
                <span class="font-semibold">{{ w.word }}</span>
                <PartOfSpeech :value="w.partOfSpeech" />
                <StatusBadge :status="w.status" />
              </div>
              <p
                v-if="w.phonetic"
                class="font-mono text-xs text-ink-500"
              >
                {{ w.phonetic }}
              </p>
              <p class="mt-1 text-sm text-ink-700">
                {{ w.meaning }}
              </p>
            </div>
          </div>
          <div class="mt-3 flex justify-end gap-2 border-t border-border pt-3">
            <button
              type="button"
              class="inline-flex items-center gap-1.5 rounded-full px-3 py-1.5 text-sm text-ink-500 transition hover:bg-primary-50 hover:text-primary-600"
              @click="editing = w"
            >
              <AppIcon
                name="pencil"
                class="h-4 w-4"
              />
              {{ t.common.edit }}
            </button>
            <button
              type="button"
              class="inline-flex items-center gap-1.5 rounded-full px-3 py-1.5 text-sm text-ink-500 transition hover:bg-danger/10 hover:text-danger"
              @click="deleting = w"
            >
              <AppIcon
                name="trash"
                class="h-4 w-4"
              />
              {{ t.common.delete }}
            </button>
          </div>
        </li>
      </ul>

      <BasePagination
        :page="data.page"
        :total-pages="data.totalPages"
        :disabled="loading"
        @change="changePage"
      />
    </div>

    <WordEditModal
      :word="editing"
      @close="editing = null"
      @saved="onSaved"
    />

    <BaseModal
      :open="Boolean(deleting)"
      :title="t.words.deleteTitle"
      :persistent="deleteBusy"
      @close="deleting = null"
    >
      <p class="text-ink-700">
        {{ deleting ? t.words.deleteConfirm(deleting.word) : '' }}
      </p>
      <div class="mt-6 flex flex-col-reverse gap-3 sm:flex-row sm:justify-end">
        <BaseButton
          variant="outline"
          :disabled="deleteBusy"
          @click="deleting = null"
        >
          {{ t.common.cancel }}
        </BaseButton>
        <BaseButton
          variant="danger"
          :loading="deleteBusy"
          @click="confirmDelete"
        >
          {{ t.common.delete }}
        </BaseButton>
      </div>
    </BaseModal>
  </div>
</template>
