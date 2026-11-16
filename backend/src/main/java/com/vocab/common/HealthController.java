package com.vocab.common;

import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/** Endpoint đơn giản để frontend / người dùng kiểm tra backend đã chạy. */
@RestController
public class HealthController {

    @GetMapping("/api/health")
    Map<String, String> health() {
        return Map.of("status", "UP");
    }
}
