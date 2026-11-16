package com.vocab.library.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;

import com.vocab.library.entity.LibraryWord;

/**
 * Vocabulary by language and level. A level's words are copied into the user's WORDS (with LIBRARY_ID and the
 * same LANGUAGE_CODE) as they are learned, so review, the word bank and statistics share the same data as
 * self-added words.
 */
public interface LibraryRepository extends Repository<LibraryWord, Long> {

    /** Level entries not yet in the user's bank (by LIBRARY_ID, or identical in all 4 columns like UX_WORDS_USER_ENTRY). */
    String NOT_IN_BANK = """
            v.LANGUAGE_CODE = :lang and v.LEVEL_CODE = :level
            and not exists (
                select 1 from WORDS w
                where w.USER_ID = :userId
                  and (w.LIBRARY_ID = v.ID
                       or (w.LANGUAGE_CODE = v.LANGUAGE_CODE
                           and lower(trim(w.WORD)) = lower(trim(v.WORD))
                           and lower(trim(w.PART_OF_SPEECH)) = lower(trim(v.PART_OF_SPEECH))
                           and lower(trim(w.PHONETIC)) = lower(trim(v.PHONETIC))
                           and lower(trim(w.MEANING)) = lower(trim(v.MEANING)))))
            """;

    /** Per level of one language: [LEVEL_CODE, total words, words in the user's bank, words the user has learned]. */
    @Query(value = """
            select v.LEVEL_CODE, count(*), count(w.ID),
                   count(case when p.STATUS is not null and p.STATUS <> 'NEW' then 1 end)
            from VOCAB_LIBRARY v
            left join WORDS w on w.LIBRARY_ID = v.ID and w.USER_ID = :userId
            left join USER_WORD_PROGRESS p on p.WORD_ID = w.ID and p.USER_ID = :userId
            where v.LANGUAGE_CODE = :lang
            group by v.LEVEL_CODE
            """, nativeQuery = true)
    List<Object[]> summarizeLevels(@Param("userId") Long userId, @Param("lang") String lang);

    /** The user's whole bank in one language (self-added + copied from levels): [total words, learned words]. */
    @Query(value = """
            select count(*), count(case when p.STATUS is not null and p.STATUS <> 'NEW' then 1 end)
            from WORDS w
            left join USER_WORD_PROGRESS p on p.WORD_ID = w.ID and p.USER_ID = :userId
            where w.USER_ID = :userId and w.LANGUAGE_CODE = :lang
            """, nativeQuery = true)
    List<Object[]> summarizeMyBank(@Param("userId") Long userId, @Param("lang") String lang);

    long countByLanguageCodeAndLevelCode(String languageCode, String levelCode);

    @Query(value = "select count(*) from VOCAB_LIBRARY v where " + NOT_IN_BANK, nativeQuery = true)
    long countNotInBank(@Param("userId") Long userId, @Param("lang") String lang, @Param("level") String level);

    /** Copies up to {@code limit} random words of the level (not yet in the bank) into the user's bank. */
    @Modifying
    @Query(value = """
            insert into WORDS (USER_ID, LANGUAGE_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING, LIBRARY_ID, CREATED_AT, UPDATED_AT)
            select :userId, x.LANGUAGE_CODE, x.WORD, x.PART_OF_SPEECH, x.PHONETIC, x.MEANING, x.ID, systimestamp, systimestamp
            from (select v.* from VOCAB_LIBRARY v where
            """ + NOT_IN_BANK + """
                  order by dbms_random.value
                  fetch first :limit rows only) x
            """, nativeQuery = true)
    int copyToBank(@Param("userId") Long userId, @Param("lang") String lang, @Param("level") String level,
                   @Param("limit") int limit);
}
