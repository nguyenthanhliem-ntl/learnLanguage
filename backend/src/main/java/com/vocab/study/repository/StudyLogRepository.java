package com.vocab.study.repository;

import java.time.LocalDateTime;

import org.springframework.data.jpa.repository.JpaRepository;

import com.vocab.study.entity.ActivityType;
import com.vocab.study.entity.StudyLog;

public interface StudyLogRepository extends JpaRepository<StudyLog, Long> {

    /** Đếm hoạt động trong khoảng [from, to), vd số từ mới đã học hôm nay. */
    long countByUserIdAndActivityTypeAndCreatedAtGreaterThanEqualAndCreatedAtLessThan(
            Long userId, ActivityType activityType, LocalDateTime from, LocalDateTime to);
}
