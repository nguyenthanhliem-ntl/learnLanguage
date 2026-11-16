package com.vocab.study.dto;

import java.time.LocalDate;

import com.vocab.word.dto.WordStatus;

/** Kết quả ghi nhận một câu trả lời: lịch ôn mới theo SM-2. */
public record AnswerResponse(Long wordId, WordStatus status, int intervalDays, LocalDate nextReviewDate) {
}
