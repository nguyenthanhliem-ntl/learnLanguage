package com.vocab.word.dto;

import com.vocab.study.entity.ProgressStatus;
import com.vocab.word.entity.Word;

/** List query row: the word with its progress status (null if not learned). Internal use only. */
public record WordRow(Word word, ProgressStatus status) {
}
