package com.vocab.auth.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;

public record RegisterRequest(
        @NotBlank(message = "Vui lòng nhập tên đăng nhập")
        @Size(min = 3, max = 50, message = "Tên đăng nhập dài từ 3 đến 50 ký tự")
        @Pattern(regexp = "^[a-zA-Z0-9_.]+$", message = "Tên đăng nhập chỉ gồm chữ không dấu, số, dấu chấm và gạch dưới")
        String username,

        @NotBlank(message = "Vui lòng nhập mật khẩu")
        @Size(min = 6, max = 72, message = "Mật khẩu dài từ 6 đến 72 ký tự")
        String password) {
}
