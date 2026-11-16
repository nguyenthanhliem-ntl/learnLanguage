package com.vocab.study.dto;

import java.time.LocalDate;

import com.vocab.word.dto.WordStatus;

/** Result of recording an answer: the new SM-2 review schedule. */
public record AnswerResponse(Long wordId, WordStatus status, int intervalDays, LocalDate nextReviewDate) {
}
