package com.vocab.word.service;

import java.io.IOException;
import java.io.InputStream;
import java.io.UncheckedIOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.vocab.common.ApiException;
import com.vocab.word.dto.ImportResult;
import com.vocab.word.dto.ImportResult.RowError;
import com.vocab.word.dto.NewWord;

/**
 * Import từ vựng từ file Excel: A = Từ mới, B = Loại từ, C = Phiên âm, D = Ngữ nghĩa (bắt buộc cả 4),
 * dòng 1 là tiêu đề. Chạy trong 1 transaction; kiểm tra trùng (giống cả 4 cột) qua {@link WordService},
 * insert theo batch.
 */
@Service
public class ExcelImportService {

    public static final long MAX_FILE_SIZE = 5L * 1024 * 1024;
    public static final int MAX_ROWS = 5000;
    private static final int MAX_DUPLICATE_WORDS_SHOWN = 50;
    private static final Set<String> ALLOWED_EXTENSIONS = Set.of("xlsx", "xls");

    private static final int COL_WORD = 0;
    private static final int COL_PART_OF_SPEECH = 1;
    private static final int COL_PHONETIC = 2;
    private static final int COL_MEANING = 3;

    private final WordService wordService;

    public ExcelImportService(WordService wordService) {
        this.wordService = wordService;
    }

    @Transactional
    public ImportResult importFile(Long userId, MultipartFile file) {
        validateFile(file);
        try (Workbook workbook = open(file)) {
            return importWorkbook(userId, workbook);
        } catch (IOException e) {
            // Lỗi khi đóng workbook, dữ liệu đã xử lý xong
            throw new UncheckedIOException(e);
        }
    }

    private static Workbook open(MultipartFile file) {
        try (InputStream in = file.getInputStream()) {
            return WorkbookFactory.create(in);
        } catch (Exception e) {
            // File đổi đuôi, file hỏng, file có mật khẩu...
            throw ApiException.badRequest("INVALID_FILE", "Không đọc được file. Vui lòng dùng file Excel (.xlsx, .xls) hợp lệ");
        }
    }

    /** Xử lý workbook đã mở. Tách riêng để test không cần MultipartFile. */
    @Transactional
    public ImportResult importWorkbook(Long userId, Workbook workbook) {
        if (workbook.getNumberOfSheets() == 0) {
            throw ApiException.badRequest("EMPTY_FILE", "File không có dữ liệu");
        }
        Sheet sheet = workbook.getSheetAt(0);
        if (sheet.getLastRowNum() > MAX_ROWS) {
            throw ApiException.badRequest("TOO_MANY_ROWS", "File có quá nhiều dòng (tối đa " + MAX_ROWS + " từ mỗi lần import)");
        }

        DataFormatter formatter = new DataFormatter();
        FormulaEvaluator evaluator = workbook.getCreationHelper().createFormulaEvaluator();

        Set<String> existing = wordService.existingEntryKeys(userId);
        Set<String> seenInFile = new HashSet<>();
        List<NewWord> toInsert = new ArrayList<>();
        List<String> duplicateWords = new ArrayList<>();
        List<RowError> errors = new ArrayList<>();
        int duplicates = 0;

        // Dòng 0 là tiêu đề; số dòng báo lỗi tính theo Excel (bắt đầu từ 1)
        for (int r = 1; r <= sheet.getLastRowNum(); r++) {
            Row row = sheet.getRow(r);
            int excelRow = r + 1;
            NewWord w = new NewWord(
                    WordService.clean(read(row, COL_WORD, formatter, evaluator)),
                    WordService.clean(read(row, COL_PART_OF_SPEECH, formatter, evaluator)),
                    WordService.clean(read(row, COL_PHONETIC, formatter, evaluator)),
                    WordService.clean(read(row, COL_MEANING, formatter, evaluator)));

            if (w.word().isEmpty() && w.partOfSpeech().isEmpty() && w.phonetic().isEmpty() && w.meaning().isEmpty()) {
                continue; // dòng trống
            }
            String error = validate(w);
            if (error != null) {
                errors.add(new RowError(excelRow, error));
                continue;
            }
            String key = WordService.entryKey(w);
            // Giống cả 4 cột: lặp trong file thì chỉ lấy dòng đầu tiên, có sẵn trong kho thì bỏ qua
            if (!seenInFile.add(key) || existing.contains(key)) {
                duplicates++;
                if (duplicateWords.size() < MAX_DUPLICATE_WORDS_SHOWN) {
                    duplicateWords.add(w.word() + " (" + w.partOfSpeech() + ")");
                }
                continue;
            }
            toInsert.add(w);
        }

        wordService.insertBatch(userId, toInsert);
        return new ImportResult(toInsert.size(), duplicates, duplicateWords, errors);
    }

    /** Bắt buộc đủ 4 cột và không quá độ dài cho phép. Trả về lý do lỗi hoặc null nếu hợp lệ. */
    private static String validate(NewWord w) {
        List<String> missing = new ArrayList<>();
        if (w.word().isEmpty()) {
            missing.add("Từ mới");
        }
        if (w.partOfSpeech().isEmpty()) {
            missing.add("Loại từ");
        }
        if (w.phonetic().isEmpty()) {
            missing.add("Phiên âm");
        }
        if (w.meaning().isEmpty()) {
            missing.add("Ngữ nghĩa");
        }
        if (!missing.isEmpty()) {
            String prefix = w.word().isEmpty() ? "" : "\"" + w.word() + "\": ";
            return prefix + "Thiếu " + String.join(", ", missing);
        }
        if (w.word().length() > 100) {
            return "Từ mới dài quá 100 ký tự";
        }
        if (w.partOfSpeech().length() > 50) {
            return "Loại từ dài quá 50 ký tự";
        }
        if (w.phonetic().length() > 100) {
            return "Phiên âm dài quá 100 ký tự";
        }
        if (w.meaning().length() > 1000) {
            return "Ngữ nghĩa dài quá 1000 ký tự";
        }
        return null;
    }

    private static String read(Row row, int col, DataFormatter formatter, FormulaEvaluator evaluator) {
        if (row == null || row.getCell(col) == null) {
            return null;
        }
        return formatter.formatCellValue(row.getCell(col), evaluator);
    }

    private static void validateFile(MultipartFile file) {
        if (file == null || file.isEmpty()) {
            throw ApiException.badRequest("EMPTY_FILE", "Vui lòng chọn file Excel");
        }
        if (file.getSize() > MAX_FILE_SIZE) {
            throw ApiException.badRequest("FILE_TOO_LARGE", "File vượt quá dung lượng cho phép (5MB)");
        }
        String name = file.getOriginalFilename() == null ? "" : file.getOriginalFilename().toLowerCase(Locale.ROOT);
        String ext = name.contains(".") ? name.substring(name.lastIndexOf('.') + 1) : "";
        if (!ALLOWED_EXTENSIONS.contains(ext)) {
            throw ApiException.badRequest("INVALID_FILE_TYPE", "Chỉ hỗ trợ file Excel (.xlsx, .xls)");
        }
    }
}
