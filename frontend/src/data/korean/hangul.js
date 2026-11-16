// Hangul letters for the alphabet page. "sound" is a rough Vietnamese approximation for beginners,
// "say" is what the speaker button reads (a full syllable, since a lone letter cannot be pronounced).

const ex = (ko, vi) => ({ ko, vi })

export const basicVowels = [
  { letter: 'ㅏ', roman: 'a', sound: 'a', say: '아', example: ex('아이', 'đứa trẻ') },
  { letter: 'ㅑ', roman: 'ya', sound: 'ya', say: '야', example: ex('야구', 'bóng chày') },
  { letter: 'ㅓ', roman: 'eo', sound: 'ơ (miệng mở rộng)', say: '어', example: ex('어머니', 'mẹ') },
  { letter: 'ㅕ', roman: 'yeo', sound: 'yơ', say: '여', example: ex('여자', 'phụ nữ') },
  { letter: 'ㅗ', roman: 'o', sound: 'ô', say: '오', example: ex('오이', 'dưa chuột') },
  { letter: 'ㅛ', roman: 'yo', sound: 'yô', say: '요', example: ex('요리', 'nấu ăn') },
  { letter: 'ㅜ', roman: 'u', sound: 'u', say: '우', example: ex('우유', 'sữa') },
  { letter: 'ㅠ', roman: 'yu', sound: 'yu', say: '유', example: ex('유리', 'kính, thủy tinh') },
  { letter: 'ㅡ', roman: 'eu', sound: 'ư', say: '으', example: ex('그', 'cái đó, anh ấy') },
  { letter: 'ㅣ', roman: 'i', sound: 'i', say: '이', example: ex('이', 'răng; số 2') },
]

export const compoundVowels = [
  { letter: 'ㅐ', roman: 'ae', sound: 'e', say: '애', example: ex('개', 'con chó') },
  { letter: 'ㅒ', roman: 'yae', sound: 'ye', say: '얘', example: ex('얘기', 'câu chuyện') },
  { letter: 'ㅔ', roman: 'e', sound: 'ê', say: '에', example: ex('네', 'vâng') },
  { letter: 'ㅖ', roman: 'ye', sound: 'yê', say: '예', example: ex('시계', 'đồng hồ') },
  { letter: 'ㅘ', roman: 'wa', sound: 'oa', say: '와', example: ex('사과', 'quả táo') },
  { letter: 'ㅙ', roman: 'wae', sound: 'oe', say: '왜', example: ex('왜', 'tại sao') },
  { letter: 'ㅚ', roman: 'oe', sound: 'uê', say: '외', example: ex('회사', 'công ty') },
  { letter: 'ㅝ', roman: 'wo', sound: 'uơ', say: '워', example: ex('더워요', 'nóng quá') },
  { letter: 'ㅞ', roman: 'we', sound: 'uê', say: '웨', example: ex('웨이터', 'bồi bàn') },
  { letter: 'ㅟ', roman: 'wi', sound: 'uy', say: '위', example: ex('귀', 'cái tai') },
  { letter: 'ㅢ', roman: 'ui', sound: 'ưi', say: '의', example: ex('의사', 'bác sĩ') },
]

export const basicConsonants = [
  { letter: 'ㄱ', name: '기역', roman: 'g / k', sound: 'c, g nhẹ', say: '가', example: ex('가방', 'cặp sách') },
  { letter: 'ㄴ', name: '니은', roman: 'n', sound: 'n', say: '나', example: ex('나무', 'cái cây') },
  { letter: 'ㄷ', name: '디귿', roman: 'd / t', sound: 't, đ nhẹ', say: '다', example: ex('다리', 'chân; cây cầu') },
  { letter: 'ㄹ', name: '리을', roman: 'r / l', sound: 'r nhẹ (đầu âm), l (cuối âm)', say: '라', example: ex('라면', 'mì ăn liền') },
  { letter: 'ㅁ', name: '미음', roman: 'm', sound: 'm', say: '마', example: ex('물', 'nước') },
  { letter: 'ㅂ', name: '비읍', roman: 'b / p', sound: 'b, p nhẹ', say: '바', example: ex('바다', 'biển') },
  { letter: 'ㅅ', name: '시옷', roman: 's', sound: 'x (trước ㅣ đọc gần "s/sh")', say: '사', example: ex('사람', 'con người') },
  { letter: 'ㅇ', name: '이응', roman: '– / ng', sound: 'câm khi đứng đầu, "ng" khi là patchim', say: '아', example: ex('강', 'con sông') },
  { letter: 'ㅈ', name: '지읒', roman: 'j', sound: 'ch nhẹ', say: '자', example: ex('자다', 'ngủ') },
  { letter: 'ㅎ', name: '히읗', roman: 'h', sound: 'h', say: '하', example: ex('하늘', 'bầu trời') },
]

