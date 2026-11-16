package com.vocab.config;

/** The signed-in user, taken from the JWT. Inject with {@code @AuthenticationPrincipal AuthUser}. */
public record AuthUser(Long id, String username) {
}
