package com.vocab.user.service;

import java.util.Set;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vocab.common.ApiException;
import com.vocab.user.dto.ChangePasswordRequest;
import com.vocab.user.dto.UpdateSettingsRequest;
import com.vocab.user.dto.UserResponse;
import com.vocab.user.entity.User;
import com.vocab.user.repository.UserRepository;

@Service
public class UserService {

    public static final int DEFAULT_DAILY_GOAL = 20;
    public static final Set<Integer> ALLOWED_DAILY_GOALS = Set.of(10, 20, 30, 50);

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public UserService(UserRepository userRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    @Transactional
    public void changePassword(Long userId, ChangePasswordRequest request) {
        User user = findUser(userId);
        // 400 rather than 401: a wrong current password does not mean the session expired
        if (!passwordEncoder.matches(request.currentPassword(), user.getPasswordHash())) {
            throw ApiException.badRequest("WRONG_PASSWORD", "Mật khẩu hiện tại không đúng");
        }
        if (request.currentPassword().equals(request.newPassword())) {
            throw ApiException.badRequest("SAME_PASSWORD", "Mật khẩu mới phải khác mật khẩu hiện tại");
        }
        user.setPasswordHash(passwordEncoder.encode(request.newPassword()));
    }

    @Transactional(readOnly = true)
    public UserResponse getMe(Long userId) {
        return UserResponse.from(findUser(userId));
    }

    @Transactional
    public UserResponse updateSettings(Long userId, UpdateSettingsRequest request) {
        if (!ALLOWED_DAILY_GOALS.contains(request.dailyGoal())) {
            throw ApiException.badRequest("INVALID_DAILY_GOAL", "Số từ mới mỗi ngày chỉ được chọn 10, 20, 30 hoặc 50");
        }
        User user = findUser(userId);
        user.setDailyGoal(request.dailyGoal());
        return UserResponse.from(user);
    }

    /** {@code level} has already been validated (A1–C2) or is null. */
    @Transactional
    public UserResponse setStudyLevel(Long userId, String level) {
        User user = findUser(userId);
        user.setStudyLevel(level);
        return UserResponse.from(user);
    }

    private User findUser(Long userId) {
        return userRepository.findById(userId)
                .orElseThrow(() -> ApiException.notFound("Không tìm thấy tài khoản"));
    }
}
