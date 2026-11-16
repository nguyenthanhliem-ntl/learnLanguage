package com.vocab.common;

import java.util.List;
import java.util.function.Function;

import org.springframework.data.domain.Page;

/** Response phân trang chung. {@code page} bắt đầu từ 0. */
public record PageResponse<T>(List<T> items, int page, int size, long totalElements, int totalPages) {

    public static <S, T> PageResponse<T> from(Page<S> page, Function<S, T> mapper) {
        return new PageResponse<>(page.getContent().stream().map(mapper).toList(),
                page.getNumber(), page.getSize(), page.getTotalElements(), page.getTotalPages());
    }
}
