package com.vocab.library.dto;

/**
 * Tiến độ của user ở một cấp độ (hoặc kho tự thêm khi {@code level} null).
 *
 * @param total   tổng số từ
 * @param learned số từ user đã học (đã vào lịch ôn)
 */
public record LevelSummary(String level, long total, long learned) {
}
