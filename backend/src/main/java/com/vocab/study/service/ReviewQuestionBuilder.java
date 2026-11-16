package com.vocab.study.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import org.springframework.stereotype.Component;

import com.vocab.study.dto.AnswerMode;
import com.vocab.study.dto.PromptType;
import com.vocab.study.dto.QuizOption;
import com.vocab.study.dto.ReviewQuestion;
import com.vocab.word.dto.WordResponse;
import com.vocab.word.service.WordService;

/**
 * Builds review questions, picking 1 of 5 types at random:
 * <ul>
 *   <li>Listen to the pronunciation → type the word</li>
 *   <li>Meaning + part of speech → pick the word / type the word</li>
 *   <li>Phonetic + part of speech → pick the word / type the word (only when the word has a phonetic)</li>
 * </ul>
 * The choice type needs at least 3 other words (different spellings) as distractors; otherwise only the typing type is used.
 */
@Component
public class ReviewQuestionBuilder {

    static final int OPTION_COUNT = 4;

    private record Variant(PromptType prompt, AnswerMode answer) {
    }

    private final Random random;

    public ReviewQuestionBuilder() {
        this(new Random());
    }

    ReviewQuestionBuilder(Random random) {
        this.random = random;
    }

    /**
     * @param words words to review (will be shuffled)
     * @param pool  every (id, word) in the bank, used for distractors
     */
    public List<ReviewQuestion> build(List<WordResponse> words, List<QuizOption> pool) {
        // Group by spelling: "book (noun)" and "book (verb)" count as a single option
        Map<String, QuizOption> distinct = new LinkedHashMap<>();
        for (QuizOption o : pool) {
            distinct.putIfAbsent(WordService.normalize(o.word()), o);
        }

        List<ReviewQuestion> questions = new ArrayList<>();
        for (WordResponse w : words) {
            String answerKey = WordService.normalize(w.word());
            List<QuizOption> distractors = new ArrayList<>();
            distinct.forEach((key, option) -> {
                if (!key.equals(answerKey)) {
                    distractors.add(option);
                }
            });

            Variant v = pickVariant(w, distractors.size() >= OPTION_COUNT - 1);
            List<QuizOption> options = List.of();
            if (v.answer() == AnswerMode.CHOICE) {
                Collections.shuffle(distractors, random);
                List<QuizOption> list = new ArrayList<>(distractors.subList(0, OPTION_COUNT - 1));
                list.add(new QuizOption(w.id(), w.word()));
                Collections.shuffle(list, random);
                options = list;
            }
            questions.add(new ReviewQuestion(w, v.prompt(), v.answer(), options));
        }
        Collections.shuffle(questions, random);
        return questions;
    }

    private Variant pickVariant(WordResponse w, boolean canChoose) {
        boolean hasPhonetic = w.phonetic() != null && !w.phonetic().isBlank();
        List<Variant> variants = new ArrayList<>();
        variants.add(new Variant(PromptType.LISTEN, AnswerMode.TYPE));
        variants.add(new Variant(PromptType.MEANING, AnswerMode.TYPE));
        if (canChoose) {
            variants.add(new Variant(PromptType.MEANING, AnswerMode.CHOICE));
        }
        if (hasPhonetic) {
            variants.add(new Variant(PromptType.PHONETIC, AnswerMode.TYPE));
            if (canChoose) {
                variants.add(new Variant(PromptType.PHONETIC, AnswerMode.CHOICE));
            }
        }
        return variants.get(random.nextInt(variants.size()));
    }
}
