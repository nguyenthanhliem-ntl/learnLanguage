package com.vocab.common;

import java.time.LocalDate;
import java.time.LocalDateTime;

import org.springframework.stereotype.Component;

import com.vocab.config.AppProperties;

/** Current time in the app's time zone (Asia/Ho_Chi_Minh), used for "today", SM-2 and streaks. */
@Component
public class AppClock {

    private final AppProperties props;

    public AppClock(AppProperties props) {
        this.props = props;
    }

    public LocalDate today() {
        return LocalDate.now(props.zone());
    }

    public LocalDateTime now() {
        return LocalDateTime.now(props.zone());
    }
}
