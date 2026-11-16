package com.vocab.library.dto;

import java.util.List;

/**
 * Vocabulary bank of one language.
 *
 * @param language     language code ('en', 'ko', ...)
 * @param currentLevel level or topic being studied, null = self-added bank
 * @param myBank       the user's whole bank in this language (self-added words + words copied from levels)
 * @param levels       levels of the language in order (A1–C2, TOPIK1–TOPIK6, ...)
 * @param topics       specialized banks of the language (e.g. IT topics), empty when it has none
 */
public record LibraryOverview(String language, String currentLevel, LevelSummary myBank, List<LevelSummary> levels,
                              List<LevelSummary> topics) {
}
