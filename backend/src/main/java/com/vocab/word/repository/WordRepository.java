package com.vocab.word.repository;

import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.vocab.study.dto.QuizOption;
import com.vocab.study.entity.ProgressStatus;
import com.vocab.word.dto.NewWord;
import com.vocab.word.dto.WordRow;
import com.vocab.word.entity.Word;

public interface WordRepository extends JpaRepository<Word, Long> {

    Optional<Word> findByIdAndUserId(Long id, Long userId);

    List<Word> findByUserIdAndIdIn(Long userId, Collection<Long> ids);

    /** Toàn bộ (id, từ) của kho, dùng làm đáp án nhiễu cho câu trắc nghiệm. */
    @Query("select new com.vocab.study.dto.QuizOption(w.id, w.word) from Word w where w.userId = :userId")
    List<QuizOption> findAllOptions(@Param("userId") Long userId);

    /** Mọi nghĩa đã có của cùng một từ (so sánh lower(trim(word)), dùng index IX_WORDS_USER_WORD). */
    @Query("select w from Word w where w.userId = :userId and lower(trim(w.word)) = :normalized order by w.id")
    List<Word> findAllByNormalizedWord(@Param("userId") Long userId, @Param("normalized") String normalized);

    /** 4 cột của toàn bộ kho, dùng cho import để kiểm tra trùng hàng loạt. */
    @Query("select new com.vocab.word.dto.NewWord(w.word, w.partOfSpeech, w.phonetic, w.meaning) from Word w where w.userId = :userId")
    List<NewWord> findAllEntries(@Param("userId") Long userId);

    @Query("select p.status from UserWordProgress p where p.userId = :userId and p.wordId = :wordId")
    Optional<ProgressStatus> findProgressStatus(@Param("userId") Long userId, @Param("wordId") Long wordId);

    /** Danh sách từ kèm trạng thái, tìm theo từ hoặc nghĩa. {@code pattern} đã lower và escape, null = không lọc. */
    @Query(value = """
            select new com.vocab.word.dto.WordRow(w, p.status)
            from Word w
            left join UserWordProgress p on p.wordId = w.id and p.userId = w.userId
            where w.userId = :userId
              and (:pattern is null
                   or lower(w.word) like :pattern escape '\\'
                   or lower(w.meaning) like :pattern escape '\\')
            order by w.id desc
            """,
            countQuery = """
            select count(w) from Word w
            where w.userId = :userId
              and (:pattern is null
                   or lower(w.word) like :pattern escape '\\'
                   or lower(w.meaning) like :pattern escape '\\')
            """)
    Page<WordRow> search(@Param("userId") Long userId, @Param("pattern") String pattern, Pageable pageable);
}
