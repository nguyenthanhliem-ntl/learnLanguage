package com.vocab.word.dto;

import com.vocab.study.entity.ProgressStatus;

/** Trạng thái hiển thị trong Kho từ: Chưa học / Đang học / Đã thuộc. */
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
