package com.vocab.word;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Set;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.mock.web.MockMultipartFile;

import com.vocab.common.ApiException;
import com.vocab.word.dto.ImportResult;
import com.vocab.word.dto.ImportResult.RowError;
import com.vocab.word.dto.NewWord;
import com.vocab.word.service.ExcelImportService;
import com.vocab.word.service.WordService;

@ExtendWith(MockitoExtension.class)
class ExcelImportServiceTest {

    private static final Long USER = 7L;

    @Mock
    private WordService wordService;

    private ExcelImportService service;

    @BeforeEach
    void setUp() {
        service = new ExcelImportService(wordService);
    }

    /** Tạo workbook với dòng tiêu đề + các dòng dữ liệu (null = ô trống, mảng null = dòng không tồn tại). */
    private static Workbook workbook(String[]... rows) {
        Workbook wb = new XSSFWorkbook();
        Sheet sheet = wb.createSheet();
        Row header = sheet.createRow(0);
        header.createCell(0).setCellValue("Từ mới");
        header.createCell(1).setCellValue("Loại từ");
        header.createCell(2).setCellValue("Phiên âm");
        header.createCell(3).setCellValue("Ngữ nghĩa");
        for (int i = 0; i < rows.length; i++) {
            if (rows[i] == null) {
                continue;
            }
            Row row = sheet.createRow(i + 1);
            for (int c = 0; c < rows[i].length; c++) {
                if (rows[i][c] != null) {
                    row.createCell(c).setCellValue(rows[i][c]);
                }
            }
        }
        return wb;
    }

    @SuppressWarnings("unchecked")
    private List<NewWord> capturedInsert() {
        ArgumentCaptor<List<NewWord>> captor = ArgumentCaptor.forClass(List.class);
        verify(wordService).insertBatch(eq(USER), captor.capture());
        return captor.getValue();
    }

    @Test
    void import_appliesAllRules() {
        when(wordService.existingEntryKeys(USER))
                .thenReturn(Set.of(WordService.entryKey("banana", "noun", "/bəˈnɑː.nə/", "chuối")));

        ImportResult result = service.importWorkbook(USER, workbook(
                new String[] {" Book ", "noun", "/bʊk/", "quyển sách"},       // 2: hợp lệ
                new String[] {null, null, null, null},                        // 3: trống -> bỏ qua
                null,                                                         // 4: không tồn tại -> bỏ qua
                new String[] {null, "noun", "/x/", "thiếu từ"},               // 5: lỗi thiếu từ mới
                new String[] {"cat", null, "", "con mèo"},                    // 6: lỗi thiếu loại từ + phiên âm
                new String[] {"BOOK", "Noun", "/bʊk/", "Quyển  sách"},        // 7: giống dòng 2 cả 4 cột -> trùng
                new String[] {"book", "verb", "/bʊk/", "đặt chỗ"},            // 8: cùng từ, khác loại -> hợp lệ
                new String[] {"Banana", "NOUN", "/bəˈnɑː.nə/", "chuối"},      // 9: đã có trong kho -> trùng
                new String[] {"dog", "noun", "/dɒɡ/", null}));                // 10: lỗi thiếu ngữ nghĩa

        assertThat(result.added()).isEqualTo(2);
        assertThat(result.duplicates()).isEqualTo(2);
        assertThat(result.duplicateWords()).containsExactly("BOOK (Noun)", "Banana (NOUN)");
        assertThat(result.errors()).extracting(RowError::row).containsExactly(5, 6, 10);
        assertThat(result.errors().get(1).reason()).isEqualTo("\"cat\": Thiếu Loại từ, Phiên âm");

        assertThat(capturedInsert()).containsExactly(
                new NewWord("Book", "noun", "/bʊk/", "quyển sách"),
                new NewWord("book", "verb", "/bʊk/", "đặt chỗ"));
    }

    @Test
    void import_onlyHeader_addsNothing() {
        when(wordService.existingEntryKeys(USER)).thenReturn(Set.of());

        ImportResult result = service.importWorkbook(USER, workbook());

        assertThat(result.added()).isZero();
        assertThat(result.errors()).isEmpty();
        assertThat(capturedInsert()).isEmpty();
    }

    @Test
    void importFile_validXlsx_isParsed() throws IOException {
        when(wordService.existingEntryKeys(USER)).thenReturn(Set.of());
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        try (Workbook wb = workbook(new String[] {"hello", "interjection", "/həˈloʊ/", "xin chào"})) {
            wb.write(out);
        }

        ImportResult result = service.importFile(USER,
                new MockMultipartFile("file", "words.xlsx", null, out.toByteArray()));

        assertThat(result.added()).isEqualTo(1);
    }

    @Test
    void importFile_wrongExtension_isRejected() {
        var file = new MockMultipartFile("file", "words.csv", "text/csv", "a,b,c".getBytes());

        assertThatThrownBy(() -> service.importFile(USER, file))
                .isInstanceOf(ApiException.class)
                .extracting("code").isEqualTo("INVALID_FILE_TYPE");
    }

    @Test
    void importFile_fakeExcel_isRejected() {
        var file = new MockMultipartFile("file", "words.xlsx", null, "không phải excel".getBytes());

        assertThatThrownBy(() -> service.importFile(USER, file))
                .isInstanceOf(ApiException.class)
                .extracting("code").isEqualTo("INVALID_FILE");
        verify(wordService, never()).insertBatch(any(), any());
    }

    @Test
    void importFile_tooLarge_isRejected() {
        var file = new MockMultipartFile("file", "words.xlsx", null, new byte[(int) ExcelImportService.MAX_FILE_SIZE + 1]);

        assertThatThrownBy(() -> service.importFile(USER, file))
                .isInstanceOf(ApiException.class)
                .extracting("code").isEqualTo("FILE_TOO_LARGE");
    }
}
