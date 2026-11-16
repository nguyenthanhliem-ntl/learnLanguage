package com.vocab.library.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/** One entry in the shared level bank (read-only, data loaded by Flyway). */
@Entity
@Table(name = "VOCAB_LIBRARY")
public class LibraryWord {

    @Id
    @Column(name = "ID")
    private Long id;

    @Column(name = "LANGUAGE_CODE", nullable = false, length = 5)
    private String languageCode;

    @Column(name = "LEVEL_CODE", nullable = false, length = 10)
    private String levelCode;

    @Column(name = "WORD", nullable = false, length = 100)
    private String word;

    @Column(name = "PART_OF_SPEECH", nullable = false, length = 50)
    private String partOfSpeech;

    @Column(name = "PHONETIC", length = 100)
    private String phonetic;

    @Column(name = "MEANING", nullable = false, length = 1000)
    private String meaning;

    protected LibraryWord() {
    }

    public Long getId() {
        return id;
    }

    public String getLanguageCode() {
        return languageCode;
    }

    public String getLevelCode() {
        return levelCode;
    }

    public String getWord() {
        return word;
    }

    public String getPartOfSpeech() {
        return partOfSpeech;
    }

    public String getPhonetic() {
        return phonetic;
    }

    public String getMeaning() {
        return meaning;
    }
}
