package com.vocab.word.dto;

import java.util.List;

/**
 * Result of the duplicate check while typing.
 *
 * @param exists   true if a word identical in all 4 columns already exists (saving is blocked)
 * @param sameWord existing meanings of the same word in the bank (for reference)
 */
public record WordCheckResponse(boolean exists, List<WordResponse> sameWord) {
}
