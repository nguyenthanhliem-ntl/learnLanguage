package com.vocab.word.dto;

/** A cleaned-up word, ready for batch insert during import. */
public record NewWord(String word, String partOfSpeech, String phonetic, String meaning) {
}
