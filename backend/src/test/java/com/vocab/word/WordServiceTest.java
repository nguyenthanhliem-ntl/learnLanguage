package com.vocab.word;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.util.ReflectionTestUtils;

import com.vocab.common.ApiException;
import com.vocab.common.AppClock;
import com.vocab.word.dto.WordCheckResponse;
import com.vocab.word.dto.WordRequest;
import com.vocab.word.dto.WordResponse;
import com.vocab.word.dto.WordStatus;
import com.vocab.word.entity.Word;
import com.vocab.word.repository.WordRepository;
import com.vocab.word.service.WordService;

@ExtendWith(MockitoExtension.class)
class WordServiceTest {

    private static final Long USER = 7L;
    private static final LocalDateTime NOW = LocalDateTime.of(2026, 10, 27, 9, 0);

    @Mock
    private WordRepository repository;
    @Mock
    private JdbcTemplate jdbcTemplate;
    @Mock
    private AppClock clock;

    private WordService service;

    @BeforeEach
    void setUp() {
        service = new WordService(repository, jdbcTemplate, clock);
    }

    private static Word word(Long id, String text, String pos, String phonetic, String meaning) {
        Word w = new Word(USER, text, pos, phonetic, meaning, NOW);
        ReflectionTestUtils.setField(w, "id", id);
        return w;
    }

    private static Word bookNoun() {
        return word(1L, "book", "noun", "/bʊk/", "quyển sách");
    }

    @Test
    void entryKey_ignoresCaseAndExtraSpaces() {
        assertThat(WordService.entryKey("  Ice   Cream ", "NOUN", "/aɪs kriːm/", " kem ")).isEqualTo(
                WordService.entryKey("ice cream", "noun", "/aɪs kriːm/", "kem"));
        assertThat(WordService.clean("  Ice   Cream ")).isEqualTo("Ice Cream");
        assertThat(WordService.cleanOrNull("   ")).isNull();
    }

    @Test
    void check_sameWordDifferentMeaning_isNotDuplicateButListed() {
        when(repository.findAllByNormalizedWord(USER, "book")).thenReturn(List.of(bookNoun()));
        when(repository.findProgressStatus(USER, 1L)).thenReturn(Optional.empty());

        WordCheckResponse result = service.check(USER, " BOOK ", "verb", "/bʊk/", "đặt chỗ", null);

        assertThat(result.exists()).isFalse();
        assertThat(result.sameWord()).extracting(WordResponse::meaning).containsExactly("quyển sách");
    }

    @Test
    void check_allFourColumnsMatch_isDuplicate() {
        when(repository.findAllByNormalizedWord(USER, "book")).thenReturn(List.of(bookNoun()));
        when(repository.findProgressStatus(USER, 1L)).thenReturn(Optional.empty());

        assertThat(service.check(USER, "Book", " Noun", "/bʊk/", "Quyển sách ", null).exists()).isTrue();
    }

    @Test
    void check_excludesWordBeingEdited() {
        when(repository.findAllByNormalizedWord(USER, "book")).thenReturn(List.of(bookNoun()));

        WordCheckResponse result = service.check(USER, "book", "noun", "/bʊk/", "quyển sách", 1L);

        assertThat(result.exists()).isFalse();
        assertThat(result.sameWord()).isEmpty();
    }

    @Test
    void check_blankWord_returnsNothing() {
        assertThat(service.check(USER, "   ", null, null, null, null).exists()).isFalse();
        verify(repository, never()).findAllByNormalizedWord(anyLong(), any());
    }

    @Test
    void create_exactDuplicate_isRejected() {
        when(repository.findAllByNormalizedWord(USER, "book")).thenReturn(List.of(bookNoun()));

        assertThatThrownBy(() -> service.create(USER, new WordRequest("BOOK", "Noun", "/bʊk/", "quyển  sách")))
                .isInstanceOf(ApiException.class)
                .extracting("code").isEqualTo("WORD_EXISTS");
        verify(repository, never()).saveAndFlush(any());
    }

