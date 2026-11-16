// Korean grammar, TOPIK 3–6 (intermediate and advanced). Same structure as grammarBeginner.js.

const ex = (ko, vi) => ({ ko, vi })
const c = (q, options, answer, explain) => ({ type: 'choice', q, options, answer, explain })

export default [
  // ─────────────────────────── TOPIK 3 ───────────────────────────
  {
    slug: 'eumyeon',
    level: 'TOPIK3',
    pattern: 'V/A + (으)면',
    name: 'Nếu … thì',
    summary: 'Nêu điều kiện hoặc giả định: nếu vế trước xảy ra thì vế sau xảy ra.',
    formation: [
      { when: 'Gốc không có patchim hoặc patchim ㄹ', form: '+ 면', example: ex('비가 오면 집에 있을 거예요.', 'Nếu mưa thì tôi sẽ ở nhà.') },
      { when: 'Gốc có patchim', form: '+ 으면', example: ex('시간이 있으면 같이 가요.', 'Nếu có thời gian thì cùng đi nhé.') },
      { when: 'Danh từ', form: 'N + (이)면', example: ex('학생이면 할인돼요.', 'Nếu là học sinh thì được giảm giá.') },
    ],
    uses: [
      { text: 'Điều kiện thực tế hoặc thói quen.', examples: [ex('피곤하면 좀 쉬세요.', 'Nếu mệt thì nghỉ một chút đi.'), ex('봄이 되면 꽃이 피어요.', 'Cứ đến mùa xuân là hoa nở.')] },
      { text: 'Giả định khó xảy ra (thường với -았/었으면).', examples: [ex('돈이 많으면 세계 여행을 하고 싶어요.', 'Nếu có nhiều tiền tôi muốn du lịch thế giới.')] },
    ],
    notes: [
      'Bất quy tắc ㄷ: 듣다 → 들으면; ㅂ: 춥다 → 추우면; patchim ㄹ: 살다 → 살면.',
      '-았/었으면 좋겠다 = "ước gì, mong là": 시험에 합격했으면 좋겠어요.',
    ],
    exercises: {
      easy: [
        c('비가 오___ 우산을 쓰세요.', ['면', '으면', '아서'], '면', '오 không có patchim → 면.'),
        c('시간이 있___ 영화 보러 가요.', ['으면', '면', '지만'], '으면', 'Có patchim → 으면.'),
        c('배가 고프___ 이거 드세요.', ['면', '으면', '고'], '면', '고프 không có patchim.'),
      ],
      medium: [
        c('날씨가 추___ 따뜻한 옷을 입으세요.', ['우면', '으면', '웠면'], '우면', 'Bất quy tắc ㅂ: 춥다 → 추우면.'),
        c('이 음악을 들___ 기분이 좋아져요.', ['으면', '면', '어서'], '으면', 'Bất quy tắc ㄷ: 듣다 → 들으면.'),
        c('서울에 살___ 좋겠어요.', ['면', '으면', '아서'], '면', 'Patchim ㄹ → 살면.'),
      ],
      hard: [
        c('시험에 합격했으면 ___.', ['좋겠어요', '좋아요', '좋을까요'], '좋겠어요', '-았/었으면 좋겠다: mong ước.'),
        c('학생___ 입장료가 무료예요.', ['이면', '면', '이라서'], '이면', 'Danh từ có patchim + 이면.'),
        c('내가 너라___ 그렇게 안 했을 거야.', ['면', '서', '고'], '면', 'Giả định trái thực tế: N(이)라면.'),
      ],
    },
  },
  {
    slug: 'eunikka',
    level: 'TOPIK3',
    pattern: 'V/A + (으)니까',
    name: 'Vì … nên (lý do chủ quan) / thì thấy',
    summary: 'Nêu lý do mang tính chủ quan, hay dùng với câu đề nghị, mệnh lệnh; hoặc diễn tả "làm … thì phát hiện ra".',
    formation: [
      { when: 'Gốc không có patchim hoặc patchim ㄹ (bỏ ㄹ)', form: '+ 니까', example: ex('바쁘니까 나중에 이야기해요.', 'Vì bận nên nói chuyện sau nhé.') },
      { when: 'Gốc có patchim', form: '+ 으니까', example: ex('늦었으니까 택시를 탑시다.', 'Muộn rồi nên đi taxi thôi.') },
    ],
    uses: [
      { text: 'Lý do cho đề nghị, mệnh lệnh, rủ rê.', examples: [ex('비가 오니까 우산을 가져가세요.', 'Trời mưa nên hãy mang ô theo.')] },
      { text: 'Phát hiện sau khi làm gì (vế trước thường ở quá khứ hoặc gốc động từ).', examples: [ex('집에 가니까 아무도 없었어요.', 'Về đến nhà thì thấy không có ai.')] },
    ],
    notes: [
      'Khác -아서/어서: -(으)니까 dùng được với mệnh lệnh, rủ rê và có thể chia quá khứ (-았/었으니까).',
      'Không dùng -(으)니까 để xin lỗi, cảm ơn: nói 늦어서 죄송합니다, không nói 늦으니까 죄송합니다.',
      'Patchim ㄹ bị lược: 멀다 → 머니까.',
    ],
    exercises: {
      easy: [
        c('추우___ 창문을 닫아 주세요.', ['니까', '어서', '지만'], '니까', 'Lý do + yêu cầu → -(으)니까.'),
        c('시간이 없___ 빨리 가요.', ['으니까', '니까', '어서'], '으니까', 'Có patchim → 으니까.'),
        c('길이 막히___ 지하철을 탑시다.', ['니까', '어서', '고'], '니까', 'Rủ rê → -(으)니까.'),
      ],
      medium: [
        c('집이 머___ 일찍 출발하세요.', ['니까', '르니까', '얼니까'], '니까', 'Patchim ㄹ bị lược: 멀다 → 머니까.'),
        c('늦___ 죄송합니다.', ['어서', '으니까', '니까'], '어서', 'Xin lỗi dùng -아서/어서.'),
        c('어제 많이 잤___ 오늘은 괜찮아요.', ['으니까', '어서', '면'], '으니까', '-(으)니까 có thể đi sau quá khứ.'),
      ],
      hard: [
        c('창문을 열___ 바다가 보였어요.', ['니까', '어서', '면'], '니까', 'Phát hiện sau khi làm gì.'),
        c('도와주___ 고맙습니다.', ['셔서', '시니까', '니까'], '셔서', 'Cảm ơn dùng -아서/어서 (도와주셔서).'),
        c('이 옷은 비싸___ 다른 옷을 보세요.', ['니까', '서', '지만'], '니까', 'Mệnh lệnh phía sau → -(으)니까.'),
      ],
    },
  },
  {
    slug: 'aya-hada',
    level: 'TOPIK3',
    pattern: 'V/A + 아야/어야 하다',
    name: 'Phải làm gì',
    summary: 'Diễn tả nghĩa vụ hoặc điều cần thiết: phải, cần phải.',
    formation: [
      { when: 'Nguyên âm cuối ㅏ, ㅗ', form: '+ 아야 해요', example: ex('가야 해요', 'phải đi') },
      { when: 'Nguyên âm cuối khác', form: '+ 어야 해요', example: ex('먹어야 해요', 'phải ăn') },
      { when: '하다', form: '해야 해요', example: ex('숙제를 해야 해요.', 'Phải làm bài tập.') },
    ],
    uses: [
      { text: 'Nghĩa vụ, điều cần làm.', examples: [ex('내일 일찍 일어나야 해요.', 'Ngày mai phải dậy sớm.')] },
      { text: 'Điều kiện cần: phải … thì mới …', examples: [ex('열심히 연습해야 잘할 수 있어요.', 'Phải luyện tập chăm chỉ thì mới giỏi được.')] },
    ],
    notes: [
      '하다 có thể thay bằng 되다: 가야 돼요 (văn nói rất phổ biến).',
      '"Không cần phải" dùng -지 않아도 되다: 오늘은 안 와도 돼요.',
    ],
    exercises: {
      easy: [
        c('내일 시험이 있어서 공부___.', ['해야 해요', '하야 해요', '해도 돼요'], '해야 해요', '하다 → 해야 하다.'),
        c('약을 먹___ 해요.', ['어야', '아야', '어도'], '어야', 'Nguyên âm ㅓ → 어야.'),
        c('지금 가___ 돼요.', ['야', '아야', '어야'], '야', '가 + 아야 → 가야.'),
      ],
      medium: [
        c('이 서류를 내일까지 내___.', ['야 해요', '어야 해요', '아야 해요'], '야 해요', '내 + 어야 → 내야.'),
        c('A: 내일 와야 해요? B: 아니요, 안 와___.', ['도 돼요', '야 해요', '면 돼요'], '도 돼요', 'Không cần → -지 않아도 / 안 -아도 되다.'),
        c('건강을 위해서 물을 많이 마___.', ['셔야 해요', '시아야 해요', '셔도 돼요'], '셔야 해요', '마시 + 어야 → 마셔야.'),
      ],
      hard: [
        c('표가 있___ 들어갈 수 있어요.', ['어야', '으면', '지만'], '어야', 'Điều kiện cần: phải có vé mới vào được.'),
        c('한국에서 살려면 한국어를 배워___.', ['야 해요', '도 돼요', '고 싶어요'], '야 해요', 'Nghĩa vụ.'),
        c('이 일은 오늘 끝내___ 돼요.', ['야', '아도', '면'], '야', '-아/어야 되다 = phải.'),
      ],
    },
  },
  {
    slug: 'neunde',
    level: 'TOPIK3',
    pattern: 'V + 는데 / A + (으)ㄴ데 / N + 인데',
    name: 'Bối cảnh, tương phản',
    summary: 'Đưa ra bối cảnh, thông tin nền trước khi nói ý chính; hoặc diễn tả sự tương phản nhẹ ("nhưng mà").',
    formation: [
      { when: 'Động từ, 있다/없다', form: '+ 는데', example: ex('지금 밥을 먹는데 같이 먹을래요?', 'Tôi đang ăn cơm, ăn cùng không?') },
      { when: 'Tính từ', form: '+ (으)ㄴ데', example: ex('날씨가 좋은데 산책할까요?', 'Trời đẹp, đi dạo nhé?') },
      { when: 'Danh từ', form: '+ 인데', example: ex('내일이 친구 생일인데 선물을 못 샀어요.', 'Mai là sinh nhật bạn mà tôi chưa mua quà.') },
    ],
    uses: [
      { text: 'Bối cảnh cho lời đề nghị, câu hỏi.', examples: [ex('배가 고픈데 뭐 좀 먹어요.', 'Đói bụng rồi, ăn gì đi.')] },
      { text: 'Tương phản.', examples: [ex('이 식당은 맛있는데 좀 비싸요.', 'Quán này ngon nhưng hơi đắt.')] },
    ],
    notes: [
      'Quá khứ: -았/었는데 cho cả động từ và tính từ (먹었는데, 좋았는데).',
      'Đặt cuối câu (-는데요) để nói lấp lửng, chờ phản ứng: 저는 괜찮은데요.',
    ],
    exercises: {
      easy: [
        c('비가 오___ 우산 있어요?', ['는데', '은데', '인데'], '는데', 'Động từ → 는데.'),
        c('날씨가 추___ 집에 있을까요?', ['운데', '는데', '인데'], '운데', 'Tính từ bất quy tắc ㅂ: 춥다 → 추운데.'),
        c('저는 학생___ 아르바이트도 해요.', ['인데', '는데', '은데'], '인데', 'Danh từ → 인데.'),
      ],
      medium: [
        c('이 옷은 예쁜___ 너무 비싸요.', ['데', '는데', '인데'], '데', 'Tính từ 예쁘다 → 예쁜데.'),
        c('어제 친구한테 전화했___ 안 받았어요.', ['는데', '은데', '인데'], '는데', 'Quá khứ → -았/었는데.'),
        c('시간이 있___ 커피 한잔할래요?', ['는데', '은데', '인데'], '는데', '있다/없다 đi với 는데.'),
      ],
      hard: [
        c('맛있___ 좀 짜요.', ['는데', '은데', '인데'], '는데', '맛있다 kết thúc bằng 있다 → 는데.'),
        c('A: 같이 갈래요? B: 저는 좀 바쁜___요.', ['데', '는데', '인데'], '데', 'Đuôi lấp lửng -(으)ㄴ데요.'),
        c('내일은 주말___ 회사에 가야 해요.', ['인데', '는데', '은데'], '인데', 'Danh từ + 인데 (tương phản).'),
      ],
    },
  },

  // ─────────────────────────── TOPIK 4 ───────────────────────────
  {
    slug: 'geot-gatda',
    level: 'TOPIK4',
    pattern: 'V/A + (으)ㄴ/는/(으)ㄹ 것 같다',
    name: 'Hình như, có lẽ',
    summary: 'Phỏng đoán dựa trên quan sát hoặc nói giảm nhẹ ý kiến của mình.',
    formation: [
      { when: 'Động từ – hiện tại', form: 'V + 는 것 같다', example: ex('밖에 비가 오는 것 같아요.', 'Hình như ngoài trời đang mưa.') },
      { when: 'Động từ – quá khứ', form: 'V + (으)ㄴ 것 같다', example: ex('민수 씨가 벌써 간 것 같아요.', 'Hình như Minsu đi rồi.') },
      { when: 'Tính từ – hiện tại', form: 'A + (으)ㄴ 것 같다', example: ex('이 옷이 좀 큰 것 같아요.', 'Hình như cái áo này hơi rộng.') },
      { when: 'Tương lai / phỏng đoán', form: 'V/A + (으)ㄹ 것 같다', example: ex('내일 비가 올 것 같아요.', 'Có lẽ mai trời mưa.') },
    ],
    uses: [
      { text: 'Phỏng đoán.', examples: [ex('저 사람은 한국 사람인 것 같아요.', 'Người kia hình như là người Hàn.')] },
      { text: 'Nói ý kiến nhẹ nhàng, lịch sự.', examples: [ex('이게 더 좋은 것 같아요.', 'Tôi thấy cái này có vẻ tốt hơn.')] },
    ],
    notes: ['Danh từ: N + 인 것 같다.', '-(으)ㄹ 것 같다 dùng cho phỏng đoán chưa xảy ra hoặc không có căn cứ chắc chắn.'],
    exercises: {
      easy: [
        c('하늘을 보니까 비가 ___ 것 같아요.', ['올', '온', '오는'], '올', 'Phỏng đoán tương lai → (으)ㄹ.'),
        c('이 음식은 좀 매___ 것 같아요.', ['운', '는', '울'], '운', 'Tính từ hiện tại: 맵다 → 매운.'),
        c('지금 민수 씨가 자___ 것 같아요.', ['는', '은', '을'], '는', 'Động từ hiện tại → 는.'),
      ],
      medium: [
        c('불이 꺼져 있어요. 다들 퇴근___ 것 같아요.', ['한', '하는', '할'], '한', 'Đã xảy ra → 동사 + (으)ㄴ.'),
        c('저 사람은 학생___ 것 같아요.', ['인', '는', '일'], '인', 'Danh từ hiện tại → 인.'),
        c('이 바지가 좀 작___ 것 같아요.', ['은', '는', '을'], '은', 'Tính từ hiện tại → 은.'),
      ],
      hard: [
        c('(Từ chối nhẹ) 오늘은 좀 힘들 ___.', ['것 같아요', '거예요', '수 있어요'], '것 같아요', 'Nói giảm nhẹ.'),
        c('길이 막혀서 약속에 늦___ 것 같아요.', ['을', '은', '는'], '을', 'Phỏng đoán việc sắp xảy ra.'),
        c('어제 많이 피곤했___ 것 같아요.', ['던', '는', '을'], '던', 'Tính từ quá khứ → -았/었던 것 같다.'),
      ],
    },
  },
  {
    slug: 'ge-doeda',
    level: 'TOPIK4',
    pattern: 'V + 게 되다',
    name: 'Trở nên, được / bị (thay đổi do hoàn cảnh)',
    summary: 'Diễn tả một việc xảy ra do hoàn cảnh, không phải do ý muốn của chủ thể; hoặc sự thay đổi trạng thái.',
    formation: [{ when: 'Mọi động từ', form: 'V + 게 되다', example: ex('회사 일 때문에 서울로 이사하게 됐어요.', 'Vì công việc nên tôi chuyển lên Seoul.') }],
    uses: [
      { text: 'Việc xảy ra do hoàn cảnh.', examples: [ex('친구 소개로 그 사람을 알게 됐어요.', 'Nhờ bạn giới thiệu mà tôi biết người đó.')] },
      { text: 'Thay đổi dần dần.', examples: [ex('한국에 살면서 김치를 좋아하게 됐어요.', 'Sống ở Hàn rồi tôi trở nên thích kim chi.')] },
    ],
    notes: ['Thường chia ở quá khứ (-게 됐어요) khi kể kết quả.', 'Tính từ diễn tả thay đổi dùng -아/어지다: 예뻐졌어요.'],
    exercises: {
      easy: [
        c('다음 달부터 이 회사에서 일하___.', ['게 됐어요', '고 있어요', '아야 해요'], '게 됐어요', 'Việc được quyết định bởi hoàn cảnh.'),
        c('한국 드라마를 보면서 한국어를 좋아하___.', ['게 됐어요', '고 싶어요', '세요'], '게 됐어요', 'Thay đổi dần.'),
        c('그 소식을 어제 알___.', ['게 됐어요', '고 있어요', '을 거예요'], '게 됐어요', 'Biết được (do nghe tin).'),
      ],
      medium: [
        c('날씨가 따뜻___.', ['해졌어요', '하게 됐어요', '해 됐어요'], '해졌어요', 'Tính từ thay đổi → -아/어지다.'),
        c('회사 사정으로 출장을 못 가___.', ['게 됐어요', '고 싶어요', '아야 해요'], '게 됐어요', 'Do hoàn cảnh.'),
        c('처음에는 매운 음식을 못 먹었는데 지금은 잘 먹___.', ['게 됐어요', '게 해요', '고 싶어요'], '게 됐어요', 'Thay đổi theo thời gian.'),
      ],
      hard: [
        c('그 일 덕분에 좋은 친구를 사귀___.', ['게 됐어요', '도록 했어요', '어야 해요'], '게 됐어요', 'Kết quả tự nhiên.'),
        c('운동을 시작한 후 몸이 건강___.', ['해졌어요', '하게 됐어요', '해야 해요'], '해졌어요', '건강하다 là tính từ.'),
        c('결국 우리는 헤어지___.', ['게 됐어요', '고 싶어요', '세요'], '게 됐어요', 'Kết cục ngoài ý muốn.'),
      ],
    },
  },
  {
    slug: 'eul-ppeonhada',
    level: 'TOPIK4',
    pattern: 'V + (으)ㄹ 뻔하다',
    name: 'Suýt nữa thì',
    summary: 'Diễn tả việc gần như đã xảy ra nhưng cuối cùng không xảy ra. Luôn chia quá khứ.',
    formation: [
      { when: 'Gốc không có patchim', form: '+ ㄹ 뻔했다', example: ex('넘어질 뻔했어요.', 'Suýt nữa thì ngã.') },
      { when: 'Gốc có patchim', form: '+ 을 뻔했다', example: ex('약속을 잊을 뻔했어요.', 'Suýt quên cuộc hẹn.') },
    ],
    uses: [{ text: 'Việc suýt xảy ra (thường là việc không tốt).', examples: [ex('늦게 일어나서 비행기를 놓칠 뻔했어요.', 'Dậy muộn nên suýt lỡ máy bay.')] }],
    notes: ['Hay đi với 하마터면 (suýt nữa) và 거의.', 'Diễn tả mức độ cường điệu: 배고파서 죽을 뻔했어요 (đói muốn chết).'],
    exercises: {
      easy: [
        c('길이 미끄러워서 넘어___ 뻔했어요.', ['질', '지을', '졌을'], '질', '넘어지 + ㄹ.'),
        c('하마터면 버스를 놓___ 뻔했어요.', ['칠', '치을', '쳤'], '칠', '놓치 + ㄹ.'),
        c('친구 생일을 잊___ 뻔했어요.', ['을', 'ㄹ', '는'], '을', '잊 có patchim → 을.'),
      ],
      medium: [
        c('너무 웃겨서 ___ 뻔했어요.', ['울', '울을', '우는'], '울', '울다 patchim ㄹ → 울 뻔했다.'),
        c('차가 갑자기 와서 사고가 ___ 뻔했어요.', ['날', '나을', '났을'], '날', '나다 → 날.'),
        c('시험에 떨어___ 뻔했는데 겨우 붙었어요.', ['질', '졌을', '지는'], '질', 'Suýt trượt.'),
      ],
      hard: [
        c('___ 지갑을 잃어버릴 뻔했어요.', ['하마터면', '반드시', '아마'], '하마터면', '하마터면 đi với -(으)ㄹ 뻔하다.'),
        c('너무 배가 고파서 죽___ 뻔했어요.', ['을', 'ㄹ', '는'], '을', 'Cường điệu; 죽 có patchim.'),
        c('A: 괜찮아요? B: 네, 그런데 아까 계단에서 ___ 뻔했어요.', ['떨어질', '떨어진', '떨어지는'], '떨어질', '-(으)ㄹ 뻔하다.'),
      ],
    },
  },
  {
    slug: 'gi-ttaemune',
    level: 'TOPIK4',
    pattern: 'V/A + 기 때문에 / N + 때문에',
    name: 'Bởi vì',
    summary: 'Nêu lý do một cách rõ ràng, khách quan, hơi trang trọng hơn -아서/어서.',
    formation: [
      { when: 'Động từ, tính từ', form: 'V/A + 기 때문에', example: ex('비가 오기 때문에 경기가 취소됐어요.', 'Vì mưa nên trận đấu bị hủy.') },
      { when: 'Danh từ', form: 'N + 때문에', example: ex('감기 때문에 학교에 못 갔어요.', 'Vì cảm nên không đi học được.') },
      { when: 'Quá khứ', form: 'V/A + 았/었기 때문에', example: ex('늦게 잤기 때문에 피곤해요.', 'Vì ngủ muộn nên mệt.') },
    ],
    uses: [{ text: 'Giải thích nguyên nhân.', examples: [ex('시험이 있기 때문에 이번 주말에는 못 만나요.', 'Vì có thi nên cuối tuần này không gặp được.')] }],
    notes: [
      'Không dùng với mệnh lệnh / rủ rê (dùng -(으)니까).',
      'Phân biệt: N 때문에 (vì N), còn N이기 때문에 (vì là N): 학생이기 때문에.',
      'Kết thúc câu: -기 때문이다 (그 이유는 … 때문이에요).',
    ],
    exercises: {
      easy: [
        c('감기___ 결석했어요.', ['때문에', '기 때문에', '이기 때문에'], '때문에', 'Danh từ + 때문에.'),
        c('바쁘___ 연락을 못 했어요.', ['기 때문에', '때문에', '니까요'], '기 때문에', 'Tính từ + 기 때문에.'),
        c('어제 많이 걸었___ 다리가 아파요.', ['기 때문에', '때문에', '어서는'], '기 때문에', 'Quá khứ + 기 때문에.'),
      ],
      medium: [
        c('저는 학생___ 할인을 받을 수 있어요.', ['이기 때문에', '때문에', '기 때문에'], '이기 때문에', 'Vì là học sinh → N이기 때문에.'),
        c('늦었으니까 택시를 ___.', ['탑시다', '탔기 때문에', '타기 때문에'], '탑시다', 'Rủ rê đi với -(으)니까, không với -기 때문에.'),
        c('제가 늦은 이유는 길이 막혔기 ___.', ['때문이에요', '때문에', '때문에요'], '때문이에요', 'Kết thúc câu: -기 때문이다.'),
      ],
      hard: [
        c('그 사람___ 기분이 나빠졌어요.', ['때문에', '이기 때문에', '기 때문에'], '때문에', 'Vì người đó (danh từ) → 때문에.'),
        c('경험이 없___ 실수가 많았어요.', ['기 때문에', '때문에', '이기 때문에'], '기 때문에', '없다 + 기 때문에.'),
        c('비싸___ 사지 마세요.', ['니까', '기 때문에', '서'], '니까', 'Mệnh lệnh → -(으)니까.'),
      ],
    },
  },

  // ─────────────────────────── TOPIK 5 ───────────────────────────
  {
    slug: 'ppunman-anira',
    level: 'TOPIK5',
    pattern: 'V/A + (으)ㄹ 뿐만 아니라',
    name: 'Không những … mà còn',
    summary: 'Thêm một thông tin cùng chiều, nhấn mạnh hơn -고. Vế sau thường có 도.',
    formation: [
      { when: 'Gốc không có patchim', form: '+ ㄹ 뿐만 아니라', example: ex('그 가수는 노래를 잘할 뿐만 아니라 춤도 잘 춰요.', 'Ca sĩ đó không những hát hay mà còn nhảy giỏi.') },
      { when: 'Gốc có patchim', form: '+ 을 뿐만 아니라', example: ex('이 집은 넓을 뿐만 아니라 깨끗해요.', 'Căn nhà này không những rộng mà còn sạch.') },
      { when: 'Danh từ', form: 'N + 뿐만 아니라', example: ex('학생뿐만 아니라 선생님도 왔어요.', 'Không chỉ học sinh mà cả giáo viên cũng đến.') },
    ],
    uses: [{ text: 'Bổ sung thông tin cùng chiều (tốt + tốt, xấu + xấu).', examples: [ex('운동은 건강에 좋을 뿐만 아니라 스트레스도 줄여 줘요.', 'Tập thể dục không chỉ tốt cho sức khỏe mà còn giảm căng thẳng.')] }],
    notes: ['Quá khứ: -았/었을 뿐만 아니라.', 'Hai vế phải cùng chiều; nếu ngược nhau dùng -지만.'],
    exercises: {
      easy: [
        c('이 식당은 음식이 ___ 뿐만 아니라 맛있어요.', ['쌀', '싼', '싸을'], '쌀', '싸다 không có patchim → 쌀 뿐만 아니라.'),
        c('그 영화는 재미있___ 뿐만 아니라 감동적이에요.', ['을', 'ㄹ', '는'], '을', 'Có patchim → 을.'),
        c('한국어___ 일본어도 할 수 있어요.', ['뿐만 아니라', '을 뿐만 아니라', '때문에'], '뿐만 아니라', 'Danh từ + 뿐만 아니라.'),
      ],
      medium: [
        c('어제는 비가 왔을 뿐만 아니라 바람___ 많이 불었어요.', ['도', '은', '이'], '도', 'Vế sau thường có 도.'),
        c('그 사람은 친절할 뿐만 아니라 ___.', ['성실해요', '불친절해요', '게을러요'], '성실해요', 'Hai vế cùng chiều tích cực.'),
        c('이 일은 힘들 뿐만 아니라 월급___ 적어요.', ['도', '만', '은'], '도', 'Bổ sung thêm điều tiêu cực.'),
      ],
      hard: [
        c('그는 시험에 합격했___ 뿐만 아니라 장학금도 받았어요.', ['을', 'ㄹ', '던'], '을', 'Quá khứ: -았/었을 뿐만 아니라.'),
        c('이 옷은 디자인이 예쁘___ 값이 너무 비싸요.', ['지만', 'ㄹ 뿐만 아니라', '고'], '지만', 'Hai vế ngược nhau → -지만.'),
        c('어린이___ 어른들도 그 만화를 좋아해요.', ['뿐만 아니라', '때문에', '이라서'], '뿐만 아니라', 'Không chỉ trẻ em mà cả người lớn.'),
      ],
    },
  },
  {
    slug: 'deoragoyo',
    level: 'TOPIK5',
    pattern: 'V/A + 더라고요',
    name: 'Hồi tưởng điều tự mình trải qua',
    summary: 'Kể lại điều người nói đã trực tiếp thấy, nghe, cảm nhận trong quá khứ, thường kèm sự ngạc nhiên hoặc phát hiện mới.',
    formation: [
      { when: 'Mọi gốc', form: 'V/A + 더라고요', example: ex('그 식당 음식이 정말 맛있더라고요.', 'Đồ ăn quán đó ngon thật đấy (tôi đã ăn thử).') },
      { when: 'Danh từ', form: 'N + (이)더라고요', example: ex('그 사람이 선생님이더라고요.', 'Hóa ra người đó là giáo viên.') },
    ],
    uses: [{ text: 'Chia sẻ trải nghiệm trực tiếp.', examples: [ex('제주도에 가 봤는데 바다가 정말 예쁘더라고요.', 'Tôi đã đi Jeju, biển đẹp lắm.')] }],
    notes: [
      'Không dùng cho hành động của chính mình (trừ cảm giác, phản ứng): không nói 제가 학교에 가더라고요.',
      'Việc đã hoàn tất trước khi chứng kiến dùng -았/었더라고요: 벌써 다 먹었더라고요.',
    ],
    exercises: {
      easy: [
        c('한국 겨울은 정말 춥___.', ['더라고요', '을 거예요', '고 싶어요'], '더라고요', 'Trải nghiệm đã cảm nhận.'),
        c('그 영화 봤는데 재미있___.', ['더라고요', '어야 해요', '세요'], '더라고요', 'Kể lại cảm nhận.'),
        c('어제 시장에 갔는데 사람이 많___.', ['더라고요', '을까요', '지 마세요'], '더라고요', 'Điều tận mắt thấy.'),
      ],
      medium: [
        c('집에 가 보니까 동생이 벌써 ___.', ['잤더라고요', '자더라고요', '잘 거예요'], '잤더라고요', 'Việc đã xong trước khi người nói chứng kiến.'),
        c('알고 보니 그 사람이 제 친구 형___.', ['이더라고요', '더라고요', '였을 거예요'], '이더라고요', 'Danh từ có patchim + 이더라고요.'),
        c('처음 김치를 먹어 봤는데 생각보다 안 맵___.', ['더라고요', '을 거예요', '으세요'], '더라고요', 'Phát hiện mới.'),
      ],
      hard: [
        c('(Hành động của chính mình) 어제 저는 일찍 ___.', ['잤어요', '자더라고요', '잤더라고요'], '잤어요', 'Không dùng -더라고요 cho hành động của chính mình.'),
        c('발표할 때 너무 떨리___.', ['더라고요', '셨어요', '세요'], '더라고요', 'Cảm giác của bản thân thì được dùng.'),
        c('민수 씨는 노래를 정말 잘 부르___.', ['더라고요', '을게요', '자'], '더라고요', 'Điều đã nghe trực tiếp.'),
      ],
    },
  },
  {
    slug: 'neun-barame',
    level: 'TOPIK5',
    pattern: 'V + 는 바람에',
    name: 'Do … nên (kết quả không mong muốn)',
    summary: 'Nêu nguyên nhân bất ngờ dẫn đến kết quả tiêu cực. Vế sau luôn ở quá khứ.',
    formation: [{ when: 'Mọi động từ', form: 'V + 는 바람에', example: ex('늦잠을 자는 바람에 지각했어요.', 'Do ngủ quên nên tôi đi trễ.') }],
    uses: [{ text: 'Nguyên nhân gây ra kết quả xấu, ngoài ý muốn.', examples: [ex('갑자기 비가 오는 바람에 옷이 다 젖었어요.', 'Do trời đổ mưa bất chợt nên quần áo ướt hết.')] }],
    notes: [
      'Chỉ dùng với động từ, luôn dạng 는 (không chia thì ở vế trước).',
      'Không dùng với kết quả tốt (khi đó dùng 덕분에) và không dùng với mệnh lệnh, rủ rê.',
    ],
    exercises: {
      easy: [
        c('버스를 놓치___ 회의에 늦었어요.', ['는 바람에', '기 때문에요', '면'], '는 바람에', 'Nguyên nhân bất ngờ, kết quả xấu.'),
        c('핸드폰을 떨어뜨리___ 화면이 깨졌어요.', ['는 바람에', '고 싶어서', '니까요'], '는 바람에', 'Kết quả ngoài ý muốn.'),
        c('길이 막히는 바람에 비행기를 ___.', ['놓쳤어요', '놓칠 거예요', '놓치세요'], '놓쳤어요', 'Vế sau ở quá khứ.'),
      ],
      medium: [
        c('친구가 도와준 ___ 일을 빨리 끝냈어요.', ['덕분에', '바람에', '때문에요'], '덕분에', 'Kết quả tốt → 덕분에.'),
        c('갑자기 손님이 오___ 외출을 못 했어요.', ['는 바람에', '은 바람에', 'ㄹ 바람에'], '는 바람에', 'Luôn dùng 는.'),
        c('알람이 안 울리는 바람에 ___.', ['늦게 일어났어요', '일찍 일어나세요', '일어나고 싶어요'], '늦게 일어났어요', 'Kết quả tiêu cực ở quá khứ.'),
      ],
      hard: [
        c('정전이 되___ 저장하지 않은 파일이 다 없어졌어요.', ['는 바람에', '어서는', '면'], '는 바람에', 'Sự cố bất ngờ.'),
        c('비가 오___ 우산을 가져가세요.', ['니까', '는 바람에', '는 덕분에'], '니까', 'Mệnh lệnh không dùng 는 바람에.'),
        c('아이가 우는 바람에 밤새 ___.', ['못 잤어요', '잘 잤어요', '자고 싶어요'], '못 잤어요', 'Kết quả xấu.'),
      ],
    },
  },

  // ─────────────────────────── TOPIK 6 ───────────────────────────
  {
    slug: 'gi-maryeonida',
    level: 'TOPIK6',
    pattern: 'V/A + 기 마련이다',
    name: 'Đương nhiên, ắt sẽ',
    summary: 'Nói về một quy luật tự nhiên, điều tất yếu xảy ra; hay dùng trong văn viết, lời khuyên.',
    formation: [{ when: 'Mọi gốc', form: 'V/A + 기 마련이다', example: ex('사람은 누구나 실수하기 마련이에요.', 'Con người ai cũng có lúc mắc lỗi.') }],
    uses: [{ text: 'Chân lý, lẽ tự nhiên.', examples: [ex('열심히 노력하면 좋은 결과가 있기 마련이다.', 'Cố gắng chăm chỉ thì ắt sẽ có kết quả tốt.'), ex('처음에는 누구나 서툴기 마련이에요.', 'Lúc đầu ai cũng vụng về.')] }],
    notes: ['Không dùng cho sự việc cá biệt, một lần: không nói 어제 비가 오기 마련이었다.', 'Gần nghĩa: -게 마련이다.'],
    exercises: {
      easy: [
        c('시간이 지나면 잊혀지___.', ['기 마련이에요', '을 뻔했어요', '고 싶어요'], '기 마련이에요', 'Quy luật tự nhiên.'),
        c('외국어를 배울 때는 실수하___.', ['기 마련이에요', '더라고요', '세요'], '기 마련이에요', 'Điều tất yếu.'),
        c('좋은 일이 있으면 나쁜 일도 있___.', ['기 마련이다', '을 뻔하다', '고 있다'], '기 마련이다', 'Lẽ thường.'),
      ],
      medium: [
        c('겨울이 가면 봄이 오___.', ['기 마련이에요', '는 바람에', '을지언정'], '기 마련이에요', 'Quy luật.'),
        c('처음에는 누구나 서투___.', ['르기 마련이에요', '를 뻔했어요', '른 바람에'], '르기 마련이에요', '서투르다 + 기 마련이다.'),
        c('비슷한 의미의 표현: 노력하면 성공하___.', ['게 마련이에요', '게 됐어요', '고 싶어요'], '게 마련이에요', '-게 마련이다 cùng nghĩa.'),
      ],
      hard: [
        c('Câu nào dùng -기 마련이다 tự nhiên? ___', ['사람은 누구나 늙기 마련이에요.', '어제 버스가 늦게 오기 마련이었어요.', '내일 친구를 만나기 마련이에요.'], '사람은 누구나 늙기 마련이에요.', 'Chỉ dùng cho quy luật chung, không dùng cho sự việc cá biệt.'),
        c('욕심이 많으면 실망도 크___.', ['기 마련이다', '을지언정', '는 한'], '기 마련이다', 'Chân lý.'),
        c('공부를 안 하면 성적이 떨어지___.', ['기 마련이에요', '게 됐어요', '더라고요'], '기 마련이에요', 'Hệ quả tất yếu.'),
      ],
    },
  },
  {
    slug: 'euljieonjeong',
    level: 'TOPIK6',
    pattern: 'V/A + (으)ㄹ지언정',
    name: 'Thà … chứ không',
    summary: 'Diễn tả ý chí mạnh: chấp nhận điều ở vế trước chứ nhất định không làm điều ở vế sau. Văn phong trang trọng.',
    formation: [
      { when: 'Gốc không có patchim', form: '+ ㄹ지언정', example: ex('굶을지언정 남의 돈은 안 빌리겠다.', 'Thà nhịn đói chứ không mượn tiền người khác.') },
      { when: 'Gốc có patchim', form: '+ 을지언정', example: ex('죽을지언정 포기하지 않겠다.', 'Thà chết chứ không bỏ cuộc.') },
    ],
    uses: [{ text: 'Thể hiện quyết tâm, lập trường.', examples: [ex('가난하게 살지언정 거짓말은 하지 않겠어요.', 'Thà sống nghèo chứ không nói dối.')] }],
    notes: ['Vế sau thường là phủ định hoặc ý chí (-지 않겠다, -(으)ㄹ 수 없다).', 'Cũng có nghĩa nhượng bộ "dù có … nhưng": 실력은 부족할지언정 열정은 누구보다 강하다.'],
    exercises: {
      easy: [
        c('굶___ 도둑질은 하지 않겠다.', ['을지언정', 'ㄹ지언정', '는 한'], '을지언정', 'Có patchim → 을지언정.'),
        c('혼자 ___ 그 사람과는 일하지 않겠어요.', ['할지언정', '하을지언정', '하는 바람에'], '할지언정', '하 + ㄹ지언정.'),
        c('늦게 갈지언정 약속은 꼭 ___.', ['지키겠어요', '안 지켜요', '지키세요'], '지키겠어요', 'Vế sau thể hiện ý chí.'),
      ],
      medium: [
        c('실력은 부족___ 열정은 누구에게도 지지 않아요.', ['할지언정', '하기 마련이고', '해서'], '할지언정', 'Nghĩa nhượng bộ.'),
        c('차라리 ___ 거짓말은 못 하겠어요.', ['혼날지언정', '혼나는 한', '혼나는 바람에'], '혼날지언정', 'Thà bị mắng chứ không nói dối.'),
        c('작은 집에 ___ 빚은 지지 않겠다.', ['살지언정', '살을지언정', '사는지언정'], '살지언정', 'Patchim ㄹ: 살 + 지언정.'),
      ],
      hard: [
        c('목숨을 잃___ 나라를 배신할 수는 없다.', ['을지언정', '는 한', '기 마련이라'], '을지언정', 'Quyết tâm mạnh.'),
        c('비록 가난___ 비굴하게 살고 싶지 않다.', ['할지언정', '하는 한', '하더라고요'], '할지언정', 'Thà nghèo nhưng không hèn.'),
        c('-(으)ㄹ지언정 thường xuất hiện trong ___.', ['văn viết, lời tuyên bố', 'hội thoại với bạn thân', 'câu hỏi lịch sự'], 'văn viết, lời tuyên bố', 'Văn phong trang trọng.'),
      ],
    },
  },
  {
    slug: 'neun-han',
    level: 'TOPIK6',
    pattern: 'V + 는 한',
    name: 'Chừng nào còn …',
    summary: 'Đặt điều kiện, giới hạn: chừng nào vế trước còn đúng thì vế sau vẫn đúng.',
    formation: [
      { when: 'Động từ, 있다/없다', form: 'V + 는 한', example: ex('제가 살아 있는 한 당신을 잊지 않을 거예요.', 'Chừng nào tôi còn sống, tôi sẽ không quên bạn.') },
      { when: 'Phủ định', form: 'V + 지 않는 한', example: ex('노력하지 않는 한 성공할 수 없다.', 'Chừng nào không nỗ lực thì không thể thành công.') },
    ],
    uses: [{ text: 'Điều kiện duy trì hoặc giới hạn.', examples: [ex('특별한 일이 없는 한 매일 운동해요.', 'Trừ khi có việc đặc biệt, tôi tập thể dục mỗi ngày.'), ex('제가 아는 한 그는 정직한 사람이에요.', 'Theo như tôi biết, anh ấy là người trung thực.')] }],
    notes: ['Cụm cố định: 제가 아는 한 (theo như tôi biết), 가능한 한 (trong khả năng có thể).', 'Hay đi với vế sau mang tính khẳng định mạnh.'],
    exercises: {
      easy: [
        c('비가 오지 않___ 경기는 진행됩니다.', ['는 한', '는 바람에', '기 마련'], '는 한', 'Điều kiện duy trì.'),
        c('제가 아___ 그 사람은 성실해요.', ['는 한', '을지언정', '더라고요'], '는 한', 'Cụm 아는 한 (알다 → 아는).'),
        c('특별한 일이 없___ 내일 갈게요.', ['는 한', '은 한', '을 한'], '는 한', '없다 + 는 한.'),
      ],
      medium: [
        c('___ 한 빨리 연락드리겠습니다.', ['가능한', '가능하는', '가능할'], '가능한', 'Cụm cố định 가능한 한.'),
        c('포기하지 않___ 기회는 다시 와요.', ['는 한', '는 바람에', '을 뻔'], '는 한', 'Chừng nào không bỏ cuộc.'),
        c('규칙을 지키지 않는 한 ___.', ['참가할 수 없어요', '참가했어요', '참가하세요'], '참가할 수 없어요', 'Vế sau khẳng định mạnh / giới hạn.'),
      ],
      hard: [
        c('내가 여기 있___ 아무도 너를 괴롭히지 못할 거야.', ['는 한', '을지언정', '기 마련이라'], '는 한', 'Chừng nào tôi còn ở đây.'),
        c('본인이 원하지 않___ 강요할 수 없습니다.', ['는 한', '은 한', '을 한'], '는 한', 'Động từ → 는 한.'),
        c('건강이 허락하___ 계속 일하고 싶어요.', ['는 한', '기 때문에', '는 바람에'], '는 한', 'Chừng nào sức khỏe còn cho phép.'),
      ],
    },
  },
]
