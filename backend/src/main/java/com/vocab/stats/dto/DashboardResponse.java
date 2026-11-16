package com.vocab.stats.dto;

/**
 * Dashboard figures.
 *
 * @param learnedToday   new words learned today
 * @param dailyGoal      daily new-word goal
 * @param reviewedToday  review questions answered today
 * @param dueToday       words due for review (next_review_date <= today)
 * @param streak         consecutive study days
 * @param totalWords     total words in the bank
 * @param masteredCount  words marked Mastered
 * @param learningCount  words marked Learning
 * @param notStartedCount words not started yet
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
