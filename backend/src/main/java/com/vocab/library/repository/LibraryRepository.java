package com.vocab.library.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;
import org.springframework.data.repository.query.Param;

import com.vocab.library.entity.LibraryWord;

/**
 * Kho từ vựng theo cấp độ. Từ của một cấp độ được chép dần sang WORDS của user (kèm LIBRARY_ID) khi học,
 * nên phần ôn tập, kho từ và thống kê dùng chung dữ liệu như từ user tự thêm.
 */
public interface LibraryRepository extends Repository<LibraryWord, Long> {

    /** Mục từ của cấp độ chưa có trong kho user (theo LIBRARY_ID hoặc trùng cả 4 cột như UX_WORDS_USER_ENTRY). */
    String NOT_IN_BANK = """
            v.LEVEL_CODE = :level
            and not exists (
                select 1 from WORDS w
                where w.USER_ID = :userId
                  and (w.LIBRARY_ID = v.ID
                       or (lower(trim(w.WORD)) = lower(trim(v.WORD))
                           and lower(trim(w.PART_OF_SPEECH)) = lower(trim(v.PART_OF_SPEECH))
                           and lower(trim(w.PHONETIC)) = lower(trim(v.PHONETIC))
                           and lower(trim(w.MEANING)) = lower(trim(v.MEANING)))))
            """;

    /** Mỗi cấp độ: [LEVEL_CODE, tổng số từ, số từ đã vào kho user, số từ user đã học]. */
    @Query(value = """
            select v.LEVEL_CODE, count(*), count(w.ID),
                   count(case when p.STATUS is not null and p.STATUS <> 'NEW' then 1 end)
            from VOCAB_LIBRARY v
            left join WORDS w on w.LIBRARY_ID = v.ID and w.USER_ID = :userId
            left join USER_WORD_PROGRESS p on p.WORD_ID = w.ID and p.USER_ID = :userId
            group by v.LEVEL_CODE
            order by v.LEVEL_CODE
            """, nativeQuery = true)
    List<Object[]> summarizeLevels(@Param("userId") Long userId);

    /** Toàn bộ kho của user (từ tự thêm + từ chép từ các cấp độ): [tổng số từ, số từ đã học]. */
    @Query(value = """
            select count(*), count(case when p.STATUS is not null and p.STATUS <> 'NEW' then 1 end)
            from WORDS w
            left join USER_WORD_PROGRESS p on p.WORD_ID = w.ID and p.USER_ID = :userId
            where w.USER_ID = :userId
            """, nativeQuery = true)
    List<Object[]> summarizeMyBank(@Param("userId") Long userId);

    long countByLevelCode(String levelCode);

    @Query(value = "select count(*) from VOCAB_LIBRARY v where " + NOT_IN_BANK, nativeQuery = true)
    long countNotInBank(@Param("userId") Long userId, @Param("level") String level);

    /** Chép ngẫu nhiên tối đa {@code limit} từ của cấp độ (chưa có trong kho) sang kho user. */
    @Modifying
    @Query(value = """
            insert into WORDS (USER_ID, WORD, PART_OF_SPEECH, PHONETIC, MEANING, LIBRARY_ID, CREATED_AT, UPDATED_AT)
            select :userId, x.WORD, x.PART_OF_SPEECH, x.PHONETIC, x.MEANING, x.ID, systimestamp, systimestamp
            from (select v.* from VOCAB_LIBRARY v where
            """ + NOT_IN_BANK + """
                  order by dbms_random.value
                  fetch first :limit rows only) x
            """, nativeQuery = true)
    int copyToBank(@Param("userId") Long userId, @Param("level") String level, @Param("limit") int limit);
}
