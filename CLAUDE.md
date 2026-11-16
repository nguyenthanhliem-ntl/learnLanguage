# CLAUDE.md

Hướng dẫn cho Claude khi làm việc với dự án này. Đọc kỹ trước khi viết code.

## 1. Tổng quan dự án

Website học từ vựng tiếng Anh bằng flashcard cho người Việt mới bắt đầu.

- Mỗi người dùng đăng nhập bằng tài khoản riêng và tự xây kho từ vựng của mình
  (nhập tay từng từ hoặc import từ file Excel).
- Mỗi ngày học một số lượng từ mới (mặc định 20) và ôn lại từ đã học theo
  thuật toán lặp lại ngắt quãng SM-2.
- Ôn tập có 2 dạng: trắc nghiệm 4 đáp án và nghe – gõ.
- Giao diện tiếng Việt. Ưu tiên điện thoại nhưng phải đẹp trên desktop.

## 2. Công nghệ

| Phần | Công nghệ |
|---|---|
| Backend | Java 21, Spring Boot 3, Spring Security, Spring Data JPA, Maven |
| Frontend | Vue 3 (Composition API, `<script setup>`), Vite, Pinia, Vue Router, Axios, Tailwind CSS |
| Database | Oracle, migration bằng Flyway |
| Excel | Apache POI (.xlsx, .xls) |
| Xác thực | JWT + BCrypt |
| Phát âm | Web Speech API (`speechSynthesis`, `lang = 'en-US'`) |
| Biểu đồ | Chart.js qua vue-chartjs |
| API docs | springdoc-openapi (Swagger UI) |

## 3. Cấu trúc thư mục

```
/
├── CLAUDE.md
├── docker-compose.yml          # môi trường thật: db (Oracle Free) + backend + web (Nginx)
├── deploy/                     # DEPLOY.md (hướng dẫn Oracle Cloud), env.example, backup.sh
├── backend/
│   ├── Dockerfile
│   ├── pom.xml
│   └── src/main/
│       ├── java/com/vocab/
│       │   ├── config/         # Security, CORS, JWT, OpenAPI
│       │   ├── auth/           # đăng ký, đăng nhập
│       │   ├── word/           # kho từ: CRUD, import Excel
│       │   ├── library/        # kho từ vựng A1–C2, cấp độ đang học
│       │   ├── study/          # học từ mới, ôn tập, SM-2
│       │   ├── stats/          # thống kê, streak
│       │   ├── user/
│       │   └── common/         # exception handler, response chung, utils
│       └── resources/
│           ├── application.yml
│           ├── application-prod.yml   # profile prod: tắt Swagger, forward headers, CORS từ env
│           ├── db/migration/   # V1__init.sql, V2__...
│           └── templates/vocab-template.xlsx
└── frontend/
    ├── Dockerfile              # build Vite + Nginx (nginx.conf, proxy-headers.inc)
    ├── package.json
    ├── tailwind.config.js
    └── src/
        ├── api/                # axios instance + từng module API
        ├── stores/             # Pinia: auth, theme, practice, loading
        ├── router/
        ├── layouts/            # PublicLayout, AppLayout (header + menu người dùng)
        ├── components/
        │   ├── ui/             # Button, Card, Badge, Input, Modal, StatCard...
        │   ├── landing/        # các section của landing page
        │   ├── grammar/        # ExampleSentence, GrammarExercises
        │   ├── library/        # LevelLibrary (kho A1–C2 trên Tổng quan)
        │   └── study/          # Flashcard, QuestionPrompt, ChoiceQuestion, TypeQuestion, NextButton, AnswerFeedback
        ├── data/grammar/       # tenses.js (12 thì + cặp thì dễ nhầm), irregularVerbs.js (bảng động từ bất quy tắc) — file tĩnh
        ├── views/              # … grammar/GrammarView, GrammarTenseView, IrregularVerbsView
        ├── utils/              # spacing.js, answer.js (chuẩn hóa câu trả lời gõ tay)
        ├── composables/        # useSpeech, useKeyboardShortcuts...
        └── assets/
```

Mỗi package backend chia theo tính năng, bên trong có `controller`, `service`, `repository`, `dto`, `entity`.

## 4. Lệnh thường dùng

```bash
# Backend
cd backend && ./mvnw spring-boot:run       # chạy ở http://localhost:8080
cd backend && ./mvnw test

# Frontend
cd frontend && npm install
cd frontend && npm run dev                 # chạy ở http://localhost:5173
cd frontend && npm run build
cd frontend && npm run lint
```

Cấu hình DB và JWT secret lấy từ biến môi trường: `DB_URL`, `DB_USERNAME`, `DB_PASSWORD`, `JWT_SECRET`. Không commit thông tin thật.

```bash
# Môi trường thật (Docker Compose, xem deploy/DEPLOY.md)
cp deploy/env.example .env               # điền PUBLIC_URL, mật khẩu, JWT_SECRET
docker compose up -d --build             # Nginx mở cổng 80; db và backend không mở cổng ra ngoài
bash deploy/backup.sh                    # sao lưu schema bằng expdp vào deploy/backups/
```
- Nginx (`frontend/nginx.conf`) phục vụ SPA (`try_files ... /index.html`), chuyển `/api` sang `backend:8080`, giới hạn `/api/auth/` 10 lần/phút/IP (429), thêm header bảo mật. Backend chạy profile `prod` (`application-prod.yml`): Swagger tắt, `forward-headers-strategy: framework`, CORS lấy từ `APP_CORS_ALLOWED_ORIGINS` (= `PUBLIC_URL`).
- File `.sh`, Dockerfile, cấu hình Nginx giữ xuống dòng LF (`.gitattributes`).

