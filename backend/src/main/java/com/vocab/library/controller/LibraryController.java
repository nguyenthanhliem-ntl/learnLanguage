package com.vocab.library.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.vocab.config.AuthUser;
import com.vocab.library.Language;
import com.vocab.library.dto.LibraryOverview;
import com.vocab.library.dto.StudyLevelRequest;
import com.vocab.library.service.LibraryService;

@RestController
@RequestMapping("/api/library")
public class LibraryController {

    private final LibraryService libraryService;

    public LibraryController(LibraryService libraryService) {
        this.libraryService = libraryService;
    }

    /** {@code lang}: 'en' (default) or 'ko'. */
    @GetMapping("/levels")
    public LibraryOverview levels(@AuthenticationPrincipal AuthUser user, @RequestParam(required = false) String lang) {
        return libraryService.overview(user.id(), Language.parse(lang));
    }

    @PutMapping("/level")
    public LibraryOverview changeLevel(@AuthenticationPrincipal AuthUser user, @RequestBody StudyLevelRequest request) {
        return libraryService.changeStudyLevel(user.id(), Language.parse(request.language()), request.level());
    }
}
