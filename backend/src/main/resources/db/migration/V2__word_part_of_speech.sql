-- V2: thêm Loại từ; một từ chỉ bị coi là trùng khi giống cả 4 cột
-- (Từ mới, Loại từ, Phiên âm, Ngữ nghĩa), không phân biệt hoa/thường.
-- Cho phép cùng một từ có nhiều nghĩa, vd "book (noun) - quyển sách" và "book (verb) - đặt chỗ".

-- Để NULL được vì các từ cũ chưa có loại từ; app bắt buộc nhập với từ mới và khi sửa
ALTER TABLE WORDS ADD (PART_OF_SPEECH VARCHAR2(50 CHAR));

DROP INDEX UX_WORDS_USER_WORD;

CREATE UNIQUE INDEX UX_WORDS_USER_ENTRY ON WORDS (
    USER_ID,
    LOWER(TRIM(WORD)),
    LOWER(TRIM(PART_OF_SPEECH)),
    LOWER(TRIM(PHONETIC)),
    LOWER(TRIM(MEANING))
);

-- Tra cứu các nghĩa đã có của cùng một từ (gợi ý khi nhập tay)
CREATE INDEX IX_WORDS_USER_WORD ON WORDS (USER_ID, LOWER(TRIM(WORD)));
