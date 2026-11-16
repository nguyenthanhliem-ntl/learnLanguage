package com.vocab.study.dto;

import java.util.List;

import com.vocab.word.dto.WordResponse;

/**
 * One review question.
 *
 * @param word    word to review (the answer)
 * @param prompt  hint shown to the user: LISTEN, MEANING or PHONETIC
 * @param answer  CHOICE (pick 1 of 4) or TYPE (type the English word)
 * @param options 4 shuffled options for CHOICE, empty for TYPE
 */
public record ReviewQuestion(WordResponse word, PromptType prompt, AnswerMode answer, List<QuizOption> options) {
}
