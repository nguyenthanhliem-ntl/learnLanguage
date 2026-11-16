package com.vocab.word.dto;

import java.time.LocalDateTime;

import com.vocab.study.entity.ProgressStatus;
import com.vocab.word.entity.Word;

public record WordResponse(
        Long id,
        String word,
        String partOfSpeech,
        String phonetic,
        String meaning,
        WordStatus status,
        LocalDateTime createdAt,
        LocalDateTime updatedAt) {

    public static WordResponse from(Word word, ProgressStatus progress) {
        return new WordResponse(word.getId(), word.getWord(), word.getPartOfSpeech(), word.getPhonetic(),
                word.getMeaning(), WordStatus.from(progress), word.getCreatedAt(), word.getUpdatedAt());
    }

    public static WordResponse from(WordRow row) {
        return from(row.word(), row.status());
    }
}
