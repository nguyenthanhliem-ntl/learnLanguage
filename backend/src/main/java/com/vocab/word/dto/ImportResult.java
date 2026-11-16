package com.vocab.word.dto;

import java.util.List;

/**
 * Kết quả import Excel.
 *
 * @param added          số từ thêm mới
 * @param duplicates     số từ bị bỏ qua vì đã có trong kho hoặc lặp lại trong file
 * @param duplicateWords một phần danh sách từ trùng (tối đa 50) để hiển thị
 * @param errors         các dòng lỗi (số dòng theo Excel + lý do)
 */
public record ImportResult(int added, int duplicates, List<String> duplicateWords, List<RowError> errors) {

    public record RowError(int row, String reason) {
    }
}
