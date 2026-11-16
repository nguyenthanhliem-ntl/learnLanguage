package com.vocab.word.entity;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "WORDS")
public class Word {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "USER_ID", nullable = false, updatable = false)
    private Long userId;

    @Column(name = "WORD", nullable = false, length = 100)
    private String word;

    /** Part of speech, free text (e.g. noun, verb, adj...). Words added before V2 may be null. */
    @Column(name = "PART_OF_SPEECH", length = 50)
    private String partOfSpeech;

    @Column(name = "PHONETIC", length = 100)
    private String phonetic;

    @Column(name = "MEANING", nullable = false, length = 1000)
    private String meaning;

    /** Word copied from the level bank (VOCAB_LIBRARY); null = added by the user. Only written when copying, see LibraryRepository. */
    @Column(name = "LIBRARY_ID", insertable = false, updatable = false)
    private Long libraryId;

    @Column(name = "CREATED_AT", nullable = false, updatable = false)
    private LocalDateTime createdAt;

    @Column(name = "UPDATED_AT", nullable = false)
    private LocalDateTime updatedAt;

    protected Word() {
    }

    public Word(Long userId, String word, String partOfSpeech, String phonetic, String meaning, LocalDateTime now) {
        this.userId = userId;
        this.word = word;
        this.partOfSpeech = partOfSpeech;
        this.phonetic = phonetic;
        this.meaning = meaning;
        this.createdAt = now;
        this.updatedAt = now;
    }

    public void update(String word, String partOfSpeech, String phonetic, String meaning, LocalDateTime now) {
        this.word = word;
        this.partOfSpeech = partOfSpeech;
        this.phonetic = phonetic;
        this.meaning = meaning;
        this.updatedAt = now;
    }

    public Long getId() {
        return id;
    }

    public Long getUserId() {
        return userId;
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

    public Long getLibraryId() {
        return libraryId;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }
}