## 5. Tính năng

### 5.1. Tài khoản
- Đăng ký, đăng nhập, đăng xuất bằng username + password. Đăng nhập / đăng ký thành công thì hiện thông báo khoảng 1,2 giây rồi mới chuyển trang.
- Backend luôn lấy `userId` từ JWT, **không bao giờ** nhận `userId` từ client.
- JWT lưu trong `sessionStorage` (`stores/tokenStorage.js`): **đóng tab / trình duyệt là đăng xuất**, tải lại trang vẫn giữ đăng nhập; mở tab mới phải đăng nhập lại. Token hết hạn sau 24 giờ.
- Trang **Tài khoản** (`/account`): thông tin tài khoản, đổi mật khẩu (nhập mật khẩu hiện tại + mật khẩu mới), số từ mới mỗi ngày (10 / 20 / 30 / 50).
- Giao diện **Sáng / Tối**, chọn trong menu người dùng, lưu trong trình duyệt (`localStorage`).

### 5.2. Thêm từ vào kho
**Nhập tay**: form 4 ô, **bắt buộc cả 4**: Từ mới, Loại từ (gõ tự do, có gợi ý noun/verb/adjective...), Phiên âm, Ngữ nghĩa.
- Có nút loa để nghe thử phát âm.
- Kiểm tra ngay khi gõ (debounce 300ms): hiện các nghĩa đã có của cùng từ đó; nếu giống hệt cả 4 cột thì báo "Từ này đã có trong kho" và không cho lưu.
- Bấm Lưu hoặc Enter: lưu xong thì xóa form và focus lại ô Từ mới. Danh sách từ vừa thêm hiện bên dưới form.

**Import Excel**: file có 4 cột theo thứ tự Từ mới | Loại từ | Phiên âm | Ngữ nghĩa, dòng 1 là tiêu đề.
- Bỏ qua dòng trống. Dòng thiếu bất kỳ cột nào thì báo lỗi kèm số dòng và tên cột thiếu.
- Nếu một dòng giống hệt cả 4 cột với dòng phía trên trong cùng file thì chỉ lấy dòng đầu tiên.
- Giới hạn 5MB và kiểm tra đúng định dạng file.
- Trả kết quả gồm số từ thêm mới, số từ trùng bị bỏ qua, và danh sách dòng lỗi (số dòng + lý do).
- Có nút tải file mẫu.

**Quy tắc chung**:
- Một mục từ là **trùng** khi giống cả 4 cột Từ mới, Loại từ, Phiên âm, Ngữ nghĩa (so sánh `lower(trim(...))`, gộp khoảng trắng thừa). Cùng một từ được phép có nhiều mục, vd "book (noun) – quyển sách" và "book (verb) – đặt chỗ".
- Cả hai cách thêm dùng chung `WordService` để kiểm tra trùng (`WordService.entryKey`).
- DB có unique index `UX_WORDS_USER_ENTRY` trên `(user_id, LOWER(TRIM(word)), LOWER(TRIM(part_of_speech)), LOWER(TRIM(phonetic)), LOWER(TRIM(meaning)))`.
- Từ thêm trước khi có cột Loại từ có thể để trống loại từ; khi sửa thì phải bổ sung.

**Quản lý kho**: danh sách có tìm kiếm, phân trang, sửa, xóa. Hiện trạng thái từng từ (Chưa học / Đang học / Đã thuộc). Khi sửa từ cũng phải kiểm tra trùng.

### 5.3. Luyện tập (gộp Ôn tập + Học từ mới, trang `/practice`)
Một menu **Luyện tập** là **một luồng liền mạch, người dùng không phải chọn**:

```
Ôn từ đã học ──(đúng ≥ 70%)──▶ Học từ mới tới hết mục tiêu hôm nay ──▶ Ôn lại từ đã học (lặp liên tục)
      ▲  └─(chưa đạt)─▶ lượt ôn khác                                                  │
      └───────────────────────────── ôn hết thì bắt đầu vòng mới ◀─────────────────────┘
```

**Ôn đầu phiên** (bắt buộc mỗi lần đăng nhập):
- Mỗi lần đăng nhập, vào Luyện tập sẽ ôn một lượt **20–30 từ đã học**. Trạng thái "đã qua phần ôn" lưu trong `sessionStorage` (`stores/practice.js`), reset khi đăng nhập / đăng xuất.
- Chỉ tính **lần chọn đầu tiên** của mỗi câu. Đúng **≥ 70%** (tính trên các câu đã trả lời, không tính câu bỏ qua; bỏ qua hết thì coi như đạt) thì **tự chuyển** sang học từ mới.
- Không hiện bộ đếm "Câu x/y · x/y đúng", thanh tiến độ hay dòng giới thiệu lượt ôn; chỉ hiện câu hỏi.
- Chưa đạt 70%: **tự bắt đầu** lượt khác gồm các **từ đã học khác** chưa ôn trong phiên (gửi `exclude`). Nếu còn dưới 10 từ khác thì **ôn lại các từ vừa sai** (gửi `ids`).
- User chưa học từ nào: bỏ qua phần ôn, vào thẳng học từ mới.
- Giữa các lượt không hiện thông báo hay màn hình tổng kết, chuyển thẳng sang phần tiếp theo.

