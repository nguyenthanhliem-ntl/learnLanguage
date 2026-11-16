package com.vocab.user.dto;

import java.time.LocalDateTime;

import com.vocab.user.entity.User;

/** @param studyLevel cấp độ đang học (A1–C2), null = kho tự thêm */
public record UserResponse(Long id, String username, int dailyGoal, String studyLevel, LocalDateTime createdAt) {

    public static UserResponse from(User user) {
        return new UserResponse(user.getId(), user.getUsername(), user.getDailyGoal(), user.getStudyLevel(),
                user.getCreatedAt());
    }
}
