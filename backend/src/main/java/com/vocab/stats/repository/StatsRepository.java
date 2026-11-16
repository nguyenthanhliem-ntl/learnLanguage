package com.vocab.stats.repository;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 * Statistics queries grouped by day (TRUNC on Oracle), written with JDBC for brevity.
 * Every query is filtered by USER_ID.
 */
@Repository
public class StatsRepository {

    /** Activity count per day and type. */
    public record DailyCount(LocalDate date, String activityType, long count) {
    }

    /** Word count per progress status. */
    public record StatusCount(String status, long count) {
    }

    private final JdbcTemplate jdbc;

    public StatsRepository(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    public List<DailyCount> countByDay(Long userId, LocalDateTime from) {
        return jdbc.query("""
                SELECT TRUNC(CREATED_AT) AS DAY, ACTIVITY_TYPE, COUNT(*) AS CNT
                FROM STUDY_LOG
                WHERE USER_ID = ? AND CREATED_AT >= ?
                GROUP BY TRUNC(CREATED_AT), ACTIVITY_TYPE
                """,
                (rs, i) -> new DailyCount(rs.getTimestamp("DAY").toLocalDateTime().toLocalDate(),
                        rs.getString("ACTIVITY_TYPE"), rs.getLong("CNT")),
                userId, Timestamp.valueOf(from));
    }

    /** Days with activity, used to compute the streak. */
    public Set<LocalDate> studyDays(Long userId, LocalDateTime from) {
        return new HashSet<>(jdbc.query("""
                SELECT DISTINCT TRUNC(CREATED_AT) AS DAY
                FROM STUDY_LOG
                WHERE USER_ID = ? AND CREATED_AT >= ?
                """,
                (rs, i) -> rs.getTimestamp("DAY").toLocalDateTime().toLocalDate(),
                userId, Timestamp.valueOf(from)));
    }

    public List<StatusCount> countByStatus(Long userId) {
        return jdbc.query("""
                SELECT STATUS, COUNT(*) AS CNT
                FROM USER_WORD_PROGRESS
                WHERE USER_ID = ?
                GROUP BY STATUS
                """,
                (rs, i) -> new StatusCount(rs.getString("STATUS"), rs.getLong("CNT")),
                userId);
    }

    public long countDue(Long userId, LocalDate today) {
        Long n = jdbc.queryForObject("""
                SELECT COUNT(*) FROM USER_WORD_PROGRESS
                WHERE USER_ID = ? AND STATUS <> 'NEW' AND NEXT_REVIEW_DATE <= ?
                """,
                Long.class, userId, java.sql.Date.valueOf(today));
        return n == null ? 0 : n;
    }

    public long countWords(Long userId) {
        Long n = jdbc.queryForObject("SELECT COUNT(*) FROM WORDS WHERE USER_ID = ?", Long.class, userId);
        return n == null ? 0 : n;
    }
}
