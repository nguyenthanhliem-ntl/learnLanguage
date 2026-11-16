package com.vocab.common;

import java.time.LocalDate;
import java.time.LocalDateTime;

import org.springframework.stereotype.Component;

import com.vocab.config.AppProperties;

/** Thời gian hiện tại theo múi giờ của app (Asia/Ho_Chi_Minh), dùng cho "hôm nay", SM-2, streak. */
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
