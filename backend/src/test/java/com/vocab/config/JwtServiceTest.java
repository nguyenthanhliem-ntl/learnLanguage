package com.vocab.config;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;

import java.time.ZoneId;
import java.util.List;

import org.junit.jupiter.api.Test;

class JwtServiceTest {

    private static final String SECRET = "test-secret-test-secret-test-secret-1234";

    private static JwtService service(String secret, long minutes) {
        return new JwtService(new AppProperties(new AppProperties.Jwt(secret, minutes),
                new AppProperties.Cors(List.of()), ZoneId.of("Asia/Ho_Chi_Minh")));
    }

    @Test
    void generateThenParse_returnsSameUser() {
        JwtService jwt = service(SECRET, 60);

        String token = jwt.generate(42L, "minh");

        assertThat(jwt.parse(token)).contains(new AuthUser(42L, "minh"));
    }

    @Test
    void parse_tokenSignedWithOtherSecret_isRejected() {
        String token = service("another-secret-another-secret-another-12", 60).generate(1L, "a");

        assertThat(service(SECRET, 60).parse(token)).isEmpty();
    }

    @Test
    void parse_expiredToken_isRejected() {
        JwtService jwt = service(SECRET, -1);

        assertThat(jwt.parse(jwt.generate(1L, "a"))).isEmpty();
    }

    @Test
    void parse_garbage_isRejected() {
        assertThat(service(SECRET, 60).parse("not-a-jwt")).isEmpty();
    }

    @Test
    void shortSecret_failsFast() {
        assertThatThrownBy(() -> service("too-short", 60)).isInstanceOf(IllegalStateException.class);
    }
}
