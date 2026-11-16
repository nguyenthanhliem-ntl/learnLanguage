package com.vocab.study.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;

import com.vocab.word.entity.Word;

/**
 * Queries for NOT-learned words: no progress yet, or progress still in the NEW state.
 * "My bank" only contains self-added words (LIBRARY_ID null); a level contains the words copied from that level.
 */
public interface NewWordQueryRepository extends Repository<Word, Long> {

    String NOT_LEARNED = """
            w.USER_ID = :userId
            and not exists (
                select 1 from USER_WORD_PROGRESS p
                where p.USER_ID = :userId and p.WORD_ID = w.ID and p.STATUS <> 'NEW')
            """;

    String OWN_BANK = " and w.LIBRARY_ID is null ";

    String IN_LEVEL = " and w.LIBRARY_ID in (select v.ID from VOCAB_LIBRARY v where v.LEVEL_CODE = :level) ";

    /** Up to {@code limit} random unlearned words from the self-added bank. */
    @Query(value = "select w.* from WORDS w where " + NOT_LEARNED + OWN_BANK
            + "order by dbms_random.value fetch first :limit rows only", nativeQuery = true)
    List<Word> findRandomNotLearned(@Param("userId") Long userId, @Param("limit") int limit);

    @Query(value = "select count(*) from WORDS w where " + NOT_LEARNED + OWN_BANK, nativeQuery = true)
    long countNotLearned(@Param("userId") Long userId);

    @Query(value = "select count(*) from WORDS w where w.USER_ID = :userId" + OWN_BANK, nativeQuery = true)
    long countOwnBank(@Param("userId") Long userId);

    /** Up to {@code limit} random unlearned words copied from level {@code level}. */
    @Query(value = "select w.* from WORDS w where " + NOT_LEARNED + IN_LEVEL
            + "order by dbms_random.value fetch first :limit rows only", nativeQuery = true)
    List<Word> findRandomNotLearnedInLevel(@Param("userId") Long userId, @Param("level") String level,
                                           @Param("limit") int limit);

    @Query(value = "select count(*) from WORDS w where " + NOT_LEARNED + IN_LEVEL, nativeQuery = true)
    long countNotLearnedInLevel(@Param("userId") Long userId, @Param("level") String level);
}
