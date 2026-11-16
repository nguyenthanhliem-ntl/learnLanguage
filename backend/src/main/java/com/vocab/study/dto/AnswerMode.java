package com.vocab.study.dto;

import com.vocab.study.entity.ActivityType;

/** How the user answers: pick 1 of 4 words, or type the English word. */
public enum AnswerMode {
    CHOICE,
    TYPE;

    /** Stored in STUDY_LOG: picking an answer = QUIZ, typing = LISTEN (typing mode). */
    public ActivityType activityType() {
        return this == CHOICE ? ActivityType.QUIZ : ActivityType.LISTEN;
    }
}
