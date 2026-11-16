package com.vocab.study.dto;

import java.util.List;

import com.vocab.word.dto.WordResponse;

/**
 * Lượt học từ mới.
 *
 * @param words          các từ cần học trong lượt này
 * @param dailyGoal      mục tiêu số từ mới mỗi ngày
 * @param learnedToday   số từ đã học hôm nay (trước lượt này)
 * @param studyLevel     cấp độ đang học (A1–C2), null = kho tự thêm
 * @param notLearnedCount số từ chưa học còn lại (gồm cả các từ trong lượt này)
 * @param totalWords     tổng số từ của kho tự thêm hoặc của cấp độ
 */
public record NewWordsResponse(
        List<WordResponse> words,
        int dailyGoal,
        long learnedToday,
        String studyLevel,
        long notLearnedCount,
        long totalWords) {
}
