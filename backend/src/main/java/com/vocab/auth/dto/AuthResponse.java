package com.vocab.auth.dto;

import com.vocab.user.dto.UserResponse;

public record AuthResponse(String token, UserResponse user) {
}
