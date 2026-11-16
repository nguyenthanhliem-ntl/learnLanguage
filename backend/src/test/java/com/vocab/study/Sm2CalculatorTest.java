package com.vocab.study;

import static org.assertj.core.api.Assertions.assertThat;

import java.math.BigDecimal;

import org.junit.jupiter.api.Test;

import com.vocab.study.Sm2Calculator.Result;
import com.vocab.study.Sm2Calculator.State;
import com.vocab.study.entity.ProgressStatus;

class Sm2CalculatorTest {

    private final Sm2Calculator sm2 = new Sm2Calculator();

    @Test
    void initialState_hasEaseFactor25() {
        assertThat(State.initial()).isEqualTo(new State(2.5, 0, 0));
    }

    @Test
    void firstCorrect_interval1_learning() {
        Result r = sm2.next(State.initial(), true);

        assertThat(r.state()).isEqualTo(new State(2.5, 1, 1));
        assertThat(r.status()).isEqualTo(ProgressStatus.LEARNING);
    }

    @Test
    void secondCorrect_interval3_review() {
        Result r = sm2.next(new State(2.5, 1, 1), true);

        assertThat(r.state()).isEqualTo(new State(2.5, 3, 2));
        assertThat(r.status()).isEqualTo(ProgressStatus.REVIEW);
    }

    @Test
    void thirdCorrect_intervalTimesEaseFactor_rounded() {
        // 3 * 2.5 = 7.5 -> 8
        Result r = sm2.next(new State(2.5, 3, 2), true);

        assertThat(r.state()).isEqualTo(new State(2.5, 8, 3));
    }

    @Test
    void correctStreak_reachesMasteredAtInterval21() {
        State s = State.initial();
        int[] expectedIntervals = {1, 3, 8, 20, 50};
        ProgressStatus[] expectedStatus = {
            ProgressStatus.LEARNING, ProgressStatus.REVIEW, ProgressStatus.REVIEW,
            ProgressStatus.REVIEW, ProgressStatus.MASTERED};

        for (int i = 0; i < expectedIntervals.length; i++) {
            Result r = sm2.next(s, true);
            assertThat(r.state().intervalDays()).as("lần đúng thứ %d", i + 1).isEqualTo(expectedIntervals[i]);
            assertThat(r.status()).as("lần đúng thứ %d", i + 1).isEqualTo(expectedStatus[i]);
            s = r.state();
        }
    }

    @Test
    void masteredBoundary_interval21IsMastered() {
        // 10 * 2.1 = 21
        Result r = sm2.next(new State(2.1, 10, 4), true);

        assertThat(r.state().intervalDays()).isEqualTo(21);
        assertThat(r.status()).isEqualTo(ProgressStatus.MASTERED);
    }

    @Test
    void wrong_resetsRepetitionsAndInterval_lowersEaseFactor() {
        Result r = sm2.next(new State(2.5, 20, 4), false);

        assertThat(r.state()).isEqualTo(new State(2.3, 1, 0));
        assertThat(r.status()).isEqualTo(ProgressStatus.LEARNING);
    }

    @Test
    void wrong_easeFactorNeverBelow13() {
        State s = new State(1.4, 3, 2);

        s = sm2.next(s, false).state();
        assertThat(s.easeFactor()).isEqualTo(1.3);

        s = sm2.next(s, false).state();
        assertThat(s.easeFactor()).isEqualTo(1.3);
    }

    @Test
    void repeatedWrong_hasNoFloatingPointDrift() {
        State s = State.initial();
        for (int i = 0; i < 3; i++) {
            s = sm2.next(s, false).state();
        }
        // 2.5 - 0.2 * 3 = 1.9 (not 1.9000000000000001)
        assertThat(s.easeFactor()).isEqualTo(1.9);
    }

    @Test
    void wrongThenCorrect_restartsFromInterval1() {
        State afterWrong = sm2.next(new State(2.5, 8, 3), false).state();

        Result r = sm2.next(afterWrong, true);

        assertThat(r.state()).isEqualTo(new State(2.3, 1, 1));
    }

    @Test
    void easeFactorDecimal_hasScale2() {
        assertThat(sm2.next(State.initial(), true).easeFactorDecimal()).isEqualTo(new BigDecimal("2.50"));
    }

    @Test
    void interval_isCappedAtMaxInterval() {
        // 76488 * 2.5 = 191220 exceeds INTERVAL_DAYS NUMBER(5): must stop at MAX_INTERVAL
        Result r = sm2.next(new State(2.5, 76488, 13), true);

        assertThat(r.state().intervalDays()).isEqualTo(Sm2Calculator.MAX_INTERVAL);
        assertThat(r.status()).isEqualTo(ProgressStatus.MASTERED);
    }

    @Test
    void manyCorrectInARow_neverExceedsMaxInterval() {
        State s = State.initial();
        for (int i = 0; i < 50; i++) {
            s = sm2.next(s, true).state();
            assertThat(s.intervalDays()).isBetween(1, Sm2Calculator.MAX_INTERVAL);
        }
    }
}
