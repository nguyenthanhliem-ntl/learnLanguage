package com.vocab.word.dto;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

/** Thêm / sửa từ: bắt buộc đủ 4 trường. */
public record WordRequest(
        @NotBlank(message = "Vui lòng nhập từ mới")
        @Size(max = 100, message = "Từ mới tối đa 100 ký tự")
        String word,

        @NotBlank(message = "Vui lòng nhập loại từ")
        @Size(max = 50, message = "Loại từ tối đa 50 ký tự")
        String partOfSpeech,

        @NotBlank(message = "Vui lòng nhập phiên âm")
        @Size(max = 100, message = "Phiên âm tối đa 100 ký tự")
        String phonetic,

        @NotBlank(message = "Vui lòng nhập ngữ nghĩa")
        @Size(max = 1000, message = "Ngữ nghĩa tối đa 1000 ký tự")
        String meaning) {
}
