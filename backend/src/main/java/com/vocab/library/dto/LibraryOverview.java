package com.vocab.library.dto;

import java.util.List;

/**
 * Kho từ vựng trên trang Tổng quan.
 *
 * @param currentLevel cấp độ đang học, null = kho tự thêm
 * @param myBank       toàn bộ kho của user (từ tự thêm + từ đã chép từ các cấp độ)
 * @param levels       các cấp độ A1–C2 theo thứ tự
 */
public record LibraryOverview(String currentLevel, LevelSummary myBank, List<LevelSummary> levels) {
}