**Học từ mới** (flashcard):
- Lấy **ngẫu nhiên** các từ CHƯA học (`ORDER BY DBMS_RANDOM.VALUE`) từ **nguồn đang chọn** (xem §5.6), **chỉ phần còn lại của mục tiêu hôm nay**. Mỗi lần Next lưu ngay vào DB, nên thoát ra vào lại sẽ học tiếp từ kế tiếp và số từ đã học hôm nay được giữ.
- Mặt trước thẻ: **chỉ có từ tiếng Anh** + nút loa (tự phát âm khi thẻ hiện ra). Bấm **biểu tượng xoay tròn** (hoặc Space) để lật thẻ 3D xem loại từ, phiên âm, ngữ nghĩa.
- Nút **Next** (bấm được ngay, không cần lật) đưa từ vào lịch ôn và sang từ tiếp theo. Lượt từ mới theo mục tiêu ngày học **liền các thẻ** tới hết mục tiêu rồi mới sang ôn (không xen ôn giữa các thẻ).
- Thanh tiến độ là số từ mới hôm nay / mục tiêu, ví dụ 7/20.

**Sau khi hết từ mới** (đủ mục tiêu hôm nay hoặc kho hết từ mới): **tự quay lại ôn các từ đã học**, không bắt người dùng chọn học thêm. Ôn liên tục từng lượt; đã ôn hết các từ trong vòng thì bắt đầu vòng mới (hiện lại các từ đã học).

**Từ thưởng**: trong phần ôn liên tục (sau lượt ôn đầu phiên), cứ **đúng 20 câu liên tiếp** (chỉ tính lần trả lời đầu; sai thì đếm lại từ 0, bỏ qua không tính) thì dừng lượt ôn sau câu hiện tại, học thêm **1 từ mới** (`GET /study/new?limit=1`, không tính mục tiêu, có dòng báo "Bạn đã đúng 20 câu liên tiếp...") rồi quay lại ôn. Chưa đủ 20 thì ôn tiếp.
- Tương tự, **bỏ qua 10 câu liên tiếp** (bấm "Tiếp tục →" khi chưa trả lời; trả lời bất kỳ câu nào, đúng hay sai, thì đếm lại từ 0) cũng được học thêm **1 từ mới**, dòng báo "Bạn đã bỏ qua 10 câu liên tiếp, học thêm 1 từ mới nhé!". Sau mỗi từ thưởng cả hai bộ đếm về 0. Quy tắc bỏ qua 10 câu **tính cả ở lượt ôn đầu phiên**: đủ 10 lần là dừng lượt ôn ngay, học từ thưởng, rồi quay lại ôn (lượt ôn đầu chưa đạt thì vẫn phải đạt 70% mới tới phần học từ mới theo mục tiêu). Quy tắc đúng 20 câu chỉ tính ở phần ôn liên tục. **Chỉ từ thưởng (từ mới đơn lẻ)** mới có quy tắc: học xong thì từ đó **nằm trong 10 câu ôn kế tiếp** (vị trí ngẫu nhiên; `utils/spacing.js` `placeWithin`, `NEW_WORD_WITHIN = 10`); lượt lấy về chưa có từ đó thì lấy thêm câu hỏi cho riêng nó (`ids`), lượt quá ngắn thì bù thêm từ đã học khác; câu bỏ qua được hỏi lại không chen lên trước từ thưởng chưa hỏi. Không áp dụng cho lượt từ mới theo mục tiêu ngày. Kho trống thì hiện trạng thái rỗng với nút Thêm từ / Import Excel. Người dùng thoát bằng nút "Kết thúc" hoặc menu.

### 5.4. Ôn tập (trong Luyện tập)
- Chọn từ theo SM-2: lấy tối đa 30 từ đến hạn (`next_review_date <= today`); nếu chưa đủ 20 thì bù bằng các từ chưa đến hạn, sai nhiều trước, lâu chưa ôn trước.
- Mỗi câu = **gợi ý** (`PromptType`) × **cách trả lời** (`AnswerMode`), backend chọn ngẫu nhiên 1 trong 5 dạng (`ReviewQuestionBuilder`):

  | Gợi ý | Chọn 1 trong 4 từ (`CHOICE`) | Gõ từ tiếng Anh (`TYPE`) |
  |---|---|---|
  | `LISTEN` – nghe phát âm | – | ✓ |
  | `MEANING` – nghĩa + loại từ | ✓ | ✓ |
  | `PHONETIC` – loại từ + phiên âm + nút loa, nghĩa bên dưới | ✓ | ✓ (chỉ khi từ có phiên âm) |

  - **Chọn**: 4 đáp án xếp lưới 2×2. 3 đáp án sai lấy ngẫu nhiên trong kho của user, khác mặt chữ với đáp án và với nhau. Kho không đủ 4 mặt chữ khác nhau thì chỉ dùng dạng gõ. Phím 1–4.
  - **Gõ**: hàng nút cố định "Gợi ý" (chữ cái đầu + số ký tự) · "Kiểm tra" · "Tiếp tục →". Dạng nghe dùng nút loa to trong card gợi ý để nghe lại (không có nút "Nghe lại" riêng). Nút "Kiểm tra" bấm được cả khi ô trống (tính là trả lời sai — chưa biết từ). Bấm Kiểm tra mà **gõ sai** thì **giữ nguyên chữ đã gõ** trong ô (viền đỏ); **để trống** thì **điền từ đúng vào ô nhập**. Cả hai trường hợp đều hiện đầy đủ đáp án ngay bên dưới (`AnswerFeedback`: loại từ, phiên âm, nghĩa, câu đã trả lời) kèm phát âm. So sánh: bỏ khoảng trắng 2 đầu (kể cả tab, NBSP), gộp khoảng trắng giữa, không phân biệt hoa/thường, bỏ ký tự ẩn zero-width/BOM, chuẩn hóa Unicode NFC.
  - Ghi `STUDY_LOG`: chọn = `QUIZ`, gõ = `LISTEN`.
