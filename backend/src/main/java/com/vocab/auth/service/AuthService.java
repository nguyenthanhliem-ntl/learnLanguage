package com.vocab.auth.service;

import java.util.Locale;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.http.HttpStatus;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vocab.auth.dto.AuthResponse;
import com.vocab.auth.dto.LoginRequest;
import com.vocab.auth.dto.RegisterRequest;
import com.vocab.common.ApiException;
import com.vocab.common.AppClock;
import com.vocab.config.JwtService;
import com.vocab.user.dto.UserResponse;
import com.vocab.user.entity.User;
import com.vocab.user.repository.UserRepository;
import com.vocab.user.service.UserService;

@Service
public class AuthService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final AppClock clock;

    public AuthService(UserRepository userRepository, PasswordEncoder passwordEncoder,
                       JwtService jwtService, AppClock clock) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
        this.jwtService = jwtService;
        this.clock = clock;
    }

    @Transactional
    public AuthResponse register(RegisterRequest request) {
        String username = normalize(request.username());
        if (userRepository.existsByUsername(username)) {
            throw usernameTaken();
        }
        User user = new User(username, passwordEncoder.encode(request.password()),
                UserService.DEFAULT_DAILY_GOAL, clock.now());
        try {
            userRepository.saveAndFlush(user);
        } catch (DataIntegrityViolationException e) {
            // Hai request đăng ký cùng lúc cùng tên: unique constraint chặn lại
            throw usernameTaken();
        }
        return toResponse(user);
    }

    @Transactional(readOnly = true)
    public AuthResponse login(LoginRequest request) {
        User user = userRepository.findByUsername(normalize(request.username()))
                .filter(u -> passwordEncoder.matches(request.password(), u.getPasswordHash()))
                .orElseThrow(() -> new ApiException(HttpStatus.UNAUTHORIZED, "INVALID_CREDENTIALS",
                        "Tên đăng nhập hoặc mật khẩu không đúng"));
        return toResponse(user);
    }

    private AuthResponse toResponse(User user) {
        return new AuthResponse(jwtService.generate(user.getId(), user.getUsername()), UserResponse.from(user));
    }

    /** Tên đăng nhập không phân biệt hoa/thường. */
    private static String normalize(String username) {
        return username.trim().toLowerCase(Locale.ROOT);
    }

    private static ApiException usernameTaken() {
        return ApiException.conflict("USERNAME_TAKEN", "Tên đăng nhập đã được sử dụng");
    }
}
