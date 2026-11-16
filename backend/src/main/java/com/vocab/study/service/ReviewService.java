package com.vocab.study.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vocab.common.ApiException;
import com.vocab.common.AppClock;
import com.vocab.library.Language;
import com.vocab.study.Sm2Calculator;
import com.vocab.study.dto.AnswerRequest;
import com.vocab.study.dto.AnswerResponse;
import com.vocab.study.dto.ReviewRoundResponse;
import com.vocab.study.entity.ProgressStatus;
import com.vocab.study.entity.StudyLog;
import com.vocab.study.entity.UserWordProgress;
import com.vocab.study.repository.StudyLogRepository;
import com.vocab.study.repository.UserWordProgressRepository;
import com.vocab.user.repository.StudyLevelRepository;
import com.vocab.word.dto.WordResponse;
import com.vocab.word.dto.WordStatus;
import com.vocab.word.entity.Word;
import com.vocab.word.repository.WordRepository;

/**
 * SM-2 review (CLAUDE.md §5.4): due words first, then words with many mistakes / not reviewed for a long time.
 * Each round has about 20–30 words: up to 30 due words, topped up with not-yet-due words if fewer than 20.
 */
@Service
public class ReviewService {

    public static final int MIN_ROUND = 20;
    public static final int MAX_ROUND = 30;

    private final UserWordProgressRepository progressRepository;
    private final WordRepository wordRepository;
    private final StudyLogRepository studyLogRepository;
    private final ReviewQuestionBuilder questionBuilder;
    private final StudyLevelRepository studyLevelRepository;
    private final Sm2Calculator sm2;
    private final AppClock clock;

    public ReviewService(UserWordProgressRepository progressRepository, WordRepository wordRepository,
                         StudyLogRepository studyLogRepository, ReviewQuestionBuilder questionBuilder,
                         StudyLevelRepository studyLevelRepository,
                         Sm2Calculator sm2, AppClock clock) {
        this.progressRepository = progressRepository;
        this.wordRepository = wordRepository;
        this.studyLogRepository = studyLogRepository;
        this.questionBuilder = questionBuilder;
        this.studyLevelRepository = studyLevelRepository;
        this.sm2 = sm2;
        this.clock = clock;
    }

    /**
     * Builds one review round. Only words of the level / topic being studied are reviewed
     * (studying from the self-added bank: every learned word of the language).
     *
     * @param language language of the round
     * @param ids     if given: review exactly these words (e.g. words just answered wrong); {@code exclude} is ignored
     * @param exclude words already reviewed in this session, not picked again
     */
    @Transactional(readOnly = true)
    public ReviewRoundResponse getRound(Long userId, Language language, Collection<Long> ids, Collection<Long> exclude) {
        String lang = language.code();
        String level = studyLevelRepository.find(userId, lang);
        List<UserWordProgress> selected = (ids != null && !ids.isEmpty())
                ? progressRepository.findLearnedByWordIds(userId, ids).stream().limit(MAX_ROUND).toList()
                : selectBySchedule(userId, lang, level, exclude);

        List<WordResponse> words = toWordResponses(userId, selected);
        return new ReviewRoundResponse(
                questionBuilder.build(words, wordRepository.findAllOptions(userId, lang), language),
                progressRepository.countLearned(userId, lang, level));
    }

    private List<UserWordProgress> selectBySchedule(Long userId, String lang, String level, Collection<Long> exclude) {
        LocalDate today = clock.today();
        // "not in" with an empty list is invalid SQL: use an id that does not exist
        Collection<Long> safeExclude = (exclude == null || exclude.isEmpty()) ? List.of(-1L) : exclude;

        List<UserWordProgress> result = new ArrayList<>(
                progressRepository.findDue(userId, lang, level, today, safeExclude, PageRequest.of(0, MAX_ROUND)));
        if (result.size() < MIN_ROUND) {
            result.addAll(progressRepository.findNotDue(userId, lang, level, today, safeExclude,
                    PageRequest.of(0, MIN_ROUND - result.size())));
        }
        return result;
    }

    private List<WordResponse> toWordResponses(Long userId, List<UserWordProgress> progresses) {
        if (progresses.isEmpty()) {
            return List.of();
        }
        Map<Long, ProgressStatus> statusByWord = new HashMap<>();
        Set<Long> wordIds = new LinkedHashSet<>();
        for (UserWordProgress p : progresses) {
            statusByWord.put(p.getWordId(), p.getStatus());
            wordIds.add(p.getWordId());
        }
        Map<Long, Word> wordsById = new HashMap<>();
        for (Word w : wordRepository.findByUserIdAndIdIn(userId, wordIds)) {
            wordsById.put(w.getId(), w);
        }
        return wordIds.stream()
                .filter(wordsById::containsKey)
                .map(id -> WordResponse.from(wordsById.get(id), statusByWord.get(id)))
                .toList();
    }

    /** Records an answer: updates SM-2, the correct/wrong counters and logs QUIZ / LISTEN. */
    @Transactional
    public AnswerResponse answer(Long userId, Long wordId, AnswerRequest request) {
        UserWordProgress progress = progressRepository.findByUserIdAndWordId(userId, wordId)
                .filter(p -> p.getStatus() != ProgressStatus.NEW)
                .orElseThrow(() -> new ApiException(HttpStatus.BAD_REQUEST, "NOT_LEARNED",
                        "Từ này chưa được học nên chưa thể ôn tập"));

        boolean correct = request.correct();
        LocalDate today = clock.today();
        if (correct && !progress.isDue(today)) {
            // Early review answered correctly: keep the SM-2 schedule (only due words get a longer interval)
            progress.recordEarlyCorrect(clock.now());
        } else {
            // Due (correct or wrong), or wrong on an early review (word forgotten): update with SM-2
            progress.apply(sm2.next(progress.sm2State(), correct), correct, today, clock.now());
        }
        studyLogRepository.save(new StudyLog(userId, wordId, request.answer().activityType(), correct, clock.now()));

        return new AnswerResponse(wordId, WordStatus.from(progress.getStatus()), progress.getIntervalDays(),
                progress.getNextReviewDate());
    }
}