export const aspiratedConsonants = [
  { letter: 'ㅊ', name: '치읓', roman: 'ch', sound: 'ch bật hơi', say: '차', example: ex('친구', 'bạn bè') },
  { letter: 'ㅋ', name: '키읔', roman: 'k', sound: 'kh', say: '카', example: ex('커피', 'cà phê') },
  { letter: 'ㅌ', name: '티읕', roman: 't', sound: 'th', say: '타', example: ex('토요일', 'thứ Bảy') },
  { letter: 'ㅍ', name: '피읖', roman: 'p', sound: 'p bật hơi (gần "ph")', say: '파', example: ex('포도', 'quả nho') },
]

export const tenseConsonants = [
  { letter: 'ㄲ', name: '쌍기역', roman: 'kk', sound: 'c căng', say: '까', example: ex('까치', 'chim ác là') },
  { letter: 'ㄸ', name: '쌍디귿', roman: 'tt', sound: 't căng', say: '따', example: ex('딸기', 'dâu tây') },
  { letter: 'ㅃ', name: '쌍비읍', roman: 'pp', sound: 'p căng', say: '빠', example: ex('빵', 'bánh mì') },
  { letter: 'ㅆ', name: '쌍시옷', roman: 'ss', sound: 'x căng', say: '싸', example: ex('싸다', 'rẻ') },
  { letter: 'ㅉ', name: '쌍지읒', roman: 'jj', sound: 'ch căng', say: '짜', example: ex('짜다', 'mặn') },
]

// 7 sounds of the final consonant
export const batchimSounds = [
  { sound: 'ㄱ', roman: 'k', letters: ['ㄱ', 'ㅋ', 'ㄲ'], examples: [ex('책', 'sách'), ex('부엌', 'nhà bếp'), ex('밖', 'bên ngoài')] },
  { sound: 'ㄴ', roman: 'n', letters: ['ㄴ'], examples: [ex('산', 'núi'), ex('눈', 'mắt; tuyết')] },
  { sound: 'ㄷ', roman: 't', letters: ['ㄷ', 'ㅅ', 'ㅆ', 'ㅈ', 'ㅊ', 'ㅌ', 'ㅎ'], examples: [ex('옷', 'quần áo'), ex('낮', 'ban ngày'), ex('꽃', 'hoa'), ex('밭', 'ruộng')] },
  { sound: 'ㄹ', roman: 'l', letters: ['ㄹ'], examples: [ex('물', 'nước'), ex('말', 'lời nói; con ngựa')] },
  { sound: 'ㅁ', roman: 'm', letters: ['ㅁ'], examples: [ex('밤', 'ban đêm'), ex('봄', 'mùa xuân')] },
  { sound: 'ㅂ', roman: 'p', letters: ['ㅂ', 'ㅍ'], examples: [ex('밥', 'cơm'), ex('앞', 'phía trước')] },
  { sound: 'ㅇ', roman: 'ng', letters: ['ㅇ'], examples: [ex('강', 'sông'), ex('방', 'phòng')] },
]

// Common sound changes between syllables
export const soundRules = [
  {
    name: 'Nối âm (연음)',
    desc: 'Patchim đứng trước một âm tiết bắt đầu bằng ㅇ sẽ được đọc nối sang âm tiết sau.',
    examples: [{ ko: '한국어', said: '[한구거]', vi: 'tiếng Hàn' }, { ko: '음악', said: '[으막]', vi: 'âm nhạc' }],
  },
  {
    name: 'Mũi hóa (비음화)',
    desc: 'Patchim đọc [k], [t], [p] đứng trước ㄴ hoặc ㅁ đổi thành [ng], [n], [m].',
    examples: [{ ko: '감사합니다', said: '[감사함니다]', vi: 'cảm ơn' }, { ko: '한국말', said: '[한궁말]', vi: 'tiếng Hàn' }],
  },
  {
    name: 'Bật hơi (격음화)',
    desc: 'ㅎ đứng cạnh ㄱ, ㄷ, ㅂ, ㅈ làm chúng thành ㅋ, ㅌ, ㅍ, ㅊ.',
    examples: [{ ko: '좋다', said: '[조타]', vi: 'tốt' }, { ko: '축하', said: '[추카]', vi: 'chúc mừng' }],
  },
  {
    name: 'Lỏng hóa (유음화)',
    desc: 'ㄴ đứng cạnh ㄹ thì cả hai đọc thành [ㄹㄹ].',
    examples: [{ ko: '설날', said: '[설랄]', vi: 'Tết' }, { ko: '신라', said: '[실라]', vi: 'Silla' }],
  },
  {
    name: 'Vòm hóa (구개음화)',
    desc: 'Patchim ㄷ, ㅌ gặp 이 đọc thành [지], [치].',
    examples: [{ ko: '같이', said: '[가치]', vi: 'cùng nhau' }, { ko: '굳이', said: '[구지]', vi: 'nhất thiết' }],
  },
  {
    name: 'Căng hóa (경음화)',
    desc: 'Sau patchim [k], [t], [p], các phụ âm ㄱ, ㄷ, ㅂ, ㅅ, ㅈ đọc căng thành ㄲ, ㄸ, ㅃ, ㅆ, ㅉ.',
    examples: [{ ko: '학교', said: '[학꾜]', vi: 'trường học' }, { ko: '식당', said: '[식땅]', vi: 'nhà hàng' }],
  },
]
