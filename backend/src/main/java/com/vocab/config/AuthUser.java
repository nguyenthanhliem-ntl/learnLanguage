package com.vocab.config;

/** Thông tin user đang đăng nhập, lấy từ JWT. Dùng qua {@code @AuthenticationPrincipal AuthUser}. */
public record AuthUser(Long id, String username) {
}
