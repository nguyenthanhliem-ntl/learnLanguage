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
import com.vocab.study.Sm2Calculator;
import com.vocab.study.dto.AnswerRequest;
import com.vocab.study.dto.AnswerResponse;
import com.vocab.study.dto.ReviewRoundResponse;
import com.vocab.study.entity.ProgressStatus;
import com.vocab.study.entity.StudyLog;
import com.vocab.study.entity.UserWordProgress;
import com.vocab.study.repository.StudyLogRepository;
import com.vocab.study.repository.UserWordProgressRepository;
import com.vocab.word.dto.WordResponse;
import com.vocab.word.dto.WordStatus;
import com.vocab.word.entity.Word;
import com.vocab.word.repository.WordRepository;

/**
 * Ôn tập theo SM-2 (CLAUDE.md §5.4): ưu tiên từ đến hạn, sau đó tới các từ sai nhiều / lâu chưa ôn.
 * Mỗi lượt khoảng 20–30 từ: lấy tối đa 30 từ đến hạn, nếu chưa đủ 20 thì bù bằng từ chưa đến hạn.
 */
@Service
public class ReviewService {

    public static final int MIN_ROUND = 20;
    public static final int MAX_ROUND = 30;

    private final UserWordProgressRepository progressRepository;
    private final WordRepository wordRepository;
    private final StudyLogRepository studyLogRepository;
    private final ReviewQuestionBuilder questionBuilder;
    private final Sm2Calculator sm2;
    private final AppClock clock;

    public ReviewService(UserWordProgressRepository progressRepository, WordRepository wordRepository,
                         StudyLogRepository studyLogRepository, ReviewQuestionBuilder questionBuilder,
                         Sm2Calculator sm2, AppClock clock) {
        this.progressRepository = progressRepository;
        this.wordRepository = wordRepository;
        this.studyLogRepository = studyLogRepository;
        this.questionBuilder = questionBuilder;
        this.sm2 = sm2;
        this.clock = clock;
    }

    /**
     * Tạo một lượt ôn.
     *
     * @param ids     nếu có: ôn đúng các từ này (vd ôn lại từ vừa sai); bỏ qua {@code exclude}
     * @param exclude các từ đã ôn trong phiên này, không lấy lại
     */
    @Transactional(readOnly = true)
    public ReviewRoundResponse getRound(Long userId, Collection<Long> ids, Collection<Long> exclude) {
        List<UserWordProgress> selected = (ids != null && !ids.isEmpty())
                ? progressRepository.findLearnedByWordIds(userId, ids).stream().limit(MAX_ROUND).toList()
                : selectBySchedule(userId, exclude);

        List<WordResponse> words = toWordResponses(userId, selected);
        return new ReviewRoundResponse(
                questionBuilder.build(words, wordRepository.findAllOptions(userId)),
                progressRepository.countLearned(userId));
    }

    private List<UserWordProgress> selectBySchedule(Long userId, Collection<Long> exclude) {
        LocalDate today = clock.today();
        // "not in" với danh sách rỗng không hợp lệ trong SQL: dùng id không tồn tại
        Collection<Long> safeExclude = (exclude == null || exclude.isEmpty()) ? List.of(-1L) : exclude;

        List<UserWordProgress> result = new ArrayList<>(
                progressRepository.findDue(userId, today, safeExclude, PageRequest.of(0, MAX_ROUND)));
        if (result.size() < MIN_ROUND) {
            result.addAll(progressRepository.findNotDue(userId, today, safeExclude,
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

    /** Ghi nhận câu trả lời: cập nhật SM-2, bộ đếm đúng/sai và ghi log QUIZ / LISTEN. */
    @Transactional
    public AnswerResponse answer(Long userId, Long wordId, AnswerRequest request) {
        UserWordProgress progress = progressRepository.findByUserIdAndWordId(userId, wordId)
                .filter(p -> p.getStatus() != ProgressStatus.NEW)
                .orElseThrow(() -> new ApiException(HttpStatus.BAD_REQUEST, "NOT_LEARNED",
                        "Từ này chưa được học nên chưa thể ôn tập"));

        boolean correct = request.correct();
        LocalDate today = clock.today();
        if (correct && !progress.isDue(today)) {
            // Ôn sớm mà đúng: giữ nguyên lịch SM-2 (chỉ từ đến hạn mới được kéo dài khoảng cách ôn)
            progress.recordEarlyCorrect(clock.now());
        } else {
            // Đến hạn (đúng hoặc sai), hoặc sai khi ôn sớm (quên từ): cập nhật theo SM-2
            progress.apply(sm2.next(progress.sm2State(), correct), correct, today, clock.now());
        }
        studyLogRepository.save(new StudyLog(userId, wordId, request.answer().activityType(), correct, clock.now()));

        return new AnswerResponse(wordId, WordStatus.from(progress.getStatus()), progress.getIntervalDays(),
                progress.getNextReviewDate());
    }
}
