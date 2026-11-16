package com.vocab.study.dto;

import java.util.List;

import com.vocab.word.dto.WordResponse;

/**
 * A batch of new words to learn.
 *
 * @param words          words to learn in this batch
 * @param dailyGoal      daily new-word goal
 * @param learnedToday   words learned today (before this batch)
 * @param studyLevel     level being studied (A1–C2), null = self-added bank
 * @param notLearnedCount remaining unlearned words (including this batch)
 * @param totalWords     total words in the self-added bank or in the level
 */
public record NewWordsResponse(
        List<WordResponse> words,
        int dailyGoal,
        long learnedToday,
        String studyLevel,
        long notLearnedCount,
        long totalWords) {
}
