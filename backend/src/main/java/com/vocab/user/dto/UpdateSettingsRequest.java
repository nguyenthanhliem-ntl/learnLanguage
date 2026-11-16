package com.vocab.user.dto;

import jakarta.validation.constraints.NotNull;

public record UpdateSettingsRequest(
        @NotNull(message = "Vui lòng chọn số từ mới mỗi ngày")
        Integer dailyGoal) {
}
