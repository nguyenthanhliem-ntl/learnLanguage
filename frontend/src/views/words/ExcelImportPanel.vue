<script setup>
import { computed, ref } from 'vue'
import { wordsApi } from '@/api/words'
import { getErrorDetails, getErrorMessage } from '@/api/errors'
import AlertBox from '@/components/ui/AlertBox.vue'
import AppIcon from '@/components/ui/AppIcon.vue'
import BaseButton from '@/components/ui/BaseButton.vue'
import t from '@/locales/vi'

const MAX_SIZE = 5 * 1024 * 1024
const ALLOWED = ['xlsx', 'xls']

const file = ref(null)
const fileError = ref('')
const dragging = ref(false)
const importing = ref(false)
const downloading = ref(false)
const result = ref(null)
const error = ref(null)
const fileInput = ref(null)

const fileSize = computed(() => {
  if (!file.value) return ''
  const kb = file.value.size / 1024
  return kb < 1024 ? `${kb.toFixed(0)} KB` : `${(kb / 1024).toFixed(1)} MB`
})

function pick(selected) {
  fileError.value = ''
  error.value = null
  if (!selected) return
  const ext = selected.name.split('.').pop()?.toLowerCase()
  if (!ALLOWED.includes(ext)) {
    fileError.value = t.excel.invalidType
    return
  }
  if (selected.size > MAX_SIZE) {
    fileError.value = t.excel.tooLarge
    return
  }
  result.value = null
  file.value = selected
}

function onChange(e) {
  pick(e.target.files?.[0])
  e.target.value = '' // allow picking the same file again
}

function onDrop(e) {
  dragging.value = false
  pick(e.dataTransfer?.files?.[0])
}

async function doImport() {
  if (!file.value || importing.value) return
  importing.value = true
  error.value = null
  try {
    result.value = await wordsApi.importExcel(file.value)
    file.value = null
  } catch (e) {
    error.value = { message: getErrorMessage(e), details: getErrorDetails(e) }
  } finally {
    importing.value = false
  }
}

async function downloadTemplate() {
  downloading.value = true
  error.value = null
  try {
    const blob = await wordsApi.downloadTemplate()
    const url = URL.createObjectURL(blob)
    const a = document.createElement('a')
    a.href = url
    a.download = 'vocab-template.xlsx'
    a.click()
    URL.revokeObjectURL(url)
  } catch (e) {
    error.value = { message: getErrorMessage(e), details: [] }
  } finally {
    downloading.value = false
  }
}

function reset() {
  result.value = null
  file.value = null
}
</script>

