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

    /**
     * Learned words of one language, limited to one level / topic bank when {@code :level} is given
     * (null = every learned word of the language: self-added + all levels).
     */
    String LEARNED_IN = LEARNED
            + " and p.wordId in (select w.id from Word w where w.userId = :userId and w.languageCode = :lang"
            + " and (:level is null or w.libraryId in"
            + " (select v.id from LibraryWord v where v.languageCode = :lang and v.levelCode = :level)))";

    Optional<UserWordProgress> findByUserIdAndWordId(Long userId, Long wordId);

    @Query("select count(p) from UserWordProgress p where " + LEARNED_IN)
    long countLearned(@Param("userId") Long userId, @Param("lang") String lang, @Param("level") String level);

    /** Words due for review (next_review_date <= today), earliest due first. {@code exclude} must not be empty. */
    @Query("select p from UserWordProgress p where " + LEARNED_IN
            + " and p.nextReviewDate <= :today and p.wordId not in :exclude"
            + " order by p.nextReviewDate, p.id")
    List<UserWordProgress> findDue(@Param("userId") Long userId, @Param("lang") String lang,
                                   @Param("level") String level, @Param("today") LocalDate today,
                                   @Param("exclude") Collection<Long> exclude, Pageable pageable);

    /** Words not due yet: most mistakes first, then least recently reviewed. {@code exclude} must not be empty. */
    @Query("select p from UserWordProgress p where " + LEARNED_IN
            + " and (p.nextReviewDate is null or p.nextReviewDate > :today) and p.wordId not in :exclude"
            + " order by p.wrongCount desc, p.lastReviewedAt asc nulls first, p.id")
    List<UserWordProgress> findNotDue(@Param("userId") Long userId, @Param("lang") String lang,
                                      @Param("level") String level, @Param("today") LocalDate today,
                                      @Param("exclude") Collection<Long> exclude, Pageable pageable);

    @Query("select p from UserWordProgress p where " + LEARNED + " and p.wordId in :wordIds")
    List<UserWordProgress> findLearnedByWordIds(@Param("userId") Long userId,
                                                @Param("wordIds") Collection<Long> wordIds);
}
