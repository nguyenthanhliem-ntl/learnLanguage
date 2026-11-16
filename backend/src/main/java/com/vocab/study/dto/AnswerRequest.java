package com.vocab.study.dto;

import jakarta.validation.constraints.NotNull;

public record AnswerRequest(
        @NotNull(message = "Thiếu cách trả lời")
        AnswerMode answer,

        @NotNull(message = "Thiếu kết quả trả lời")
        Boolean correct) {
}