<template>
  <div class="grid gap-6 lg:grid-cols-5">
    <!-- Format guide -->
    <aside class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6 lg:col-span-2">
      <h2 class="font-semibold">
        {{ t.excel.formatTitle }}
      </h2>
      <p class="mt-1 text-sm text-ink-500">
        {{ t.excel.formatDesc }}
      </p>
      <div class="mt-4 overflow-hidden rounded-xl border border-border text-sm">
        <div class="grid grid-cols-4 bg-primary-600 text-xs font-medium text-white sm:text-sm">
          <span
            v-for="c in t.excel.columns"
            :key="c.col"
            class="px-2 py-2 sm:px-3"
          >{{ c.col }}. {{ c.name }}</span>
        </div>
        <div class="grid grid-cols-4 text-xs text-ink-500">
          <span
            v-for="c in t.excel.columns"
            :key="c.col"
            class="break-words px-2 py-2 sm:px-3"
            :class="c.col === 'C' ? 'font-mono' : ''"
          >{{ c.example }}</span>
        </div>
      </div>
      <p class="mt-4 text-sm text-ink-500">
        {{ t.excel.rules }}
      </p>
      <BaseButton
        variant="outline"
        class="mt-5"
        :loading="downloading"
        @click="downloadTemplate"
      >
        <AppIcon
          v-if="!downloading"
          name="download"
          class="h-5 w-5"
        />
        {{ t.excel.downloadTemplate }}
      </BaseButton>
    </aside>

    <div class="space-y-5 lg:col-span-3">
      <AlertBox
        v-if="error"
        :message="error.message"
        :details="error.details"
      />

      <!-- Import result -->
      <section
        v-if="result"
        class="rounded-2xl border border-border bg-surface p-5 shadow-sm sm:p-6"
      >
        <h2 class="font-semibold">
          {{ t.excel.resultTitle }}
        </h2>
        <div class="mt-4 grid grid-cols-3 gap-3">
          <div class="rounded-2xl bg-stat-teal p-4 text-white">
            <p class="text-3xl font-bold sm:text-4xl">
              {{ result.added }}
            </p>
            <p class="mt-1 text-xs sm:text-sm">
              {{ t.excel.added }}
            </p>
          </div>
          <div class="rounded-2xl bg-stat-violet p-4 text-white">
            <p class="text-3xl font-bold sm:text-4xl">
              {{ result.duplicates }}
            </p>
            <p class="mt-1 text-xs sm:text-sm">
              {{ t.excel.duplicates }}
            </p>
          </div>
          <div class="rounded-2xl bg-stat-pink p-4 text-white">
            <p class="text-3xl font-bold sm:text-4xl">
              {{ result.errors.length }}
            </p>
            <p class="mt-1 text-xs sm:text-sm">
              {{ t.excel.errorRows }}
            </p>
          </div>
        </div>

        <div
          v-if="result.duplicateWords.length"
          class="mt-5"
        >
          <p class="text-sm font-medium">
            {{ t.excel.duplicateList }}
          </p>
          <div class="mt-2 flex flex-wrap gap-2">
            <span
              v-for="w in result.duplicateWords"
              :key="w"
              class="rounded-full bg-canvas px-3 py-1 text-xs text-ink-500"
            >{{ w }}</span>
            <span
              v-if="result.duplicates > result.duplicateWords.length"
              class="px-1 py-1 text-xs text-ink-400"
            >+{{ result.duplicates - result.duplicateWords.length }}</span>
          </div>
        </div>

        <div
          v-if="result.errors.length"
          class="mt-5 max-h-72 overflow-y-auto rounded-xl border border-border"
        >
          <table class="w-full text-left text-sm">
            <thead class="sticky top-0 bg-canvas text-ink-500">
              <tr>
                <th class="w-20 px-3 py-2 font-medium">
                  {{ t.excel.errorTable.row }}
                </th>
                <th class="px-3 py-2 font-medium">
                  {{ t.excel.errorTable.reason }}
                </th>
              </tr>
            </thead>
            <tbody>
              <tr
                v-for="e in result.errors"
                :key="e.row"
                class="border-t border-border"
              >
                <td class="px-3 py-2 font-medium text-danger">
                  {{ e.row }}
                </td>
                <td class="px-3 py-2">
                  {{ e.reason }}
                </td>
              </tr>
            </tbody>
          </table>
        </div>

        <div class="mt-5 flex flex-wrap gap-3">
          <BaseButton :to="{ name: 'words' }">
            {{ t.addWord.viewAll }}
          </BaseButton>
          <BaseButton
            variant="outline"
            @click="reset"
          >
            {{ t.excel.importMore }}
          </BaseButton>
        </div>
      </section>

      <!-- File drop zone -->
      <section
        v-else
        class="rounded-2xl border-2 border-dashed bg-surface p-6 text-center transition sm:p-10"
        :class="dragging ? 'border-primary-600 bg-primary-50' : 'border-border'"
        @dragover.prevent="dragging = true"
        @dragleave.prevent="dragging = false"
        @drop.prevent="onDrop"
      >
        <span class="mx-auto flex h-14 w-14 items-center justify-center rounded-full bg-primary-50 text-primary-600">
          <AppIcon
            :name="file ? 'document' : 'upload'"
            class="h-7 w-7"
          />
        </span>

        <template v-if="file">
          <p class="mt-4 break-all font-semibold">
            {{ file.name }}
          </p>
          <p class="text-sm text-ink-500">
            {{ fileSize }}
          </p>
          <div class="mt-6 flex flex-wrap justify-center gap-3">
            <BaseButton
              size="lg"
              :loading="importing"
              @click="doImport"
            >
              <AppIcon
                v-if="!importing"
                name="upload"
                class="h-5 w-5"
              />
              {{ t.excel.importButton }}
            </BaseButton>
            <BaseButton
              variant="outline"
              size="lg"
              :disabled="importing"
              @click="fileInput?.click()"
            >
              {{ t.excel.changeFile }}
            </BaseButton>
          </div>
        </template>

        <template v-else>
          <p class="mt-4 font-semibold">
            {{ t.excel.dropTitle }}
          </p>
          <p class="mt-1 text-sm text-ink-500">
            {{ t.excel.dropOr }}
          </p>
          <BaseButton
            class="mt-3"
            @click="fileInput?.click()"
          >
            {{ t.excel.chooseFile }}
          </BaseButton>
        </template>

        <p
          v-if="fileError"
          class="mt-4 text-sm text-danger"
        >
          {{ fileError }}
        </p>

        <input
          ref="fileInput"
          type="file"
          accept=".xlsx,.xls,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,application/vnd.ms-excel"
          class="hidden"
          @change="onChange"
        >
      </section>
    </div>
  </div>
</template>
