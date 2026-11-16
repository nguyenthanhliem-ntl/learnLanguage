// Nội dung 12 thì tiếng Anh (tự soạn, đối chiếu British Council LearnEnglish / Cambridge Grammar).
// Mỗi thì: công thức 3 dạng câu, cách dùng (kèm ví dụ), dấu hiệu nhận biết, trường hợp đặc biệt & lưu ý.
// Bài tập 3 cấp độ nằm ở tenseExercises.js.

export const TIME_GROUPS = [
  { key: 'present', label: 'Hiện tại' },
  { key: 'past', label: 'Quá khứ' },
  { key: 'future', label: 'Tương lai' },
]

export const ASPECTS = [
  { key: 'simple', label: 'Đơn' },
  { key: 'continuous', label: 'Tiếp diễn' },
  { key: 'perfect', label: 'Hoàn thành' },
  { key: 'perfectContinuous', label: 'Hoàn thành tiếp diễn' },
]

export const tenses = [
  // ───────────────────────── HIỆN TẠI ─────────────────────────
  {
    slug: 'present-simple',
    name: 'Hiện tại đơn',
    en: 'Present Simple',
    group: 'present',
    aspect: 'simple',
    level: 'A1',
    summary: 'Diễn tả thói quen, sự thật hiển nhiên và những việc lặp đi lặp lại.',
    formulas: [
      { type: 'positive', formula: 'S + V(s/es)', alt: 'S + am / is / are + …', example: { en: 'She works in a hospital.', vi: 'Cô ấy làm việc ở bệnh viện.' } },
      { type: 'negative', formula: 'S + do / does + not + V', alt: 'S + am / is / are + not + …', example: { en: "He doesn't like coffee.", vi: 'Anh ấy không thích cà phê.' } },
      { type: 'question', formula: 'Do / Does + S + V?', alt: 'Am / Is / Are + S + …?', example: { en: 'Do you speak English?', vi: 'Bạn có nói tiếng Anh không?' } },
    ],
    uses: [
      { text: 'Thói quen, hành động lặp đi lặp lại', examples: [{ en: 'I get up at six every morning.', vi: 'Tôi dậy lúc 6 giờ mỗi sáng.' }] },
      { text: 'Sự thật hiển nhiên, chân lý', examples: [{ en: 'Water boils at 100 degrees Celsius.', vi: 'Nước sôi ở 100 độ C.' }] },
      { text: 'Lịch trình, thời gian biểu cố định (tàu xe, lịch học…)', examples: [{ en: 'The train leaves at 7 a.m.', vi: 'Tàu khởi hành lúc 7 giờ sáng.' }] },
      { text: 'Trạng thái, cảm xúc, sở thích, sở hữu', examples: [{ en: 'They have two children.', vi: 'Họ có hai đứa con.' }] },
    ],
    signals: ['always', 'usually', 'often', 'sometimes', 'rarely', 'never', 'every day / week', 'once a week', 'on Mondays'],
    notes: [
      'Ngôi thứ ba số ít (he, she, it, danh từ số ít) thêm -s: work → works.',
      'Động từ tận cùng -o, -s, -x, -z, -ch, -sh thêm -es: go → goes, watch → watches.',
      'Phụ âm + y → bỏ y thêm -ies: study → studies. Nguyên âm + y giữ nguyên: play → plays.',
      'have → has (She has a cat).',
      'Sau do / does động từ trở về nguyên mẫu: She doesn’t go (không nói doesn’t goes).',
      'Trạng từ tần suất đứng trước động từ thường nhưng sau to be: I often walk / I am often late.',
    ],
  },
  {
    slug: 'present-continuous',
    name: 'Hiện tại tiếp diễn',
    en: 'Present Continuous',
    group: 'present',
    aspect: 'continuous',
    level: 'A1',
    summary: 'Diễn tả hành động đang xảy ra lúc nói hoặc quanh thời điểm hiện tại.',
    formulas: [
      { type: 'positive', formula: 'S + am / is / are + V-ing', example: { en: 'I am reading a book now.', vi: 'Bây giờ tôi đang đọc sách.' } },
      { type: 'negative', formula: 'S + am / is / are + not + V-ing', example: { en: "They aren't watching TV.", vi: 'Họ không đang xem ti vi.' } },
      { type: 'question', formula: 'Am / Is / Are + S + V-ing?', example: { en: 'Is she cooking dinner?', vi: 'Cô ấy đang nấu bữa tối à?' } },
    ],
    uses: [
      { text: 'Hành động đang xảy ra ngay lúc nói', examples: [{ en: 'Look! The baby is sleeping.', vi: 'Nhìn kìa! Em bé đang ngủ.' }] },
      { text: 'Việc tạm thời, đang diễn ra quanh hiện tại', examples: [{ en: 'She is staying with her aunt this week.', vi: 'Tuần này cô ấy đang ở nhà dì.' }] },
      { text: 'Kế hoạch đã sắp xếp trong tương lai gần', examples: [{ en: 'We are meeting him tomorrow.', vi: 'Ngày mai chúng tôi sẽ gặp anh ấy (đã hẹn).' }] },
      { text: 'Phàn nàn về thói quen gây khó chịu (đi với always)', examples: [{ en: 'He is always coming late!', vi: 'Anh ta lúc nào cũng đến muộn!' }] },
    ],
    signals: ['now', 'right now', 'at the moment', 'at present', 'Look!', 'Listen!', 'Be quiet!', 'today', 'this week'],
    notes: [
      'Bỏ e câm rồi thêm -ing: make → making, write → writing.',
      'Động từ 1 âm tiết dạng phụ âm–nguyên âm–phụ âm: nhân đôi phụ âm cuối: run → running, sit → sitting.',
      '-ie → -ying: lie → lying, die → dying.',
      'Động từ chỉ trạng thái thường không dùng tiếp diễn: know, like, love, hate, want, need, understand, believe, belong. Nói I know him, không nói I am knowing him.',
    ],
  },
  {
    slug: 'present-perfect',
    name: 'Hiện tại hoàn thành',
    en: 'Present Perfect',
    group: 'present',
    aspect: 'perfect',
    level: 'A2',
    summary: 'Diễn tả việc đã xảy ra nhưng còn liên quan tới hiện tại, hoặc bắt đầu trong quá khứ và kéo dài đến nay.',
    formulas: [
      { type: 'positive', formula: 'S + have / has + V3 (V-ed)', example: { en: 'I have visited Hanoi twice.', vi: 'Tôi đã đến Hà Nội hai lần.' } },
      { type: 'negative', formula: 'S + have / has + not + V3', example: { en: "She hasn't finished her homework yet.", vi: 'Cô ấy vẫn chưa làm xong bài tập.' } },
      { type: 'question', formula: 'Have / Has + S + V3?', example: { en: 'Have you ever eaten sushi?', vi: 'Bạn đã bao giờ ăn sushi chưa?' } },
    ],
    uses: [
      { text: 'Kinh nghiệm, trải nghiệm (không nói rõ khi nào)', examples: [{ en: 'I have been to Japan.', vi: 'Tôi đã từng đến Nhật.' }] },
      { text: 'Bắt đầu trong quá khứ, kéo dài đến hiện tại', examples: [{ en: 'She has lived here for five years.', vi: 'Cô ấy đã sống ở đây 5 năm (đến giờ vẫn sống).' }] },
      { text: 'Vừa mới xảy ra', examples: [{ en: 'I have just finished my work.', vi: 'Tôi vừa làm xong việc.' }] },
      { text: 'Việc trong quá khứ để lại kết quả ở hiện tại', examples: [{ en: "I have lost my key, so I can't open the door.", vi: 'Tôi đã làm mất chìa khóa nên không mở được cửa.' }] },
    ],
    signals: ['just', 'already', 'yet', 'ever', 'never', 'for + khoảng thời gian', 'since + mốc thời gian', 'so far', 'recently', 'up to now', 'many times'],
    notes: [
      'Không dùng với thời gian xác định trong quá khứ (yesterday, last year, in 2020, ago) — khi đó dùng quá khứ đơn.',
      'for + khoảng thời gian (for two years); since + mốc thời gian (since 2020, since Monday).',
      'already thường dùng trong câu khẳng định; yet dùng trong câu phủ định / nghi vấn, đứng cuối câu.',
      'been to (đã đi và đã về) khác gone to (đã đi, chưa về): He has gone to Hue (giờ đang ở Huế).',
      'Động từ bất quy tắc phải học cột V3: go – went – gone, see – saw – seen, eat – ate – eaten.',
    ],
  },
  {
    slug: 'present-perfect-continuous',
    name: 'Hiện tại hoàn thành tiếp diễn',
    en: 'Present Perfect Continuous',
    group: 'present',
    aspect: 'perfectContinuous',
    level: 'B1',
    summary: 'Nhấn mạnh quá trình của hành động bắt đầu trong quá khứ và kéo dài liên tục tới hiện tại.',
    formulas: [
      { type: 'positive', formula: 'S + have / has + been + V-ing', example: { en: 'I have been waiting for two hours.', vi: 'Tôi đã đợi suốt hai tiếng rồi.' } },
      { type: 'negative', formula: 'S + have / has + not + been + V-ing', example: { en: "He hasn't been sleeping well.", vi: 'Dạo này anh ấy ngủ không ngon.' } },
      { type: 'question', formula: 'Have / Has + S + been + V-ing?', example: { en: 'How long have you been learning English?', vi: 'Bạn học tiếng Anh được bao lâu rồi?' } },
    ],
    uses: [
      { text: 'Hành động kéo dài liên tục từ quá khứ đến hiện tại (nhấn mạnh thời gian, quá trình)', examples: [{ en: 'It has been raining all day.', vi: 'Trời mưa suốt cả ngày.' }] },
      { text: 'Hành động vừa kết thúc nhưng còn để lại dấu hiệu', examples: [{ en: 'She is tired because she has been running.', vi: 'Cô ấy mệt vì vừa chạy bộ.' }] },
    ],
    signals: ['for', 'since', 'all day', 'all morning', 'how long', 'recently', 'lately'],
    notes: [
      'So với hiện tại hoàn thành: thì này nhấn mạnh quá trình, khoảng thời gian; hiện tại hoàn thành nhấn mạnh kết quả, số lượng. I have read three books (kết quả) / I have been reading all day (quá trình).',
      'Không dùng với động từ trạng thái: I have known her for years (không nói have been knowing).',
    ],
  },

  // ───────────────────────── QUÁ KHỨ ─────────────────────────
  {
    slug: 'past-simple',
    name: 'Quá khứ đơn',
    en: 'Past Simple',
    group: 'past',
    aspect: 'simple',
    level: 'A1',
    summary: 'Diễn tả hành động đã xảy ra và kết thúc tại thời điểm xác định trong quá khứ.',
    formulas: [
      { type: 'positive', formula: 'S + V2 (V-ed)', alt: 'S + was / were + …', example: { en: 'I visited Da Nang last year.', vi: 'Năm ngoái tôi đã đi Đà Nẵng.' } },
      { type: 'negative', formula: 'S + did + not + V', alt: 'S + was / were + not + …', example: { en: "We didn't see him yesterday.", vi: 'Hôm qua chúng tôi không gặp anh ấy.' } },
      { type: 'question', formula: 'Did + S + V?', alt: 'Was / Were + S + …?', example: { en: 'Did you go to school yesterday?', vi: 'Hôm qua bạn có đi học không?' } },
    ],
    uses: [
      { text: 'Hành động đã xảy ra và kết thúc ở thời điểm xác định trong quá khứ', examples: [{ en: 'She went to Hanoi two years ago.', vi: 'Cô ấy đã đi Hà Nội cách đây hai năm.' }] },
      { text: 'Chuỗi hành động nối tiếp nhau trong quá khứ', examples: [{ en: 'He came home, ate dinner and went to bed.', vi: 'Anh ấy về nhà, ăn tối rồi đi ngủ.' }] },
      { text: 'Thói quen trong quá khứ (nay không còn)', examples: [{ en: 'When I was a child, I played football every day.', vi: 'Hồi nhỏ ngày nào tôi cũng chơi bóng đá.' }] },
    ],
    signals: ['yesterday', 'last night / week / year', '… ago', 'in 2010', 'when I was a child', 'this morning (đã qua)'],
    notes: [
      'Quy tắc thêm -ed: tận cùng e chỉ thêm d (live → lived); phụ âm + y → ied (study → studied); nhân đôi phụ âm cuối (stop → stopped).',
      'Phát âm -ed: /t/ sau âm vô thanh (worked), /ɪd/ sau t, d (wanted), /d/ trong các trường hợp còn lại (played).',
      'Động từ bất quy tắc phải học cột V2: go → went, see → saw, buy → bought.',
      'Sau did động từ trở về nguyên mẫu: Did you go? (không nói Did you went?).',
      'I / he / she / it đi với was; you / we / they đi với were.',
    ],
  },
  {
    slug: 'past-continuous',
    name: 'Quá khứ tiếp diễn',
    en: 'Past Continuous',
    group: 'past',
    aspect: 'continuous',
    level: 'A2',
    summary: 'Diễn tả hành động đang diễn ra tại một thời điểm hoặc khi một hành động khác xen vào trong quá khứ.',
    formulas: [
      { type: 'positive', formula: 'S + was / were + V-ing', example: { en: 'At 8 p.m. yesterday, I was watching TV.', vi: 'Lúc 8 giờ tối qua, tôi đang xem ti vi.' } },
      { type: 'negative', formula: 'S + was / were + not + V-ing', example: { en: "We weren't sleeping at midnight.", vi: 'Lúc nửa đêm chúng tôi chưa ngủ.' } },
      { type: 'question', formula: 'Was / Were + S + V-ing?', example: { en: 'Were you working at that time?', vi: 'Lúc đó bạn đang làm việc à?' } },
    ],
    uses: [
      { text: 'Hành động đang diễn ra tại một thời điểm xác định trong quá khứ', examples: [{ en: 'He was reading a book at this time last week.', vi: 'Giờ này tuần trước anh ấy đang đọc sách.' }] },
      { text: 'Hành động đang diễn ra thì hành động khác xen vào', examples: [{ en: 'I was cooking when the phone rang.', vi: 'Tôi đang nấu ăn thì điện thoại reo.' }] },
      { text: 'Hai hành động diễn ra song song trong quá khứ', examples: [{ en: 'While I was reading, my sister was singing.', vi: 'Trong khi tôi đọc sách thì em gái tôi hát.' }] },
    ],
    signals: ['at + giờ + yesterday', 'at this time last week', 'when', 'while', 'all day yesterday'],
    notes: [
      'Hành động đang diễn ra dùng quá khứ tiếp diễn, hành động xen vào dùng quá khứ đơn.',
      'while thường đi với quá khứ tiếp diễn, when thường đi với quá khứ đơn: I was sleeping when he called.',
      'Không dùng với động từ trạng thái (know, like, want…).',
    ],
  },
  {
    slug: 'past-perfect',
    name: 'Quá khứ hoàn thành',
    en: 'Past Perfect',
    group: 'past',
    aspect: 'perfect',
    level: 'B1',
    summary: 'Diễn tả hành động xảy ra trước một hành động hoặc thời điểm khác trong quá khứ.',
    formulas: [
      { type: 'positive', formula: 'S + had + V3 (V-ed)', example: { en: 'When I arrived, the train had left.', vi: 'Khi tôi đến thì tàu đã rời đi.' } },
      { type: 'negative', formula: 'S + had + not + V3', example: { en: "They hadn't met before the party.", vi: 'Trước bữa tiệc họ chưa từng gặp nhau.' } },
      { type: 'question', formula: 'Had + S + V3?', example: { en: 'Had you finished your work before you left?', vi: 'Bạn đã làm xong việc trước khi về chưa?' } },
    ],
    uses: [
      { text: 'Hành động xảy ra trước một hành động khác trong quá khứ', examples: [{ en: 'She had finished her homework before she went out.', vi: 'Cô ấy đã làm xong bài tập trước khi ra ngoài.' }] },
      { text: 'Hành động hoàn thành trước một mốc thời gian trong quá khứ', examples: [{ en: 'By 2010, he had graduated from university.', vi: 'Đến năm 2010, anh ấy đã tốt nghiệp đại học.' }] },
      { text: 'Câu điều kiện loại 3 (giả định trái với quá khứ)', examples: [{ en: 'If I had known, I would have helped you.', vi: 'Nếu tôi biết thì tôi đã giúp bạn rồi.' }] },
    ],
    signals: ['before', 'after', 'by the time', 'by + mốc quá khứ', 'when', 'already', 'just', 'never … before'],
    notes: [
      'Hành động xảy ra trước dùng quá khứ hoàn thành, hành động xảy ra sau dùng quá khứ đơn.',
      'Khi before / after đã thể hiện rõ thứ tự, có thể dùng quá khứ đơn cho cả hai: She left after she ate.',
      'had dùng chung cho mọi ngôi (I had, she had, they had).',
    ],
  },
  {
    slug: 'past-perfect-continuous',
    name: 'Quá khứ hoàn thành tiếp diễn',
    en: 'Past Perfect Continuous',
    group: 'past',
    aspect: 'perfectContinuous',
    level: 'B2',
    summary: 'Nhấn mạnh quá trình của hành động kéo dài liên tục trước một thời điểm hoặc hành động khác trong quá khứ.',
    formulas: [
      { type: 'positive', formula: 'S + had + been + V-ing', example: { en: 'I had been waiting for an hour when she arrived.', vi: 'Tôi đã đợi một tiếng thì cô ấy mới đến.' } },
      { type: 'negative', formula: 'S + had + not + been + V-ing', example: { en: "He hadn't been working there long.", vi: 'Anh ấy chưa làm ở đó được lâu.' } },
      { type: 'question', formula: 'Had + S + been + V-ing?', example: { en: 'How long had you been living there?', vi: 'Bạn đã sống ở đó bao lâu rồi (tính đến lúc đó)?' } },
    ],
    uses: [
      { text: 'Hành động kéo dài liên tục trước một hành động khác trong quá khứ', examples: [{ en: 'They had been working there for five years when the company closed.', vi: 'Họ đã làm ở đó 5 năm thì công ty đóng cửa.' }] },
      { text: 'Giải thích nguyên nhân của một trạng thái trong quá khứ', examples: [{ en: 'He was tired because he had been working all day.', vi: 'Anh ấy mệt vì đã làm việc cả ngày.' }] },
    ],
    signals: ['for', 'since', 'before', 'by the time', 'until then', 'how long'],
    notes: [
      'So với quá khứ hoàn thành: thì này nhấn mạnh quá trình kéo dài, quá khứ hoàn thành nhấn mạnh kết quả.',
      'Không dùng với động từ trạng thái.',
    ],
  },

  // ───────────────────────── TƯƠNG LAI ─────────────────────────
  {
    slug: 'future-simple',
    name: 'Tương lai đơn',
    en: 'Future Simple',
    group: 'future',
    aspect: 'simple',
    level: 'A1',
    summary: 'Diễn tả quyết định tức thời, dự đoán, lời hứa hoặc đề nghị về tương lai.',
    formulas: [
      { type: 'positive', formula: 'S + will + V', example: { en: 'I will help you.', vi: 'Tôi sẽ giúp bạn.' } },
      { type: 'negative', formula: "S + will not (won't) + V", example: { en: "She won't come to the party.", vi: 'Cô ấy sẽ không đến bữa tiệc.' } },
      { type: 'question', formula: 'Will + S + V?', example: { en: 'Will you open the door, please?', vi: 'Bạn mở cửa giúp tôi được không?' } },
    ],
    uses: [
      { text: 'Quyết định ngay lúc nói', examples: [{ en: "I'm thirsty. I will get some water.", vi: 'Tôi khát quá. Tôi sẽ đi lấy nước.' }] },
      { text: 'Dự đoán không có căn cứ chắc chắn', examples: [{ en: 'I think it will rain tomorrow.', vi: 'Tôi nghĩ ngày mai trời sẽ mưa.' }] },
      { text: 'Lời hứa, đề nghị, yêu cầu', examples: [{ en: "Don't worry, I will call you.", vi: 'Đừng lo, tôi sẽ gọi cho bạn.' }] },
      { text: 'Mệnh đề chính của câu điều kiện loại 1', examples: [{ en: 'If it rains, I will stay at home.', vi: 'Nếu trời mưa, tôi sẽ ở nhà.' }] },
    ],
    signals: ['tomorrow', 'next week / month / year', 'soon', 'in the future', 'I think', 'probably', 'perhaps'],
    notes: [
      'Kế hoạch đã có từ trước hoặc dự đoán có căn cứ rõ ràng thì dùng be going to: Look at those clouds! It is going to rain.',
      "won't là dạng rút gọn của will not.",
      'Shall dùng với I / we khi đề nghị, gợi ý: Shall we go?',
      'Sau when, if, as soon as, before, after (nói về tương lai) dùng hiện tại đơn: When I arrive, I will call you (không nói When I will arrive).',
    ],
  },
  {
    slug: 'future-continuous',
    name: 'Tương lai tiếp diễn',
    en: 'Future Continuous',
    group: 'future',
    aspect: 'continuous',
    level: 'B1',
    summary: 'Diễn tả hành động sẽ đang diễn ra tại một thời điểm xác định trong tương lai.',
    formulas: [
      { type: 'positive', formula: 'S + will + be + V-ing', example: { en: 'At 9 a.m. tomorrow, I will be working.', vi: '9 giờ sáng mai tôi sẽ đang làm việc.' } },
      { type: 'negative', formula: "S + will not (won't) + be + V-ing", example: { en: "She won't be working tomorrow evening.", vi: 'Tối mai cô ấy sẽ không làm việc.' } },
      { type: 'question', formula: 'Will + S + be + V-ing?', example: { en: 'Will you be using the car tonight?', vi: 'Tối nay bạn có dùng xe không?' } },
    ],
    uses: [
      { text: 'Hành động sẽ đang diễn ra tại một thời điểm xác định trong tương lai', examples: [{ en: 'This time next week, they will be lying on the beach.', vi: 'Giờ này tuần sau họ sẽ đang nằm trên bãi biển.' }] },
      { text: 'Hành động sẽ đang diễn ra thì một hành động khác xen vào', examples: [{ en: 'When you get home, I will be cooking.', vi: 'Khi bạn về đến nhà thì tôi sẽ đang nấu ăn.' }] },
      { text: 'Hỏi lịch sự về kế hoạch của người khác', examples: [{ en: 'Will you be coming to the meeting?', vi: 'Bạn có đến buổi họp không?' }] },
    ],
    signals: ['at this time tomorrow', 'at + giờ + tomorrow', 'this time next week', 'when + hiện tại đơn'],
    notes: [
      'Mệnh đề với when chỉ tương lai dùng hiện tại đơn: When you arrive, I will be waiting.',
      'Không dùng với động từ trạng thái.',
    ],
  },
  {
    slug: 'future-perfect',
    name: 'Tương lai hoàn thành',
    en: 'Future Perfect',
    group: 'future',
    aspect: 'perfect',
    level: 'B2',
    summary: 'Diễn tả hành động sẽ hoàn thành trước một thời điểm hoặc hành động khác trong tương lai.',
    formulas: [
      { type: 'positive', formula: 'S + will + have + V3 (V-ed)', example: { en: 'By next year, she will have graduated.', vi: 'Đến năm sau cô ấy sẽ tốt nghiệp xong.' } },
      { type: 'negative', formula: "S + will not (won't) + have + V3", example: { en: "They won't have finished the bridge by June.", vi: 'Đến tháng 6 họ vẫn chưa xây xong cây cầu.' } },
      { type: 'question', formula: 'Will + S + have + V3?', example: { en: 'Will you have finished the report by Friday?', vi: 'Đến thứ Sáu bạn sẽ làm xong báo cáo chứ?' } },
    ],
    uses: [
      { text: 'Hành động sẽ hoàn thành trước một mốc thời gian trong tương lai', examples: [{ en: 'I will have finished the report by 5 p.m.', vi: 'Trước 5 giờ chiều tôi sẽ làm xong báo cáo.' }] },
      { text: 'Hành động sẽ hoàn thành trước một hành động khác trong tương lai', examples: [{ en: 'By the time you arrive, we will have left.', vi: 'Lúc bạn đến thì chúng tôi đã đi rồi.' }] },
    ],
    signals: ['by + mốc tương lai (by tomorrow, by next year)', 'by the time + hiện tại đơn', 'before + mốc tương lai', 'in + khoảng thời gian'],
    notes: [
      'Mệnh đề by the time dùng hiện tại đơn, mệnh đề chính dùng tương lai hoàn thành.',
      'Nhấn mạnh kết quả đã xong tại mốc thời gian đó.',
    ],
  },
  {
    slug: 'future-perfect-continuous',
    name: 'Tương lai hoàn thành tiếp diễn',
    en: 'Future Perfect Continuous',
    group: 'future',
    aspect: 'perfectContinuous',
    level: 'C1',
    summary: 'Nhấn mạnh khoảng thời gian hành động kéo dài liên tục tính đến một thời điểm trong tương lai.',
    formulas: [
      { type: 'positive', formula: 'S + will + have + been + V-ing', example: { en: 'By next month, I will have been working here for ten years.', vi: 'Đến tháng sau là tôi đã làm ở đây được 10 năm.' } },
      { type: 'negative', formula: "S + will not (won't) + have + been + V-ing", example: { en: "She won't have been living here long by then.", vi: 'Đến lúc đó cô ấy cũng chưa sống ở đây được lâu.' } },
      { type: 'question', formula: 'Will + S + have + been + V-ing?', example: { en: 'How long will you have been studying by June?', vi: 'Đến tháng 6 bạn sẽ học được bao lâu rồi?' } },
    ],
    uses: [
      { text: 'Hành động kéo dài liên tục đến một thời điểm trong tương lai, nhấn mạnh khoảng thời gian', examples: [{ en: 'By 6 p.m., she will have been studying for five hours.', vi: 'Đến 6 giờ chiều, cô ấy sẽ học được 5 tiếng liên tục.' }] },
    ],
    signals: ['for + khoảng thời gian + by / by the time + mốc tương lai', 'by then', 'when + hiện tại đơn'],
    notes: [
      'Ít dùng trong giao tiếp hằng ngày; thường đi với for + khoảng thời gian.',
      'Không dùng với động từ trạng thái.',
    ],
  },
]

