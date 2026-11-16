package com.vocab.user.repository;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/** Level being studied per user and language (table USER_LANGUAGE_SETTINGS). */
@Repository
public class StudyLevelRepository {

    private final JdbcTemplate jdbc;

    public StudyLevelRepository(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    /** Level code, or null when the user studies from the self-added bank (or never chose a level). */
    public String find(Long userId, String languageCode) {
        List<String> rows = jdbc.queryForList(
                "select STUDY_LEVEL from USER_LANGUAGE_SETTINGS where USER_ID = ? and LANGUAGE_CODE = ?",
                String.class, userId, languageCode);
        return rows.isEmpty() ? null : rows.get(0);
    }

    public void save(Long userId, String languageCode, String level) {
        jdbc.update("""
                merge into USER_LANGUAGE_SETTINGS s
                using (select ? as USER_ID, ? as LANGUAGE_CODE from DUAL) x
                on (s.USER_ID = x.USER_ID and s.LANGUAGE_CODE = x.LANGUAGE_CODE)
                when matched then update set s.STUDY_LEVEL = ?
                when not matched then insert (USER_ID, LANGUAGE_CODE, STUDY_LEVEL) values (x.USER_ID, x.LANGUAGE_CODE, ?)
                """, userId, languageCode, level, level);
    }
}