- **Nút "Tiếp tục →"** (`NextButton`): cố định bên phải hàng nút dưới câu hỏi (dạng chọn: hàng riêng dưới 4 đáp án; dạng gõ: cùng hàng với Gợi ý / Kiểm tra). Chưa trả lời thì là **bỏ qua** (đã thuộc hoặc không muốn trả lời); đã trả lời thì sang câu tiếp. Không có nút "Tiếp tục" to nào khác. Bỏ qua: không gọi API, không tính đúng sai, không đổi lịch SM-2. Từ bỏ qua được hỏi lại một lần sau ít nhất 5 câu nữa nếu lượt còn đủ dài, không thì để lượt sau.
- **Không lặp gần**: các từ hiện ngẫu nhiên, nhưng một từ không xuất hiện lại trong vòng **5 câu**, tính cả giữa hai lượt liên tiếp (`utils/spacing.js`, `arrangeWithGap`). Kho quá ít từ thì làm tốt nhất có thể.
- **Trả lời đúng**: tô xanh ô đã chọn / ô nhập, phát âm lại từ và hiện đầy đủ thông tin của từ bên dưới (`AnswerFeedback`: loại từ, phiên âm, nghĩa), **sau 1,5 giây tự sang câu tiếp** (vẫn bấm Tiếp tục / Enter để đi ngay).
- **Trả lời sai**: dạng chọn chỉ tô đỏ ô đã chọn, **không lộ đáp án**; dạng gõ thì hiện đáp án như trên. Dạng chọn vẫn được **chọn lại** các ô còn lại (ô sai giữ màu đỏ); chọn trúng ở lần sau thì ô đó xanh và cũng tự sang câu tiếp sau 1,5 giây, nhưng điểm và SM-2 chỉ tính **lần chọn đầu tiên** (API answer chỉ gọi 1 lần) (không tô xanh đáp án đúng, không hiện khung đáp án, không phát âm), chờ người dùng bấm "Tiếp tục →" / Enter. Lưu kết quả lỗi cũng dừng lại.
- Cuối lượt ôn: tự chuyển tiếp theo §5.3, không hiện thông báo kết quả.
- Trạng thái hiển thị trong Kho từ: không có tiến độ hoặc `NEW` = Chưa học, `LEARNING`/`REVIEW` = Đang học, `MASTERED` = Đã thuộc.

**SM-2** (đặt trong `study/Sm2Calculator.java`, phải có unit test):
- Đúng: lần 1 thì `interval = 1`, lần 2 thì `interval = 3`, sau đó `interval = round(interval * easeFactor)`.
- Sai: `repetitions = 0`, `interval = 1`, `easeFactor = max(1.3, easeFactor - 0.2)`.
- Ease factor bắt đầu ở 2.5. Từ có `interval >= 21` thì chuyển trạng thái `MASTERED`.
- `interval` tối đa `MAX_INTERVAL = 3650` ngày (cột `INTERVAL_DAYS` là `NUMBER(5)`).
- **Chỉ từ đã đến hạn** (`next_review_date <= today`) mới được cập nhật SM-2 khi trả lời đúng. **Ôn sớm mà đúng** (từ chưa đến hạn, vd hỏi lại trong phần ôn liên tục) chỉ ghi `STUDY_LOG` + `correct_count`, **không** đổi lịch (`UserWordProgress.recordEarlyCorrect`); nếu không, ôn nhiều lần trong ngày sẽ nhân khoảng cách lên hàng trăm năm. Trả lời **sai** thì luôn áp dụng SM-2 (đặt lại về 1 ngày).

### 5.5. Dashboard (trang chủ sau khi đăng nhập)
- Trang chỉ gồm 2 phần: card "Hôm nay" (nhãn "Hôm nay", lời chào, bên dưới là Tần suất học theo tháng) và Kho từ vựng A1–C2 (§5.6). Không có thẻ số liệu, không có nút nhanh, không có câu tóm tắt hôm nay.
- **Streak** (chưa hiển thị trên giao diện; `GET /stats/dashboard` vẫn trả về) (`stats/service/StreakCalculator.java`, có unit test): số ngày liên tiếp có ít nhất 1 hoạt động trong `STUDY_LOG`, tính tới hôm nay; hôm nay chưa học thì vẫn giữ streak tới hôm qua.
- **Tần suất học theo tháng** (`components/ui/MonthlyHeatmap.vue`, `GET /stats/monthly?month=yyyy-MM`), nằm **trong** card "Hôm nay", dưới lời chào (`variant="hero"`: không khung riêng, ô màu trắng nhạt → đậm trên nền gradient; `variant="card"` là bản thẻ trắng với màu `primary-600`): các ngày trong tháng xếp **1 hàng ngang**, mỗi ngày là một ô nhỏ (không chữ) với số ngày ghi phía trên; màn hẹp thì cuộn ngang trong khung và tự cuộn tới hôm nay. Màu một sắc nhạt → đậm theo **số câu đã ôn trong ngày** (từ cũ lẫn từ mới; mức 0 / 1–199 / 200–499 / 500–799 / 800–999 / ≥1000, mỗi ô chú thích có tooltip khoảng số), có chú thích Ít–Nhiều; hover ô xem chi tiết (title). Dòng tóm tắt chỉ có số từ mới đã học trong tháng. Mặc định tháng hiện tại; xem được 12 tháng gần nhất bằng nút ‹ › hoặc ô chọn tháng (ngoài khoảng đó backend trả lỗi). Hôm nay có viền, ngày chưa tới viền nét đứt. Không có bảng số liệu, không có dòng chi tiết ngày.

