<script setup>
import { ref, useId } from 'vue'

// Thuộc tính lạ (maxlength, autocapitalize, spellcheck...) được gắn thẳng vào <input>
defineOptions({ inheritAttrs: false })

const model = defineModel({ type: String, default: '' })

defineProps({
  label: { type: String, default: '' },
  type: { type: String, default: 'text' },
  placeholder: { type: String, default: '' },
  hint: { type: String, default: '' },
  error: { type: String, default: '' },
  autocomplete: { type: String, default: 'off' },
  required: { type: Boolean, default: false },
  mono: { type: Boolean, default: false }, // dùng cho phiên âm IPA
})

const id = useId()
const input = ref(null)

defineExpose({
  focus: () => input.value?.focus(),
})
</script>

<template>
  <div>
    <label
      v-if="label"
      :for="id"
      class="mb-1.5 block text-sm font-medium text-ink-900"
    >
      {{ label }}
      <span
        v-if="required"
        class="text-danger"
        aria-hidden="true"
      >*</span>
    </label>
    <input
      :id="id"
      ref="input"
      v-model="model"
      v-bind="$attrs"
      :type="type"
      :placeholder="placeholder"
      :autocomplete="autocomplete"
      :required="required"
      :aria-invalid="Boolean(error)"
      class="w-full rounded-xl border bg-surface px-4 py-3 text-ink-900 placeholder:text-ink-400 transition focus:outline-none focus:ring-2 focus:ring-primary-600/40 disabled:bg-canvas disabled:text-ink-500"
      :class="[error ? 'border-danger' : 'border-border focus:border-primary-600', mono ? 'font-mono' : '']"
    >
    <p
      v-if="error"
      class="mt-1.5 text-sm text-danger"
    >
      {{ error }}
    </p>
    <p
      v-else-if="hint"
      class="mt-1.5 text-xs text-ink-500"
    >
      {{ hint }}
    </p>
  </div>
</template>
