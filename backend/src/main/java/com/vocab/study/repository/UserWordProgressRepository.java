package com.vocab.study.repository;

import java.time.LocalDate;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.vocab.study.entity.UserWordProgress;

public interface UserWordProgressRepository extends JpaRepository<UserWordProgress, Long> {

    String LEARNED = "p.userId = :userId and p.status <> com.vocab.study.entity.ProgressStatus.NEW";

    Optional<UserWordProgress> findByUserIdAndWordId(Long userId, Long wordId);

    @Query("select count(p) from UserWordProgress p where " + LEARNED)
    long countLearned(@Param("userId") Long userId);

    /** Từ đến hạn ôn (next_review_date <= hôm nay), hạn sớm nhất trước. {@code exclude} không được rỗng. */
    @Query("select p from UserWordProgress p where " + LEARNED
            + " and p.nextReviewDate <= :today and p.wordId not in :exclude"
            + " order by p.nextReviewDate, p.id")
    List<UserWordProgress> findDue(@Param("userId") Long userId, @Param("today") LocalDate today,
                                   @Param("exclude") Collection<Long> exclude, Pageable pageable);

    /** Từ chưa đến hạn: sai nhiều trước, lâu chưa ôn trước. {@code exclude} không được rỗng. */
    @Query("select p from UserWordProgress p where " + LEARNED
            + " and (p.nextReviewDate is null or p.nextReviewDate > :today) and p.wordId not in :exclude"
            + " order by p.wrongCount desc, p.lastReviewedAt asc nulls first, p.id")
    List<UserWordProgress> findNotDue(@Param("userId") Long userId, @Param("today") LocalDate today,
                                      @Param("exclude") Collection<Long> exclude, Pageable pageable);

    @Query("select p from UserWordProgress p where " + LEARNED + " and p.wordId in :wordIds")
    List<UserWordProgress> findLearnedByWordIds(@Param("userId") Long userId,
                                                @Param("wordIds") Collection<Long> wordIds);
}
