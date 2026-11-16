package com.vocab.stats.controller;

import java.time.YearMonth;
import java.util.List;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.vocab.config.AuthUser;
import com.vocab.stats.dto.ActivityDay;
import com.vocab.stats.dto.DashboardResponse;
import com.vocab.stats.service.StatsService;

@RestController
@RequestMapping("/api/stats")
public class StatsController {

    private final StatsService statsService;

    public StatsController(StatsService statsService) {
        this.statsService = statsService;
    }

    @GetMapping("/dashboard")
    public DashboardResponse dashboard(@AuthenticationPrincipal AuthUser user) {
        return statsService.dashboard(user.id());
    }

    /** {@code days}: 7 hoặc 30. */
    @GetMapping("/activity")
    public List<ActivityDay> activity(@AuthenticationPrincipal AuthUser user,
                                      @RequestParam(defaultValue = "7") int days) {
        return statsService.activity(user.id(), days);
    }

    /** {@code month}: yyyy-MM trong 12 tháng gần nhất, bỏ trống = tháng hiện tại. */
    @GetMapping("/monthly")
    public List<ActivityDay> monthly(@AuthenticationPrincipal AuthUser user,
                                     @RequestParam(required = false) YearMonth month) {
        return statsService.monthly(user.id(), month);
    }
}
