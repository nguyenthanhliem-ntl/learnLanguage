package com.vocab.study.repository;

import java.time.LocalDateTime;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.vocab.study.entity.ActivityType;
import com.vocab.study.entity.StudyLog;

public interface StudyLogRepository extends JpaRepository<StudyLog, Long> {

    /** Counts activities on words of one language in [from, to), e.g. new words learned today. */
    @Query("""
            select count(l) from StudyLog l
            where l.userId = :userId and l.activityType = :type
              and l.createdAt >= :from and l.createdAt < :to
              and l.wordId in (select w.id from Word w where w.userId = :userId and w.languageCode = :lang)
            """)
    long countActivity(@Param("userId") Long userId, @Param("lang") String lang, @Param("type") ActivityType type,
                       @Param("from") LocalDateTime from, @Param("to") LocalDateTime to);
}
