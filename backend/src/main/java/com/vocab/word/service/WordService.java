package com.vocab.word.service;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;

import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.PageRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vocab.common.ApiException;
import com.vocab.common.AppClock;
import com.vocab.common.PageResponse;
import com.vocab.word.dto.NewWord;
import com.vocab.word.dto.WordCheckResponse;
import com.vocab.word.dto.WordRequest;
import com.vocab.word.dto.WordResponse;
import com.vocab.word.entity.Word;
import com.vocab.word.repository.WordRepository;

/**
 * Kho từ của user. Mọi cách thêm từ (nhập tay, import Excel) đều đi qua đây để kiểm tra trùng
 * theo cùng một quy tắc: trùng khi giống cả 4 cột Từ mới, Loại từ, Phiên âm, Ngữ nghĩa
 * (so sánh lower(trim(...)), xem {@link #entryKey}). Cùng một từ được phép có nhiều nghĩa.
 */
@Service
public class WordService {

    public static final int MAX_PAGE_SIZE = 100;
    private static final int BATCH_SIZE = 500;
    private static final String KEY_SEPARATOR = "\u001F";
    private static final String INSERT_SQL = "INSERT INTO WORDS (USER_ID, WORD, PART_OF_SPEECH, PHONETIC, MEANING, "
            + "CREATED_AT, UPDATED_AT) VALUES (?, ?, ?, ?, ?, ?, ?)";

    private final WordRepository wordRepository;
    private final JdbcTemplate jdbcTemplate;
    private final AppClock clock;

    public WordService(WordRepository wordRepository, JdbcTemplate jdbcTemplate, AppClock clock) {
        this.wordRepository = wordRepository;
        this.jdbcTemplate = jdbcTemplate;
        this.clock = clock;
    }

    // ---- Chuẩn hóa ----

    /** Làm sạch trước khi lưu: bỏ khoảng trắng đầu/cuối và gộp khoảng trắng thừa ở giữa. */
    public static String clean(String value) {
        return value == null ? "" : value.strip().replaceAll("\\s+", " ");
    }

    /** Như {@link #clean} nhưng chuỗi rỗng thành null. */
    public static String cleanOrNull(String value) {
        String cleaned = clean(value);
        return cleaned.isEmpty() ? null : cleaned;
    }

    /** Khóa so sánh của một trường: lower(trim(value)). */
    public static String normalize(String value) {
        return clean(value).toLowerCase(Locale.ROOT);
    }

    /** Khóa trùng của cả mục từ: 4 cột đã normalize. Khớp với unique index UX_WORDS_USER_ENTRY. */
    public static String entryKey(String word, String partOfSpeech, String phonetic, String meaning) {
        return String.join(KEY_SEPARATOR, normalize(word), normalize(partOfSpeech), normalize(phonetic), normalize(meaning));
    }

    public static String entryKey(NewWord w) {
        return entryKey(w.word(), w.partOfSpeech(), w.phonetic(), w.meaning());
    }

    private static String entryKey(Word w) {
        return entryKey(w.getWord(), w.getPartOfSpeech(), w.getPhonetic(), w.getMeaning());
    }

    // ---- Kiểm tra trùng ----

    /**
     * Kiểm tra khi nhập tay: trả về các nghĩa đã có của từ này, và {@code exists = true}
     * nếu một trong số đó giống hệt cả 4 cột. {@code excludeId} bỏ qua chính từ đang sửa.
     */
    @Transactional(readOnly = true)
    public WordCheckResponse check(Long userId, String word, String partOfSpeech, String phonetic, String meaning,
                                   Long excludeId) {
        String normalized = normalize(word);
        if (normalized.isEmpty()) {
            return new WordCheckResponse(false, List.of());
        }
        String key = entryKey(word, partOfSpeech, phonetic, meaning);
        List<Word> sameWord = wordRepository.findAllByNormalizedWord(userId, normalized).stream()
                .filter(w -> !w.getId().equals(excludeId))
                .toList();
        boolean exists = sameWord.stream().anyMatch(w -> entryKey(w).equals(key));
        return new WordCheckResponse(exists, sameWord.stream().map(w -> toResponse(userId, w)).toList());
    }

