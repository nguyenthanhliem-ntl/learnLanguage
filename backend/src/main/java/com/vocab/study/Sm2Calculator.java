package com.vocab.study;

import java.math.BigDecimal;
import java.math.RoundingMode;

import org.springframework.stereotype.Component;

import com.vocab.study.entity.ProgressStatus;

/**
 * SM-2 spaced repetition algorithm (simplified version, see CLAUDE.md §5.4).
 * <ul>
 *   <li>Correct: 1st time interval = 1, 2nd time interval = 3, then interval = round(interval * easeFactor).</li>
 *   <li>Sai: repetitions = 0, interval = 1, easeFactor = max(1.3, easeFactor - 0.2).</li>
 *   <li>Ease factor starts at 2.5. interval &gt;= 21 moves the word to MASTERED.</li>
 *   <li>interval is capped at {@link #MAX_INTERVAL} days (column INTERVAL_DAYS is NUMBER(5)).</li>
 * </ul>
 */
@Component
public class Sm2Calculator {

    public static final double INITIAL_EASE_FACTOR = 2.5;
    public static final double MIN_EASE_FACTOR = 1.3;
    public static final double WRONG_PENALTY = 0.2;
    public static final int MASTERED_INTERVAL = 21;
    /** Maximum review interval: 10 years. */
    public static final int MAX_INTERVAL = 3650;

    /** SM-2 state of one word. */
    public record State(double easeFactor, int intervalDays, int repetitions) {

        /** A word that has never been reviewed. */
        public static State initial() {
            return new State(INITIAL_EASE_FACTOR, 0, 0);
        }
    }

    /** Result after one answer. */
    public record Result(State state, ProgressStatus status) {

        public BigDecimal easeFactorDecimal() {
            return BigDecimal.valueOf(state.easeFactor()).setScale(2, RoundingMode.HALF_UP);
        }
    }

    public Result next(State current, boolean correct) {
        if (!correct) {
            double ease = Math.max(MIN_EASE_FACTOR, round2(current.easeFactor() - WRONG_PENALTY));
            return new Result(new State(ease, 1, 0), ProgressStatus.LEARNING);
        }

        int repetitions = current.repetitions() + 1;
        int interval = switch (repetitions) {
            case 1 -> 1;
            case 2 -> 3;
            default -> (int) Math.min(Math.round(current.intervalDays() * current.easeFactor()), MAX_INTERVAL);
        };
        return new Result(new State(current.easeFactor(), interval, repetitions), statusFor(interval, repetitions));
    }

    private static ProgressStatus statusFor(int interval, int repetitions) {
        if (interval >= MASTERED_INTERVAL) {
            return ProgressStatus.MASTERED;
        }
        // Just memorised for the first time: learning; answered correctly 2+ times: in the review cycle
        return repetitions >= 2 ? ProgressStatus.REVIEW : ProgressStatus.LEARNING;
    }

    /** Rounds to 2 decimals to avoid floating-point drift (2.5 - 0.2 - 0.2 ...). */
    private static double round2(double value) {
        return BigDecimal.valueOf(value).setScale(2, RoundingMode.HALF_UP).doubleValue();
    }
}
