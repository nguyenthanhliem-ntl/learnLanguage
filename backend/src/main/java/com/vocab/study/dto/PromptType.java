package com.vocab.study.dto;

/** Gợi ý hiện cho người dùng trong câu ôn tập. */
public enum PromptType {
    /** Phát âm từ (chỉ đi với AnswerMode.TYPE). */
    LISTEN,
    /** Ngữ nghĩa + loại từ. */
    MEANING,
    /** Phiên âm + loại từ (chỉ dùng khi từ có phiên âm). */
    PHONETIC
}
