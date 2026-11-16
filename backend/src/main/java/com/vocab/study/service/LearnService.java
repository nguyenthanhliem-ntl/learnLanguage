package com.vocab.study.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vocab.common.ApiException;
import com.vocab.common.AppClock;
import com.vocab.library.Language;
import com.vocab.library.repository.LibraryRepository;
import com.vocab.study.Sm2Calculator;
import com.vocab.study.dto.NewWordsResponse;
import com.vocab.study.dto.RememberResponse;
import com.vocab.study.entity.ActivityType;
import com.vocab.study.entity.ProgressStatus;
import com.vocab.study.entity.StudyLog;
import com.vocab.study.entity.UserWordProgress;
import com.vocab.study.repository.NewWordQueryRepository;
import com.vocab.study.repository.StudyLogRepository;
import com.vocab.study.repository.UserWordProgressRepository;
import com.vocab.user.dto.UserResponse;
import com.vocab.user.repository.StudyLevelRepository;
import com.vocab.user.service.UserService;
import com.vocab.word.dto.WordResponse;
import com.vocab.word.dto.WordStatus;
import com.vocab.word.entity.Word;
import com.vocab.word.repository.WordRepository;

/** Learning new words with flashcards (CLAUDE.md §5.3). */
@Service
public class LearnService {

    public static final int MAX_LIMIT = 100;

    private final NewWordQueryRepository newWordQuery;
    private final WordRepository wordRepository;
    private final UserWordProgressRepository progressRepository;
    private final StudyLogRepository studyLogRepository;
    private final LibraryRepository libraryRepository;
    private final StudyLevelRepository studyLevelRepository;
    private final UserService userService;
    private final Sm2Calculator sm2;
    private final AppClock clock;

    public LearnService(NewWordQueryRepository newWordQuery, WordRepository wordRepository,
                        UserWordProgressRepository progressRepository, StudyLogRepository studyLogRepository,
                        LibraryRepository libraryRepository, StudyLevelRepository studyLevelRepository,
                        UserService userService, Sm2Calculator sm2, AppClock clock) {
        this.newWordQuery = newWordQuery;
        this.wordRepository = wordRepository;
        this.progressRepository = progressRepository;
        this.studyLogRepository = studyLogRepository;
        this.libraryRepository = libraryRepository;
        this.studyLevelRepository = studyLevelRepository;
        this.userService = userService;
        this.sm2 = sm2;
        this.clock = clock;
    }

    /**
     * Picks random unlearned words of one language, from the self-added bank or from the level the user selected.
     * Studying by level: copies more of the level's words into the user's bank when there are not enough unlearned ones.
     * Without {@code limit}: returns what is left of today's goal in this language (0 if already reached).
     * With {@code limit} ("Learn more"): returns exactly that many, ignoring the goal.
     */
    @Transactional
    public NewWordsResponse getNewWords(Long userId, Language language, Integer limit) {
        String lang = language.code();
        UserResponse user = userService.getMe(userId);
        long learnedToday = countLearnedToday(userId, lang);
        int size = limit != null
                ? Math.min(Math.max(limit, 1), MAX_LIMIT)
                : (int) Math.max(user.dailyGoal() - learnedToday, 0);

        String level = studyLevelRepository.find(userId, lang);
        if (level == null) {
            List<WordResponse> words = size == 0 ? List.of() : toResponses(newWordQuery.findRandomNotLearned(userId, lang, size));
            return new NewWordsResponse(words, user.dailyGoal(), learnedToday, null,
                    newWordQuery.countNotLearned(userId, lang), newWordQuery.countOwnBank(userId, lang));
        }

        if (size > 0) {
            long missing = size - newWordQuery.countNotLearnedInLevel(userId, lang, level);
            if (missing > 0) {
                libraryRepository.copyToBank(userId, lang, level, (int) missing);
            }
        }
        List<WordResponse> words = size == 0
                ? List.of()
                : toResponses(newWordQuery.findRandomNotLearnedInLevel(userId, lang, level, size));
        long notLearned = newWordQuery.countNotLearnedInLevel(userId, lang, level)
                + libraryRepository.countNotInBank(userId, lang, level);
        return new NewWordsResponse(words, user.dailyGoal(), learnedToday, level, notLearned,
                libraryRepository.countByLanguageCodeAndLevelCode(lang, level));
    }

    private static List<WordResponse> toResponses(List<Word> words) {
        return words.stream().map(w -> WordResponse.from(w, null)).toList();
    }

    /** "Remembered": schedules the word for review (first correct SM-2 step) and logs LEARN. Pressing again does not count twice. */
    @Transactional
    public RememberResponse remember(Long userId, Long wordId) {
        Word word = wordRepository.findByIdAndUserId(wordId, userId)
                .orElseThrow(() -> ApiException.notFound("Không tìm thấy từ này trong kho"));

        UserWordProgress progress = progressRepository.findByUserIdAndWordId(userId, wordId)
                .orElseGet(() -> new UserWordProgress(userId, wordId));

        if (progress.getStatus() == ProgressStatus.NEW) {
            LocalDate today = clock.today();
            progress.apply(sm2.next(progress.sm2State(), true), true, today, clock.now());
            progressRepository.save(progress);
            studyLogRepository.save(new StudyLog(userId, wordId, ActivityType.LEARN, null, clock.now()));
        }

        return new RememberResponse(wordId, WordStatus.from(progress.getStatus()), progress.getNextReviewDate(),
                countLearnedToday(userId, word.getLanguageCode()));
    }

    private long countLearnedToday(Long userId, String lang) {
        LocalDate today = clock.today();
        return studyLogRepository.countActivity(userId, lang, ActivityType.LEARN,
                today.atStartOfDay(), today.plusDays(1).atStartOfDay());
    }
}
