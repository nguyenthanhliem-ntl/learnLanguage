package com.vocab.stats;

import static org.assertj.core.api.Assertions.assertThat;

import java.time.LocalDate;
import java.util.Set;

import org.junit.jupiter.api.Test;

import com.vocab.stats.service.StreakCalculator;

class StreakCalculatorTest {

    private static final LocalDate TODAY = LocalDate.of(2026, 10, 27);

    @Test
    void noActivity_isZero() {
        assertThat(StreakCalculator.streak(Set.of(), TODAY)).isZero();
    }

    @Test
    void studiedTodayAndPreviousDays_countsConsecutiveDays() {
        Set<LocalDate> days = Set.of(TODAY, TODAY.minusDays(1), TODAY.minusDays(2), TODAY.minusDays(4));

        assertThat(StreakCalculator.streak(days, TODAY)).isEqualTo(3);
    }

    @Test
    void notYetStudiedToday_keepsStreakUntilYesterday() {
        Set<LocalDate> days = Set.of(TODAY.minusDays(1), TODAY.minusDays(2));

        assertThat(StreakCalculator.streak(days, TODAY)).isEqualTo(2);
    }

    @Test
    void missedYesterday_resetsStreak() {
        Set<LocalDate> days = Set.of(TODAY.minusDays(2), TODAY.minusDays(3));

        assertThat(StreakCalculator.streak(days, TODAY)).isZero();
    }

    @Test
    void onlyToday_isOne() {
        assertThat(StreakCalculator.streak(Set.of(TODAY), TODAY)).isEqualTo(1);
    }
}
