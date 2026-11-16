<script setup>
import { computed, nextTick, onBeforeUnmount, ref } from 'vue'
import { studyApi } from '@/api/study'
import { useKeyboardShortcuts } from '@/composables/useKeyboardShortcuts'
import { useSpeech } from '@/composables/useSpeech'
import { arrangeWithGap, placeWithin, REPEAT_GAP } from '@/utils/spacing'
import AlertBox from '@/components/ui/AlertBox.vue'
import ChoiceQuestion from '@/components/study/ChoiceQuestion.vue'
import TypeQuestion from '@/components/study/TypeQuestion.vue'
import t from '@/locales/vi'

/*
 * Một lượt ôn: lần lượt từng câu, mỗi câu chỉ tính lần trả lời đầu tiên.
 * Nút "Tiếp tục →" cố định bên phải: chưa trả lời thì là bỏ qua (không tính đúng sai, không đổi lịch ôn;
 * từ bỏ qua được hỏi lại một lần sau ít nhất 5 câu nếu lượt còn đủ dài), đã trả lời thì sang câu tiếp.
 * Trả lời đúng: tô xanh, đọc từ, hiện thông tin từ, 1,5 giây sau tự sang câu tiếp.
 * Trả lời sai: chỉ tô đỏ (không lộ đáp án), chờ người dùng bấm Tiếp tục / Enter. Câu chọn được chọn lại;
 * chọn trúng ở lần sau thì cũng tự sang câu tiếp, nhưng điểm vẫn tính theo lần chọn đầu tiên.
 * Kết thúc thì emit 'finished' với danh sách { word, correct, skipped }.
 * Mỗi câu trả lời lần đầu emit 'answered' { correct }, mỗi câu bỏ qua emit 'skipped'.
 * stopAfterCurrent: kết thúc lượt ngay sau câu hiện tại.
 */
const AUTO_NEXT_DELAY = 1500
const props = defineProps({
  questions: { type: Array, required: true },
  recentIds: { type: Array, default: () => [] }, // từ vừa hỏi ở lượt trước, để không lặp trong vòng 5 câu
  stopAfterCurrent: { type: Boolean, default: false },
  priorityIds: { type: Array, default: () => [] }, // từ thưởng vừa học: phải hỏi trong 10 câu đầu
})
const emit = defineEmits(['finished', 'shown', 'answered', 'skipped'])

const queue = ref(placeWithin(arrangeWithGap(props.questions, props.recentIds), props.priorityIds))
const requeued = new Set()
const index = ref(0)
const results = ref([])
const feedback = ref(null) // { correct, answer } sau khi trả lời câu hiện tại
const saving = ref(false)
const saveError = ref(false)
const nextRequested = ref(false) // bấm Tiếp tục khi kết quả đang được lưu
const { speak } = useSpeech()
const autoNext = ref(false) // đang đếm ngược tự sang câu tiếp
let autoTimer = null

function cancelAutoNext() {
  clearTimeout(autoTimer)
  autoNext.value = false
}
onBeforeUnmount(cancelAutoNext)

const current = computed(() => queue.value[index.value])
const isLast = computed(() => index.value === queue.value.length - 1)

emit('shown', current.value.word.id)

async function onAnswered({ correct, answer }) {
  const q = current.value
  const answeredAt = Date.now()
  feedback.value = { correct, answer }
  results.value.push({ word: q.word, correct, skipped: false })
  emit('answered', { correct })
  if (correct) {
    autoNext.value = true
    speak(q.word.word)
  }
  saving.value = true
  saveError.value = false
  try {
    await studyApi.answer(q.word.id, { answer: q.answer, correct })
  } catch {
    saveError.value = true
  } finally {
    saving.value = false
  }
  if (nextRequested.value && current.value === q) {
    advance()
    return
  }
  // Tính 1,5 giây từ lúc trả lời; lưu lỗi thì dừng lại để người dùng thấy thông báo
  if (autoNext.value && !saveError.value && current.value === q) {
    autoTimer = setTimeout(next, Math.max(AUTO_NEXT_DELAY - (Date.now() - answeredAt), 0))
  } else {
    autoNext.value = false
  }
}

/** Câu chọn: sai lần đầu nhưng chọn trúng ở lần sau (không đổi điểm) -> đọc từ rồi tự sang câu tiếp. */
function onSolved() {
  speak(current.value.word.word)
  cancelAutoNext()
  autoNext.value = true
  autoTimer = setTimeout(next, AUTO_NEXT_DELAY)
}

function advance() {
  cancelAutoNext()
  if (isLast.value || props.stopAfterCurrent) {
    emit('finished', results.value)
    return
  }
  feedback.value = null
  saveError.value = false
  nextRequested.value = false
  index.value++
  emit('shown', current.value.word.id)
}

function next() {
  if (!feedback.value) return
  if (saving.value) {
    nextRequested.value = true // sang câu tiếp ngay khi lưu xong
    return
  }
  advance()
}

/** Nút "Tiếp tục →": chưa trả lời thì bỏ qua, đã trả lời thì sang câu tiếp. */
function onNext() {
  if (feedback.value) next()
  else skip()
}

async function skip() {
  if (feedback.value) return
  const q = current.value
  results.value.push({ word: q.word, correct: false, skipped: true })
  emit('skipped')
  await nextTick() // để stopAfterCurrent (do 'skipped' bật) kịp cập nhật trước khi sang câu
  // Hỏi lại một lần sau ít nhất 5 câu nữa, nếu lượt còn đủ dài
  let insertAt = index.value + 1 + REPEAT_GAP
  // Không chen câu hỏi lại lên trước từ mới chưa hỏi, để từ mới vẫn nằm trong 10 câu đầu
  const pendingNew = queue.value.findLastIndex((x, i) => i > index.value && props.priorityIds.includes(x.word.id))
  if (pendingNew >= 0 && insertAt <= pendingNew) insertAt = pendingNew + 1
  if (!requeued.has(q.word.id) && insertAt <= queue.value.length) {
    requeued.add(q.word.id)
    queue.value.splice(insertAt, 0, { ...q })
  }
  advance()
}

useKeyboardShortcuts({ Enter: next })
</script>

<template>
  <div class="space-y-5">
    <Transition
      mode="out-in"
      enter-active-class="transition duration-200"
      enter-from-class="translate-x-4 opacity-0"
      leave-active-class="transition duration-150"
      leave-to-class="-translate-x-4 opacity-0"
    >
      <ChoiceQuestion
        v-if="current.answer === 'CHOICE'"
        :key="`c-${index}`"
        :question="current"
        @answered="onAnswered"
        @solved="onSolved"
        @next="onNext"
      />
      <TypeQuestion
        v-else
        :key="`t-${index}`"
        :question="current"
        @answered="onAnswered"
        @next="onNext"
      />
    </Transition>

    <AlertBox
      v-if="saveError"
      :message="t.review.saveFailed"
    />
  </div>
</template>
