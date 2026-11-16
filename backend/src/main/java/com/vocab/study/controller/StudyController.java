package com.vocab.study.controller;

import java.util.List;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.vocab.config.AuthUser;
import com.vocab.study.dto.AnswerRequest;
import com.vocab.study.dto.AnswerResponse;
import com.vocab.study.dto.NewWordsResponse;
import com.vocab.study.dto.RememberResponse;
import com.vocab.study.dto.ReviewRoundResponse;
import com.vocab.study.service.LearnService;
import com.vocab.study.service.ReviewService;

import jakarta.validation.Valid;

@RestController
@RequestMapping("/api/study")
public class StudyController {

    private final LearnService learnService;
    private final ReviewService reviewService;

    public StudyController(LearnService learnService, ReviewService reviewService) {
        this.learnService = learnService;
        this.reviewService = reviewService;
    }

    @GetMapping("/new")
    public NewWordsResponse newWords(@AuthenticationPrincipal AuthUser user,
                                     @RequestParam(required = false) Integer limit) {
        return learnService.getNewWords(user.id(), limit);
    }

    @PostMapping("/new/{wordId}/remember")
    public RememberResponse remember(@AuthenticationPrincipal AuthUser user, @PathVariable Long wordId) {
        return learnService.remember(user.id(), wordId);
    }

    /**
     * One review round of 20–30 words based on SM-2.
     * {@code exclude}: words already reviewed in this session. {@code ids}: review exactly these words (e.g. words just answered wrong).
     */
    @GetMapping("/review")
    public ReviewRoundResponse review(@AuthenticationPrincipal AuthUser user,
                                      @RequestParam(required = false) List<Long> ids,
                                      @RequestParam(required = false) List<Long> exclude) {
        return reviewService.getRound(user.id(), ids, exclude);
    }

    @PostMapping("/review/{wordId}/answer")
    public AnswerResponse answer(@AuthenticationPrincipal AuthUser user, @PathVariable Long wordId,
                                 @Valid @RequestBody AnswerRequest request) {
        return reviewService.answer(user.id(), wordId, request);
    }
}
