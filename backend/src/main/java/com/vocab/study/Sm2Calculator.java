package com.vocab.study;

import java.math.BigDecimal;
import java.math.RoundingMode;

import org.springframework.stereotype.Component;

import com.vocab.study.entity.ProgressStatus;

/**
 * Thuật toán lặp lại ngắt quãng SM-2 (phiên bản rút gọn theo CLAUDE.md §5.4).
 * <ul>
 *   <li>Đúng: lần 1 thì interval = 1, lần 2 thì interval = 3, sau đó interval = round(interval * easeFactor).</li>
 *   <li>Sai: repetitions = 0, interval = 1, easeFactor = max(1.3, easeFactor - 0.2).</li>
 *   <li>Ease factor bắt đầu ở 2.5. interval &gt;= 21 thì chuyển MASTERED.</li>
 *   <li>interval tối đa {@link #MAX_INTERVAL} ngày (cột INTERVAL_DAYS là NUMBER(5)).</li>
 * </ul>
 */
@Component
public class Sm2Calculator {

    public static final double INITIAL_EASE_FACTOR = 2.5;
    public static final double MIN_EASE_FACTOR = 1.3;
    public static final double WRONG_PENALTY = 0.2;
    public static final int MASTERED_INTERVAL = 21;
    /** Khoảng cách ôn tối đa: 10 năm. */
    public static final int MAX_INTERVAL = 3650;

    /** Trạng thái SM-2 của một từ. */
    public record State(double easeFactor, int intervalDays, int repetitions) {

        /** Từ chưa ôn lần nào. */
        public static State initial() {
            return new State(INITIAL_EASE_FACTOR, 0, 0);
        }
    }

    /** Kết quả sau một lần trả lời. */
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
        // Mới nhớ lần đầu: đang học; đã ôn đúng từ 2 lần trở lên: đang trong vòng ôn
        return repetitions >= 2 ? ProgressStatus.REVIEW : ProgressStatus.LEARNING;
    }

    /** Làm tròn 2 chữ số để tránh sai số dấu phẩy động (2.5 - 0.2 - 0.2 ...). */
    private static double round2(double value) {
        return BigDecimal.valueOf(value).setScale(2, RoundingMode.HALF_UP).doubleValue();
    }
}
