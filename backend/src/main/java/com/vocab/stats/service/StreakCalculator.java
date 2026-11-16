package com.vocab.stats.service;

import java.time.LocalDate;
import java.util.Set;

/**
 * Streak = number of consecutive study days up to today.
 * If the user has not studied yet today, the streak up to yesterday is kept (they still have the whole day).
 */
public final class StreakCalculator {

    private StreakCalculator() {
    }

    /** @param studyDays days with at least one learn / review activity */
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
