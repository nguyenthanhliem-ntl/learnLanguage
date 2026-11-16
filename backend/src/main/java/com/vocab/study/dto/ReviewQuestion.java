package com.vocab.study.dto;

import java.util.List;

import com.vocab.word.dto.WordResponse;

/**
 * Một câu ôn tập.
 *
 * @param word    từ cần ôn (đáp án)
 * @param prompt  gợi ý hiện cho người dùng: LISTEN, MEANING hoặc PHONETIC
 * @param answer  CHOICE (chọn 1 trong 4) hoặc TYPE (gõ từ tiếng Anh)
 * @param options 4 lựa chọn đã xáo trộn với CHOICE, rỗng với TYPE
 */
public record ReviewQuestion(WordResponse word, PromptType prompt, AnswerMode answer, List<QuizOption> options) {
}
