package com.vocab.word.controller;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.vocab.common.PageResponse;
import com.vocab.config.AuthUser;
import com.vocab.word.dto.ImportResult;
import com.vocab.word.dto.WordCheckResponse;
import com.vocab.word.dto.WordRequest;
import com.vocab.word.dto.WordResponse;
import com.vocab.word.service.ExcelImportService;
import com.vocab.word.service.WordService;

import jakarta.validation.Valid;

@RestController
@RequestMapping("/api/words")
public class WordController {

    private static final MediaType XLSX =
            MediaType.parseMediaType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");

    private final WordService wordService;
    private final ExcelImportService excelImportService;

    public WordController(WordService wordService, ExcelImportService excelImportService) {
        this.wordService = wordService;
        this.excelImportService = excelImportService;
    }

    @GetMapping
    public PageResponse<WordResponse> list(@AuthenticationPrincipal AuthUser user,
                                           @RequestParam(required = false) String q,
                                           @RequestParam(defaultValue = "0") int page,
                                           @RequestParam(defaultValue = "20") int size) {
        return wordService.list(user.id(), q, page, size);
    }

    @GetMapping("/check")
    public WordCheckResponse check(@AuthenticationPrincipal AuthUser user,
                                   @RequestParam String word,
                                   @RequestParam(required = false) String partOfSpeech,
                                   @RequestParam(required = false) String phonetic,
                                   @RequestParam(required = false) String meaning,
                                   @RequestParam(required = false) Long excludeId) {
        return wordService.check(user.id(), word, partOfSpeech, phonetic, meaning, excludeId);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public WordResponse create(@AuthenticationPrincipal AuthUser user, @Valid @RequestBody WordRequest request) {
        return wordService.create(user.id(), request);
    }

    @PutMapping("/{id}")
    public WordResponse update(@AuthenticationPrincipal AuthUser user, @PathVariable Long id,
                               @Valid @RequestBody WordRequest request) {
        return wordService.update(user.id(), id, request);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@AuthenticationPrincipal AuthUser user, @PathVariable Long id) {
        wordService.delete(user.id(), id);
    }

    @PostMapping(path = "/import", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    public ImportResult importExcel(@AuthenticationPrincipal AuthUser user, @RequestPart("file") MultipartFile file) {
        return excelImportService.importFile(user.id(), file);
    }

    @GetMapping("/import/template")
    public ResponseEntity<Resource> template() {
        Resource file = new ClassPathResource("templates/vocab-template.xlsx");
        return ResponseEntity.ok()
                .contentType(XLSX)
                .header(HttpHeaders.CONTENT_DISPOSITION,
                        ContentDisposition.attachment().filename("vocab-template.xlsx").build().toString())
                .body(file);
    }
}
