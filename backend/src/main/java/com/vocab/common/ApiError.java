package com.vocab.common;

import java.util.List;

/** Định dạng lỗi chung trả về client: {@code { code, message, details }}. */
public record ApiError(String code, String message, List<String> details) {

    public static ApiError of(String code, String message) {
        return new ApiError(code, message, List.of());
    }
}
