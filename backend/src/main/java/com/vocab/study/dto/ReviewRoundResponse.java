package com.vocab.study.dto;

import java.util.List;

/**
 * Một lượt ôn tập.
 *
 * @param questions    các câu hỏi của lượt
 * @param learnedCount tổng số từ đã học (có thể ôn) của user
 */
public record ReviewRoundResponse(List<ReviewQuestion> questions, long learnedCount) {
}