### 5.6. Kho từ vựng A1–C2 (trên trang Tổng quan)
- Bảng `VOCAB_LIBRARY` dùng chung (cấp độ, từ, loại từ, phiên âm, nghĩa), ~5.800 từ soạn theo Oxford 3000/5000 + C2, nạp bằng Flyway `V4__vocab_library_data.sql`. Một từ (cùng loại từ) chỉ nằm ở cấp thấp nhất.
- Trang Tổng quan có section **Kho từ vựng** chia 2 phần: **trên** là thẻ "Kho từ vựng của tôi" cùng kích thước và kiểu với một thẻ cấp độ (icon, tên, số đã học / tổng, thanh tiến độ; toàn bộ từ trong kho: tự thêm + đã học từ các cấp độ; mô tả đầy đủ ở tooltip); **dưới** (ngăn bằng đường kẻ) là "Cấp độ A1–C2": 6 thẻ (lưới 3 cột, 2 cột trên mobile) gồm mã cấp, tên, số đã học / tổng, thanh tiến độ — **không** có nhãn "Đang học" hay dòng "Học tiếp/Học ngay"; cấp đang làm nguồn từ mới chỉ có viền nhẹ. Bấm thẻ cấp độ = đổi nguồn từ mới sang cấp đó; bấm "Kho từ vựng của tôi" = nguồn từ mới là từ tự thêm (`USERS.STUDY_LEVEL` null). Cả hai đều vào Luyện tập ngay; đổi cấp bất cứ lúc nào, tiến độ từng cấp giữ nguyên.
- **Luyện tập luôn ôn tất cả từ đã học** (tự thêm + từ các cấp độ). Nguồn từ mới hết hoặc trống (vd chưa tự thêm từ nào) thì vào thẳng phần ôn; chỉ khi không có từ nào để ôn mới hiện trạng thái kho trống.
- Học theo cấp độ: khi cần từ mới, backend chép ngẫu nhiên các từ của cấp đó (chưa có trong kho, theo `LIBRARY_ID` hoặc trùng cả 4 cột) sang `WORDS` kèm `LIBRARY_ID`, rồi học như từ thường. Nên phần ôn tập, Kho từ, thống kê dùng chung dữ liệu. "Kho của tôi" chỉ lấy từ user tự thêm (`LIBRARY_ID` null).
- Tiến độ một cấp = số từ có `LIBRARY_ID` thuộc cấp đó và đã học (trạng thái khác `NEW`).

