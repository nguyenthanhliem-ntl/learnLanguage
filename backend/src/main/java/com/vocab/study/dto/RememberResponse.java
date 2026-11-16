package com.vocab.study.dto;

import java.time.LocalDate;

import com.vocab.word.dto.WordStatus;

/** Result of pressing "Remembered": the word is now scheduled for review. */
public record RememberResponse(Long wordId, WordStatus status, LocalDate nextReviewDate, long learnedToday) {
}
