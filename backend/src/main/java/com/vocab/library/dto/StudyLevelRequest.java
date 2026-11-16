package com.vocab.library.dto;

/**
 * @param language language code ('en', 'ko', ...), empty = English
 * @param level    level of that language to study, null = study from the self-added bank
 */
public record StudyLevelRequest(String language, String level) {
}
