package com.vocab.library.dto;

/**
 * User progress in one level (or in the self-added bank when {@code level} is null).
 *
 * @param total   total number of words
 * @param learned number of words the user has learned (already scheduled for review)
 */
public record LevelSummary(String level, long total, long learned) {
}
