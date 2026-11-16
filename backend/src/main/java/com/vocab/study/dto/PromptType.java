package com.vocab.study.dto;

/** Hint shown to the user in a review question. */
public enum PromptType {
    /** Pronunciation of the word (only with AnswerMode.TYPE). */
    LISTEN,
    /** Meaning + part of speech. */
    MEANING,
    /** Phonetic + part of speech (only when the word has a phonetic). */
    PHONETIC
}
