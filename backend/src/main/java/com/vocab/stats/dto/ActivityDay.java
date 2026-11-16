package com.vocab.stats.dto;

import java.time.LocalDate;

/** Hoạt động trong một ngày: số từ mới đã học và số câu đã ôn. */
public record ActivityDay(LocalDate date, long learned, long reviewed) {
}
