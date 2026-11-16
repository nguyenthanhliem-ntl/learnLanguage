package com.vocab.study.dto;

import com.vocab.study.entity.ActivityType;

/** Cách người dùng trả lời: chọn 1 trong 4 từ, hoặc tự gõ từ tiếng Anh. */
public enum AnswerMode {
    CHOICE,
    TYPE;

    /** Ghi vào STUDY_LOG: chọn đáp án = QUIZ, tự gõ = LISTEN (dạng gõ từ). */
    public ActivityType activityType() {
        return this == CHOICE ? ActivityType.QUIZ : ActivityType.LISTEN;
    }
}
