package com.vocab.stats.service;

import java.time.LocalDate;
import java.time.YearMonth;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vocab.common.ApiException;
import com.vocab.common.AppClock;
import com.vocab.stats.dto.ActivityDay;
import com.vocab.stats.dto.DashboardResponse;
import com.vocab.stats.repository.StatsRepository;
import com.vocab.stats.repository.StatsRepository.DailyCount;
import com.vocab.stats.repository.StatsRepository.StatusCount;
import com.vocab.study.entity.ActivityType;
import com.vocab.user.service.UserService;

/** Thống kê cho Dashboard (CLAUDE.md §5.5). */
@Service
public class StatsService {

    public static final List<Integer> ALLOWED_DAYS = List.of(7, 30);
    /** Số tháng xem được ở biểu đồ theo tháng (gồm tháng hiện tại). */
    public static final int MONTHS_BACK = 12;
    /** Streak tối đa tính được; đủ dài cho người học bình thường mà không phải quét toàn bộ lịch sử. */
    private static final int STREAK_LOOKBACK_DAYS = 400;

    private final StatsRepository statsRepository;
    private final UserService userService;
    private final AppClock clock;

    public StatsService(StatsRepository statsRepository, UserService userService, AppClock clock) {
        this.statsRepository = statsRepository;
        this.userService = userService;
        this.clock = clock;
    }

    @Transactional(readOnly = true)
    public DashboardResponse dashboard(Long userId) {
        LocalDate today = clock.today();

        long learnedToday = 0;
        long reviewedToday = 0;
        for (DailyCount c : statsRepository.countByDay(userId, today.atStartOfDay())) {
            if (ActivityType.LEARN.name().equals(c.activityType())) {
                learnedToday += c.count();
            } else {
                reviewedToday += c.count();
            }
        }

        long mastered = 0;
        long learning = 0;
        for (StatusCount s : statsRepository.countByStatus(userId)) {
            switch (s.status()) {
                case "MASTERED" -> mastered += s.count();
                case "LEARNING", "REVIEW" -> learning += s.count();
                default -> { } // NEW: tính là Chưa học
            }
        }
        long totalWords = statsRepository.countWords(userId);

        int streak = StreakCalculator.streak(
                statsRepository.studyDays(userId, today.minusDays(STREAK_LOOKBACK_DAYS).atStartOfDay()), today);

        return new DashboardResponse(learnedToday, userService.getMe(userId).dailyGoal(), reviewedToday,
                statsRepository.countDue(userId, today), streak, totalWords, mastered, learning,
                Math.max(totalWords - mastered - learning, 0));
    }

    /** Hoạt động {@code days} ngày gần nhất (gồm hôm nay), đủ mọi ngày kể cả ngày không học. */
    @Transactional(readOnly = true)
    public List<ActivityDay> activity(Long userId, int days) {
        int safeDays = ALLOWED_DAYS.contains(days) ? days : 7;
        LocalDate today = clock.today();
        LocalDate from = today.minusDays(safeDays - 1L);

        return daysBetween(userId, from, today);
    }

    /**
     * Hoạt động từng ngày của một tháng trong 12 tháng gần nhất (tháng hiện tại chỉ tới hôm nay).
     * {@code month} null = tháng hiện tại.
     */
    @Transactional(readOnly = true)
    public List<ActivityDay> monthly(Long userId, YearMonth month) {
        LocalDate today = clock.today();
        YearMonth current = YearMonth.from(today);
        YearMonth target = month == null ? current : month;
        if (target.isAfter(current) || target.isBefore(current.minusMonths(MONTHS_BACK - 1L))) {
            throw ApiException.badRequest("INVALID_MONTH", "Chỉ xem được 12 tháng gần nhất");
        }
        LocalDate end = target.equals(current) ? today : target.atEndOfMonth();
        return daysBetween(userId, target.atDay(1), end);
    }

    /** Mỗi ngày trong [from, to], kể cả ngày không học. */
    private List<ActivityDay> daysBetween(Long userId, LocalDate from, LocalDate to) {
        Map<LocalDate, long[]> byDay = new HashMap<>();
        for (DailyCount c : statsRepository.countByDay(userId, from.atStartOfDay())) {
            long[] counts = byDay.computeIfAbsent(c.date(), d -> new long[2]);
            counts[ActivityType.LEARN.name().equals(c.activityType()) ? 0 : 1] += c.count();
        }

        List<ActivityDay> result = new ArrayList<>();
        for (LocalDate d = from; !d.isAfter(to); d = d.plusDays(1)) {
            long[] counts = byDay.getOrDefault(d, new long[2]);
            result.add(new ActivityDay(d, counts[0], counts[1]));
        }
        return result;
    }
}
