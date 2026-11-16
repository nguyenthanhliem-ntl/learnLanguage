// Korean grammar, TOPIK 1–2 (beginner). Written for this app; examples are Korean + Vietnamese.
// Each pattern: formation rules, uses with examples, notes and choice exercises in 3 levels.

const ex = (ko, vi) => ({ ko, vi })
const c = (q, options, answer, explain) => ({ type: 'choice', q, options, answer, explain })

export default [
  // ─────────────────────────── TOPIK 1 ───────────────────────────
  {
    slug: 'ieyo-yeyo',
    level: 'TOPIK1',
    pattern: 'N + 이에요/예요',
    name: 'Là … (câu giới thiệu)',
    summary: 'Gắn sau danh từ để nói "(Đây) là …", dùng khi giới thiệu tên, nghề nghiệp, quốc tịch, đồ vật.',
    formation: [
      { when: 'Danh từ có patchim', form: 'N + 이에요', example: ex('학생이에요.', 'Là học sinh.') },
      { when: 'Danh từ không có patchim', form: 'N + 예요', example: ex('의사예요.', 'Là bác sĩ.') },
      { when: 'Phủ định', form: 'N + 이/가 아니에요', example: ex('학생이 아니에요.', 'Không phải là học sinh.') },
    ],
    uses: [
      { text: 'Giới thiệu bản thân: tên, quốc tịch, nghề nghiệp.', examples: [ex('저는 베트남 사람이에요.', 'Tôi là người Việt Nam.'), ex('제 이름은 민수예요.', 'Tên tôi là Minsu.')] },
      { text: 'Nói đồ vật là gì; hỏi bằng cách lên giọng cuối câu.', examples: [ex('이것은 책이에요.', 'Cái này là quyển sách.'), ex('그것은 뭐예요?', 'Cái đó là gì vậy?')] },
    ],
    notes: [
      'Văn phong trang trọng (phát biểu, tin tức): N + 입니다, câu hỏi N + 입니까?',
      'Phủ định dùng 아니에요 với trợ từ 이/가: 학생이 아니에요, 의사가 아니에요.',
      '뭐 (gì) + 예요 → 뭐예요?',
    ],
    exercises: {
      easy: [
        c('저는 학생___.', ['이에요', '예요'], '이에요', '학생 có patchim (ㅇ) nên dùng 이에요.'),
        c('저는 의사___.', ['이에요', '예요'], '예요', '의사 kết thúc bằng nguyên âm nên dùng 예요.'),
        c('이것은 사과___.', ['이에요', '예요'], '예요', '사과 không có patchim.'),
      ],
      medium: [
        c('저는 가수가 ___.', ['아니에요', '이에요', '예요'], '아니에요', 'Phủ định của danh từ: N이/가 아니에요.'),
        c('이분은 선생님___?', ['이에요', '예요', '아니에요'], '이에요', '선생님 có patchim (ㅁ).'),
        c('그것은 뭐___?', ['이에요', '예요'], '예요', '뭐 không có patchim → 뭐예요?'),
      ],
      hard: [
        c('A: 학생이에요? B: 아니요, 학생___ 아니에요. 회사원이에요.', ['이', '가', '은'], '이', 'N이/가 아니에요; 학생 có patchim nên dùng 이.'),
        c('저는 한국 사람이 아니에요. 베트남 사람___.', ['이에요', '예요', '입니까'], '이에요', '사람 có patchim, câu trần thuật.'),
        c('(Phát biểu trang trọng) 저는 김민수___.', ['입니다', '이에요', '예요'], '입니다', 'Văn phong trang trọng dùng 입니다.'),
      ],
    },
  },
  {
    slug: 'eun-neun',
    level: 'TOPIK1',
    pattern: 'N + 은/는',
    name: 'Trợ từ chủ đề',
    summary: 'Đánh dấu chủ đề của câu ("còn … thì", "về … thì"), hay dùng khi giới thiệu và khi so sánh, đối chiếu.',
    formation: [
      { when: 'Danh từ có patchim', form: 'N + 은', example: ex('선생님은 한국 사람이에요.', 'Thầy giáo là người Hàn.') },
      { when: 'Danh từ không có patchim', form: 'N + 는', example: ex('저는 학생이에요.', 'Tôi là học sinh.') },
    ],
    uses: [
      { text: 'Nêu chủ đề của câu, nhất là khi tự giới thiệu.', examples: [ex('저는 마이예요.', 'Tôi là Mai.'), ex('오늘은 월요일이에요.', 'Hôm nay là thứ Hai.')] },
      { text: 'So sánh, đối chiếu hai đối tượng.', examples: [ex('사과는 좋아해요. 그런데 배는 안 좋아해요.', 'Táo thì tôi thích, nhưng lê thì không.')] },
    ],
    notes: [
      '저 + 는 có thể rút gọn thành 전 trong văn nói; 나 + 는 → 난.',
      'Khi hỏi "ai / cái gì" làm chủ ngữ thì dùng 이/가, không dùng 은/는: 누가 왔어요?',
    ],
    exercises: {
      easy: [
        c('저___ 학생이에요.', ['은', '는'], '는', '저 không có patchim → 는.'),
        c('동생___ 대학생이에요.', ['은', '는'], '은', '동생 có patchim → 은.'),
        c('오늘___ 금요일이에요.', ['은', '는'], '은', '오늘 có patchim ㄹ → 은.'),
      ],
      medium: [
        c('형은 키가 커요. 저___ 키가 작아요.', ['는', '가', '를'], '는', 'Đối chiếu hai người → 은/는.'),
        c('이 가방___ 비싸요.', ['은', '는'], '은', '가방 có patchim ㅇ.'),
        c('커피___ 좋아해요. 그런데 차는 안 좋아해요.', ['는', '가', '를'], '는', 'Đối chiếu cà phê với trà.'),
      ],
      hard: [
        c('A: 누___ 왔어요? B: 민수가 왔어요.', ['가', '는', '를'], '가', 'Từ để hỏi làm chủ ngữ dùng 이/가: 누가.'),
        c('(Văn nói) ___ 학생이에요.', ['전', '저가', '절'], '전', '저는 rút gọn thành 전.'),
        c('제 친구___ 베트남 사람이에요.', ['는', '은', '를'], '는', '친구 không có patchim → 는.'),
      ],
    },
  },
  {
    slug: 'i-ga',
    level: 'TOPIK1',
    pattern: 'N + 이/가',
    name: 'Trợ từ chủ ngữ',
    summary: 'Đánh dấu chủ ngữ, nhất là thông tin mới, chủ ngữ của 있다/없다 và của tính từ.',
    formation: [
      { when: 'Danh từ có patchim', form: 'N + 이', example: ex('책이 있어요.', 'Có sách.') },
      { when: 'Danh từ không có patchim', form: 'N + 가', example: ex('친구가 와요.', 'Bạn đến.') },
    ],
    uses: [
      { text: 'Chủ ngữ của 있다 / 없다 (có / không có).', examples: [ex('시간이 없어요.', 'Không có thời gian.'), ex('동생이 있어요.', 'Tôi có em.')] },
      { text: 'Chủ ngữ của tính từ, trạng thái.', examples: [ex('날씨가 좋아요.', 'Thời tiết đẹp.'), ex('머리가 아파요.', 'Đau đầu.')] },
      { text: 'Thông tin mới hoặc câu trả lời cho "ai / cái gì".', examples: [ex('누가 왔어요? — 선생님이 왔어요.', 'Ai đến vậy? — Thầy giáo đến.')] },
    ],
    notes: [
      '나, 저, 너, 누구 + 가 biến thành 내가, 제가, 네가, 누가.',
      'Dùng với 아니에요 và 되다: 의사가 아니에요, 의사가 되고 싶어요.',
    ],
    exercises: {
      easy: [
        c('시간___ 없어요.', ['이', '가'], '이', '시간 có patchim → 이.'),
        c('날씨___ 좋아요.', ['이', '가'], '가', '날씨 không có patchim → 가.'),
        c('돈___ 있어요?', ['이', '가'], '이', '돈 có patchim.'),
      ],
      medium: [
        c('___ 할게요. (tôi sẽ làm)', ['제가', '저가', '저는가'], '제가', '저 + 가 → 제가.'),
        c('배___ 고파요.', ['가', '를', '는'], '가', 'Chủ ngữ của trạng thái 고프다.'),
        c('A: 이게 뭐예요? B: 그건 제 핸드폰___ 아니에요.', ['이', '가', '을'], '이', '핸드폰 có patchim → 이 아니에요.'),
      ],
      hard: [
        c('A: 누가 노래했어요? B: 민수___ 노래했어요.', ['가', '는', '를'], '가', 'Trả lời thông tin mới cho câu hỏi "ai" → 이/가.'),
        c('저는 커서 의사___ 되고 싶어요.', ['가', '를', '는'], '가', '되다 đi với 이/가.'),
        c('교실에 학생들___ 많아요.', ['이', '가', '을'], '이', '학생들 có patchim ㄹ → 이.'),
      ],
    },
  },
  {
    slug: 'eul-reul',
    level: 'TOPIK1',
    pattern: 'N + 을/를',
    name: 'Trợ từ tân ngữ',
    summary: 'Đánh dấu tân ngữ (đối tượng chịu tác động) của động từ: ăn cơm, xem phim, học tiếng Hàn.',
    formation: [
      { when: 'Danh từ có patchim', form: 'N + 을', example: ex('밥을 먹어요.', 'Ăn cơm.') },
      { when: 'Danh từ không có patchim', form: 'N + 를', example: ex('커피를 마셔요.', 'Uống cà phê.') },
    ],
    uses: [
      { text: 'Đối tượng của hành động.', examples: [ex('한국어를 공부해요.', 'Học tiếng Hàn.'), ex('영화를 봐요.', 'Xem phim.')] },
      { text: 'Dùng với 좋아하다 / 싫어하다 (thích / ghét).', examples: [ex('저는 음악을 좋아해요.', 'Tôi thích âm nhạc.')] },
    ],
    notes: [
      'Văn nói hay lược bỏ 을/를: 밥 먹었어요?',
      'Phân biệt: 좋아하다 (động từ) + 을/를, còn 좋다 (tính từ) + 이/가: 음악이 좋아요.',
    ],
    exercises: {
      easy: [
        c('빵___ 먹어요.', ['을', '를'], '을', '빵 có patchim ㅇ → 을.'),
        c('우유___ 마셔요.', ['을', '를'], '를', '우유 không có patchim → 를.'),
        c('책___ 읽어요.', ['을', '를'], '을', '책 có patchim.'),
      ],
      medium: [
        c('저는 축구___ 좋아해요.', ['를', '가', '는'], '를', '좋아하다 đi với 을/를.'),
        c('저는 축구___ 좋아요.', ['가', '를', '을'], '가', '좋다 là tính từ → 이/가.'),
        c('친구___ 만나요.', ['를', '가', '에'], '를', '만나다 + 을/를.'),
      ],
      hard: [
        c('어제 무엇___ 했어요?', ['을', '를', '이'], '을', '무엇 có patchim ㅅ → 을.'),
        c('주말에 영화___ 보고 싶어요.', ['를', '을', '가'], '를', '영화 không có patchim.'),
        c('한국 음식___ 만들 수 있어요?', ['을', '를', '이'], '을', '음식 có patchim ㄱ.'),
      ],
    },
  },
  {
    slug: 'ayo-eoyo',
    level: 'TOPIK1',
    pattern: 'V/A + 아요/어요',
    name: 'Đuôi câu lịch sự (hiện tại)',
    summary: 'Đuôi câu lịch sự thân thiện dùng hằng ngày, cho hiện tại và thói quen. Cùng một dạng cho câu kể, hỏi, rủ.',
    formation: [
      { when: 'Gốc có nguyên âm cuối ㅏ, ㅗ', form: '+ 아요', example: ex('가다 → 가요, 좋다 → 좋아요', 'đi, tốt') },
      { when: 'Nguyên âm cuối khác', form: '+ 어요', example: ex('먹다 → 먹어요, 마시다 → 마셔요', 'ăn, uống') },
      { when: 'Động từ 하다', form: '하다 → 해요', example: ex('공부하다 → 공부해요', 'học') },
    ],
    uses: [
      { text: 'Hành động hiện tại, thói quen.', examples: [ex('저는 매일 운동해요.', 'Tôi tập thể dục mỗi ngày.'), ex('지금 밥을 먹어요.', 'Bây giờ tôi đang ăn cơm.')] },
      { text: 'Hỏi (lên giọng) và rủ rê với cùng một dạng.', examples: [ex('어디 가요?', 'Bạn đi đâu vậy?'), ex('같이 가요!', 'Cùng đi nào!')] },
    ],
    notes: [
      'Rút gọn nguyên âm: 가+아요 → 가요, 오+아요 → 와요, 배우+어요 → 배워요, 마시+어요 → 마셔요.',
      'Bất quy tắc ㅂ: 덥다 → 더워요, 춥다 → 추워요. Bất quy tắc ㄷ: 듣다 → 들어요. Bất quy tắc 으: 바쁘다 → 바빠요.',
      'Trang trọng hơn: -(스)ㅂ니다 (갑니다, 먹습니다).',
    ],
    exercises: {
      easy: [
        c('저는 학교에 (가다) ___.', ['가요', '가어요', '갑요'], '가요', '가 + 아요 → 가요.'),
        c('밥을 (먹다) ___.', ['먹어요', '먹아요', '먹요'], '먹어요', 'Nguyên âm ㅓ → 어요.'),
        c('한국어를 (공부하다) ___.', ['공부해요', '공부하요', '공부하어요'], '공부해요', '하다 → 해요.'),
      ],
      medium: [
        c('커피를 (마시다) ___.', ['마셔요', '마시어요', '마사요'], '마셔요', '마시 + 어요 → 마셔요.'),
        c('오늘 날씨가 (춥다) ___.', ['추워요', '춥어요', '추와요'], '추워요', 'Bất quy tắc ㅂ: 춥다 → 추워요.'),
        c('친구가 집에 (오다) ___.', ['와요', '오아요', '오요'], '와요', '오 + 아요 → 와요.'),
      ],
      hard: [
        c('음악을 (듣다) ___.', ['들어요', '듣어요', '드러요'], '들어요', 'Bất quy tắc ㄷ: 듣다 → 들어요.'),
        c('요즘 너무 (바쁘다) ___.', ['바빠요', '바쁘어요', '바뻐요'], '바빠요', 'Bất quy tắc 으: bỏ ㅡ, nguyên âm trước là ㅏ → 바빠요.'),
        c('저는 한국어를 (배우다) ___.', ['배워요', '배우요', '배와요'], '배워요', '배우 + 어요 → 배워요.'),
      ],
    },
  },
  {
    slug: 'asseoyo-eosseoyo',
    level: 'TOPIK1',
    pattern: 'V/A + 았어요/었어요',
    name: 'Thì quá khứ',
    summary: 'Diễn tả việc đã xảy ra hoặc trạng thái trong quá khứ.',
    formation: [
      { when: 'Nguyên âm cuối ㅏ, ㅗ', form: '+ 았어요', example: ex('가다 → 갔어요, 보다 → 봤어요', 'đã đi, đã xem') },
      { when: 'Nguyên âm cuối khác', form: '+ 었어요', example: ex('먹다 → 먹었어요, 마시다 → 마셨어요', 'đã ăn, đã uống') },
      { when: '하다', form: '하다 → 했어요', example: ex('일하다 → 일했어요', 'đã làm việc') },
      { when: 'Danh từ', form: 'N + 이었어요/였어요', example: ex('학생이었어요, 의사였어요', 'đã từng là học sinh / bác sĩ') },
    ],
    uses: [
      { text: 'Hành động đã xảy ra.', examples: [ex('어제 친구를 만났어요.', 'Hôm qua tôi đã gặp bạn.'), ex('아침을 먹었어요?', 'Bạn ăn sáng chưa?')] },
      { text: 'Trạng thái trong quá khứ.', examples: [ex('어제는 날씨가 추웠어요.', 'Hôm qua trời lạnh.')] },
    ],
    notes: [
      'Bất quy tắc giống thì hiện tại: 덥다 → 더웠어요, 듣다 → 들었어요, 바쁘다 → 바빴어요.',
      'Câu hỏi "đã … chưa?" dùng luôn -았/었어요?: 숙제했어요?',
    ],
    exercises: {
      easy: [
        c('어제 영화를 (보다) ___.', ['봤어요', '보었어요', '봐요'], '봤어요', '보 + 았어요 → 봤어요.'),
        c('점심을 (먹다) ___.', ['먹었어요', '먹았어요', '먹어요'], '먹었어요', 'ㅓ → 었어요.'),
        c('주말에 (청소하다) ___.', ['청소했어요', '청소하았어요', '청소해요'], '청소했어요', '하다 → 했어요.'),
      ],
      medium: [
        c('작년에 저는 학생___.', ['이었어요', '였어요', '이에요'], '이었어요', 'Danh từ có patchim + 이었어요.'),
        c('어제는 날씨가 (덥다) ___.', ['더웠어요', '덥었어요', '더왔어요'], '더웠어요', 'Bất quy tắc ㅂ.'),
        c('친구한테 편지를 (쓰다) ___.', ['썼어요', '쓰었어요', '싸요'], '썼어요', 'Bất quy tắc 으: 쓰다 → 썼어요.'),
      ],
      hard: [
        c('지난주에 한국에 (오다) ___.', ['왔어요', '오았어요', '와요'], '왔어요', '오 + 았어요 → 왔어요.'),
        c('어제 음악을 (듣다) ___.', ['들었어요', '듣었어요', '들어요'], '들었어요', 'Bất quy tắc ㄷ + quá khứ.'),
        c('A: 숙제 다 했어요? B: 아니요, 아직 ___.', ['안 했어요', '안 해요', '했어요'], '안 했어요', 'Chưa làm (việc trong quá khứ) → 안 했어요.'),
      ],
    },
  },
  {
    slug: 'an-ji-anta',
    level: 'TOPIK1',
    pattern: '안 + V/A, V/A + 지 않다',
    name: 'Câu phủ định "không"',
    summary: 'Hai cách nói "không" (không làm, không phải thế): đặt 안 trước động/tính từ, hoặc thêm -지 않다 vào sau.',
    formation: [
      { when: 'Dạng ngắn', form: '안 + V/A', example: ex('안 먹어요.', 'Không ăn.') },
      { when: 'Dạng dài', form: 'V/A + 지 않아요', example: ex('먹지 않아요.', 'Không ăn.') },
      { when: 'N + 하다', form: 'N + 안 하다', example: ex('공부 안 해요.', 'Không học.') },
    ],
    uses: [
      { text: 'Phủ định hành động hoặc trạng thái.', examples: [ex('오늘은 학교에 안 가요.', 'Hôm nay tôi không đi học.'), ex('별로 맵지 않아요.', 'Không cay lắm.')] },
    ],
    notes: [
      'Với động từ dạng N + 하다, 안 đứng trước 하다: 운동 안 해요 (không nói 안 운동해요).',
      '있다 → 없다, 알다 → 모르다: dùng từ trái nghĩa thay vì 안.',
      '못 / -지 못하다 nghĩa là "không thể" (do khả năng), khác với 안 (không muốn / không làm).',
    ],
    exercises: {
      easy: [
        c('저는 고기를 ___ 먹어요.', ['안', '않', '못해'], '안', '안 + động từ.'),
        c('커피를 마시___.', ['지 않아요', '안 아요', '지 안아요'], '지 않아요', 'Dạng dài: -지 않아요.'),
        c('오늘은 ___ 바빠요.', ['안', '지 않아', '않'], '안', 'Phủ định tính từ dạng ngắn.'),
      ],
      medium: [
        c('주말에 운동 ___ 해요.', ['안', '안 운동', '않'], '안', 'N + 안 하다.'),
        c('저는 그 사람을 ___.', ['몰라요', '안 알아요', '알지 않아요'], '몰라요', '알다 → phủ định bằng 모르다.'),
        c('돈이 ___.', ['없어요', '안 있어요', '있지 않아요'], '없어요', '있다 → 없다.'),
      ],
      hard: [
        c('다리를 다쳐서 걸을 수 없어요. 그래서 학교에 ___ 가요.', ['못', '안', '않'], '못', 'Không thể (do hoàn cảnh) → 못.'),
        c('이 음식은 별로 맵___.', ['지 않아요', '안 아요', '지 못해요'], '지 않아요', 'Tính từ: -지 않다.'),
        c('어제 숙제를 ___ 했어요. 하기 싫었어요.', ['안', '못', '않'], '안', 'Không muốn làm (ý chí) → 안.'),
      ],
    },
  },
  {
    slug: 'e-eseo',
    level: 'TOPIK1',
    pattern: 'N + 에 / N + 에서',
    name: 'Trợ từ nơi chốn và thời gian',
    summary: '에: nơi đến, nơi tồn tại, thời điểm. 에서: nơi hành động diễn ra, điểm xuất phát.',
    formation: [
      { when: 'Nơi đến / nơi có', form: 'N + 에 가다/오다/있다', example: ex('학교에 가요.', 'Đi đến trường.') },
      { when: 'Thời điểm', form: 'thời gian + 에', example: ex('세 시에 만나요.', 'Gặp lúc 3 giờ.') },
      { when: 'Nơi làm việc gì đó', form: 'N + 에서 + hành động', example: ex('도서관에서 공부해요.', 'Học ở thư viện.') },
    ],
    uses: [
      { text: '에 với 가다, 오다, 있다, 없다 và thời gian.', examples: [ex('집에 있어요.', 'Đang ở nhà.'), ex('주말에 뭐 해요?', 'Cuối tuần bạn làm gì?')] },
      { text: '에서 với nơi diễn ra hành động, hoặc "từ" (xuất phát).', examples: [ex('식당에서 밥을 먹어요.', 'Ăn cơm ở nhà hàng.'), ex('베트남에서 왔어요.', 'Tôi đến từ Việt Nam.')] },
    ],
    notes: [
      'Không dùng 에 với 오늘, 어제, 내일, 지금: 내일 만나요 (không nói 내일에).',
      'Mẹo: có động từ hành động (ăn, học, làm việc) → 에서; chỉ có/không có, đi/đến → 에.',
    ],
    exercises: {
      easy: [
        c('저는 지금 집___ 있어요.', ['에', '에서'], '에', '있다 → 에.'),
        c('도서관___ 책을 읽어요.', ['에', '에서'], '에서', 'Nơi diễn ra hành động → 에서.'),
        c('일곱 시___ 일어나요.', ['에', '에서'], '에', 'Thời điểm → 에.'),
      ],
      medium: [
        c('회사___ 일해요.', ['에서', '에', '을'], '에서', '일하다 là hành động.'),
        c('내일___ 만나요.', ['(không dùng trợ từ)', '에', '에서'], '(không dùng trợ từ)', '내일, 오늘, 어제 không đi với 에.'),
        c('저는 하노이___ 왔어요.', ['에서', '에', '를'], '에서', 'Xuất phát "từ" → 에서.'),
      ],
      hard: [
        c('주말에 공원___ 산책했어요.', ['에서', '에', '이'], '에서', '산책하다 là hành động.'),
        c('방___ 침대가 있어요.', ['에', '에서', '을'], '에', 'Sự tồn tại → 에.'),
        c('시장___ 가서 과일을 샀어요.', ['에', '에서', '을'], '에', 'Đi đến chợ → 에 가다.'),
      ],
    },
  },
  {
    slug: 'go-sipda',
    level: 'TOPIK1',
    pattern: 'V + 고 싶다',
    name: 'Muốn làm gì',
    summary: 'Diễn tả mong muốn của người nói (câu kể) hoặc người nghe (câu hỏi).',
    formation: [
      { when: 'Mọi động từ', form: 'V + 고 싶어요', example: ex('한국에 가고 싶어요.', 'Tôi muốn đi Hàn Quốc.') },
      { when: 'Phủ định', form: 'V + 고 싶지 않아요 / 안 V + 고 싶어요', example: ex('오늘은 나가고 싶지 않아요.', 'Hôm nay tôi không muốn ra ngoài.') },
    ],
    uses: [
      { text: 'Mong muốn của bản thân, hỏi mong muốn người khác.', examples: [ex('뭐 먹고 싶어요?', 'Bạn muốn ăn gì?'), ex('잠을 자고 싶어요.', 'Tôi muốn ngủ.')] },
    ],
    notes: [
      'Mong muốn của ngôi thứ ba dùng -고 싶어하다: 동생이 강아지를 키우고 싶어해요.',
      'Chỉ gắn với động từ; "muốn trở nên đẹp" là 예뻐지고 싶어요.',
    ],
    exercises: {
      easy: [
        c('저는 김치를 먹___.', ['고 싶어요', '고 싶어해요', '싶어요'], '고 싶어요', 'Mong muốn của người nói.'),
        c('주말에 쉬___.', ['고 싶어요', '고 있어요', '어요'], '고 싶어요', '"Muốn nghỉ".'),
        c('어디에 가___?', ['고 싶어요', '고 싶었다', '싶어요'], '고 싶어요', 'Hỏi mong muốn của người nghe.'),
      ],
      medium: [
        c('동생이 새 핸드폰을 사___.', ['고 싶어해요', '고 싶어요', '고 싶어'], '고 싶어해요', 'Ngôi thứ ba → -고 싶어하다.'),
        c('너무 피곤해요. 아무것도 하___.', ['고 싶지 않아요', '고 싶어요', '고 싶어해요'], '고 싶지 않아요', 'Phủ định mong muốn.'),
        c('어렸을 때 의사가 되___.', ['고 싶었어요', '고 싶어요', '고 싶겠어요'], '고 싶었어요', 'Mong muốn trong quá khứ.'),
      ],
      hard: [
        c('친구들이 한국 드라마를 보___.', ['고 싶어해요', '고 싶어요', '고 싶다'], '고 싶어해요', 'Chủ ngữ ngôi thứ ba.'),
        c('더 건강해지___.', ['고 싶어요', '고 싶어해요', '어요'], '고 싶어요', 'Tính từ + 아/어지다 rồi mới + 고 싶다.'),
        c('A: 뭐 마시고 싶어요? B: 저는 시원한 물을 마시___.', ['고 싶어요', '고 싶어해요', '세요'], '고 싶어요', 'Người nói tự trả lời.'),
      ],
    },
  },
  {
    slug: 'eul-geoyeyo',
    level: 'TOPIK1',
    pattern: 'V/A + (으)ㄹ 거예요',
    name: 'Thì tương lai, dự định',
    summary: 'Nói về kế hoạch, dự định trong tương lai, hoặc phỏng đoán.',
    formation: [
      { when: 'Gốc không có patchim hoặc patchim ㄹ', form: '+ ㄹ 거예요', example: ex('가다 → 갈 거예요, 만들다 → 만들 거예요', 'sẽ đi, sẽ làm') },
      { when: 'Gốc có patchim', form: '+ 을 거예요', example: ex('먹다 → 먹을 거예요', 'sẽ ăn') },
    ],
    uses: [
      { text: 'Kế hoạch, dự định.', examples: [ex('내일 친구를 만날 거예요.', 'Ngày mai tôi sẽ gặp bạn.'), ex('방학에 뭐 할 거예요?', 'Kỳ nghỉ bạn sẽ làm gì?')] },
      { text: 'Phỏng đoán.', examples: [ex('내일은 비가 올 거예요.', 'Ngày mai chắc sẽ mưa.')] },
    ],
    notes: [
      'Bất quy tắc ㄷ: 듣다 → 들을 거예요; ㅂ: 돕다 → 도울 거예요.',
      '-(으)ㄹ게요 là hứa hẹn / quyết định ngay với người nghe: 제가 할게요.',
    ],
    exercises: {
      easy: [
        c('내일 영화를 ___.', ['볼 거예요', '보을 거예요', '봤을 거예요'], '볼 거예요', '보 không có patchim → 볼 거예요.'),
        c('저녁에 비빔밥을 ___.', ['먹을 거예요', '먹ㄹ 거예요', '먹겠 거예요'], '먹을 거예요', 'Có patchim → 을 거예요.'),
        c('주말에 집에서 ___.', ['쉴 거예요', '쉬을 거예요', '쉬ㄹ 거예요'], '쉴 거예요', '쉬 + ㄹ 거예요.'),
      ],
      medium: [
        c('케이크를 ___.', ['만들 거예요', '만들을 거예요', '만드을 거예요'], '만들 거예요', 'Patchim ㄹ: chỉ thêm 거예요.'),
        c('음악을 ___.', ['들을 거예요', '듣을 거예요', '들 거예요'], '들을 거예요', 'Bất quy tắc ㄷ.'),
        c('하늘이 어두워요. 곧 비가 ___.', ['올 거예요', '왔어요', '와요'], '올 거예요', 'Phỏng đoán tương lai.'),
      ],
      hard: [
        c('친구 이사를 ___.', ['도울 거예요', '돕을 거예요', '도와 거예요'], '도울 거예요', 'Bất quy tắc ㅂ: 돕다 → 도울.'),
        c('A: 누가 청소할 거예요? B: 제가 ___. (hứa ngay)', ['할게요', '할 거예요', '했어요'], '할게요', 'Hứa với người nghe → -(으)ㄹ게요.'),
        c('다음 달에 한국에 ___.', ['갈 거예요', '가을 거예요', '갔어요'], '갈 거예요', 'Kế hoạch tương lai.'),
      ],
    },
  },

  // ─────────────────────────── TOPIK 2 ───────────────────────────
  {
    slug: 'euseyo',
    level: 'TOPIK2',
    pattern: 'V + (으)세요',
    name: 'Mời, yêu cầu lịch sự',
    summary: 'Yêu cầu, đề nghị hoặc mời người khác làm gì một cách lịch sự. Cũng là đuôi kính ngữ ở hiện tại.',
    formation: [
      { when: 'Gốc không có patchim', form: '+ 세요', example: ex('가다 → 가세요', 'Xin mời đi') },
      { when: 'Gốc có patchim', form: '+ 으세요', example: ex('앉다 → 앉으세요', 'Xin mời ngồi') },
      { when: 'Phủ định', form: 'V + 지 마세요', example: ex('여기에서 담배를 피우지 마세요.', 'Xin đừng hút thuốc ở đây.') },
    ],
    uses: [
      { text: 'Yêu cầu, mời lịch sự.', examples: [ex('여기에 앉으세요.', 'Mời ngồi đây.'), ex('천천히 말해 주세요.', 'Xin hãy nói chậm lại.')] },
      { text: 'Kính ngữ khi nói về người trên.', examples: [ex('할머니께서 주무세요.', 'Bà đang ngủ.')] },
    ],
    notes: [
      'Động từ kính ngữ đặc biệt: 먹다/마시다 → 드세요, 자다 → 주무세요, 있다 → 계세요, 말하다 → 말씀하세요.',
      'Patchim ㄹ bị lược: 만들다 → 만드세요, 살다 → 사세요.',
      '-아/어 주세요 = "làm ơn làm … cho tôi".',
    ],
    exercises: {
      easy: [
        c('여기에 (앉다) ___.', ['앉으세요', '앉세요', '앉아세요'], '앉으세요', 'Có patchim → 으세요.'),
        c('안녕히 (가다) ___.', ['가세요', '가으세요', '갔세요'], '가세요', 'Không patchim → 세요.'),
        c('이 책을 (읽다) ___.', ['읽으세요', '읽세요', '일세요'], '읽으세요', 'Có patchim.'),
      ],
      medium: [
        c('맛있게 ___. (mời ăn)', ['드세요', '먹으세요', '먹세요'], '드세요', '먹다 kính ngữ → 드시다.'),
        c('어디에 (살다) ___?', ['사세요', '살으세요', '살세요'], '사세요', 'Patchim ㄹ bị lược.'),
        c('수업 시간에 떠들___.', ['지 마세요', '으세요', '세요'], '지 마세요', 'Cấm đoán lịch sự.'),
      ],
      hard: [
        c('안녕히 ___. (người đi chào người ở lại)', ['계세요', '가세요', '있으세요'], '계세요', '있다 kính ngữ → 계시다.'),
        c('할아버지, 안녕히 ___. (chúc ngủ ngon)', ['주무세요', '자세요', '잘으세요'], '주무세요', '자다 kính ngữ → 주무시다.'),
        c('사진 좀 찍어 ___.', ['주세요', '세요', '으세요'], '주세요', 'Nhờ ai làm gì cho mình → -아/어 주세요.'),
      ],
    },
  },
  {
    slug: 'go-and',
    level: 'TOPIK2',
    pattern: 'V/A + 고',
    name: 'Và, rồi (nối câu)',
    summary: 'Nối hai hành động/trạng thái ngang hàng ("và"), hoặc hai hành động theo thứ tự ("rồi").',
    formation: [
      { when: 'Mọi gốc', form: 'V/A + 고', example: ex('이 식당은 싸고 맛있어요.', 'Quán này rẻ và ngon.') },
      { when: 'Danh từ', form: 'N + (이)고', example: ex('저는 학생이고 동생은 회사원이에요.', 'Tôi là sinh viên, còn em tôi là nhân viên công ty.') },
    ],
    uses: [
      { text: 'Liệt kê.', examples: [ex('언니는 키가 크고 예뻐요.', 'Chị tôi cao và xinh.')] },
      { text: 'Thứ tự hành động.', examples: [ex('밥을 먹고 커피를 마셔요.', 'Ăn cơm rồi uống cà phê.')] },
    ],
    notes: [
      'Thì quá khứ chỉ chia ở cuối câu: 어제 영화를 보고 쇼핑했어요.',
      'Với các động từ di chuyển (가다, 오다) khi "đến đó rồi làm" dùng -아서/어서, không dùng -고.',
    ],
    exercises: {
      easy: [
        c('이 옷은 싸___ 예뻐요.', ['고', '지만', '서'], '고', 'Liệt kê "và".'),
        c('숙제를 하___ 잤어요.', ['고', '지만', '면'], '고', '"Làm bài tập rồi ngủ".'),
        c('저는 노래를 좋아하___ 춤도 좋아해요.', ['고', '아서', '지만'], '고', 'Liệt kê.'),
      ],
      medium: [
        c('저는 베트남 사람___ 친구는 한국 사람이에요.', ['이고', '고', '이지만'], '이고', 'Danh từ có patchim + 이고.'),
        c('어제 친구를 만나___ 영화를 봤어요.', ['고', '았고', '서고'], '고', 'Không chia quá khứ ở giữa câu.'),
        c('샤워를 하___ 아침을 먹어요.', ['고', '면', '지만'], '고', 'Thứ tự hành động.'),
      ],
      hard: [
        c('학교에 가___ 공부해요. (đến trường rồi học ở đó)', ['서', '고', '지만'], '서', 'Đến một nơi rồi làm việc ở đó → -아서/어서.'),
        c('이 방은 넓___ 밝아요.', ['고', '아서', '지만'], '고', 'Hai đặc điểm ngang hàng.'),
        c('이 식당은 음식도 맛있___ 직원도 친절해요.', ['고', '지만', '아서'], '고', 'Hai ý cùng chiều (ngon và thân thiện) → -고.'),
      ],
    },
  },
  {
    slug: 'jiman',
    level: 'TOPIK2',
    pattern: 'V/A + 지만',
    name: 'Nhưng',
    summary: 'Nối hai vế trái ngược nhau.',
    formation: [
      { when: 'Mọi gốc', form: 'V/A + 지만', example: ex('한국어는 어렵지만 재미있어요.', 'Tiếng Hàn khó nhưng thú vị.') },
      { when: 'Quá khứ', form: 'V/A + 았/었지만', example: ex('많이 먹었지만 아직 배고파요.', 'Ăn nhiều rồi nhưng vẫn đói.') },
      { when: 'Danh từ', form: 'N + (이)지만', example: ex('학생이지만 일도 해요.', 'Là sinh viên nhưng cũng đi làm.') },
    ],
    uses: [
      { text: 'Tương phản giữa hai vế.', examples: [ex('이 가방은 비싸지만 좋아요.', 'Túi này đắt nhưng tốt.')] },
      { text: 'Mở đầu lịch sự trước khi hỏi nhờ.', examples: [ex('죄송하지만 길 좀 물어볼게요.', 'Xin lỗi nhưng cho tôi hỏi đường một chút.')] },
    ],
    notes: ['Khác -고 (và): -지만 bắt buộc hai vế đối lập.', 'Cũng có thể tách câu bằng 그렇지만 / 하지만.'],
    exercises: {
      easy: [
        c('비싸___ 맛있어요.', ['지만', '고', '서'], '지만', 'Hai ý trái ngược.'),
        c('한국어는 어렵___ 재미있어요.', ['지만', '고', '면'], '지만', 'Khó nhưng thú vị.'),
        c('키는 작___ 힘이 세요.', ['지만', '고', '아서'], '지만', 'Tương phản.'),
      ],
      medium: [
        c('어제 열심히 공부했___ 시험을 못 봤어요.', ['지만', '고', '아서'], '지만', 'Quá khứ + 지만.'),
        c('저는 회사원___ 주말에는 그림을 그려요.', ['이지만', '지만', '이고'], '이지만', 'Danh từ có patchim + 이지만.'),
        c('죄송하___ 다시 한 번 말해 주세요.', ['지만', '고', '면'], '지만', 'Mở đầu lịch sự.'),
      ],
      hard: [
        c('날씨가 춥___ 바람은 안 불어요.', ['지만', '고', '서'], '지만', 'Lạnh nhưng không có gió.'),
        c('형은 키가 크___ 저는 작아요.', ['지만', '아서', '면'], '지만', 'Đối lập giữa hai người.'),
        c('약을 먹었___ 아직 머리가 아파요.', ['지만', '고', '으니까'], '지만', 'Đã uống thuốc nhưng vẫn đau.'),
      ],
    },
  },
  {
    slug: 'aseo-eoseo',
    level: 'TOPIK2',
    pattern: 'V/A + 아서/어서',
    name: 'Vì … nên / rồi (trình tự)',
    summary: 'Nêu lý do – kết quả, hoặc hành động trước là điều kiện cho hành động sau (đến đâu rồi làm gì, làm gì rồi dùng nó).',
    formation: [
      { when: 'Nguyên âm cuối ㅏ, ㅗ', form: '+ 아서', example: ex('가다 → 가서', '') },
      { when: 'Nguyên âm cuối khác', form: '+ 어서', example: ex('먹다 → 먹어서', '') },
      { when: '하다', form: '해서', example: ex('피곤해서 일찍 잤어요.', 'Vì mệt nên ngủ sớm.') },
      { when: 'Danh từ', form: 'N + 이라서/라서', example: ex('주말이라서 사람이 많아요.', 'Vì là cuối tuần nên đông người.') },
    ],
    uses: [
      { text: 'Lý do – kết quả.', examples: [ex('배가 아파서 병원에 갔어요.', 'Vì đau bụng nên đã đi viện.')] },
      { text: 'Trình tự có liên quan.', examples: [ex('친구를 만나서 같이 밥을 먹었어요.', 'Gặp bạn rồi cùng ăn cơm.')] },
    ],
    notes: [
      'Không chia thì quá khứ trước -아서/어서: 늦어서 (không nói 늦었어서).',
      'Không dùng với câu mệnh lệnh / rủ rê; khi đó dùng -(으)니까.',
      'Xin lỗi, cảm ơn: 늦어서 죄송합니다, 도와줘서 고마워요.',
    ],
    exercises: {
      easy: [
        c('피곤해___ 일찍 잤어요.', ['서', '고', '지만'], '서', 'Lý do → kết quả.'),
        c('늦___ 죄송합니다.', ['어서', '었어서', '고'], '어서', 'Không chia quá khứ trước -어서.'),
        c('비가 와___ 집에 있었어요.', ['서', '고', '지만'], '서', 'Vì mưa nên ở nhà.'),
      ],
      medium: [
        c('도와줘___ 고마워요.', ['서', '고', '지만'], '서', 'Cảm ơn vì đã giúp.'),
        c('방학___ 학교에 학생들이 없어요.', ['이라서', '라서', '어서'], '이라서', 'Danh từ có patchim + 이라서.'),
        c('시장에 가___ 과일을 샀어요.', ['서', '고', '면'], '서', 'Đến chợ rồi mua ở đó.'),
      ],
      hard: [
        c('시간이 없___ 빨리 가세요.', ['으니까', '어서', '지만'], '으니까', 'Câu mệnh lệnh không dùng -아서/어서.'),
        c('케이크를 만들___ 친구에게 줬어요.', ['어서', '고', '지만'], '어서', 'Làm bánh rồi đem cái bánh đó tặng → trình tự liên quan.'),
        c('너무 매워___ 못 먹었어요.', ['서', '었어서', '고'], '서', '맵다 → 매워서.'),
      ],
    },
  },
  {
    slug: 'eul-su-itda',
    level: 'TOPIK2',
    pattern: 'V + (으)ㄹ 수 있다/없다',
    name: 'Có thể / không thể',
    summary: 'Diễn tả khả năng hoặc sự cho phép: có thể làm, không thể làm.',
    formation: [
      { when: 'Gốc không có patchim hoặc patchim ㄹ', form: '+ ㄹ 수 있다/없다', example: ex('수영할 수 있어요.', 'Tôi biết bơi.') },
      { when: 'Gốc có patchim', form: '+ 을 수 있다/없다', example: ex('매운 음식을 먹을 수 없어요.', 'Tôi không ăn được đồ cay.') },
    ],
    uses: [
      { text: 'Khả năng.', examples: [ex('한국어를 읽을 수 있어요.', 'Tôi đọc được tiếng Hàn.')] },
      { text: 'Khả năng do hoàn cảnh, sự cho phép.', examples: [ex('여기에서 사진을 찍을 수 없어요.', 'Không được chụp ảnh ở đây.')] },
    ],
    notes: [
      'Patchim ㄹ: 만들다 → 만들 수 있어요. Bất quy tắc ㄷ: 걷다 → 걸을 수 있어요.',
      'Kỹ năng học được hay dùng -(으)ㄹ 줄 알다/모르다: 운전할 줄 알아요.',
    ],
    exercises: {
      easy: [
        c('저는 피아노를 ___ 있어요.', ['칠 수', '치을 수', '칠을 수'], '칠 수', '치다 → 칠 수 있어요.'),
        c('김치를 ___ 있어요?', ['먹을 수', '먹ㄹ 수', '먹 수'], '먹을 수', 'Có patchim → 을 수.'),
        c('오늘은 바빠서 ___ 없어요.', ['만날 수', '만나을 수', '만나 수'], '만날 수', '만나 + ㄹ 수.'),
      ],
      medium: [
        c('한국 음식을 ___ 있어요.', ['만들 수', '만들을 수', '만드을 수'], '만들 수', 'Patchim ㄹ: chỉ thêm 수.'),
        c('다리가 아파서 ___ 없어요.', ['걸을 수', '걷을 수', '걸 수'], '걸을 수', 'Bất quy tắc ㄷ.'),
        c('여기에 주차___.', ['할 수 없어요', '하을 수 없어요', '해 수 없어요'], '할 수 없어요', 'Không được phép.'),
      ],
      hard: [
        c('운전___ 알아요? (có biết lái xe không)', ['할 줄', '할 수', '하는 줄'], '할 줄', 'Kỹ năng học được → -(으)ㄹ 줄 알다.'),
        c('이 노래를 ___ 수 있어요?', ['들을', '듣을', '들'], '들을', 'Bất quy tắc ㄷ: 듣다 → 들을.'),
        c('내일은 시간이 있어서 ___.', ['갈 수 있어요', '갈 수 없어요', '가을 수 있어요'], '갈 수 있어요', 'Có thời gian → đi được.'),
      ],
    },
  },
  {
    slug: 'go-itda',
    level: 'TOPIK2',
    pattern: 'V + 고 있다',
    name: 'Đang làm gì (tiếp diễn)',
    summary: 'Hành động đang diễn ra ở một thời điểm, hoặc việc đang làm trong một khoảng thời gian.',
    formation: [
      { when: 'Mọi động từ', form: 'V + 고 있어요', example: ex('지금 책을 읽고 있어요.', 'Bây giờ tôi đang đọc sách.') },
      { when: 'Quá khứ', form: 'V + 고 있었어요', example: ex('그때 샤워하고 있었어요.', 'Lúc đó tôi đang tắm.') },
    ],
    uses: [
      { text: 'Đang làm ngay lúc nói.', examples: [ex('밖에 비가 오고 있어요.', 'Bên ngoài trời đang mưa.')] },
      { text: 'Việc đang làm trong giai đoạn hiện tại.', examples: [ex('요즘 한국어를 배우고 있어요.', 'Dạo này tôi đang học tiếng Hàn.')] },
    ],
    notes: [
      'Kính ngữ: -고 계세요 (할아버지가 신문을 읽고 계세요).',
      'Với 입다, 신다, 쓰다 (mặc, đi, đội), -고 있다 còn chỉ trạng thái đang mặc: 안경을 쓰고 있어요.',
    ],
    exercises: {
      easy: [
        c('지금 밥을 먹___.', ['고 있어요', '고 싶어요', '어요 있어요'], '고 있어요', 'Đang ăn.'),
        c('동생은 지금 자___.', ['고 있어요', '고 싶어요', '지만'], '고 있어요', 'Đang ngủ.'),
        c('밖에 눈이 오___.', ['고 있어요', '고 있었다', '아요'], '고 있어요', 'Đang rơi tuyết.'),
      ],
      medium: [
        c('요즘 운전을 배우___.', ['고 있어요', '고 싶었어요', '었어요'], '고 있어요', 'Việc đang làm trong giai đoạn này.'),
        c('어제 전화했을 때 뭐 하___?', ['고 있었어요', '고 있어요', '고 싶어요'], '고 있었어요', 'Đang làm gì tại một thời điểm quá khứ.'),
        c('할머니께서 TV를 보___.', ['고 계세요', '고 있어요', '고 계셔'], '고 계세요', 'Kính ngữ → -고 계시다.'),
      ],
      hard: [
        c('그 사람은 빨간 모자를 쓰___.', ['고 있어요', '어 있어요', '고 싶어요'], '고 있어요', 'Trạng thái đang đội mũ.'),
        c('A: 민수 씨 어디 있어요? B: 도서관에서 공부하___.', ['고 있어요', '고 싶어요', '세요'], '고 있어요', 'Đang học.'),
        c('제가 들어갔을 때 아이들이 놀___.', ['고 있었어요', '고 있어요', '았어요'], '고 있었어요', 'Hành động đang diễn ra trong quá khứ.'),
      ],
    },
  },
]
