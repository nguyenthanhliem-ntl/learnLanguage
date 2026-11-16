package com.vocab.study.dto;

import java.time.LocalDate;

import com.vocab.word.dto.WordStatus;

/** Kết quả bấm "Đã nhớ": từ đã vào lịch ôn. */
public record RememberResponse(Long wordId, WordStatus status, LocalDate nextReviewDate, long learnedToday) {
}