### 5.7. Ngữ pháp – 12 thì (menu "Ngữ pháp", `/grammar`)
- Nội dung là **file tĩnh** `src/data/grammar/tenses.js` (không dùng DB, không lưu tiến độ). Tự soạn bằng tiếng Việt, đối chiếu British Council LearnEnglish / Cambridge Grammar; không chép nguyên văn nguồn nào.
- `/grammar`: bảng 12 thì chia 3 mốc (Hiện tại / Quá khứ / Tương lai) × 4 dạng (Đơn / Tiếp diễn / Hoàn thành / Hoàn thành tiếp diễn), mỗi thẻ có cấp độ (A1–C1), tên Việt + Anh, công thức khẳng định; bên dưới là **"Các thì dễ nhầm"** (6 cặp, accordion).
- `/grammar/:slug` (route `grammarTense`, `meta.nav = grammar` để menu vẫn sáng): khối tiêu đề gradient `hero` → **Công thức** (khẳng định / phủ định / nghi vấn, kèm dạng với to be nếu có, mỗi dạng 1 ví dụ) → **Cách dùng** (đánh số, ví dụ Anh + Việt) → **Dấu hiệu nhận biết** (chip) → **Trường hợp đặc biệt & lưu ý** → **So sánh với thì khác** (nếu có) → **Bài tập** ở cuối trang (`src/data/grammar/tenseExercises.js`, `GrammarExercises`): 3 cấp chọn bằng tab **Dễ (8) · Trung bình (8) · Khó (6)** = 22 câu/thì, 264 câu cho 12 thì. Dễ: chia động từ thể khẳng định, dấu hiệu rõ; Trung bình: phủ định, nghi vấn, trạng từ, for/since, bất quy tắc; Khó: phân biệt với thì dễ nhầm, động từ trạng thái, đọc ngữ cảnh. 2 dạng câu: **điền** (ô nhập nằm trong câu, Kiểm tra / Enter) và **chọn 1 trong 4** (chỉ tính lần chọn đầu, phương án đã chọn hiện vào chỗ trống, luôn tô xanh đáp án đúng). Đúng thì xanh + giải thích, sai thì đỏ + đáp án + giải thích. Mỗi tab hiện số câu đã làm; mỗi cấp có điểm, dòng "Hoàn thành cấp này!" và nút Làm lại riêng; đổi tab vẫn giữ kết quả. Chỉ chấm trên trình duyệt, không lưu → link thì trước / tiếp theo. Slug sai thì hiện trạng thái rỗng.
- Mọi câu ví dụ có nút loa (`ExampleSentence` + `SpeakButton`). Chấm bài dùng `utils/answer.js` (`matchesAnswer`, chung với câu gõ ở phần ôn): bỏ ký tự ẩn, chuẩn hóa NFC, nháy cong → nháy thẳng (doesn’t = doesn't), gộp khoảng trắng, không phân biệt hoa/thường; mỗi câu có thể có nhiều đáp án chấp nhận (vd dạng rút gọn và đầy đủ).

### 5.8. Bảng động từ bất quy tắc (menu "Bất quy tắc", `/irregular-verbs`)
- File tĩnh `src/data/grammar/irregularVerbs.js`: ~160 động từ, mỗi dòng V1 · V2 · V3 · nghĩa, đánh dấu ★ **thông dụng** (~60). Dạng có "/" là 2 cách đều đúng (learnt/learned, got/gotten). Nhóm quy luật tính tự động từ dạng đầu: **AAA** (cut–cut–cut), **ABB** (V2 = V3), **ABA** (V1 = V3), **ABC** (3 dạng khác nhau).
- Trang có: ô **tìm kiếm** (theo bất kỳ dạng nào hoặc nghĩa, dùng `normalizeAnswer`), **bộ lọc** Tất cả / ★ Thông dụng / A–A–A / A–B–B / A–B–A / A–B–C (kèm mô tả + ví dụ nhóm), số động từ đang hiện, chế độ **Tự kiểm tra** (che V2, V3; bấm ô "Xem" để mở từng ô; đổi bộ lọc hoặc tắt/bật thì che lại), mỗi dòng có **nút loa đọc cả 3 dạng**, mục **Lưu ý** (was/were, read đọc khác, -t/-ed Anh–Anh/Anh–Mỹ, lie–lay–lain vs lie–lied, hang–hanged, V2 vs V3 dùng khi nào). Desktop là bảng, mobile là danh sách thẻ "go – went – gone". Không gọi API, không lưu tiến độ.

## 6. Database

```
USERS               id, username (unique), password_hash, daily_goal, created_at
WORDS               id, user_id, word, part_of_speech, phonetic, meaning, created_at, updated_at
USER_WORD_PROGRESS  id, user_id, word_id, status (NEW/LEARNING/REVIEW/MASTERED),
                    ease_factor, interval_days, repetitions, next_review_date,
                    last_reviewed_at, correct_count, wrong_count
STUDY_LOG           id, user_id, word_id, activity_type (LEARN/QUIZ/LISTEN),
                    is_correct, created_at
VOCAB_LIBRARY       id, level_code (A1..C2), word, part_of_speech, phonetic, meaning
```
- `USERS.STUDY_LEVEL` (A1..C2, null = kho tự thêm), `WORDS.LIBRARY_ID` (FK tới VOCAB_LIBRARY, null = tự thêm) — thêm ở V3.

- Dùng `GENERATED BY DEFAULT AS IDENTITY`. Tên bảng và cột viết HOA, snake_case.
- Tạo index cho `user_id`, `(user_id, next_review_date)`, `(user_id, status)`.
- Mọi thay đổi schema phải qua file Flyway mới. Không sửa file migration đã chạy.

## 7. API (tiền tố `/api`)

```
POST   /auth/register | /auth/login
GET    /users/me                    PUT /users/me/settings      PUT /users/me/password {currentPassword, newPassword}
GET    /words?q=&page=&size=        POST /words      PUT /words/{id}   DELETE /words/{id}
GET    /words/check?word=&partOfSpeech=&phonetic=&meaning=&excludeId=   # kiểm tra trùng khi nhập tay
POST   /words/import                # multipart file
GET    /words/import/template       # tải file mẫu
GET    /study/new?limit=            POST /study/new/{wordId}/remember
GET    /study/review?exclude=1,2&ids=3,4   # 1 lượt ôn 20–30 câu {questions: [{word, prompt: LISTEN|MEANING|PHONETIC, answer: CHOICE|TYPE, options}]}
POST   /study/review/{wordId}/answer  {answer: CHOICE|TYPE, correct}
GET    /stats/dashboard             GET  /stats/activity?days=7      GET /stats/monthly?month=2026-10
GET    /library/levels              # {currentLevel, myBank (toàn bộ kho), levels A1–C2}
PUT    /library/level {level}       # A1..C2 hoặc null = kho tự thêm
```

## 8. Thiết kế giao diện

Lấy cảm hứng từ phong cách landing page SaaS hiện đại: nền sáng, màu chủ đạo xanh dương, card bo tròn lớn, khoảng trắng rộng, có mockup dashboard ngay trong hero. Chỉ học phong cách, không sao chép logo, tên thương hiệu hay nội dung của bất kỳ template nào.

### 8.1. Design tokens (khai báo trong `tailwind.config.js`)

Giá trị màu đặt trong biến CSS `--c-<token>` ở `src/assets/main.css`: `:root` là giao diện Sáng (bảng dưới), `.dark` trên `<html>` là giao diện Tối **theo kiểu Facebook**: nền `canvas #18191A`, card `surface #242526`, viền `#3E4042`, chữ sáng `ink-900 #E4E6EB` / `ink-500 #B0B3B8`, nút `primary-600 #2D88FF`, nền badge `primary-50 #263951`, màu số liệu và success/danger dịu hơn. Component chỉ dùng tên token, không cần class `dark:`.
- Khối gradient nổi bật (card "Hôm nay", mặt sau flashcard) dùng token `hero-start` / `hero-end` (`from-hero-start to-hero-end`): xanh `#2563EB → #1D4ED8` ở giao diện Sáng, xanh tối `#263951 → #1E2836` ở giao diện Tối. Chữ trên khối này dùng `text-white` / `text-white/80`. Không dùng `bg-white` đặc, dùng `bg-surface`.

| Token | Giá trị | Dùng cho |
|---|---|---|
| `primary-600` | `#2563EB` | Nút chính, link, chữ nhấn trong tiêu đề |
| `primary-700` | `#1D4ED8` | Hover, nền section nổi bật |
| `primary-50` | `#EFF6FF` | Nền badge, icon box |
| `ink-900` | `#0F172A` | Tiêu đề |
| `ink-500` | `#64748B` | Mô tả, chữ phụ |
| `surface` | `#FFFFFF` | Card |
| `canvas` | `#F8FAFC` | Nền trang, xen kẽ giữa các section |
| `border` | `#E2E8F0` | Viền card, input |
| `success` | `#10B981` | Trả lời đúng |
| `danger` | `#EF4444` | Trả lời sai |
| Màu thẻ số liệu | `#14B8A6`, `#8B5CF6`, `#EC4899`, `#2563EB` | Teal, tím, hồng, xanh |

- Font: **Inter** (hỗ trợ tiếng Việt). Riêng phiên âm IPA dùng `font-mono` hoặc font có đủ ký tự IPA.
- Bo góc: card `rounded-2xl` (16px), section lớn và mockup `rounded-3xl` (24px), nút và badge `rounded-full`.
- Đổ bóng nhẹ: `shadow-sm` mặc định, `shadow-xl shadow-primary-600/10` cho mockup ở hero.
- Gradient nhấn: `bg-gradient-to-br from-primary-600 to-primary-700`, cộng một lớp blur xanh mờ phía sau mockup.
- Khoảng cách section: `py-20 md:py-28`. Container `max-w-6xl mx-auto px-4`.

### 8.2. Các mẫu thành phần lặp lại
- **Section label**: badge nhỏ dạng pill (`bg-primary-50 text-primary-600 text-xs font-medium`) đặt trên tiêu đề section.
- **Tiêu đề section**: căn giữa, `text-3xl md:text-4xl font-bold`, có thể tô `text-primary-600` cho 1–2 từ khóa. Đoạn mô tả bên dưới `text-ink-500 max-w-xl mx-auto`.
- **Feature card**: nền trắng, viền mảnh, ảnh minh họa hoặc mock UI nhỏ ở trên, tiêu đề và mô tả ngắn ở dưới.
- **Khối giới thiệu 2 cột**: chữ một bên, mock UI một bên, đổi bên xen kẽ giữa các khối. Có danh sách gạch đầu dòng với icon check xanh.
- **Stat card màu**: nền đặc theo 4 màu số liệu, chữ trắng, số lớn `text-4xl font-bold` và mô tả nhỏ.
- **FAQ**: accordion, mỗi mục là một card có icon `+` hoặc `−` bên phải.
- **CTA banner**: card lớn nền nhạt, tiêu đề lớn bên trái, ảnh chụp app bên phải, có nút chính.

### 8.3. Landing page (`/`, chưa đăng nhập)
Thứ tự các section:
1. **Navbar**: logo bên trái, menu (Tính năng, Cách học, Hỏi đáp), nút "Đăng nhập" (viền) và "Bắt đầu miễn phí" (primary).
2. **Hero**: badge "Học từ vựng thông minh". Tiêu đề lớn căn giữa, ví dụ "Nhớ 20 từ tiếng Anh mỗi ngày với **Flashcard**". Bên dưới là 2 nút và một mockup dashboard thật của app đặt trên nền gradient xanh.
3. **Vấn đề**: "Học trước quên sau?", kèm các chip nỗi đau của người học (học xong quên, không biết phát âm, không có lộ trình...).
4. **Giải pháp**: 3 feature card gồm Flashcard có phát âm, Ôn tập thông minh SM-2, Theo dõi tiến độ.
5. **Các khối 2 cột xen kẽ**: Thêm từ nhanh (form 4 ô + import Excel), Luyện tập (ôn trước rồi học mới, 5 dạng câu hỏi, có 2 câu mẫu thử được: chọn đáp án và gõ từ), Dashboard và streak.
6. **Demo**: section nền gradient `hero` (xanh ở giao diện Sáng, xanh tối ở giao diện Tối), tiêu đề trắng, ảnh mockup dashboard lớn.
7. **Số liệu**: 4 stat card màu (20 từ/ngày, 5 dạng câu hỏi ôn tập, SM-2, 100% miễn phí). Chỉ dùng số liệu thật, không bịa số người dùng.
8. **FAQ**: 4–6 câu hỏi (file Excel cần định dạng gì, có phát âm không, SM-2 là gì...).
9. **CTA banner**: "Bắt đầu xây kho từ vựng của bạn", có nút Đăng ký.
10. **Footer**: logo, mô tả ngắn, các cột link, copyright.

Không làm section bảng giá và không dùng testimonial giả. Nếu cần section nhận xét thì để placeholder và ghi chú TODO.

**Triển khai**: `views/LandingView.vue` ghép các section trong `components/landing/` (mỗi section một file, `DashboardMockup` dùng chung cho Hero và Demo). Toàn bộ chữ nằm ở `locales/landing.js` (gộp vào `vi.js` dưới khóa `landing`). Hiệu ứng hiện dần khi cuộn dùng directive `v-reveal` (tắt khi người dùng bật giảm chuyển động). Route `/` có `guestOnly`: đã đăng nhập thì vào thẳng Tổng quan. File `index.html` ở thư mục gốc chỉ là bản thiết kế tĩnh ban đầu, không dùng trong app.

### 8.4. Giao diện trong app (sau đăng nhập, `AppLayout`)
- **Desktop**: không có sidebar. **Header** dính trên cùng: logo bên trái, menu ở giữa có 4 mục: **Tổng quan · Từ vựng ▾ · Ngữ pháp · Bất quy tắc** (icon + chữ từ `lg`; màn `md` chỉ hiện icon có tooltip để không tràn header; mục đang chọn có `bg-primary-50 text-primary-600`). **Từ vựng** là menu xổ xuống gồm Luyện tập, Kho từ, Thêm từ; mục "Từ vựng" sáng khi đang ở một trong 3 trang đó (`route.meta.nav` cho trang con, vd chi tiết ngữ pháp). Menu đóng khi bấm ra ngoài, nhấn Esc hoặc chuyển trang, **menu người dùng** bên phải (avatar + tên).
- **Menu người dùng** (`UserMenu.vue`, bấm avatar để mở): Tài khoản, Giao diện Sáng/Tối, Đăng xuất.
- **Mobile**: header chỉ còn logo + avatar; menu chính chuyển thành bottom navigation 4 mục (Tổng quan · Từ vựng · Ngữ pháp · Bất quy tắc); bấm "Từ vựng" bật danh sách 3 mục phía trên thanh menu.
- **Dashboard**: card "Hôm nay" (lời chào + lịch nhiệt theo tháng 1 hàng, màu trắng trên gradient), rồi Kho từ vựng A1–C2.
- **Luyện tập**: tiêu đề kèm nhãn chế độ hiện tại ("Ôn từ đã học" / "Học từ mới") và nút "Kết thúc"; không có thông báo giữa các lượt; thanh tiến độ chỉ có ở phần học từ mới (x/mục tiêu hôm nay), phần ôn không có bộ đếm.
- **Flashcard**: thẻ rộng bằng thanh tiến độ (cùng nút Next), `rounded-3xl`, hiệu ứng lật 3D (`transform-style: preserve-3d`, 0.5s). Mặt trước chỉ có từ `text-4xl font-bold`, nút loa, và nút xoay tròn `primary-600` để lật. Mặt sau nền gradient `hero`: loại từ, phiên âm + nút loa nhỏ (`SpeakButton variant="hero"`, trắng mờ) ngay cạnh phiên âm, ngữ nghĩa; chừa khoảng trống dưới cho nút xoay. Bên dưới thẻ là nút Next.
- **Câu ôn** (`components/study/`): `QuestionPrompt` (card gợi ý: nút loa lớn / nghĩa + loại từ / "(loại từ) phiên âm `font-mono`" + nút loa, nghĩa ở dòng dưới), `ChoiceQuestion` (4 lựa chọn lưới 2×2 có số 1–4 ở đầu; chọn đúng thì ô đó `success`, chọn sai thì chỉ ô đó `danger`), `TypeQuestion` (input to căn giữa; hàng nút Gợi ý · Kiểm tra bên trái; gõ sai giữ nguyên chữ đã gõ, để trống thì điền từ đúng vào input), `NextButton` ("Tiếp tục →" bên phải hàng nút), `AnswerFeedback` (hiện dưới câu hỏi khi trả lời đúng, hoặc khi câu gõ trả lời sai).

### 8.5. Quy tắc chung về UI
- Responsive cho 3 mức `sm`, `md`, `lg`. Không để cuộn ngang ở màn 360px.
- Phím tắt: `Space` lật thẻ, `Enter` / `→` từ tiếp theo, `1–4` chọn đáp án, `Enter` gửi, lưu hoặc tiếp tục (`useKeyboardShortcuts`, tự bỏ qua khi đang gõ trong ô nhập hoặc có popup).
- Mọi nút bấm có trạng thái hover, focus (`ring-2 ring-primary-600/40`), disabled và loading.
- Mọi request API tự bật **loading bar** mỏng trên đầu trang (`TopLoadingBar`); request chạy ngầm (vd kiểm tra trùng khi gõ) gửi kèm `{ silent: true }`. Trang tải nhiều dữ liệu có thêm skeleton.
- Trạng thái rỗng (kho trống, hết từ cần ôn) phải có minh họa, câu hướng dẫn và nút hành động.
- Toàn bộ text trên giao diện viết bằng tiếng Việt, gom vào một chỗ để dễ sửa.

## 9. Quy ước code

**Backend**
- Theo luồng controller → service → repository. Controller chỉ nhận và trả DTO (dùng Java `record`), không trả entity.
- Validate bằng Bean Validation. Xử lý lỗi tập trung ở `@RestControllerAdvice`, trả thông báo lỗi tiếng Việt theo dạng `{ code, message, details }`.
- Mọi query đều lọc theo `userId` của user đang đăng nhập.
- Đặt `@Transactional` ở tầng service. Import Excel chạy trong 1 transaction và insert theo batch.
- Viết test cho `Sm2Calculator`, `WordService` (kiểm tra trùng), `ExcelImportService`, `ReviewQuestionBuilder` (đáp án nhiễu của trắc nghiệm) và `StreakCalculator`.

**Frontend**
- Chỉ dùng `<script setup>` và Composition API. Component đặt tên PascalCase.
- Gọi API qua `src/api/`, không gọi axios trực tiếp trong component.
- Axios interceptor tự gắn JWT; khi nhận 401 thì xóa token và chuyển về `/login`.
- Route guard cho các trang cần đăng nhập.
- Phát âm gom vào composable `useSpeech()`, xử lý cả trường hợp trình duyệt không hỗ trợ. Nút loa (`SpeakButton`, loa lớn của câu nghe) dùng `speakTap()`: với mỗi từ, lần bấm 1, 3, 5… đọc tốc độ thường (0.9), lần 2, 4, 6… đọc chậm (`SLOW_RATE` 0.5); bộ đếm dùng chung mọi nút loa theo từ (không phân biệt hoa/thường). Phát tự động (thẻ hiện ra, trả lời đúng) dùng `speak()`, không tính vào lần bấm.
- Chỉ dùng class Tailwind và design token, không hard-code mã màu trong component.

## 10. Cách làm việc với Claude

- Làm theo thứ tự: khởi tạo project → auth/JWT → thêm từ và kho từ → luyện tập (ôn trắc nghiệm + nghe – gõ, học từ mới) → dashboard → landing page. Đã xong toàn bộ lộ trình.
- Mỗi bước: giải thích ngắn, viết code đầy đủ, kèm hướng dẫn chạy thử.
- Trước khi sửa schema DB, thêm thư viện mới hoặc đổi cấu trúc thư mục thì hỏi trước.
- Nếu yêu cầu chưa rõ thì hỏi lại, không tự đoán.
- Không commit secret, không tắt Spring Security để "chạy cho nhanh".
