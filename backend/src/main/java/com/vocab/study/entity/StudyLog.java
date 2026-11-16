package com.vocab.study.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/** Lịch sử học / ôn, dùng cho thống kê và streak. */
@Entity
@Table(name = "STUDY_LOG")
public class StudyLog {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "USER_ID", nullable = false)
    private Long userId;

    @Column(name = "WORD_ID", nullable = false)
    private Long wordId;

    @Enumerated(EnumType.STRING)
    @Column(name = "ACTIVITY_TYPE", nullable = false, length = 10)
    private ActivityType activityType;

    /** null với LEARN, true/false với QUIZ và LISTEN. */
    @Column(name = "IS_CORRECT")
    private Boolean correct;

    @Column(name = "CREATED_AT", nullable = false)
    private LocalDateTime createdAt;

    protected StudyLog() {
    }

    public StudyLog(Long userId, Long wordId, ActivityType activityType, Boolean correct, LocalDateTime createdAt) {
        this.userId = userId;
        this.wordId = wordId;
        this.activityType = activityType;
        this.correct = correct;
        this.createdAt = createdAt;
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

    public ActivityType getActivityType() {
        return activityType;
    }

    public Boolean getCorrect() {
        return correct;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }
}
