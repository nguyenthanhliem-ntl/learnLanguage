package com.vocab.word.dto;

import java.util.List;

/**
 * Kết quả kiểm tra khi nhập tay.
 *
 * @param exists   true nếu đã có từ giống hệt cả 4 cột (không cho lưu)
 * @param sameWord các nghĩa đã có của cùng từ này trong kho (để người dùng tham khảo)
 */
public record WordCheckResponse(boolean exists, List<WordResponse> sameWord) {
}
