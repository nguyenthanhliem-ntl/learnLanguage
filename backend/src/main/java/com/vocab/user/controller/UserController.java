package com.vocab.user.controller;

import org.springframework.http.HttpStatus;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.vocab.config.AuthUser;
import com.vocab.user.dto.ChangePasswordRequest;
import com.vocab.user.dto.UpdateSettingsRequest;
import com.vocab.user.dto.UserResponse;
import com.vocab.user.service.UserService;

import jakarta.validation.Valid;

@RestController
@RequestMapping("/api/users")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/me")
    public UserResponse me(@AuthenticationPrincipal AuthUser authUser) {
        return userService.getMe(authUser.id());
    }

    @PutMapping("/me/settings")
    public UserResponse updateSettings(@AuthenticationPrincipal AuthUser authUser,
                                       @Valid @RequestBody UpdateSettingsRequest request) {
        return userService.updateSettings(authUser.id(), request);
    }

    @PutMapping("/me/password")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void changePassword(@AuthenticationPrincipal AuthUser authUser,
                               @Valid @RequestBody ChangePasswordRequest request) {
        userService.changePassword(authUser.id(), request);
    }
}
