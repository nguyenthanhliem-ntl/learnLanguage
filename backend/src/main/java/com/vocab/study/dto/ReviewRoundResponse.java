package com.vocab.study.dto;

import java.util.List;

/**
 * One review round.
 *
 * @param questions    the round's questions
 * @param learnedCount total learned (reviewable) words of the user
 */
public record ReviewRoundResponse(List<ReviewQuestion> questions, long learnedCount) {
}
