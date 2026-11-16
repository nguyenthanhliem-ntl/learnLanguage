package com.vocab.word.dto;

/** Một từ đã được làm sạch, chuẩn bị insert theo batch khi import. */
public record NewWord(String word, String partOfSpeech, String phonetic, String meaning) {
}
