package com.vocab.word.dto;

import com.vocab.study.entity.ProgressStatus;
import com.vocab.word.entity.Word;

/** Kết quả query danh sách: từ kèm trạng thái tiến độ (null nếu chưa học). Chỉ dùng nội bộ. */
public record WordRow(Word word, ProgressStatus status) {
}
