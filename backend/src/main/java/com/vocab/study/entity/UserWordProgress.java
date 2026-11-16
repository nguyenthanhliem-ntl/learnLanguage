package com.vocab.study.entity;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

import com.vocab.study.Sm2Calculator;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/** Tiến độ học SM-2 của một từ. Bản ghi được tạo khi user bấm "Đã nhớ" lần đầu (bước 4). */
@Entity
@Table(name = "USER_WORD_PROGRESS")
public class UserWordProgress {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "USER_ID", nullable = false)
    private Long userId;

    @Column(name = "WORD_ID", nullable = false)
    private Long wordId;

    @Enumerated(EnumType.STRING)
    @Column(name = "STATUS", nullable = false, length = 10)
    private ProgressStatus status;

    @Column(name = "EASE_FACTOR", nullable = false, precision = 4, scale = 2)
    private BigDecimal easeFactor;

    @Column(name = "INTERVAL_DAYS", nullable = false)
    private Integer intervalDays;

    @Column(name = "REPETITIONS", nullable = false)
    private Integer repetitions;

    @Column(name = "NEXT_REVIEW_DATE")
    private LocalDate nextReviewDate;

    @Column(name = "LAST_REVIEWED_AT")
    private LocalDateTime lastReviewedAt;

    @Column(name = "CORRECT_COUNT", nullable = false)
    private Integer correctCount;

    @Column(name = "WRONG_COUNT", nullable = false)
    private Integer wrongCount;

    protected UserWordProgress() {
    }

    /** Tiến độ mới cho một từ chưa học: SM-2 ở trạng thái ban đầu. */
    public UserWordProgress(Long userId, Long wordId) {
        this.userId = userId;
        this.wordId = wordId;
        this.status = ProgressStatus.NEW;
        this.easeFactor = BigDecimal.valueOf(Sm2Calculator.INITIAL_EASE_FACTOR);
        this.intervalDays = 0;
        this.repetitions = 0;
        this.correctCount = 0;
        this.wrongCount = 0;
    }

    public Sm2Calculator.State sm2State() {
        return new Sm2Calculator.State(easeFactor.doubleValue(), intervalDays, repetitions);
    }

    /** Ghi nhận một lần trả lời: cập nhật SM-2, lịch ôn tiếp theo và bộ đếm đúng/sai. */
    public void apply(Sm2Calculator.Result result, boolean correct, LocalDate today, LocalDateTime now) {
        this.easeFactor = result.easeFactorDecimal();
        this.intervalDays = result.state().intervalDays();
        this.repetitions = result.state().repetitions();
        this.status = result.status();
        this.nextReviewDate = today.plusDays(result.state().intervalDays());
        this.lastReviewedAt = now;
        if (correct) {
            this.correctCount++;
        } else {
            this.wrongCount++;
        }
    }

    /**
     * Ôn sớm (từ chưa đến hạn) và trả lời đúng: chỉ ghi nhận, không kéo dài lịch ôn.
     * Nếu không, ôn liên tục nhiều lần trong ngày sẽ nhân khoảng cách lên rất nhanh.
     */
    public void recordEarlyCorrect(LocalDateTime now) {
        this.lastReviewedAt = now;
        this.correctCount++;
    }

    /** Từ đã đến hạn ôn theo SM-2 (chưa có ngày ôn thì coi như đến hạn). */
    public boolean isDue(LocalDate today) {
        return nextReviewDate == null || !nextReviewDate.isAfter(today);
    }

    public Long getId() {
        return id;
    }

    public Long getUserId() {
        return userId;
    }

    public Long getWordId() {
        return wordId;
    }

    public ProgressStatus getStatus() {
        return status;
    }

    public BigDecimal getEaseFactor() {
        return easeFactor;
    }

    public Integer getIntervalDays() {
        return intervalDays;
    }

    public Integer getRepetitions() {
        return repetitions;
    }

    public LocalDate getNextReviewDate() {
        return nextReviewDate;
    }

    public LocalDateTime getLastReviewedAt() {
        return lastReviewedAt;
    }

    public Integer getCorrectCount() {
        return correctCount;
    }

    public Integer getWrongCount() {
        return wrongCount;
    }
}
