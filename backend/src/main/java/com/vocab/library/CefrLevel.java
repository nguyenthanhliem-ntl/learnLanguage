package com.vocab.library;

import java.util.Arrays;
import java.util.Optional;

/** Cấp độ từ vựng theo khung CEFR. */
public enum CefrLevel {
    A1, A2, B1, B2, C1, C2;

    public static Optional<CefrLevel> parse(String code) {
        if (code == null) {
            return Optional.empty();
        }
        String normalized = code.trim().toUpperCase();
        return Arrays.stream(values()).filter(l -> l.name().equals(normalized)).findFirst();
    }
}
