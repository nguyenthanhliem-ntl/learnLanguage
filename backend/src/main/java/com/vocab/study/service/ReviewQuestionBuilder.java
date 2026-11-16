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
 * Tạo câu hỏi ôn tập, chọn ngẫu nhiên 1 trong 5 dạng:
 * <ul>
 *   <li>Nghe phát âm → gõ từ</li>
 *   <li>Nghĩa + loại từ → chọn từ / gõ từ</li>
 *   <li>Phiên âm + loại từ → chọn từ / gõ từ (chỉ khi từ có phiên âm)</li>
 * </ul>
 * Dạng chọn cần ít nhất 3 từ khác (khác mặt chữ) làm đáp án nhiễu; không đủ thì chỉ dùng dạng gõ.
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
     * @param words cần ôn (sẽ được xáo trộn)
     * @param pool  toàn bộ (id, từ) trong kho để lấy đáp án nhiễu
     */
    public List<ReviewQuestion> build(List<WordResponse> words, List<QuizOption> pool) {
        // Gom theo mặt chữ: "book (noun)" và "book (verb)" chỉ tính là một lựa chọn
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