    /** Khóa trùng của toàn bộ kho, dùng cho import để kiểm tra hàng loạt. */
    @Transactional(readOnly = true)
    public Set<String> existingEntryKeys(Long userId) {
        Set<String> keys = new HashSet<>();
        for (NewWord w : wordRepository.findAllEntries(userId)) {
            keys.add(entryKey(w));
        }
        return keys;
    }

    // ---- CRUD ----

    @Transactional(readOnly = true)
    public PageResponse<WordResponse> list(Long userId, String query, int page, int size) {
        int safePage = Math.max(page, 0);
        int safeSize = Math.min(Math.max(size, 1), MAX_PAGE_SIZE);
        return PageResponse.from(
                wordRepository.search(userId, toLikePattern(query), PageRequest.of(safePage, safeSize)),
                WordResponse::from);
    }

    @Transactional
    public WordResponse create(Long userId, WordRequest request) {
        NewWord w = cleaned(request);
        ensureNotDuplicate(userId, w, null);
        Word entity = new Word(userId, w.word(), w.partOfSpeech(), w.phonetic(), w.meaning(), clock.now());
        saveAndFlush(entity);
        return WordResponse.from(entity, null);
    }

    @Transactional
    public WordResponse update(Long userId, Long id, WordRequest request) {
        Word entity = findOwned(userId, id);
        NewWord w = cleaned(request);
        ensureNotDuplicate(userId, w, id);
        entity.update(w.word(), w.partOfSpeech(), w.phonetic(), w.meaning(), clock.now());
        saveAndFlush(entity);
        return toResponse(userId, entity);
    }

    @Transactional
    public void delete(Long userId, Long id) {
        // Tiến độ học và lịch sử của từ bị xóa theo (ON DELETE CASCADE)
        wordRepository.delete(findOwned(userId, id));
    }

    /** Insert nhiều từ theo batch JDBC (IDENTITY khiến Hibernate không batch được). Không kiểm tra trùng. */
    @Transactional
    public void insertBatch(Long userId, List<NewWord> words) {
        if (words.isEmpty()) {
            return;
        }
        Timestamp now = Timestamp.valueOf(clock.now());
        jdbcTemplate.batchUpdate(INSERT_SQL, words, BATCH_SIZE, (ps, w) -> {
            ps.setLong(1, userId);
            ps.setString(2, w.word());
            ps.setString(3, w.partOfSpeech());
            ps.setString(4, w.phonetic());
            ps.setString(5, w.meaning());
            ps.setTimestamp(6, now);
            ps.setTimestamp(7, now);
        });
    }

    // ---- Nội bộ ----

    private static NewWord cleaned(WordRequest r) {
        return new NewWord(clean(r.word()), clean(r.partOfSpeech()), clean(r.phonetic()), clean(r.meaning()));
    }

    private void ensureNotDuplicate(Long userId, NewWord w, Long excludeId) {
        String key = entryKey(w);
        boolean duplicate = wordRepository.findAllByNormalizedWord(userId, normalize(w.word())).stream()
                .anyMatch(existing -> !Objects.equals(existing.getId(), excludeId) && entryKey(existing).equals(key));
        if (duplicate) {
            throw duplicate();
        }
    }

    private void saveAndFlush(Word entity) {
        try {
            wordRepository.saveAndFlush(entity);
        } catch (DataIntegrityViolationException e) {
            // Hai request thêm cùng một từ gần như đồng thời: unique index chặn lại
            throw duplicate();
        }
    }

    private Word findOwned(Long userId, Long id) {
        return wordRepository.findByIdAndUserId(id, userId)
                .orElseThrow(() -> ApiException.notFound("Không tìm thấy từ này trong kho"));
    }

    private WordResponse toResponse(Long userId, Word word) {
        return WordResponse.from(word, wordRepository.findProgressStatus(userId, word.getId()).orElse(null));
    }

    private static ApiException duplicate() {
        return ApiException.conflict("WORD_EXISTS",
                "Từ này đã có trong kho (giống cả từ mới, loại từ, phiên âm và ngữ nghĩa)");
    }

    /** "%abc%" đã lower-case và escape ký tự đặc biệt của LIKE; null nếu không tìm kiếm. */
    static String toLikePattern(String query) {
        if (query == null || query.isBlank()) {
            return null;
        }
        String escaped = query.strip().toLowerCase(Locale.ROOT)
                .replace("\\", "\\\\")
                .replace("%", "\\%")
                .replace("_", "\\_");
        return "%" + escaped + "%";
    }
}
