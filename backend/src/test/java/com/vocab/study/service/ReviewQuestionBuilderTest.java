package com.vocab.study.service;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.junit.jupiter.api.RepeatedTest;
import org.junit.jupiter.api.Test;

import com.vocab.library.Language;
import com.vocab.study.dto.AnswerMode;
import com.vocab.study.dto.PromptType;
import com.vocab.study.dto.QuizOption;
import com.vocab.study.dto.ReviewQuestion;
import com.vocab.word.dto.WordResponse;
import com.vocab.word.dto.WordStatus;
import com.vocab.word.service.WordService;

class ReviewQuestionBuilderTest {

    private static WordResponse word(long id, String text, String phonetic) {
        return new WordResponse(id, text, "noun", phonetic, "nghĩa " + text, WordStatus.LEARNING, null, null);
    }

    private static WordResponse word(long id, String text) {
        return word(id, text, "/x/");
    }

    private static final List<QuizOption> POOL = List.of(
            new QuizOption(1L, "book"), new QuizOption(2L, "Book"),   // same spelling, different meaning
            new QuizOption(3L, "apple"), new QuizOption(4L, "cat"),
            new QuizOption(5L, "dog"), new QuizOption(6L, "sun"));

    @RepeatedTest(20)
    void choiceOptions_haveFourDistinctWords_includingAnswer() {
        ReviewQuestionBuilder builder = new ReviewQuestionBuilder(new Random());

        for (ReviewQuestion q : builder.build(List.of(word(1, "book"), word(3, "apple")), POOL)) {
            if (q.answer() != AnswerMode.CHOICE) {
                assertThat(q.options()).isEmpty();
                continue;
            }
            assertThat(q.prompt()).isNotEqualTo(PromptType.LISTEN);
            assertThat(q.options()).hasSize(4);
            assertThat(q.options()).extracting(o -> WordService.normalize(o.word())).doesNotHaveDuplicates();
            // The correct answer appears exactly once, distractors never share its spelling
            assertThat(q.options()).filteredOn(o -> WordService.normalize(o.word())
                    .equals(WordService.normalize(q.word().word()))).hasSize(1)
                    .first().extracting(QuizOption::id).isEqualTo(q.word().id());
        }
    }

    @Test
    void korean_onlyChoiceQuestions_includingListen() {
        ReviewQuestionBuilder builder = new ReviewQuestionBuilder(new Random(3));
        List<WordResponse> words = new ArrayList<>();
        for (int i = 0; i < 60; i++) {
            words.add(word(3, "apple"));
        }

        List<ReviewQuestion> questions = builder.build(words, POOL, Language.KO);

        assertThat(questions).extracting(ReviewQuestion::answer).containsOnly(AnswerMode.CHOICE);
        assertThat(questions).extracting(ReviewQuestion::prompt).contains(PromptType.LISTEN);
        assertThat(questions).allSatisfy(q -> assertThat(q.options()).hasSize(4));
    }

    @Test
    void notEnoughOtherWords_onlyTypeQuestions() {
        // Only 3 different spellings: book, apple, cat -> not enough for 3 distractors
        List<QuizOption> smallPool = List.of(
                new QuizOption(1L, "book"), new QuizOption(2L, "book"),
                new QuizOption(3L, "apple"), new QuizOption(4L, "cat"));
        ReviewQuestionBuilder builder = new ReviewQuestionBuilder(new Random(1));

        List<ReviewQuestion> questions = builder.build(List.of(word(1, "book"), word(3, "apple")), smallPool);

        assertThat(questions).extracting(ReviewQuestion::answer).containsOnly(AnswerMode.TYPE);
    }

    @Test
    void wordWithoutPhonetic_neverGetsPhoneticPrompt() {
        ReviewQuestionBuilder builder = new ReviewQuestionBuilder(new Random(7));
        List<WordResponse> words = new ArrayList<>();
        for (int i = 0; i < 50; i++) {
            words.add(word(3, "apple", null));
        }

        assertThat(builder.build(words, POOL)).extracting(ReviewQuestion::prompt)
                .doesNotContain(PromptType.PHONETIC);
    }

    @Test
    void largeRound_usesAllFiveVariants() {
        ReviewQuestionBuilder builder = new ReviewQuestionBuilder(new Random(42));
        List<WordResponse> words = new ArrayList<>();
        for (int i = 0; i < 100; i++) {
            words.add(word(3, "apple"));
        }

        List<String> variants = builder.build(words, POOL).stream()
                .map(q -> q.prompt() + "/" + q.answer()).distinct().toList();

        assertThat(variants).containsExactlyInAnyOrder(
                "LISTEN/TYPE", "MEANING/TYPE", "MEANING/CHOICE", "PHONETIC/TYPE", "PHONETIC/CHOICE");
    }
}
