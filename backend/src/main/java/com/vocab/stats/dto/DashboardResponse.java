package com.vocab.stats.dto;

/**
 * Số liệu trang Tổng quan.
 *
 * @param learnedToday   số từ mới đã học hôm nay
 * @param dailyGoal      mục tiêu từ mới mỗi ngày
 * @param reviewedToday  số câu ôn đã làm hôm nay
 * @param dueToday       số từ đến hạn ôn (next_review_date <= hôm nay)
 * @param streak         số ngày học liên tiếp
 * @param totalWords     tổng số từ trong kho
 * @param masteredCount  số từ Đã thuộc
 * @param learningCount  số từ Đang học
 * @param notStartedCount số từ Chưa học
 */
public record DashboardResponse(
        long learnedToday,
        int dailyGoal,
        long reviewedToday,
        long dueToday,
        int streak,
        long totalWords,
        long masteredCount,
        long learningCount,
        long notStartedCount) {
}
