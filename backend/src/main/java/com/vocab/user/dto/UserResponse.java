package com.vocab.user.dto;

import java.time.LocalDateTime;

import com.vocab.user.entity.User;

public record UserResponse(Long id, String username, int dailyGoal, LocalDateTime createdAt) {

    public static UserResponse from(User user) {
        return new UserResponse(user.getId(), user.getUsername(), user.getDailyGoal(), user.getCreatedAt());
    }
}
