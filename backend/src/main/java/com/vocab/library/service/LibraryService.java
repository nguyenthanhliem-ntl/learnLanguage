package com.vocab.library.service;

import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vocab.library.Language;
import com.vocab.library.dto.LevelSummary;
import com.vocab.library.dto.LibraryOverview;
import com.vocab.library.repository.LibraryRepository;
import com.vocab.user.repository.StudyLevelRepository;

/** Vocabulary bank by level for each language: progress per level and choosing the level to study. */
@Service
public class LibraryService {

    private final LibraryRepository libraryRepository;
    private final StudyLevelRepository studyLevelRepository;

    public LibraryService(LibraryRepository libraryRepository, StudyLevelRepository studyLevelRepository) {
        this.libraryRepository = libraryRepository;
        this.studyLevelRepository = studyLevelRepository;
    }

    @Transactional(readOnly = true)
    public LibraryOverview overview(Long userId, Language language) {
        Map<String, LevelSummary> byLevel = libraryRepository.summarizeLevels(userId, language.code()).stream()
                .map(r -> new LevelSummary((String) r[0], toLong(r[1]), toLong(r[3])))
                .collect(Collectors.toMap(LevelSummary::level, Function.identity()));
        // Levels and topics without data are still listed with 0 words
        List<LevelSummary> levels = language.levels().stream()
                .map(l -> byLevel.getOrDefault(l, new LevelSummary(l, 0, 0)))
                .toList();
        List<LevelSummary> topics = language.topics().stream()
                .map(l -> byLevel.getOrDefault(l, new LevelSummary(l, 0, 0)))
                .toList();

        Object[] mine = libraryRepository.summarizeMyBank(userId, language.code()).get(0);
        LevelSummary myBank = new LevelSummary(null, toLong(mine[0]), toLong(mine[1]));

        return new LibraryOverview(language.code(), currentLevel(userId, language), myBank, levels, topics);
    }

    /** Level being studied in this language, null = self-added bank. */
    @Transactional(readOnly = true)
    public String currentLevel(Long userId, Language language) {
        return studyLevelRepository.find(userId, language.code());
    }

    /** Changes the level being studied; progress in other levels is kept. {@code level} null = self-added bank. */
    @Transactional
    public LibraryOverview changeStudyLevel(Long userId, Language language, String level) {
        String parsed = (level == null || level.isBlank()) ? null : language.parseLevel(level);
        studyLevelRepository.save(userId, language.code(), parsed);
        return overview(userId, language);
    }

    private static long toLong(Object value) {
        return value == null ? 0 : ((Number) value).longValue();
    }
}
