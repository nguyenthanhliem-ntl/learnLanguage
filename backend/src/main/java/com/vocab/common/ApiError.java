package com.vocab.common;

import java.util.List;

/** Common error format returned to the client: {@code { code, message, details }}. */
public record ApiError(String code, String message, List<String> details) {

    public static ApiError of(String code, String message) {
        return new ApiError(code, message, List.of());
    }
}
