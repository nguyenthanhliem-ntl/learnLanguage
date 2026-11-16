package com.vocab.word.dto;

import com.vocab.study.entity.ProgressStatus;

/** Status shown in the word bank: Not started / Learning / Mastered. */
public enum WordStatus {
    NOT_STARTED,
    LEARNING,
    MASTERED;

    public static WordStatus from(ProgressStatus progress) {
        if (progress == null || progress == ProgressStatus.NEW) {
            return NOT_STARTED;
        }
        return progress == ProgressStatus.MASTERED ? MASTERED : LEARNING;
    }
}
