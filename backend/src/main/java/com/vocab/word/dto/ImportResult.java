package com.vocab.word.dto;

import java.util.List;

/**
 * Excel import result.
 *
 * @param added          words added
 * @param duplicates     words skipped because they are already in the bank or repeated in the file
 * @param duplicateWords part of the duplicate words (up to 50) for display
 * @param errors         rows with errors (Excel row number + reason)
 */
public record ImportResult(int added, int duplicates, List<String> duplicateWords, List<RowError> errors) {

    public record RowError(int row, String reason) {
    }
}
