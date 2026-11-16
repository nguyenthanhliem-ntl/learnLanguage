package com.vocab.stats.dto;

import java.time.LocalDate;

/** Activity in one day: new words learned and review questions answered. */
public record ActivityDay(LocalDate date, long learned, long reviewed) {
}