// Các thì hay bị nhầm với nhau
export const comparisons = [
  {
    title: 'Hiện tại đơn và Hiện tại tiếp diễn',
    tenses: ['present-simple', 'present-continuous'],
    points: [
      'Hiện tại đơn: thói quen, sự thật, việc lâu dài.',
      'Hiện tại tiếp diễn: việc đang xảy ra lúc nói hoặc mang tính tạm thời.',
    ],
    examples: [{ en: 'I usually drink tea, but today I am drinking coffee.', vi: 'Tôi thường uống trà, nhưng hôm nay tôi đang uống cà phê.' }],
  },
  {
    title: 'Quá khứ đơn và Hiện tại hoàn thành',
    tenses: ['past-simple', 'present-perfect'],
    points: [
      'Quá khứ đơn: có thời gian xác định, việc đã kết thúc (yesterday, last year, ago).',
      'Hiện tại hoàn thành: không nói rõ thời gian, hoặc còn liên quan / kéo dài đến hiện tại.',
    ],
    examples: [
      { en: 'I lost my key yesterday.', vi: 'Hôm qua tôi làm mất chìa khóa (chỉ kể lại).' },
      { en: "I have lost my key. I can't get in.", vi: 'Tôi làm mất chìa khóa rồi, không vào nhà được (kết quả ở hiện tại).' },
    ],
  },
  {
    title: 'Hiện tại hoàn thành và Hiện tại hoàn thành tiếp diễn',
    tenses: ['present-perfect', 'present-perfect-continuous'],
    points: [
      'Hiện tại hoàn thành: nhấn mạnh kết quả, số lượng đã làm được.',
      'Hiện tại hoàn thành tiếp diễn: nhấn mạnh quá trình, thời gian kéo dài.',
    ],
    examples: [
      { en: 'I have written three emails.', vi: 'Tôi đã viết xong ba email.' },
      { en: 'I have been writing emails all morning.', vi: 'Tôi viết email suốt cả buổi sáng.' },
    ],
  },
  {
    title: 'Quá khứ đơn và Quá khứ tiếp diễn',
    tenses: ['past-simple', 'past-continuous'],
    points: [
      'Quá khứ tiếp diễn: hành động đang diễn ra (dài, làm nền).',
      'Quá khứ đơn: hành động ngắn xen vào.',
    ],
    examples: [{ en: 'I was having dinner when he called.', vi: 'Tôi đang ăn tối thì anh ấy gọi.' }],
  },
  {
    title: 'Quá khứ đơn và Quá khứ hoàn thành',
    tenses: ['past-simple', 'past-perfect'],
    points: [
      'Quá khứ hoàn thành: việc xảy ra trước.',
      'Quá khứ đơn: việc xảy ra sau (hoặc các việc nối tiếp nhau).',
    ],
    examples: [
      { en: 'When I got to the station, the train had left.', vi: 'Khi tôi đến ga thì tàu đã đi mất rồi.' },
      { en: 'When I got to the station, the train left.', vi: 'Khi tôi đến ga thì tàu (mới) rời đi.' },
    ],
  },
  {
    title: 'Will và Be going to',
    tenses: ['future-simple'],
    points: [
      'will: quyết định ngay lúc nói, dự đoán chung chung, lời hứa.',
      'be going to: kế hoạch đã định từ trước, dự đoán có căn cứ trước mắt.',
    ],
    examples: [
      { en: "I'm tired. I think I will go to bed.", vi: 'Tôi mệt rồi. Chắc tôi sẽ đi ngủ (vừa quyết định).' },
      { en: 'Look at those clouds! It is going to rain.', vi: 'Nhìn mây kìa! Trời sắp mưa rồi (có căn cứ).' },
    ],
  },
]

export function findTense(slug) {
  return tenses.find((x) => x.slug === slug) ?? null
}
