package com.vocab.library.dto;

import java.util.List;

/**
 * Vocabulary bank shown on the Dashboard.
 *
 * @param currentLevel level being studied, null = self-added bank
 * @param myBank       the user's whole bank (self-added words + words copied from levels)
 * @param levels       levels A1–C2 in order
 */
public record LibraryOverview(String currentLevel, LevelSummary myBank, List<LevelSummary> levels) {
}
