package com.vocab.stats.service;

import java.time.LocalDate;
import java.util.Set;

/**
 * Streak = số ngày học liên tiếp tính tới hôm nay.
 * Hôm nay chưa học thì vẫn giữ streak tính tới hôm qua (người dùng còn cả ngày để học tiếp).
 */
public final class StreakCalculator {

    private StreakCalculator() {
    }

    /** @param studyDays các ngày có ít nhất một hoạt động học / ôn */
    public static int streak(Set<LocalDate> studyDays, LocalDate today) {
        LocalDate day = studyDays.contains(today) ? today : today.minusDays(1);
        int count = 0;
        while (studyDays.contains(day)) {
            count++;
            day = day.minusDays(1);
        }
        return count;
    }
}
