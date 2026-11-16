package com.vocab.library.service;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vocab.common.ApiException;
import com.vocab.library.CefrLevel;
import com.vocab.library.dto.LevelSummary;
import com.vocab.library.dto.LibraryOverview;
import com.vocab.library.repository.LibraryRepository;
import com.vocab.user.dto.UserResponse;
import com.vocab.user.service.UserService;

/** Kho từ vựng A1–C2: tiến độ từng cấp độ và chọn cấp độ đang học. */
@Service
public class LibraryService {

    private final LibraryRepository libraryRepository;
    private final UserService userService;

    public LibraryService(LibraryRepository libraryRepository, UserService userService) {
        this.libraryRepository = libraryRepository;
        this.userService = userService;
    }

    @Transactional(readOnly = true)
    public LibraryOverview overview(Long userId) {
        Map<String, LevelSummary> byLevel = libraryRepository.summarizeLevels(userId).stream()
                .map(r -> new LevelSummary((String) r[0], toLong(r[1]), toLong(r[3])))
                .collect(Collectors.toMap(LevelSummary::level, Function.identity()));
        // Cấp độ chưa có dữ liệu vẫn hiện với 0 từ
        List<LevelSummary> levels = Arrays.stream(CefrLevel.values())
                .map(l -> byLevel.getOrDefault(l.name(), new LevelSummary(l.name(), 0, 0)))
                .toList();

        Object[] mine = libraryRepository.summarizeMyBank(userId).get(0);
        LevelSummary myBank = new LevelSummary(null, toLong(mine[0]), toLong(mine[1]));

        return new LibraryOverview(userService.getMe(userId).studyLevel(), myBank, levels);
    }

    /** Đổi cấp độ đang học; tiến độ các cấp độ khác vẫn giữ nguyên. {@code level} null = kho tự thêm. */
    @Transactional
    public UserResponse changeStudyLevel(Long userId, String level) {
        if (level == null || level.isBlank()) {
            return userService.setStudyLevel(userId, null);
        }
        CefrLevel parsed = CefrLevel.parse(level)
                .orElseThrow(() -> ApiException.badRequest("INVALID_LEVEL", "Cấp độ chỉ được chọn A1, A2, B1, B2, C1 hoặc C2"));
        return userService.setStudyLevel(userId, parsed.name());
    }

    private static long toLong(Object value) {
        return value == null ? 0 : ((Number) value).longValue();
    }
}