    @Test
    void create_sameWordOtherPartOfSpeech_isAllowed() {
        when(repository.findAllByNormalizedWord(USER, "book")).thenReturn(List.of(bookNoun()));
        when(clock.now()).thenReturn(NOW);

        WordResponse result = service.create(USER, new WordRequest("book", "verb", "/bʊk/", "đặt chỗ"));

        assertThat(result.partOfSpeech()).isEqualTo("verb");
        verify(repository).saveAndFlush(any());
    }

    @Test
    void create_newWord_isCleanedAndSaved() {
        when(repository.findAllByNormalizedWord(USER, "ice cream")).thenReturn(List.of());
        when(clock.now()).thenReturn(NOW);

        WordResponse result = service.create(USER, new WordRequest("  ice   cream ", " noun ", " /aɪs kriːm/ ", "  kem "));

        ArgumentCaptor<Word> saved = ArgumentCaptor.forClass(Word.class);
        verify(repository).saveAndFlush(saved.capture());
        assertThat(saved.getValue().getWord()).isEqualTo("ice cream");
        assertThat(saved.getValue().getPartOfSpeech()).isEqualTo("noun");
        assertThat(saved.getValue().getPhonetic()).isEqualTo("/aɪs kriːm/");
        assertThat(saved.getValue().getMeaning()).isEqualTo("kem");
        assertThat(result.status()).isEqualTo(WordStatus.NOT_STARTED);
    }

    @Test
    void create_raceConditionOnUniqueIndex_isReportedAsDuplicate() {
        when(repository.findAllByNormalizedWord(USER, "apple")).thenReturn(List.of());
        when(clock.now()).thenReturn(NOW);
        when(repository.saveAndFlush(any())).thenThrow(new DataIntegrityViolationException("UX_WORDS_USER_ENTRY"));

        assertThatThrownBy(() -> service.create(USER, new WordRequest("apple", "noun", "/ˈæp.əl/", "táo")))
                .isInstanceOf(ApiException.class)
                .extracting("code").isEqualTo("WORD_EXISTS");
    }

    @Test
    void update_toCopyOfAnotherEntry_isRejected() {
        when(repository.findByIdAndUserId(2L, USER))
                .thenReturn(Optional.of(word(2L, "book", "verb", "/bʊk/", "đặt chỗ")));
        when(repository.findAllByNormalizedWord(USER, "book"))
                .thenReturn(List.of(bookNoun(), word(2L, "book", "verb", "/bʊk/", "đặt chỗ")));

        assertThatThrownBy(() -> service.update(USER, 2L, new WordRequest("book", "noun", "/bʊk/", "quyển sách")))
                .isInstanceOf(ApiException.class)
                .extracting("code").isEqualTo("WORD_EXISTS");
    }

    @Test
    void update_itselfWithDifferentCase_isAllowed() {
        Word existing = bookNoun();
        when(repository.findByIdAndUserId(1L, USER)).thenReturn(Optional.of(existing));
        when(repository.findAllByNormalizedWord(USER, "book")).thenReturn(List.of(existing));
        when(repository.findProgressStatus(USER, 1L)).thenReturn(Optional.empty());
        when(clock.now()).thenReturn(NOW);

        WordResponse result = service.update(USER, 1L, new WordRequest("Book", "noun", "/bʊk/", "Quyển sách"));

        assertThat(result.word()).isEqualTo("Book");
    }

    @Test
    void update_wordOfAnotherUser_isNotFound() {
        when(repository.findByIdAndUserId(99L, USER)).thenReturn(Optional.empty());

        assertThatThrownBy(() -> service.update(USER, 99L, new WordRequest("apple", "noun", "/x/", "táo")))
                .isInstanceOf(ApiException.class)
                .extracting("code").isEqualTo("NOT_FOUND");
    }
}
