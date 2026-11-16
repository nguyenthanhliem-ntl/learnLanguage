package com.vocab.library;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import com.vocab.common.ApiException;

/**
 * Languages that can be studied, with their level scale and specialized topic banks.
 * The code matches LANGUAGES.CODE; level and topic codes are stored in VOCAB_LIBRARY.LEVEL_CODE.
 * Adding a language: a new constant here, a row in LANGUAGES and its level data (Flyway).
 */
public enum Language {
    EN("en", List.of("A1", "A2", "B1", "B2", "C1", "C2"),
            // Vocabulary for IT, one bank
            List.of("IT")),
    KO("ko", List.of("TOPIK1", "TOPIK2", "TOPIK3", "TOPIK4", "TOPIK5", "TOPIK6"), List.of());

    private final String code;
    private final List<String> levels;
    private final List<String> topics;

    Language(String code, List<String> levels, List<String> topics) {
        this.code = code;
        this.levels = levels;
        this.topics = topics;
    }

    public String code() {
        return code;
    }

    /** Level codes in order, from easiest to hardest. */
    public List<String> levels() {
        return levels;
    }

    /** Codes of the specialized banks (e.g. IT topics), studied like a level. Empty when the language has none. */
    public List<String> topics() {
        return topics;
    }

    public static Optional<Language> find(String code) {
        if (code == null) {
            return Optional.empty();
        }
        String normalized = code.trim().toLowerCase();
        return Arrays.stream(values()).filter(l -> l.code.equals(normalized)).findFirst();
    }

    /** Parses a request parameter: empty = English, unknown = 400. */
    public static Language parse(String code) {
        if (code == null || code.isBlank()) {
            return EN;
        }
        return find(code).orElseThrow(() -> ApiException.badRequest("INVALID_LANGUAGE", "Ngôn ngữ không hợp lệ"));
    }

    /** Validates a level or topic code of this language: returns the normalized code, or 400 if it does not exist. */
    public String parseLevel(String level) {
        String normalized = level == null ? "" : level.trim().toUpperCase();
        if (!levels.contains(normalized) && !topics.contains(normalized)) {
            throw ApiException.badRequest("INVALID_LEVEL", "Cấp độ chỉ được chọn " + String.join(", ", levels));
        }
        return normalized;
    }
}
