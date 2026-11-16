-- V4: dữ liệu kho từ vựng A1–C2 (soạn theo Oxford 3000/5000, kèm nghĩa tiếng Việt). Sinh tự động, không sửa tay.

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A1', 'a', 'determiner', '/ə/', 'một (mạo từ)' FROM DUAL
UNION ALL SELECT 'A1', 'about', 'preposition', '/əˈbaʊt/', 'về, khoảng' FROM DUAL
UNION ALL SELECT 'A1', 'above', 'preposition', '/əˈbʌv/', 'ở trên' FROM DUAL
UNION ALL SELECT 'A1', 'across', 'preposition', '/əˈkrɒs/', 'ngang qua' FROM DUAL
UNION ALL SELECT 'A1', 'action', 'noun', '/ˈækʃn/', 'hành động' FROM DUAL
UNION ALL SELECT 'A1', 'activity', 'noun', '/ækˈtɪvəti/', 'hoạt động' FROM DUAL
UNION ALL SELECT 'A1', 'actor', 'noun', '/ˈæktə(r)/', 'nam diễn viên' FROM DUAL
UNION ALL SELECT 'A1', 'actress', 'noun', '/ˈæktrəs/', 'nữ diễn viên' FROM DUAL
UNION ALL SELECT 'A1', 'add', 'verb', '/æd/', 'thêm vào, cộng' FROM DUAL
UNION ALL SELECT 'A1', 'address', 'noun', '/əˈdres/', 'địa chỉ' FROM DUAL
UNION ALL SELECT 'A1', 'adult', 'noun', '/ˈædʌlt/', 'người lớn' FROM DUAL
UNION ALL SELECT 'A1', 'advice', 'noun', '/ədˈvaɪs/', 'lời khuyên' FROM DUAL
UNION ALL SELECT 'A1', 'afraid', 'adjective', '/əˈfreɪd/', 'sợ hãi' FROM DUAL
UNION ALL SELECT 'A1', 'after', 'preposition', '/ˈɑːftə(r)/', 'sau, sau khi' FROM DUAL
UNION ALL SELECT 'A1', 'afternoon', 'noun', '/ˌɑːftəˈnuːn/', 'buổi chiều' FROM DUAL
UNION ALL SELECT 'A1', 'again', 'adverb', '/əˈɡen/', 'lại, lần nữa' FROM DUAL
UNION ALL SELECT 'A1', 'age', 'noun', '/eɪdʒ/', 'tuổi' FROM DUAL
UNION ALL SELECT 'A1', 'ago', 'adverb', '/əˈɡəʊ/', 'cách đây' FROM DUAL
UNION ALL SELECT 'A1', 'agree', 'verb', '/əˈɡriː/', 'đồng ý' FROM DUAL
UNION ALL SELECT 'A1', 'air', 'noun', '/eə(r)/', 'không khí' FROM DUAL
UNION ALL SELECT 'A1', 'airport', 'noun', '/ˈeəpɔːt/', 'sân bay' FROM DUAL
UNION ALL SELECT 'A1', 'all', 'determiner', '/ɔːl/', 'tất cả' FROM DUAL
UNION ALL SELECT 'A1', 'also', 'adverb', '/ˈɔːlsəʊ/', 'cũng' FROM DUAL
UNION ALL SELECT 'A1', 'always', 'adverb', '/ˈɔːlweɪz/', 'luôn luôn' FROM DUAL
UNION ALL SELECT 'A1', 'amazing', 'adjective', '/əˈmeɪzɪŋ/', 'tuyệt vời, đáng kinh ngạc' FROM DUAL
UNION ALL SELECT 'A1', 'and', 'conjunction', '/ænd/', 'và' FROM DUAL
UNION ALL SELECT 'A1', 'angry', 'adjective', '/ˈæŋɡri/', 'tức giận' FROM DUAL
UNION ALL SELECT 'A1', 'animal', 'noun', '/ˈænɪml/', 'động vật' FROM DUAL
UNION ALL SELECT 'A1', 'another', 'determiner', '/əˈnʌðə(r)/', 'khác, thêm một' FROM DUAL
UNION ALL SELECT 'A1', 'answer', 'noun', '/ˈɑːnsə(r)/', 'câu trả lời' FROM DUAL
UNION ALL SELECT 'A1', 'any', 'determiner', '/ˈeni/', 'bất kỳ, nào' FROM DUAL
UNION ALL SELECT 'A1', 'anyone', 'pronoun', '/ˈeniwʌn/', 'bất kỳ ai' FROM DUAL
UNION ALL SELECT 'A1', 'anything', 'pronoun', '/ˈeniθɪŋ/', 'bất cứ thứ gì' FROM DUAL
UNION ALL SELECT 'A1', 'apartment', 'noun', '/əˈpɑːtmənt/', 'căn hộ' FROM DUAL
UNION ALL SELECT 'A1', 'apple', 'noun', '/ˈæpl/', 'quả táo' FROM DUAL
UNION ALL SELECT 'A1', 'April', 'noun', '/ˈeɪprəl/', 'tháng Tư' FROM DUAL
UNION ALL SELECT 'A1', 'area', 'noun', '/ˈeəriə/', 'khu vực' FROM DUAL
UNION ALL SELECT 'A1', 'arm', 'noun', '/ɑːm/', 'cánh tay' FROM DUAL
UNION ALL SELECT 'A1', 'around', 'preposition', '/əˈraʊnd/', 'xung quanh' FROM DUAL
UNION ALL SELECT 'A1', 'arrive', 'verb', '/əˈraɪv/', 'đến nơi' FROM DUAL
UNION ALL SELECT 'A1', 'art', 'noun', '/ɑːt/', 'nghệ thuật' FROM DUAL
UNION ALL SELECT 'A1', 'article', 'noun', '/ˈɑːtɪkl/', 'bài báo' FROM DUAL
UNION ALL SELECT 'A1', 'artist', 'noun', '/ˈɑːtɪst/', 'nghệ sĩ, họa sĩ' FROM DUAL
UNION ALL SELECT 'A1', 'as', 'preposition', '/æz/', 'như, với tư cách' FROM DUAL
UNION ALL SELECT 'A1', 'ask', 'verb', '/ɑːsk/', 'hỏi' FROM DUAL
UNION ALL SELECT 'A1', 'at', 'preposition', '/æt/', 'tại, ở' FROM DUAL
UNION ALL SELECT 'A1', 'August', 'noun', '/ˈɔːɡəst/', 'tháng Tám' FROM DUAL
UNION ALL SELECT 'A1', 'aunt', 'noun', '/ɑːnt/', 'cô, dì, bác gái' FROM DUAL
UNION ALL SELECT 'A1', 'autumn', 'noun', '/ˈɔːtəm/', 'mùa thu' FROM DUAL
UNION ALL SELECT 'A1', 'away', 'adverb', '/əˈweɪ/', 'xa, đi khỏi' FROM DUAL
UNION ALL SELECT 'A1', 'baby', 'noun', '/ˈbeɪbi/', 'em bé' FROM DUAL
UNION ALL SELECT 'A1', 'back', 'noun', '/bæk/', 'lưng, phía sau' FROM DUAL
UNION ALL SELECT 'A1', 'bad', 'adjective', '/bæd/', 'xấu, tệ' FROM DUAL
UNION ALL SELECT 'A1', 'bag', 'noun', '/bæɡ/', 'cái túi' FROM DUAL
UNION ALL SELECT 'A1', 'ball', 'noun', '/bɔːl/', 'quả bóng' FROM DUAL
UNION ALL SELECT 'A1', 'banana', 'noun', '/bəˈnɑːnə/', 'quả chuối' FROM DUAL
UNION ALL SELECT 'A1', 'band', 'noun', '/bænd/', 'ban nhạc' FROM DUAL
UNION ALL SELECT 'A1', 'bank', 'noun', '/bæŋk/', 'ngân hàng' FROM DUAL
UNION ALL SELECT 'A1', 'bath', 'noun', '/bɑːθ/', 'bồn tắm, sự tắm' FROM DUAL
UNION ALL SELECT 'A1', 'bathroom', 'noun', '/ˈbɑːθruːm/', 'phòng tắm' FROM DUAL
UNION ALL SELECT 'A1', 'be', 'verb', '/biː/', 'thì, là, ở' FROM DUAL
UNION ALL SELECT 'A1', 'beach', 'noun', '/biːtʃ/', 'bãi biển' FROM DUAL
UNION ALL SELECT 'A1', 'beautiful', 'adjective', '/ˈbjuːtɪfl/', 'đẹp' FROM DUAL
UNION ALL SELECT 'A1', 'because', 'conjunction', '/bɪˈkɒz/', 'bởi vì' FROM DUAL
UNION ALL SELECT 'A1', 'become', 'verb', '/bɪˈkʌm/', 'trở thành' FROM DUAL
UNION ALL SELECT 'A1', 'bed', 'noun', '/bed/', 'cái giường' FROM DUAL
UNION ALL SELECT 'A1', 'bedroom', 'noun', '/ˈbedruːm/', 'phòng ngủ' FROM DUAL
UNION ALL SELECT 'A1', 'beer', 'noun', '/bɪə(r)/', 'bia' FROM DUAL
UNION ALL SELECT 'A1', 'before', 'preposition', '/bɪˈfɔː(r)/', 'trước, trước khi' FROM DUAL
UNION ALL SELECT 'A1', 'begin', 'verb', '/bɪˈɡɪn/', 'bắt đầu' FROM DUAL
UNION ALL SELECT 'A1', 'beginning', 'noun', '/bɪˈɡɪnɪŋ/', 'sự bắt đầu, phần đầu' FROM DUAL
UNION ALL SELECT 'A1', 'behind', 'preposition', '/bɪˈhaɪnd/', 'phía sau' FROM DUAL
UNION ALL SELECT 'A1', 'believe', 'verb', '/bɪˈliːv/', 'tin tưởng' FROM DUAL
UNION ALL SELECT 'A1', 'below', 'preposition', '/bɪˈləʊ/', 'bên dưới' FROM DUAL
UNION ALL SELECT 'A1', 'best', 'adjective', '/best/', 'tốt nhất' FROM DUAL
UNION ALL SELECT 'A1', 'better', 'adjective', '/ˈbetə(r)/', 'tốt hơn' FROM DUAL
UNION ALL SELECT 'A1', 'between', 'preposition', '/bɪˈtwiːn/', 'ở giữa' FROM DUAL
UNION ALL SELECT 'A1', 'bicycle', 'noun', '/ˈbaɪsɪkl/', 'xe đạp' FROM DUAL
UNION ALL SELECT 'A1', 'big', 'adjective', '/bɪɡ/', 'to, lớn' FROM DUAL
UNION ALL SELECT 'A1', 'bike', 'noun', '/baɪk/', 'xe đạp' FROM DUAL
UNION ALL SELECT 'A1', 'bill', 'noun', '/bɪl/', 'hóa đơn' FROM DUAL
UNION ALL SELECT 'A1', 'bird', 'noun', '/bɜːd/', 'con chim' FROM DUAL
UNION ALL SELECT 'A1', 'birthday', 'noun', '/ˈbɜːθdeɪ/', 'sinh nhật' FROM DUAL
UNION ALL SELECT 'A1', 'black', 'adjective', '/blæk/', 'màu đen' FROM DUAL
UNION ALL SELECT 'A1', 'blog', 'noun', '/blɒɡ/', 'nhật ký trực tuyến' FROM DUAL
UNION ALL SELECT 'A1', 'blonde', 'adjective', '/blɒnd/', 'tóc vàng' FROM DUAL
UNION ALL SELECT 'A1', 'blue', 'adjective', '/bluː/', 'màu xanh dương' FROM DUAL
UNION ALL SELECT 'A1', 'boat', 'noun', '/bəʊt/', 'con thuyền' FROM DUAL
UNION ALL SELECT 'A1', 'body', 'noun', '/ˈbɒdi/', 'cơ thể' FROM DUAL
UNION ALL SELECT 'A1', 'book', 'noun', '/bʊk/', 'quyển sách' FROM DUAL
UNION ALL SELECT 'A1', 'boot', 'noun', '/buːt/', 'giày bốt' FROM DUAL
UNION ALL SELECT 'A1', 'bored', 'adjective', '/bɔːd/', 'chán' FROM DUAL
UNION ALL SELECT 'A1', 'boring', 'adjective', '/ˈbɔːrɪŋ/', 'nhàm chán' FROM DUAL
UNION ALL SELECT 'A1', 'born', 'verb', '/bɔːn/', 'được sinh ra' FROM DUAL
UNION ALL SELECT 'A1', 'both', 'determiner', '/bəʊθ/', 'cả hai' FROM DUAL
UNION ALL SELECT 'A1', 'bottle', 'noun', '/ˈbɒtl/', 'cái chai' FROM DUAL
UNION ALL SELECT 'A1', 'box', 'noun', '/bɒks/', 'cái hộp' FROM DUAL
UNION ALL SELECT 'A1', 'boy', 'noun', '/bɔɪ/', 'cậu bé' FROM DUAL
UNION ALL SELECT 'A1', 'boyfriend', 'noun', '/ˈbɔɪfrend/', 'bạn trai' FROM DUAL
UNION ALL SELECT 'A1', 'bread', 'noun', '/bred/', 'bánh mì' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A1', 'break', 'verb', '/breɪk/', 'làm vỡ' FROM DUAL
UNION ALL SELECT 'A1', 'breakfast', 'noun', '/ˈbrekfəst/', 'bữa sáng' FROM DUAL
UNION ALL SELECT 'A1', 'bring', 'verb', '/brɪŋ/', 'mang đến' FROM DUAL
UNION ALL SELECT 'A1', 'brother', 'noun', '/ˈbrʌðə(r)/', 'anh trai, em trai' FROM DUAL
UNION ALL SELECT 'A1', 'brown', 'adjective', '/braʊn/', 'màu nâu' FROM DUAL
UNION ALL SELECT 'A1', 'build', 'verb', '/bɪld/', 'xây dựng' FROM DUAL
UNION ALL SELECT 'A1', 'building', 'noun', '/ˈbɪldɪŋ/', 'tòa nhà' FROM DUAL
UNION ALL SELECT 'A1', 'bus', 'noun', '/bʌs/', 'xe buýt' FROM DUAL
UNION ALL SELECT 'A1', 'business', 'noun', '/ˈbɪznəs/', 'kinh doanh, doanh nghiệp' FROM DUAL
UNION ALL SELECT 'A1', 'busy', 'adjective', '/ˈbɪzi/', 'bận rộn' FROM DUAL
UNION ALL SELECT 'A1', 'but', 'conjunction', '/bʌt/', 'nhưng' FROM DUAL
UNION ALL SELECT 'A1', 'butter', 'noun', '/ˈbʌtə(r)/', 'bơ' FROM DUAL
UNION ALL SELECT 'A1', 'buy', 'verb', '/baɪ/', 'mua' FROM DUAL
UNION ALL SELECT 'A1', 'by', 'preposition', '/baɪ/', 'bởi, bằng, gần' FROM DUAL
UNION ALL SELECT 'A1', 'bye', 'exclamation', '/baɪ/', 'tạm biệt' FROM DUAL
UNION ALL SELECT 'A1', 'cafe', 'noun', '/ˈkæfeɪ/', 'quán cà phê' FROM DUAL
UNION ALL SELECT 'A1', 'cake', 'noun', '/keɪk/', 'bánh ngọt' FROM DUAL
UNION ALL SELECT 'A1', 'call', 'verb', '/kɔːl/', 'gọi' FROM DUAL
UNION ALL SELECT 'A1', 'camera', 'noun', '/ˈkæmərə/', 'máy ảnh' FROM DUAL
UNION ALL SELECT 'A1', 'can', 'modal verb', '/kæn/', 'có thể' FROM DUAL
UNION ALL SELECT 'A1', 'cannot', 'modal verb', '/ˈkænɒt/', 'không thể' FROM DUAL
UNION ALL SELECT 'A1', 'capital', 'noun', '/ˈkæpɪtl/', 'thủ đô, chữ hoa' FROM DUAL
UNION ALL SELECT 'A1', 'car', 'noun', '/kɑː(r)/', 'xe hơi' FROM DUAL
UNION ALL SELECT 'A1', 'card', 'noun', '/kɑːd/', 'tấm thiệp, thẻ' FROM DUAL
UNION ALL SELECT 'A1', 'career', 'noun', '/kəˈrɪə(r)/', 'sự nghiệp' FROM DUAL
UNION ALL SELECT 'A1', 'carrot', 'noun', '/ˈkærət/', 'củ cà rốt' FROM DUAL
UNION ALL SELECT 'A1', 'carry', 'verb', '/ˈkæri/', 'mang, vác' FROM DUAL
UNION ALL SELECT 'A1', 'cat', 'noun', '/kæt/', 'con mèo' FROM DUAL
UNION ALL SELECT 'A1', 'CD', 'noun', '/ˌsiː ˈdiː/', 'đĩa CD' FROM DUAL
UNION ALL SELECT 'A1', 'cent', 'noun', '/sent/', 'đồng xu (cent)' FROM DUAL
UNION ALL SELECT 'A1', 'centre', 'noun', '/ˈsentə(r)/', 'trung tâm' FROM DUAL
UNION ALL SELECT 'A1', 'century', 'noun', '/ˈsentʃəri/', 'thế kỷ' FROM DUAL
UNION ALL SELECT 'A1', 'chair', 'noun', '/tʃeə(r)/', 'cái ghế' FROM DUAL
UNION ALL SELECT 'A1', 'change', 'verb', '/tʃeɪndʒ/', 'thay đổi' FROM DUAL
UNION ALL SELECT 'A1', 'chart', 'noun', '/tʃɑːt/', 'biểu đồ' FROM DUAL
UNION ALL SELECT 'A1', 'cheap', 'adjective', '/tʃiːp/', 'rẻ' FROM DUAL
UNION ALL SELECT 'A1', 'check', 'verb', '/tʃek/', 'kiểm tra' FROM DUAL
UNION ALL SELECT 'A1', 'cheese', 'noun', '/tʃiːz/', 'phô mai' FROM DUAL
UNION ALL SELECT 'A1', 'chicken', 'noun', '/ˈtʃɪkɪn/', 'con gà, thịt gà' FROM DUAL
UNION ALL SELECT 'A1', 'child', 'noun', '/tʃaɪld/', 'đứa trẻ' FROM DUAL
UNION ALL SELECT 'A1', 'chocolate', 'noun', '/ˈtʃɒklət/', 'sô-cô-la' FROM DUAL
UNION ALL SELECT 'A1', 'choose', 'verb', '/tʃuːz/', 'chọn' FROM DUAL
UNION ALL SELECT 'A1', 'cinema', 'noun', '/ˈsɪnəmə/', 'rạp chiếu phim' FROM DUAL
UNION ALL SELECT 'A1', 'city', 'noun', '/ˈsɪti/', 'thành phố' FROM DUAL
UNION ALL SELECT 'A1', 'class', 'noun', '/klɑːs/', 'lớp học' FROM DUAL
UNION ALL SELECT 'A1', 'classroom', 'noun', '/ˈklɑːsruːm/', 'phòng học' FROM DUAL
UNION ALL SELECT 'A1', 'clean', 'adjective', '/kliːn/', 'sạch sẽ' FROM DUAL
UNION ALL SELECT 'A1', 'climb', 'verb', '/klaɪm/', 'leo, trèo' FROM DUAL
UNION ALL SELECT 'A1', 'clock', 'noun', '/klɒk/', 'đồng hồ treo tường' FROM DUAL
UNION ALL SELECT 'A1', 'close', 'verb', '/kləʊz/', 'đóng' FROM DUAL
UNION ALL SELECT 'A1', 'clothes', 'noun', '/kləʊðz/', 'quần áo' FROM DUAL
UNION ALL SELECT 'A1', 'club', 'noun', '/klʌb/', 'câu lạc bộ' FROM DUAL
UNION ALL SELECT 'A1', 'coat', 'noun', '/kəʊt/', 'áo khoác' FROM DUAL
UNION ALL SELECT 'A1', 'coffee', 'noun', '/ˈkɒfi/', 'cà phê' FROM DUAL
UNION ALL SELECT 'A1', 'cold', 'adjective', '/kəʊld/', 'lạnh' FROM DUAL
UNION ALL SELECT 'A1', 'college', 'noun', '/ˈkɒlɪdʒ/', 'trường cao đẳng, đại học' FROM DUAL
UNION ALL SELECT 'A1', 'colour', 'noun', '/ˈkʌlə(r)/', 'màu sắc' FROM DUAL
UNION ALL SELECT 'A1', 'come', 'verb', '/kʌm/', 'đến' FROM DUAL
UNION ALL SELECT 'A1', 'common', 'adjective', '/ˈkɒmən/', 'phổ biến, chung' FROM DUAL
UNION ALL SELECT 'A1', 'company', 'noun', '/ˈkʌmpəni/', 'công ty' FROM DUAL
UNION ALL SELECT 'A1', 'compare', 'verb', '/kəmˈpeə(r)/', 'so sánh' FROM DUAL
UNION ALL SELECT 'A1', 'complete', 'verb', '/kəmˈpliːt/', 'hoàn thành' FROM DUAL
UNION ALL SELECT 'A1', 'computer', 'noun', '/kəmˈpjuːtə(r)/', 'máy tính' FROM DUAL
UNION ALL SELECT 'A1', 'concert', 'noun', '/ˈkɒnsət/', 'buổi hòa nhạc' FROM DUAL
UNION ALL SELECT 'A1', 'conversation', 'noun', '/ˌkɒnvəˈseɪʃn/', 'cuộc trò chuyện' FROM DUAL
UNION ALL SELECT 'A1', 'cook', 'verb', '/kʊk/', 'nấu ăn' FROM DUAL
UNION ALL SELECT 'A1', 'cooking', 'noun', '/ˈkʊkɪŋ/', 'việc nấu ăn' FROM DUAL
UNION ALL SELECT 'A1', 'cool', 'adjective', '/kuːl/', 'mát mẻ, tuyệt' FROM DUAL
UNION ALL SELECT 'A1', 'correct', 'adjective', '/kəˈrekt/', 'đúng' FROM DUAL
UNION ALL SELECT 'A1', 'cost', 'verb', '/kɒst/', 'có giá, tốn' FROM DUAL
UNION ALL SELECT 'A1', 'could', 'modal verb', '/kʊd/', 'có thể (quá khứ của can)' FROM DUAL
UNION ALL SELECT 'A1', 'country', 'noun', '/ˈkʌntri/', 'đất nước, nông thôn' FROM DUAL
UNION ALL SELECT 'A1', 'course', 'noun', '/kɔːs/', 'khóa học' FROM DUAL
UNION ALL SELECT 'A1', 'cousin', 'noun', '/ˈkʌzn/', 'anh chị em họ' FROM DUAL
UNION ALL SELECT 'A1', 'cow', 'noun', '/kaʊ/', 'con bò' FROM DUAL
UNION ALL SELECT 'A1', 'cream', 'noun', '/kriːm/', 'kem' FROM DUAL
UNION ALL SELECT 'A1', 'create', 'verb', '/kriˈeɪt/', 'tạo ra' FROM DUAL
UNION ALL SELECT 'A1', 'culture', 'noun', '/ˈkʌltʃə(r)/', 'văn hóa' FROM DUAL
UNION ALL SELECT 'A1', 'cup', 'noun', '/kʌp/', 'cái tách, cốc' FROM DUAL
UNION ALL SELECT 'A1', 'customer', 'noun', '/ˈkʌstəmə(r)/', 'khách hàng' FROM DUAL
UNION ALL SELECT 'A1', 'cut', 'verb', '/kʌt/', 'cắt' FROM DUAL
UNION ALL SELECT 'A1', 'dad', 'noun', '/dæd/', 'bố' FROM DUAL
UNION ALL SELECT 'A1', 'dance', 'verb', '/dɑːns/', 'nhảy múa' FROM DUAL
UNION ALL SELECT 'A1', 'dancer', 'noun', '/ˈdɑːnsə(r)/', 'vũ công' FROM DUAL
UNION ALL SELECT 'A1', 'dancing', 'noun', '/ˈdɑːnsɪŋ/', 'việc nhảy múa' FROM DUAL
UNION ALL SELECT 'A1', 'dangerous', 'adjective', '/ˈdeɪndʒərəs/', 'nguy hiểm' FROM DUAL
UNION ALL SELECT 'A1', 'dark', 'adjective', '/dɑːk/', 'tối' FROM DUAL
UNION ALL SELECT 'A1', 'date', 'noun', '/deɪt/', 'ngày tháng, cuộc hẹn' FROM DUAL
UNION ALL SELECT 'A1', 'daughter', 'noun', '/ˈdɔːtə(r)/', 'con gái' FROM DUAL
UNION ALL SELECT 'A1', 'day', 'noun', '/deɪ/', 'ngày' FROM DUAL
UNION ALL SELECT 'A1', 'dear', 'adjective', '/dɪə(r)/', 'thân mến' FROM DUAL
UNION ALL SELECT 'A1', 'December', 'noun', '/dɪˈsembə(r)/', 'tháng Mười Hai' FROM DUAL
UNION ALL SELECT 'A1', 'decide', 'verb', '/dɪˈsaɪd/', 'quyết định' FROM DUAL
UNION ALL SELECT 'A1', 'delicious', 'adjective', '/dɪˈlɪʃəs/', 'ngon' FROM DUAL
UNION ALL SELECT 'A1', 'describe', 'verb', '/dɪˈskraɪb/', 'miêu tả' FROM DUAL
UNION ALL SELECT 'A1', 'description', 'noun', '/dɪˈskrɪpʃn/', 'sự miêu tả' FROM DUAL
UNION ALL SELECT 'A1', 'design', 'noun', '/dɪˈzaɪn/', 'thiết kế' FROM DUAL
UNION ALL SELECT 'A1', 'desk', 'noun', '/desk/', 'bàn làm việc' FROM DUAL
UNION ALL SELECT 'A1', 'detail', 'noun', '/ˈdiːteɪl/', 'chi tiết' FROM DUAL
UNION ALL SELECT 'A1', 'dialogue', 'noun', '/ˈdaɪəlɒɡ/', 'đoạn hội thoại' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A1', 'dictionary', 'noun', '/ˈdɪkʃənri/', 'từ điển' FROM DUAL
UNION ALL SELECT 'A1', 'die', 'verb', '/daɪ/', 'chết' FROM DUAL
UNION ALL SELECT 'A1', 'diet', 'noun', '/ˈdaɪət/', 'chế độ ăn' FROM DUAL
UNION ALL SELECT 'A1', 'difference', 'noun', '/ˈdɪfrəns/', 'sự khác biệt' FROM DUAL
UNION ALL SELECT 'A1', 'different', 'adjective', '/ˈdɪfrənt/', 'khác nhau' FROM DUAL
UNION ALL SELECT 'A1', 'difficult', 'adjective', '/ˈdɪfɪkəlt/', 'khó' FROM DUAL
UNION ALL SELECT 'A1', 'dinner', 'noun', '/ˈdɪnə(r)/', 'bữa tối' FROM DUAL
UNION ALL SELECT 'A1', 'dirty', 'adjective', '/ˈdɜːti/', 'bẩn' FROM DUAL
UNION ALL SELECT 'A1', 'discuss', 'verb', '/dɪˈskʌs/', 'thảo luận' FROM DUAL
UNION ALL SELECT 'A1', 'dish', 'noun', '/dɪʃ/', 'món ăn, cái đĩa' FROM DUAL
UNION ALL SELECT 'A1', 'do', 'verb', '/duː/', 'làm' FROM DUAL
UNION ALL SELECT 'A1', 'doctor', 'noun', '/ˈdɒktə(r)/', 'bác sĩ' FROM DUAL
UNION ALL SELECT 'A1', 'dog', 'noun', '/dɒɡ/', 'con chó' FROM DUAL
UNION ALL SELECT 'A1', 'dollar', 'noun', '/ˈdɒlə(r)/', 'đô la' FROM DUAL
UNION ALL SELECT 'A1', 'door', 'noun', '/dɔː(r)/', 'cửa' FROM DUAL
UNION ALL SELECT 'A1', 'down', 'adverb', '/daʊn/', 'xuống' FROM DUAL
UNION ALL SELECT 'A1', 'downstairs', 'adverb', '/ˌdaʊnˈsteəz/', 'ở tầng dưới' FROM DUAL
UNION ALL SELECT 'A1', 'draw', 'verb', '/drɔː/', 'vẽ' FROM DUAL
UNION ALL SELECT 'A1', 'dress', 'noun', '/dres/', 'váy liền' FROM DUAL
UNION ALL SELECT 'A1', 'drink', 'verb', '/drɪŋk/', 'uống' FROM DUAL
UNION ALL SELECT 'A1', 'drive', 'verb', '/draɪv/', 'lái xe' FROM DUAL
UNION ALL SELECT 'A1', 'driver', 'noun', '/ˈdraɪvə(r)/', 'tài xế' FROM DUAL
UNION ALL SELECT 'A1', 'during', 'preposition', '/ˈdjʊərɪŋ/', 'trong suốt' FROM DUAL
UNION ALL SELECT 'A1', 'DVD', 'noun', '/ˌdiː viː ˈdiː/', 'đĩa DVD' FROM DUAL
UNION ALL SELECT 'A1', 'each', 'determiner', '/iːtʃ/', 'mỗi' FROM DUAL
UNION ALL SELECT 'A1', 'ear', 'noun', '/ɪə(r)/', 'tai' FROM DUAL
UNION ALL SELECT 'A1', 'early', 'adjective', '/ˈɜːli/', 'sớm' FROM DUAL
UNION ALL SELECT 'A1', 'east', 'noun', '/iːst/', 'phía đông' FROM DUAL
UNION ALL SELECT 'A1', 'easy', 'adjective', '/ˈiːzi/', 'dễ' FROM DUAL
UNION ALL SELECT 'A1', 'eat', 'verb', '/iːt/', 'ăn' FROM DUAL
UNION ALL SELECT 'A1', 'egg', 'noun', '/eɡ/', 'quả trứng' FROM DUAL
UNION ALL SELECT 'A1', 'eight', 'number', '/eɪt/', 'số tám' FROM DUAL
UNION ALL SELECT 'A1', 'eighteen', 'number', '/ˌeɪˈtiːn/', 'số mười tám' FROM DUAL
UNION ALL SELECT 'A1', 'eighty', 'number', '/ˈeɪti/', 'số tám mươi' FROM DUAL
UNION ALL SELECT 'A1', 'either', 'determiner', '/ˈaɪðə(r)/', 'một trong hai' FROM DUAL
UNION ALL SELECT 'A1', 'elephant', 'noun', '/ˈelɪfənt/', 'con voi' FROM DUAL
UNION ALL SELECT 'A1', 'eleven', 'number', '/ɪˈlevn/', 'số mười một' FROM DUAL
UNION ALL SELECT 'A1', 'else', 'adverb', '/els/', 'khác' FROM DUAL
UNION ALL SELECT 'A1', 'email', 'noun', '/ˈiːmeɪl/', 'thư điện tử' FROM DUAL
UNION ALL SELECT 'A1', 'end', 'noun', '/end/', 'sự kết thúc, phần cuối' FROM DUAL
UNION ALL SELECT 'A1', 'enjoy', 'verb', '/ɪnˈdʒɔɪ/', 'thích thú, tận hưởng' FROM DUAL
UNION ALL SELECT 'A1', 'enough', 'determiner', '/ɪˈnʌf/', 'đủ' FROM DUAL
UNION ALL SELECT 'A1', 'euro', 'noun', '/ˈjʊərəʊ/', 'đồng euro' FROM DUAL
UNION ALL SELECT 'A1', 'even', 'adverb', '/ˈiːvn/', 'thậm chí' FROM DUAL
UNION ALL SELECT 'A1', 'evening', 'noun', '/ˈiːvnɪŋ/', 'buổi tối' FROM DUAL
UNION ALL SELECT 'A1', 'event', 'noun', '/ɪˈvent/', 'sự kiện' FROM DUAL
UNION ALL SELECT 'A1', 'ever', 'adverb', '/ˈevə(r)/', 'từng, bao giờ' FROM DUAL
UNION ALL SELECT 'A1', 'every', 'determiner', '/ˈevri/', 'mỗi, mọi' FROM DUAL
UNION ALL SELECT 'A1', 'everybody', 'pronoun', '/ˈevribɒdi/', 'mọi người' FROM DUAL
UNION ALL SELECT 'A1', 'everyone', 'pronoun', '/ˈevriwʌn/', 'mọi người' FROM DUAL
UNION ALL SELECT 'A1', 'everything', 'pronoun', '/ˈevriθɪŋ/', 'mọi thứ' FROM DUAL
UNION ALL SELECT 'A1', 'exam', 'noun', '/ɪɡˈzæm/', 'kỳ thi' FROM DUAL
UNION ALL SELECT 'A1', 'example', 'noun', '/ɪɡˈzɑːmpl/', 'ví dụ' FROM DUAL
UNION ALL SELECT 'A1', 'excited', 'adjective', '/ɪkˈsaɪtɪd/', 'hào hứng' FROM DUAL
UNION ALL SELECT 'A1', 'exciting', 'adjective', '/ɪkˈsaɪtɪŋ/', 'thú vị, hấp dẫn' FROM DUAL
UNION ALL SELECT 'A1', 'exercise', 'noun', '/ˈeksəsaɪz/', 'bài tập, sự tập thể dục' FROM DUAL
UNION ALL SELECT 'A1', 'expensive', 'adjective', '/ɪkˈspensɪv/', 'đắt' FROM DUAL
UNION ALL SELECT 'A1', 'explain', 'verb', '/ɪkˈspleɪn/', 'giải thích' FROM DUAL
UNION ALL SELECT 'A1', 'extra', 'adjective', '/ˈekstrə/', 'thêm, phụ' FROM DUAL
UNION ALL SELECT 'A1', 'eye', 'noun', '/aɪ/', 'mắt' FROM DUAL
UNION ALL SELECT 'A1', 'face', 'noun', '/feɪs/', 'khuôn mặt' FROM DUAL
UNION ALL SELECT 'A1', 'fact', 'noun', '/fækt/', 'sự thật' FROM DUAL
UNION ALL SELECT 'A1', 'fall', 'verb', '/fɔːl/', 'ngã, rơi' FROM DUAL
UNION ALL SELECT 'A1', 'false', 'adjective', '/fɔːls/', 'sai' FROM DUAL
UNION ALL SELECT 'A1', 'family', 'noun', '/ˈfæməli/', 'gia đình' FROM DUAL
UNION ALL SELECT 'A1', 'famous', 'adjective', '/ˈfeɪməs/', 'nổi tiếng' FROM DUAL
UNION ALL SELECT 'A1', 'fantastic', 'adjective', '/fænˈtæstɪk/', 'tuyệt vời' FROM DUAL
UNION ALL SELECT 'A1', 'far', 'adverb', '/fɑː(r)/', 'xa' FROM DUAL
UNION ALL SELECT 'A1', 'farm', 'noun', '/fɑːm/', 'nông trại' FROM DUAL
UNION ALL SELECT 'A1', 'farmer', 'noun', '/ˈfɑːmə(r)/', 'nông dân' FROM DUAL
UNION ALL SELECT 'A1', 'fast', 'adjective', '/fɑːst/', 'nhanh' FROM DUAL
UNION ALL SELECT 'A1', 'fat', 'adjective', '/fæt/', 'béo' FROM DUAL
UNION ALL SELECT 'A1', 'father', 'noun', '/ˈfɑːðə(r)/', 'cha' FROM DUAL
UNION ALL SELECT 'A1', 'favourite', 'adjective', '/ˈfeɪvərɪt/', 'yêu thích nhất' FROM DUAL
UNION ALL SELECT 'A1', 'February', 'noun', '/ˈfebruəri/', 'tháng Hai' FROM DUAL
UNION ALL SELECT 'A1', 'feel', 'verb', '/fiːl/', 'cảm thấy' FROM DUAL
UNION ALL SELECT 'A1', 'feeling', 'noun', '/ˈfiːlɪŋ/', 'cảm giác' FROM DUAL
UNION ALL SELECT 'A1', 'festival', 'noun', '/ˈfestɪvl/', 'lễ hội' FROM DUAL
UNION ALL SELECT 'A1', 'few', 'determiner', '/fjuː/', 'một vài, ít' FROM DUAL
UNION ALL SELECT 'A1', 'fifteen', 'number', '/ˌfɪfˈtiːn/', 'số mười lăm' FROM DUAL
UNION ALL SELECT 'A1', 'fifth', 'number', '/fɪfθ/', 'thứ năm' FROM DUAL
UNION ALL SELECT 'A1', 'fifty', 'number', '/ˈfɪfti/', 'số năm mươi' FROM DUAL
UNION ALL SELECT 'A1', 'fill', 'verb', '/fɪl/', 'làm đầy, điền' FROM DUAL
UNION ALL SELECT 'A1', 'film', 'noun', '/fɪlm/', 'bộ phim' FROM DUAL
UNION ALL SELECT 'A1', 'final', 'adjective', '/ˈfaɪnl/', 'cuối cùng' FROM DUAL
UNION ALL SELECT 'A1', 'find', 'verb', '/faɪnd/', 'tìm thấy' FROM DUAL
UNION ALL SELECT 'A1', 'fine', 'adjective', '/faɪn/', 'khỏe, ổn' FROM DUAL
UNION ALL SELECT 'A1', 'finish', 'verb', '/ˈfɪnɪʃ/', 'kết thúc, hoàn thành' FROM DUAL
UNION ALL SELECT 'A1', 'fire', 'noun', '/ˈfaɪə(r)/', 'lửa, đám cháy' FROM DUAL
UNION ALL SELECT 'A1', 'first', 'number', '/fɜːst/', 'thứ nhất, đầu tiên' FROM DUAL
UNION ALL SELECT 'A1', 'fish', 'noun', '/fɪʃ/', 'con cá' FROM DUAL
UNION ALL SELECT 'A1', 'five', 'number', '/faɪv/', 'số năm' FROM DUAL
UNION ALL SELECT 'A1', 'flat', 'noun', '/flæt/', 'căn hộ' FROM DUAL
UNION ALL SELECT 'A1', 'flight', 'noun', '/flaɪt/', 'chuyến bay' FROM DUAL
UNION ALL SELECT 'A1', 'floor', 'noun', '/flɔː(r)/', 'sàn nhà, tầng' FROM DUAL
UNION ALL SELECT 'A1', 'flower', 'noun', '/ˈflaʊə(r)/', 'bông hoa' FROM DUAL
UNION ALL SELECT 'A1', 'fly', 'verb', '/flaɪ/', 'bay' FROM DUAL
UNION ALL SELECT 'A1', 'follow', 'verb', '/ˈfɒləʊ/', 'đi theo' FROM DUAL
UNION ALL SELECT 'A1', 'food', 'noun', '/fuːd/', 'thức ăn' FROM DUAL
UNION ALL SELECT 'A1', 'foot', 'noun', '/fʊt/', 'bàn chân' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A1', 'football', 'noun', '/ˈfʊtbɔːl/', 'bóng đá' FROM DUAL
UNION ALL SELECT 'A1', 'for', 'preposition', '/fɔː(r)/', 'cho, để, trong' FROM DUAL
UNION ALL SELECT 'A1', 'forget', 'verb', '/fəˈɡet/', 'quên' FROM DUAL
UNION ALL SELECT 'A1', 'form', 'noun', '/fɔːm/', 'mẫu đơn, hình thức' FROM DUAL
UNION ALL SELECT 'A1', 'forty', 'number', '/ˈfɔːti/', 'số bốn mươi' FROM DUAL
UNION ALL SELECT 'A1', 'four', 'number', '/fɔː(r)/', 'số bốn' FROM DUAL
UNION ALL SELECT 'A1', 'fourteen', 'number', '/ˌfɔːˈtiːn/', 'số mười bốn' FROM DUAL
UNION ALL SELECT 'A1', 'fourth', 'number', '/fɔːθ/', 'thứ tư' FROM DUAL
UNION ALL SELECT 'A1', 'free', 'adjective', '/friː/', 'miễn phí, tự do, rảnh' FROM DUAL
UNION ALL SELECT 'A1', 'Friday', 'noun', '/ˈfraɪdeɪ/', 'thứ Sáu' FROM DUAL
UNION ALL SELECT 'A1', 'friend', 'noun', '/frend/', 'bạn bè' FROM DUAL
UNION ALL SELECT 'A1', 'friendly', 'adjective', '/ˈfrendli/', 'thân thiện' FROM DUAL
UNION ALL SELECT 'A1', 'from', 'preposition', '/frɒm/', 'từ' FROM DUAL
UNION ALL SELECT 'A1', 'front', 'noun', '/frʌnt/', 'phía trước' FROM DUAL
UNION ALL SELECT 'A1', 'fruit', 'noun', '/fruːt/', 'trái cây' FROM DUAL
UNION ALL SELECT 'A1', 'full', 'adjective', '/fʊl/', 'đầy' FROM DUAL
UNION ALL SELECT 'A1', 'fun', 'noun', '/fʌn/', 'niềm vui' FROM DUAL
UNION ALL SELECT 'A1', 'funny', 'adjective', '/ˈfʌni/', 'buồn cười, hài hước' FROM DUAL
UNION ALL SELECT 'A1', 'future', 'noun', '/ˈfjuːtʃə(r)/', 'tương lai' FROM DUAL
UNION ALL SELECT 'A1', 'game', 'noun', '/ɡeɪm/', 'trò chơi' FROM DUAL
UNION ALL SELECT 'A1', 'garden', 'noun', '/ˈɡɑːdn/', 'khu vườn' FROM DUAL
UNION ALL SELECT 'A1', 'geography', 'noun', '/dʒiˈɒɡrəfi/', 'môn địa lý' FROM DUAL
UNION ALL SELECT 'A1', 'get', 'verb', '/ɡet/', 'nhận được, lấy' FROM DUAL
UNION ALL SELECT 'A1', 'girl', 'noun', '/ɡɜːl/', 'cô bé' FROM DUAL
UNION ALL SELECT 'A1', 'girlfriend', 'noun', '/ˈɡɜːlfrend/', 'bạn gái' FROM DUAL
UNION ALL SELECT 'A1', 'give', 'verb', '/ɡɪv/', 'cho, đưa' FROM DUAL
UNION ALL SELECT 'A1', 'glass', 'noun', '/ɡlɑːs/', 'cái cốc, thủy tinh' FROM DUAL
UNION ALL SELECT 'A1', 'go', 'verb', '/ɡəʊ/', 'đi' FROM DUAL
UNION ALL SELECT 'A1', 'good', 'adjective', '/ɡʊd/', 'tốt' FROM DUAL
UNION ALL SELECT 'A1', 'goodbye', 'exclamation', '/ˌɡʊdˈbaɪ/', 'tạm biệt' FROM DUAL
UNION ALL SELECT 'A1', 'grandfather', 'noun', '/ˈɡrænfɑːðə(r)/', 'ông' FROM DUAL
UNION ALL SELECT 'A1', 'grandmother', 'noun', '/ˈɡrænmʌðə(r)/', 'bà' FROM DUAL
UNION ALL SELECT 'A1', 'grandparent', 'noun', '/ˈɡrænpeərənt/', 'ông bà' FROM DUAL
UNION ALL SELECT 'A1', 'great', 'adjective', '/ɡreɪt/', 'tuyệt vời, to lớn' FROM DUAL
UNION ALL SELECT 'A1', 'green', 'adjective', '/ɡriːn/', 'màu xanh lá' FROM DUAL
UNION ALL SELECT 'A1', 'grey', 'adjective', '/ɡreɪ/', 'màu xám' FROM DUAL
UNION ALL SELECT 'A1', 'group', 'noun', '/ɡruːp/', 'nhóm' FROM DUAL
UNION ALL SELECT 'A1', 'grow', 'verb', '/ɡrəʊ/', 'lớn lên, trồng' FROM DUAL
UNION ALL SELECT 'A1', 'guess', 'verb', '/ɡes/', 'đoán' FROM DUAL
UNION ALL SELECT 'A1', 'guitar', 'noun', '/ɡɪˈtɑː(r)/', 'đàn ghi-ta' FROM DUAL
UNION ALL SELECT 'A1', 'gym', 'noun', '/dʒɪm/', 'phòng tập thể dục' FROM DUAL
UNION ALL SELECT 'A1', 'hair', 'noun', '/heə(r)/', 'tóc' FROM DUAL
UNION ALL SELECT 'A1', 'half', 'noun', '/hɑːf/', 'một nửa' FROM DUAL
UNION ALL SELECT 'A1', 'hand', 'noun', '/hænd/', 'bàn tay' FROM DUAL
UNION ALL SELECT 'A1', 'happen', 'verb', '/ˈhæpən/', 'xảy ra' FROM DUAL
UNION ALL SELECT 'A1', 'happy', 'adjective', '/ˈhæpi/', 'vui vẻ, hạnh phúc' FROM DUAL
UNION ALL SELECT 'A1', 'hard', 'adjective', '/hɑːd/', 'cứng, khó, chăm chỉ' FROM DUAL
UNION ALL SELECT 'A1', 'hat', 'noun', '/hæt/', 'cái mũ' FROM DUAL
UNION ALL SELECT 'A1', 'hate', 'verb', '/heɪt/', 'ghét' FROM DUAL
UNION ALL SELECT 'A1', 'have', 'verb', '/hæv/', 'có' FROM DUAL
UNION ALL SELECT 'A1', 'he', 'pronoun', '/hiː/', 'anh ấy' FROM DUAL
UNION ALL SELECT 'A1', 'head', 'noun', '/hed/', 'cái đầu' FROM DUAL
UNION ALL SELECT 'A1', 'health', 'noun', '/helθ/', 'sức khỏe' FROM DUAL
UNION ALL SELECT 'A1', 'healthy', 'adjective', '/ˈhelθi/', 'khỏe mạnh' FROM DUAL
UNION ALL SELECT 'A1', 'hear', 'verb', '/hɪə(r)/', 'nghe thấy' FROM DUAL
UNION ALL SELECT 'A1', 'hello', 'exclamation', '/həˈləʊ/', 'xin chào' FROM DUAL
UNION ALL SELECT 'A1', 'help', 'verb', '/help/', 'giúp đỡ' FROM DUAL
UNION ALL SELECT 'A1', 'her', 'pronoun', '/hɜː(r)/', 'cô ấy, của cô ấy' FROM DUAL
UNION ALL SELECT 'A1', 'here', 'adverb', '/hɪə(r)/', 'ở đây' FROM DUAL
UNION ALL SELECT 'A1', 'hey', 'exclamation', '/heɪ/', 'này' FROM DUAL
UNION ALL SELECT 'A1', 'hi', 'exclamation', '/haɪ/', 'chào' FROM DUAL
UNION ALL SELECT 'A1', 'high', 'adjective', '/haɪ/', 'cao' FROM DUAL
UNION ALL SELECT 'A1', 'him', 'pronoun', '/hɪm/', 'anh ấy (tân ngữ)' FROM DUAL
UNION ALL SELECT 'A1', 'his', 'determiner', '/hɪz/', 'của anh ấy' FROM DUAL
UNION ALL SELECT 'A1', 'history', 'noun', '/ˈhɪstri/', 'lịch sử' FROM DUAL
UNION ALL SELECT 'A1', 'hobby', 'noun', '/ˈhɒbi/', 'sở thích' FROM DUAL
UNION ALL SELECT 'A1', 'holiday', 'noun', '/ˈhɒlədeɪ/', 'kỳ nghỉ' FROM DUAL
UNION ALL SELECT 'A1', 'home', 'noun', '/həʊm/', 'nhà' FROM DUAL
UNION ALL SELECT 'A1', 'homework', 'noun', '/ˈhəʊmwɜːk/', 'bài tập về nhà' FROM DUAL
UNION ALL SELECT 'A1', 'hope', 'verb', '/həʊp/', 'hy vọng' FROM DUAL
UNION ALL SELECT 'A1', 'horse', 'noun', '/hɔːs/', 'con ngựa' FROM DUAL
UNION ALL SELECT 'A1', 'hospital', 'noun', '/ˈhɒspɪtl/', 'bệnh viện' FROM DUAL
UNION ALL SELECT 'A1', 'hot', 'adjective', '/hɒt/', 'nóng' FROM DUAL
UNION ALL SELECT 'A1', 'hotel', 'noun', '/həʊˈtel/', 'khách sạn' FROM DUAL
UNION ALL SELECT 'A1', 'hour', 'noun', '/ˈaʊə(r)/', 'giờ' FROM DUAL
UNION ALL SELECT 'A1', 'house', 'noun', '/haʊs/', 'ngôi nhà' FROM DUAL
UNION ALL SELECT 'A1', 'how', 'adverb', '/haʊ/', 'như thế nào' FROM DUAL
UNION ALL SELECT 'A1', 'however', 'adverb', '/haʊˈevə(r)/', 'tuy nhiên' FROM DUAL
UNION ALL SELECT 'A1', 'hundred', 'number', '/ˈhʌndrəd/', 'một trăm' FROM DUAL
UNION ALL SELECT 'A1', 'hungry', 'adjective', '/ˈhʌŋɡri/', 'đói' FROM DUAL
UNION ALL SELECT 'A1', 'husband', 'noun', '/ˈhʌzbənd/', 'chồng' FROM DUAL
UNION ALL SELECT 'A1', 'I', 'pronoun', '/aɪ/', 'tôi' FROM DUAL
UNION ALL SELECT 'A1', 'ice', 'noun', '/aɪs/', 'băng, nước đá' FROM DUAL
UNION ALL SELECT 'A1', 'ice cream', 'noun', '/ˌaɪs ˈkriːm/', 'kem' FROM DUAL
UNION ALL SELECT 'A1', 'idea', 'noun', '/aɪˈdɪə/', 'ý tưởng' FROM DUAL
UNION ALL SELECT 'A1', 'if', 'conjunction', '/ɪf/', 'nếu' FROM DUAL
UNION ALL SELECT 'A1', 'imagine', 'verb', '/ɪˈmædʒɪn/', 'tưởng tượng' FROM DUAL
UNION ALL SELECT 'A1', 'important', 'adjective', '/ɪmˈpɔːtnt/', 'quan trọng' FROM DUAL
UNION ALL SELECT 'A1', 'improve', 'verb', '/ɪmˈpruːv/', 'cải thiện' FROM DUAL
UNION ALL SELECT 'A1', 'in', 'preposition', '/ɪn/', 'trong' FROM DUAL
UNION ALL SELECT 'A1', 'include', 'verb', '/ɪnˈkluːd/', 'bao gồm' FROM DUAL
UNION ALL SELECT 'A1', 'information', 'noun', '/ˌɪnfəˈmeɪʃn/', 'thông tin' FROM DUAL
UNION ALL SELECT 'A1', 'interest', 'noun', '/ˈɪntrəst/', 'sự quan tâm, sở thích' FROM DUAL
UNION ALL SELECT 'A1', 'interested', 'adjective', '/ˈɪntrəstɪd/', 'quan tâm, thích thú' FROM DUAL
UNION ALL SELECT 'A1', 'interesting', 'adjective', '/ˈɪntrəstɪŋ/', 'thú vị' FROM DUAL
UNION ALL SELECT 'A1', 'internet', 'noun', '/ˈɪntənet/', 'mạng internet' FROM DUAL
UNION ALL SELECT 'A1', 'interview', 'noun', '/ˈɪntəvjuː/', 'cuộc phỏng vấn' FROM DUAL
UNION ALL SELECT 'A1', 'into', 'preposition', '/ˈɪntə/', 'vào trong' FROM DUAL
UNION ALL SELECT 'A1', 'introduce', 'verb', '/ˌɪntrəˈdjuːs/', 'giới thiệu' FROM DUAL
UNION ALL SELECT 'A1', 'island', 'noun', '/ˈaɪlənd/', 'hòn đảo' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A1', 'it', 'pronoun', '/ɪt/', 'nó' FROM DUAL
UNION ALL SELECT 'A1', 'its', 'determiner', '/ɪts/', 'của nó' FROM DUAL
UNION ALL SELECT 'A1', 'jacket', 'noun', '/ˈdʒækɪt/', 'áo khoác' FROM DUAL
UNION ALL SELECT 'A1', 'January', 'noun', '/ˈdʒænjuəri/', 'tháng Một' FROM DUAL
UNION ALL SELECT 'A1', 'jeans', 'noun', '/dʒiːnz/', 'quần bò' FROM DUAL
UNION ALL SELECT 'A1', 'job', 'noun', '/dʒɒb/', 'công việc' FROM DUAL
UNION ALL SELECT 'A1', 'join', 'verb', '/dʒɔɪn/', 'tham gia' FROM DUAL
UNION ALL SELECT 'A1', 'journey', 'noun', '/ˈdʒɜːni/', 'chuyến đi' FROM DUAL
UNION ALL SELECT 'A1', 'juice', 'noun', '/dʒuːs/', 'nước ép' FROM DUAL
UNION ALL SELECT 'A1', 'July', 'noun', '/dʒuˈlaɪ/', 'tháng Bảy' FROM DUAL
UNION ALL SELECT 'A1', 'June', 'noun', '/dʒuːn/', 'tháng Sáu' FROM DUAL
UNION ALL SELECT 'A1', 'just', 'adverb', '/dʒʌst/', 'vừa mới, chỉ' FROM DUAL
UNION ALL SELECT 'A1', 'keep', 'verb', '/kiːp/', 'giữ' FROM DUAL
UNION ALL SELECT 'A1', 'key', 'noun', '/kiː/', 'chìa khóa' FROM DUAL
UNION ALL SELECT 'A1', 'kilometre', 'noun', '/ˈkɪləmiːtə(r)/', 'ki-lô-mét' FROM DUAL
UNION ALL SELECT 'A1', 'kind', 'noun', '/kaɪnd/', 'loại' FROM DUAL
UNION ALL SELECT 'A1', 'kitchen', 'noun', '/ˈkɪtʃɪn/', 'nhà bếp' FROM DUAL
UNION ALL SELECT 'A1', 'know', 'verb', '/nəʊ/', 'biết' FROM DUAL
UNION ALL SELECT 'A1', 'land', 'noun', '/lænd/', 'đất liền, đất đai' FROM DUAL
UNION ALL SELECT 'A1', 'language', 'noun', '/ˈlæŋɡwɪdʒ/', 'ngôn ngữ' FROM DUAL
UNION ALL SELECT 'A1', 'large', 'adjective', '/lɑːdʒ/', 'lớn' FROM DUAL
UNION ALL SELECT 'A1', 'last', 'determiner', '/lɑːst/', 'cuối cùng, trước' FROM DUAL
UNION ALL SELECT 'A1', 'late', 'adjective', '/leɪt/', 'muộn' FROM DUAL
UNION ALL SELECT 'A1', 'later', 'adverb', '/ˈleɪtə(r)/', 'sau đó' FROM DUAL
UNION ALL SELECT 'A1', 'laugh', 'verb', '/lɑːf/', 'cười' FROM DUAL
UNION ALL SELECT 'A1', 'learn', 'verb', '/lɜːn/', 'học' FROM DUAL
UNION ALL SELECT 'A1', 'leave', 'verb', '/liːv/', 'rời đi' FROM DUAL
UNION ALL SELECT 'A1', 'left', 'adjective', '/left/', 'bên trái' FROM DUAL
UNION ALL SELECT 'A1', 'leg', 'noun', '/leɡ/', 'cái chân' FROM DUAL
UNION ALL SELECT 'A1', 'lesson', 'noun', '/ˈlesn/', 'bài học' FROM DUAL
UNION ALL SELECT 'A1', 'let', 'verb', '/let/', 'để, cho phép' FROM DUAL
UNION ALL SELECT 'A1', 'letter', 'noun', '/ˈletə(r)/', 'lá thư, chữ cái' FROM DUAL
UNION ALL SELECT 'A1', 'library', 'noun', '/ˈlaɪbrəri/', 'thư viện' FROM DUAL
UNION ALL SELECT 'A1', 'lie', 'verb', '/laɪ/', 'nằm' FROM DUAL
UNION ALL SELECT 'A1', 'life', 'noun', '/laɪf/', 'cuộc sống' FROM DUAL
UNION ALL SELECT 'A1', 'light', 'noun', '/laɪt/', 'ánh sáng, đèn' FROM DUAL
UNION ALL SELECT 'A1', 'like', 'verb', '/laɪk/', 'thích' FROM DUAL
UNION ALL SELECT 'A1', 'line', 'noun', '/laɪn/', 'đường kẻ, dòng' FROM DUAL
UNION ALL SELECT 'A1', 'lion', 'noun', '/ˈlaɪən/', 'sư tử' FROM DUAL
UNION ALL SELECT 'A1', 'list', 'noun', '/lɪst/', 'danh sách' FROM DUAL
UNION ALL SELECT 'A1', 'listen', 'verb', '/ˈlɪsn/', 'lắng nghe' FROM DUAL
UNION ALL SELECT 'A1', 'little', 'adjective', '/ˈlɪtl/', 'nhỏ, ít' FROM DUAL
UNION ALL SELECT 'A1', 'live', 'verb', '/lɪv/', 'sống' FROM DUAL
UNION ALL SELECT 'A1', 'local', 'adjective', '/ˈləʊkl/', 'địa phương' FROM DUAL
UNION ALL SELECT 'A1', 'long', 'adjective', '/lɒŋ/', 'dài' FROM DUAL
UNION ALL SELECT 'A1', 'look', 'verb', '/lʊk/', 'nhìn' FROM DUAL
UNION ALL SELECT 'A1', 'lose', 'verb', '/luːz/', 'mất, thua' FROM DUAL
UNION ALL SELECT 'A1', 'lot', 'pronoun', '/lɒt/', 'nhiều (a lot)' FROM DUAL
UNION ALL SELECT 'A1', 'love', 'verb', '/lʌv/', 'yêu' FROM DUAL
UNION ALL SELECT 'A1', 'lunch', 'noun', '/lʌntʃ/', 'bữa trưa' FROM DUAL
UNION ALL SELECT 'A1', 'machine', 'noun', '/məˈʃiːn/', 'máy móc' FROM DUAL
UNION ALL SELECT 'A1', 'magazine', 'noun', '/ˌmæɡəˈziːn/', 'tạp chí' FROM DUAL
UNION ALL SELECT 'A1', 'main', 'adjective', '/meɪn/', 'chính' FROM DUAL
UNION ALL SELECT 'A1', 'make', 'verb', '/meɪk/', 'làm, chế tạo' FROM DUAL
UNION ALL SELECT 'A1', 'man', 'noun', '/mæn/', 'người đàn ông' FROM DUAL
UNION ALL SELECT 'A1', 'many', 'determiner', '/ˈmeni/', 'nhiều' FROM DUAL
UNION ALL SELECT 'A1', 'map', 'noun', '/mæp/', 'bản đồ' FROM DUAL
UNION ALL SELECT 'A1', 'March', 'noun', '/mɑːtʃ/', 'tháng Ba' FROM DUAL
UNION ALL SELECT 'A1', 'market', 'noun', '/ˈmɑːkɪt/', 'chợ, thị trường' FROM DUAL
UNION ALL SELECT 'A1', 'married', 'adjective', '/ˈmærid/', 'đã kết hôn' FROM DUAL
UNION ALL SELECT 'A1', 'match', 'noun', '/mætʃ/', 'trận đấu' FROM DUAL
UNION ALL SELECT 'A1', 'May', 'noun', '/meɪ/', 'tháng Năm' FROM DUAL
UNION ALL SELECT 'A1', 'maybe', 'adverb', '/ˈmeɪbi/', 'có lẽ' FROM DUAL
UNION ALL SELECT 'A1', 'me', 'pronoun', '/miː/', 'tôi (tân ngữ)' FROM DUAL
UNION ALL SELECT 'A1', 'meal', 'noun', '/miːl/', 'bữa ăn' FROM DUAL
UNION ALL SELECT 'A1', 'mean', 'verb', '/miːn/', 'có nghĩa là' FROM DUAL
UNION ALL SELECT 'A1', 'meaning', 'noun', '/ˈmiːnɪŋ/', 'ý nghĩa' FROM DUAL
UNION ALL SELECT 'A1', 'meat', 'noun', '/miːt/', 'thịt' FROM DUAL
UNION ALL SELECT 'A1', 'meet', 'verb', '/miːt/', 'gặp gỡ' FROM DUAL
UNION ALL SELECT 'A1', 'meeting', 'noun', '/ˈmiːtɪŋ/', 'cuộc họp' FROM DUAL
UNION ALL SELECT 'A1', 'member', 'noun', '/ˈmembə(r)/', 'thành viên' FROM DUAL
UNION ALL SELECT 'A1', 'menu', 'noun', '/ˈmenjuː/', 'thực đơn' FROM DUAL
UNION ALL SELECT 'A1', 'message', 'noun', '/ˈmesɪdʒ/', 'tin nhắn' FROM DUAL
UNION ALL SELECT 'A1', 'metre', 'noun', '/ˈmiːtə(r)/', 'mét' FROM DUAL
UNION ALL SELECT 'A1', 'midnight', 'noun', '/ˈmɪdnaɪt/', 'nửa đêm' FROM DUAL
UNION ALL SELECT 'A1', 'mile', 'noun', '/maɪl/', 'dặm' FROM DUAL
UNION ALL SELECT 'A1', 'milk', 'noun', '/mɪlk/', 'sữa' FROM DUAL
UNION ALL SELECT 'A1', 'million', 'number', '/ˈmɪljən/', 'một triệu' FROM DUAL
UNION ALL SELECT 'A1', 'minute', 'noun', '/ˈmɪnɪt/', 'phút' FROM DUAL
UNION ALL SELECT 'A1', 'miss', 'verb', '/mɪs/', 'nhớ, lỡ' FROM DUAL
UNION ALL SELECT 'A1', 'mistake', 'noun', '/mɪˈsteɪk/', 'lỗi sai' FROM DUAL
UNION ALL SELECT 'A1', 'model', 'noun', '/ˈmɒdl/', 'người mẫu, mô hình' FROM DUAL
UNION ALL SELECT 'A1', 'modern', 'adjective', '/ˈmɒdn/', 'hiện đại' FROM DUAL
UNION ALL SELECT 'A1', 'moment', 'noun', '/ˈməʊmənt/', 'khoảnh khắc' FROM DUAL
UNION ALL SELECT 'A1', 'Monday', 'noun', '/ˈmʌndeɪ/', 'thứ Hai' FROM DUAL
UNION ALL SELECT 'A1', 'money', 'noun', '/ˈmʌni/', 'tiền' FROM DUAL
UNION ALL SELECT 'A1', 'month', 'noun', '/mʌnθ/', 'tháng' FROM DUAL
UNION ALL SELECT 'A1', 'more', 'determiner', '/mɔː(r)/', 'nhiều hơn' FROM DUAL
UNION ALL SELECT 'A1', 'morning', 'noun', '/ˈmɔːnɪŋ/', 'buổi sáng' FROM DUAL
UNION ALL SELECT 'A1', 'most', 'determiner', '/məʊst/', 'nhiều nhất, hầu hết' FROM DUAL
UNION ALL SELECT 'A1', 'mother', 'noun', '/ˈmʌðə(r)/', 'mẹ' FROM DUAL
UNION ALL SELECT 'A1', 'mountain', 'noun', '/ˈmaʊntən/', 'ngọn núi' FROM DUAL
UNION ALL SELECT 'A1', 'mouse', 'noun', '/maʊs/', 'con chuột' FROM DUAL
UNION ALL SELECT 'A1', 'mouth', 'noun', '/maʊθ/', 'miệng' FROM DUAL
UNION ALL SELECT 'A1', 'move', 'verb', '/muːv/', 'di chuyển' FROM DUAL
UNION ALL SELECT 'A1', 'movie', 'noun', '/ˈmuːvi/', 'bộ phim' FROM DUAL
UNION ALL SELECT 'A1', 'much', 'determiner', '/mʌtʃ/', 'nhiều' FROM DUAL
UNION ALL SELECT 'A1', 'mum', 'noun', '/mʌm/', 'mẹ' FROM DUAL
UNION ALL SELECT 'A1', 'museum', 'noun', '/mjuˈziːəm/', 'bảo tàng' FROM DUAL
UNION ALL SELECT 'A1', 'music', 'noun', '/ˈmjuːzɪk/', 'âm nhạc' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A1', 'must', 'modal verb', '/mʌst/', 'phải' FROM DUAL
UNION ALL SELECT 'A1', 'my', 'determiner', '/maɪ/', 'của tôi' FROM DUAL
UNION ALL SELECT 'A1', 'name', 'noun', '/neɪm/', 'tên' FROM DUAL
UNION ALL SELECT 'A1', 'natural', 'adjective', '/ˈnætʃrəl/', 'tự nhiên' FROM DUAL
UNION ALL SELECT 'A1', 'near', 'preposition', '/nɪə(r)/', 'gần' FROM DUAL
UNION ALL SELECT 'A1', 'need', 'verb', '/niːd/', 'cần' FROM DUAL
UNION ALL SELECT 'A1', 'negative', 'adjective', '/ˈneɡətɪv/', 'tiêu cực, phủ định' FROM DUAL
UNION ALL SELECT 'A1', 'neighbour', 'noun', '/ˈneɪbə(r)/', 'hàng xóm' FROM DUAL
UNION ALL SELECT 'A1', 'never', 'adverb', '/ˈnevə(r)/', 'không bao giờ' FROM DUAL
UNION ALL SELECT 'A1', 'new', 'adjective', '/njuː/', 'mới' FROM DUAL
UNION ALL SELECT 'A1', 'news', 'noun', '/njuːz/', 'tin tức' FROM DUAL
UNION ALL SELECT 'A1', 'newspaper', 'noun', '/ˈnjuːzpeɪpə(r)/', 'tờ báo' FROM DUAL
UNION ALL SELECT 'A1', 'next', 'adjective', '/nekst/', 'tiếp theo' FROM DUAL
UNION ALL SELECT 'A1', 'nice', 'adjective', '/naɪs/', 'đẹp, tốt, dễ chịu' FROM DUAL
UNION ALL SELECT 'A1', 'night', 'noun', '/naɪt/', 'ban đêm' FROM DUAL
UNION ALL SELECT 'A1', 'nine', 'number', '/naɪn/', 'số chín' FROM DUAL
UNION ALL SELECT 'A1', 'nineteen', 'number', '/ˌnaɪnˈtiːn/', 'số mười chín' FROM DUAL
UNION ALL SELECT 'A1', 'ninety', 'number', '/ˈnaɪnti/', 'số chín mươi' FROM DUAL
UNION ALL SELECT 'A1', 'no', 'determiner', '/nəʊ/', 'không' FROM DUAL
UNION ALL SELECT 'A1', 'nobody', 'pronoun', '/ˈnəʊbədi/', 'không ai' FROM DUAL
UNION ALL SELECT 'A1', 'north', 'noun', '/nɔːθ/', 'phía bắc' FROM DUAL
UNION ALL SELECT 'A1', 'nose', 'noun', '/nəʊz/', 'cái mũi' FROM DUAL
UNION ALL SELECT 'A1', 'not', 'adverb', '/nɒt/', 'không' FROM DUAL
UNION ALL SELECT 'A1', 'note', 'noun', '/nəʊt/', 'ghi chú' FROM DUAL
UNION ALL SELECT 'A1', 'nothing', 'pronoun', '/ˈnʌθɪŋ/', 'không có gì' FROM DUAL
UNION ALL SELECT 'A1', 'November', 'noun', '/nəʊˈvembə(r)/', 'tháng Mười Một' FROM DUAL
UNION ALL SELECT 'A1', 'now', 'adverb', '/naʊ/', 'bây giờ' FROM DUAL
UNION ALL SELECT 'A1', 'number', 'noun', '/ˈnʌmbə(r)/', 'con số' FROM DUAL
UNION ALL SELECT 'A1', 'nurse', 'noun', '/nɜːs/', 'y tá' FROM DUAL
UNION ALL SELECT 'A1', 'object', 'noun', '/ˈɒbdʒekt/', 'vật thể' FROM DUAL
UNION ALL SELECT 'A1', 'o''clock', 'adverb', '/əˈklɒk/', 'giờ đúng' FROM DUAL
UNION ALL SELECT 'A1', 'October', 'noun', '/ɒkˈtəʊbə(r)/', 'tháng Mười' FROM DUAL
UNION ALL SELECT 'A1', 'of', 'preposition', '/ɒv/', 'của' FROM DUAL
UNION ALL SELECT 'A1', 'off', 'adverb', '/ɒf/', 'tắt, rời khỏi' FROM DUAL
UNION ALL SELECT 'A1', 'office', 'noun', '/ˈɒfɪs/', 'văn phòng' FROM DUAL
UNION ALL SELECT 'A1', 'often', 'adverb', '/ˈɒfn/', 'thường xuyên' FROM DUAL
UNION ALL SELECT 'A1', 'oh', 'exclamation', '/əʊ/', 'ồ' FROM DUAL
UNION ALL SELECT 'A1', 'OK', 'exclamation', '/əʊˈkeɪ/', 'được, ổn' FROM DUAL
UNION ALL SELECT 'A1', 'old', 'adjective', '/əʊld/', 'già, cũ' FROM DUAL
UNION ALL SELECT 'A1', 'on', 'preposition', '/ɒn/', 'trên' FROM DUAL
UNION ALL SELECT 'A1', 'once', 'adverb', '/wʌns/', 'một lần' FROM DUAL
UNION ALL SELECT 'A1', 'one', 'number', '/wʌn/', 'số một' FROM DUAL
UNION ALL SELECT 'A1', 'onion', 'noun', '/ˈʌnjən/', 'củ hành' FROM DUAL
UNION ALL SELECT 'A1', 'online', 'adjective', '/ˌɒnˈlaɪn/', 'trực tuyến' FROM DUAL
UNION ALL SELECT 'A1', 'only', 'adverb', '/ˈəʊnli/', 'chỉ' FROM DUAL
UNION ALL SELECT 'A1', 'open', 'verb', '/ˈəʊpən/', 'mở' FROM DUAL
UNION ALL SELECT 'A1', 'opinion', 'noun', '/əˈpɪnjən/', 'ý kiến' FROM DUAL
UNION ALL SELECT 'A1', 'opposite', 'preposition', '/ˈɒpəzɪt/', 'đối diện' FROM DUAL
UNION ALL SELECT 'A1', 'or', 'conjunction', '/ɔː(r)/', 'hoặc' FROM DUAL
UNION ALL SELECT 'A1', 'orange', 'noun', '/ˈɒrɪndʒ/', 'quả cam, màu cam' FROM DUAL
UNION ALL SELECT 'A1', 'order', 'noun', '/ˈɔːdə(r)/', 'thứ tự, đơn hàng' FROM DUAL
UNION ALL SELECT 'A1', 'other', 'determiner', '/ˈʌðə(r)/', 'khác' FROM DUAL
UNION ALL SELECT 'A1', 'our', 'determiner', '/ˈaʊə(r)/', 'của chúng ta' FROM DUAL
UNION ALL SELECT 'A1', 'out', 'adverb', '/aʊt/', 'ra ngoài' FROM DUAL
UNION ALL SELECT 'A1', 'outside', 'adverb', '/ˌaʊtˈsaɪd/', 'bên ngoài' FROM DUAL
UNION ALL SELECT 'A1', 'over', 'preposition', '/ˈəʊvə(r)/', 'trên, qua' FROM DUAL
UNION ALL SELECT 'A1', 'own', 'adjective', '/əʊn/', 'của riêng' FROM DUAL
UNION ALL SELECT 'A1', 'page', 'noun', '/peɪdʒ/', 'trang' FROM DUAL
UNION ALL SELECT 'A1', 'paint', 'verb', '/peɪnt/', 'sơn, vẽ' FROM DUAL
UNION ALL SELECT 'A1', 'painting', 'noun', '/ˈpeɪntɪŋ/', 'bức tranh' FROM DUAL
UNION ALL SELECT 'A1', 'pair', 'noun', '/peə(r)/', 'đôi, cặp' FROM DUAL
UNION ALL SELECT 'A1', 'paper', 'noun', '/ˈpeɪpə(r)/', 'giấy' FROM DUAL
UNION ALL SELECT 'A1', 'paragraph', 'noun', '/ˈpærəɡrɑːf/', 'đoạn văn' FROM DUAL
UNION ALL SELECT 'A1', 'parent', 'noun', '/ˈpeərənt/', 'cha mẹ' FROM DUAL
UNION ALL SELECT 'A1', 'park', 'noun', '/pɑːk/', 'công viên' FROM DUAL
UNION ALL SELECT 'A1', 'part', 'noun', '/pɑːt/', 'phần' FROM DUAL
UNION ALL SELECT 'A1', 'partner', 'noun', '/ˈpɑːtnə(r)/', 'bạn đồng hành, đối tác' FROM DUAL
UNION ALL SELECT 'A1', 'party', 'noun', '/ˈpɑːti/', 'bữa tiệc' FROM DUAL
UNION ALL SELECT 'A1', 'passport', 'noun', '/ˈpɑːspɔːt/', 'hộ chiếu' FROM DUAL
UNION ALL SELECT 'A1', 'past', 'noun', '/pɑːst/', 'quá khứ' FROM DUAL
UNION ALL SELECT 'A1', 'pay', 'verb', '/peɪ/', 'trả tiền' FROM DUAL
UNION ALL SELECT 'A1', 'pen', 'noun', '/pen/', 'cây bút mực' FROM DUAL
UNION ALL SELECT 'A1', 'pencil', 'noun', '/ˈpensl/', 'bút chì' FROM DUAL
UNION ALL SELECT 'A1', 'people', 'noun', '/ˈpiːpl/', 'mọi người' FROM DUAL
UNION ALL SELECT 'A1', 'pepper', 'noun', '/ˈpepə(r)/', 'hạt tiêu, ớt chuông' FROM DUAL
UNION ALL SELECT 'A1', 'perfect', 'adjective', '/ˈpɜːfɪkt/', 'hoàn hảo' FROM DUAL
UNION ALL SELECT 'A1', 'period', 'noun', '/ˈpɪəriəd/', 'giai đoạn, tiết học' FROM DUAL
UNION ALL SELECT 'A1', 'person', 'noun', '/ˈpɜːsn/', 'người' FROM DUAL
UNION ALL SELECT 'A1', 'personal', 'adjective', '/ˈpɜːsənl/', 'cá nhân' FROM DUAL
UNION ALL SELECT 'A1', 'phone', 'noun', '/fəʊn/', 'điện thoại' FROM DUAL
UNION ALL SELECT 'A1', 'photo', 'noun', '/ˈfəʊtəʊ/', 'bức ảnh' FROM DUAL
UNION ALL SELECT 'A1', 'photograph', 'noun', '/ˈfəʊtəɡrɑːf/', 'bức ảnh' FROM DUAL
UNION ALL SELECT 'A1', 'phrase', 'noun', '/freɪz/', 'cụm từ' FROM DUAL
UNION ALL SELECT 'A1', 'piano', 'noun', '/piˈænəʊ/', 'đàn piano' FROM DUAL
UNION ALL SELECT 'A1', 'picture', 'noun', '/ˈpɪktʃə(r)/', 'bức tranh, hình ảnh' FROM DUAL
UNION ALL SELECT 'A1', 'piece', 'noun', '/piːs/', 'mảnh, miếng' FROM DUAL
UNION ALL SELECT 'A1', 'pig', 'noun', '/pɪɡ/', 'con lợn' FROM DUAL
UNION ALL SELECT 'A1', 'pink', 'adjective', '/pɪŋk/', 'màu hồng' FROM DUAL
UNION ALL SELECT 'A1', 'place', 'noun', '/pleɪs/', 'nơi chốn' FROM DUAL
UNION ALL SELECT 'A1', 'plan', 'noun', '/plæn/', 'kế hoạch' FROM DUAL
UNION ALL SELECT 'A1', 'plane', 'noun', '/pleɪn/', 'máy bay' FROM DUAL
UNION ALL SELECT 'A1', 'plant', 'noun', '/plɑːnt/', 'cây, thực vật' FROM DUAL
UNION ALL SELECT 'A1', 'play', 'verb', '/pleɪ/', 'chơi' FROM DUAL
UNION ALL SELECT 'A1', 'player', 'noun', '/ˈpleɪə(r)/', 'người chơi, cầu thủ' FROM DUAL
UNION ALL SELECT 'A1', 'please', 'exclamation', '/pliːz/', 'làm ơn' FROM DUAL
UNION ALL SELECT 'A1', 'point', 'noun', '/pɔɪnt/', 'điểm' FROM DUAL
UNION ALL SELECT 'A1', 'police', 'noun', '/pəˈliːs/', 'cảnh sát' FROM DUAL
UNION ALL SELECT 'A1', 'policeman', 'noun', '/pəˈliːsmən/', 'nam cảnh sát' FROM DUAL
UNION ALL SELECT 'A1', 'pool', 'noun', '/puːl/', 'hồ bơi' FROM DUAL
UNION ALL SELECT 'A1', 'poor', 'adjective', '/pɔː(r)/', 'nghèo' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A1', 'popular', 'adjective', '/ˈpɒpjələ(r)/', 'phổ biến, được ưa chuộng' FROM DUAL
UNION ALL SELECT 'A1', 'positive', 'adjective', '/ˈpɒzətɪv/', 'tích cực' FROM DUAL
UNION ALL SELECT 'A1', 'possible', 'adjective', '/ˈpɒsəbl/', 'có thể' FROM DUAL
UNION ALL SELECT 'A1', 'post', 'noun', '/pəʊst/', 'bưu phẩm, bài đăng' FROM DUAL
UNION ALL SELECT 'A1', 'potato', 'noun', '/pəˈteɪtəʊ/', 'khoai tây' FROM DUAL
UNION ALL SELECT 'A1', 'pound', 'noun', '/paʊnd/', 'đồng bảng Anh' FROM DUAL
UNION ALL SELECT 'A1', 'practice', 'noun', '/ˈpræktɪs/', 'sự luyện tập' FROM DUAL
UNION ALL SELECT 'A1', 'practise', 'verb', '/ˈpræktɪs/', 'luyện tập' FROM DUAL
UNION ALL SELECT 'A1', 'prefer', 'verb', '/prɪˈfɜː(r)/', 'thích hơn' FROM DUAL
UNION ALL SELECT 'A1', 'prepare', 'verb', '/prɪˈpeə(r)/', 'chuẩn bị' FROM DUAL
UNION ALL SELECT 'A1', 'present', 'noun', '/ˈpreznt/', 'món quà, hiện tại' FROM DUAL
UNION ALL SELECT 'A1', 'pretty', 'adjective', '/ˈprɪti/', 'xinh đẹp' FROM DUAL
UNION ALL SELECT 'A1', 'price', 'noun', '/praɪs/', 'giá cả' FROM DUAL
UNION ALL SELECT 'A1', 'probably', 'adverb', '/ˈprɒbəbli/', 'có lẽ' FROM DUAL
UNION ALL SELECT 'A1', 'problem', 'noun', '/ˈprɒbləm/', 'vấn đề' FROM DUAL
UNION ALL SELECT 'A1', 'product', 'noun', '/ˈprɒdʌkt/', 'sản phẩm' FROM DUAL
UNION ALL SELECT 'A1', 'programme', 'noun', '/ˈprəʊɡræm/', 'chương trình' FROM DUAL
UNION ALL SELECT 'A1', 'project', 'noun', '/ˈprɒdʒekt/', 'dự án' FROM DUAL
UNION ALL SELECT 'A1', 'purple', 'adjective', '/ˈpɜːpl/', 'màu tím' FROM DUAL
UNION ALL SELECT 'A1', 'put', 'verb', '/pʊt/', 'đặt, để' FROM DUAL
UNION ALL SELECT 'A1', 'quarter', 'noun', '/ˈkwɔːtə(r)/', 'một phần tư' FROM DUAL
UNION ALL SELECT 'A1', 'question', 'noun', '/ˈkwestʃən/', 'câu hỏi' FROM DUAL
UNION ALL SELECT 'A1', 'quick', 'adjective', '/kwɪk/', 'nhanh' FROM DUAL
UNION ALL SELECT 'A1', 'quickly', 'adverb', '/ˈkwɪkli/', 'một cách nhanh chóng' FROM DUAL
UNION ALL SELECT 'A1', 'quiet', 'adjective', '/ˈkwaɪət/', 'yên tĩnh' FROM DUAL
UNION ALL SELECT 'A1', 'quite', 'adverb', '/kwaɪt/', 'khá' FROM DUAL
UNION ALL SELECT 'A1', 'radio', 'noun', '/ˈreɪdiəʊ/', 'đài phát thanh' FROM DUAL
UNION ALL SELECT 'A1', 'rain', 'noun', '/reɪn/', 'mưa' FROM DUAL
UNION ALL SELECT 'A1', 'read', 'verb', '/riːd/', 'đọc' FROM DUAL
UNION ALL SELECT 'A1', 'reader', 'noun', '/ˈriːdə(r)/', 'người đọc' FROM DUAL
UNION ALL SELECT 'A1', 'reading', 'noun', '/ˈriːdɪŋ/', 'việc đọc' FROM DUAL
UNION ALL SELECT 'A1', 'ready', 'adjective', '/ˈredi/', 'sẵn sàng' FROM DUAL
UNION ALL SELECT 'A1', 'real', 'adjective', '/ˈriːəl/', 'thật' FROM DUAL
UNION ALL SELECT 'A1', 'really', 'adverb', '/ˈriːəli/', 'thực sự' FROM DUAL
UNION ALL SELECT 'A1', 'reason', 'noun', '/ˈriːzn/', 'lý do' FROM DUAL
UNION ALL SELECT 'A1', 'red', 'adjective', '/red/', 'màu đỏ' FROM DUAL
UNION ALL SELECT 'A1', 'relax', 'verb', '/rɪˈlæks/', 'thư giãn' FROM DUAL
UNION ALL SELECT 'A1', 'remember', 'verb', '/rɪˈmembə(r)/', 'nhớ' FROM DUAL
UNION ALL SELECT 'A1', 'repeat', 'verb', '/rɪˈpiːt/', 'lặp lại' FROM DUAL
UNION ALL SELECT 'A1', 'report', 'noun', '/rɪˈpɔːt/', 'bản báo cáo' FROM DUAL
UNION ALL SELECT 'A1', 'restaurant', 'noun', '/ˈrestrɒnt/', 'nhà hàng' FROM DUAL
UNION ALL SELECT 'A1', 'result', 'noun', '/rɪˈzʌlt/', 'kết quả' FROM DUAL
UNION ALL SELECT 'A1', 'return', 'verb', '/rɪˈtɜːn/', 'trở về' FROM DUAL
UNION ALL SELECT 'A1', 'rice', 'noun', '/raɪs/', 'gạo, cơm' FROM DUAL
UNION ALL SELECT 'A1', 'rich', 'adjective', '/rɪtʃ/', 'giàu' FROM DUAL
UNION ALL SELECT 'A1', 'ride', 'verb', '/raɪd/', 'cưỡi, đi (xe)' FROM DUAL
UNION ALL SELECT 'A1', 'right', 'adjective', '/raɪt/', 'đúng, bên phải' FROM DUAL
UNION ALL SELECT 'A1', 'river', 'noun', '/ˈrɪvə(r)/', 'dòng sông' FROM DUAL
UNION ALL SELECT 'A1', 'road', 'noun', '/rəʊd/', 'con đường' FROM DUAL
UNION ALL SELECT 'A1', 'room', 'noun', '/ruːm/', 'căn phòng' FROM DUAL
UNION ALL SELECT 'A1', 'routine', 'noun', '/ruːˈtiːn/', 'thói quen hằng ngày' FROM DUAL
UNION ALL SELECT 'A1', 'rule', 'noun', '/ruːl/', 'quy tắc' FROM DUAL
UNION ALL SELECT 'A1', 'run', 'verb', '/rʌn/', 'chạy' FROM DUAL
UNION ALL SELECT 'A1', 'sad', 'adjective', '/sæd/', 'buồn' FROM DUAL
UNION ALL SELECT 'A1', 'salad', 'noun', '/ˈsæləd/', 'món rau trộn' FROM DUAL
UNION ALL SELECT 'A1', 'salt', 'noun', '/sɔːlt/', 'muối' FROM DUAL
UNION ALL SELECT 'A1', 'same', 'adjective', '/seɪm/', 'giống nhau' FROM DUAL
UNION ALL SELECT 'A1', 'sandwich', 'noun', '/ˈsænwɪtʃ/', 'bánh mì kẹp' FROM DUAL
UNION ALL SELECT 'A1', 'Saturday', 'noun', '/ˈsætədeɪ/', 'thứ Bảy' FROM DUAL
UNION ALL SELECT 'A1', 'say', 'verb', '/seɪ/', 'nói' FROM DUAL
UNION ALL SELECT 'A1', 'school', 'noun', '/skuːl/', 'trường học' FROM DUAL
UNION ALL SELECT 'A1', 'science', 'noun', '/ˈsaɪəns/', 'khoa học' FROM DUAL
UNION ALL SELECT 'A1', 'scientist', 'noun', '/ˈsaɪəntɪst/', 'nhà khoa học' FROM DUAL
UNION ALL SELECT 'A1', 'sea', 'noun', '/siː/', 'biển' FROM DUAL
UNION ALL SELECT 'A1', 'second', 'number', '/ˈsekənd/', 'thứ hai' FROM DUAL
UNION ALL SELECT 'A1', 'second', 'noun', '/ˈsekənd/', 'giây' FROM DUAL
UNION ALL SELECT 'A1', 'section', 'noun', '/ˈsekʃn/', 'phần, mục' FROM DUAL
UNION ALL SELECT 'A1', 'see', 'verb', '/siː/', 'nhìn thấy' FROM DUAL
UNION ALL SELECT 'A1', 'sell', 'verb', '/sel/', 'bán' FROM DUAL
UNION ALL SELECT 'A1', 'send', 'verb', '/send/', 'gửi' FROM DUAL
UNION ALL SELECT 'A1', 'sentence', 'noun', '/ˈsentəns/', 'câu' FROM DUAL
UNION ALL SELECT 'A1', 'September', 'noun', '/sepˈtembə(r)/', 'tháng Chín' FROM DUAL
UNION ALL SELECT 'A1', 'seven', 'number', '/ˈsevn/', 'số bảy' FROM DUAL
UNION ALL SELECT 'A1', 'seventeen', 'number', '/ˌsevnˈtiːn/', 'số mười bảy' FROM DUAL
UNION ALL SELECT 'A1', 'seventy', 'number', '/ˈsevnti/', 'số bảy mươi' FROM DUAL
UNION ALL SELECT 'A1', 'share', 'verb', '/ʃeə(r)/', 'chia sẻ' FROM DUAL
UNION ALL SELECT 'A1', 'she', 'pronoun', '/ʃiː/', 'cô ấy' FROM DUAL
UNION ALL SELECT 'A1', 'sheep', 'noun', '/ʃiːp/', 'con cừu' FROM DUAL
UNION ALL SELECT 'A1', 'shirt', 'noun', '/ʃɜːt/', 'áo sơ mi' FROM DUAL
UNION ALL SELECT 'A1', 'shoe', 'noun', '/ʃuː/', 'chiếc giày' FROM DUAL
UNION ALL SELECT 'A1', 'shop', 'noun', '/ʃɒp/', 'cửa hàng' FROM DUAL
UNION ALL SELECT 'A1', 'shopping', 'noun', '/ˈʃɒpɪŋ/', 'việc mua sắm' FROM DUAL
UNION ALL SELECT 'A1', 'short', 'adjective', '/ʃɔːt/', 'ngắn, thấp' FROM DUAL
UNION ALL SELECT 'A1', 'should', 'modal verb', '/ʃʊd/', 'nên' FROM DUAL
UNION ALL SELECT 'A1', 'show', 'verb', '/ʃəʊ/', 'cho xem, chỉ' FROM DUAL
UNION ALL SELECT 'A1', 'shower', 'noun', '/ˈʃaʊə(r)/', 'vòi hoa sen, tắm vòi sen' FROM DUAL
UNION ALL SELECT 'A1', 'sick', 'adjective', '/sɪk/', 'ốm' FROM DUAL
UNION ALL SELECT 'A1', 'similar', 'adjective', '/ˈsɪmələ(r)/', 'tương tự' FROM DUAL
UNION ALL SELECT 'A1', 'sing', 'verb', '/sɪŋ/', 'hát' FROM DUAL
UNION ALL SELECT 'A1', 'singer', 'noun', '/ˈsɪŋə(r)/', 'ca sĩ' FROM DUAL
UNION ALL SELECT 'A1', 'sister', 'noun', '/ˈsɪstə(r)/', 'chị gái, em gái' FROM DUAL
UNION ALL SELECT 'A1', 'sit', 'verb', '/sɪt/', 'ngồi' FROM DUAL
UNION ALL SELECT 'A1', 'situation', 'noun', '/ˌsɪtʃuˈeɪʃn/', 'tình huống' FROM DUAL
UNION ALL SELECT 'A1', 'six', 'number', '/sɪks/', 'số sáu' FROM DUAL
UNION ALL SELECT 'A1', 'sixteen', 'number', '/ˌsɪksˈtiːn/', 'số mười sáu' FROM DUAL
UNION ALL SELECT 'A1', 'sixty', 'number', '/ˈsɪksti/', 'số sáu mươi' FROM DUAL
UNION ALL SELECT 'A1', 'skill', 'noun', '/skɪl/', 'kỹ năng' FROM DUAL
UNION ALL SELECT 'A1', 'skirt', 'noun', '/skɜːt/', 'chân váy' FROM DUAL
UNION ALL SELECT 'A1', 'sleep', 'verb', '/sliːp/', 'ngủ' FROM DUAL
UNION ALL SELECT 'A1', 'slow', 'adjective', '/sləʊ/', 'chậm' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A1', 'small', 'adjective', '/smɔːl/', 'nhỏ' FROM DUAL
UNION ALL SELECT 'A1', 'snake', 'noun', '/sneɪk/', 'con rắn' FROM DUAL
UNION ALL SELECT 'A1', 'snow', 'noun', '/snəʊ/', 'tuyết' FROM DUAL
UNION ALL SELECT 'A1', 'so', 'adverb', '/səʊ/', 'rất, vì vậy' FROM DUAL
UNION ALL SELECT 'A1', 'some', 'determiner', '/sʌm/', 'một vài' FROM DUAL
UNION ALL SELECT 'A1', 'somebody', 'pronoun', '/ˈsʌmbədi/', 'ai đó' FROM DUAL
UNION ALL SELECT 'A1', 'someone', 'pronoun', '/ˈsʌmwʌn/', 'ai đó' FROM DUAL
UNION ALL SELECT 'A1', 'something', 'pronoun', '/ˈsʌmθɪŋ/', 'cái gì đó' FROM DUAL
UNION ALL SELECT 'A1', 'sometimes', 'adverb', '/ˈsʌmtaɪmz/', 'thỉnh thoảng' FROM DUAL
UNION ALL SELECT 'A1', 'son', 'noun', '/sʌn/', 'con trai' FROM DUAL
UNION ALL SELECT 'A1', 'song', 'noun', '/sɒŋ/', 'bài hát' FROM DUAL
UNION ALL SELECT 'A1', 'soon', 'adverb', '/suːn/', 'sớm, chẳng bao lâu' FROM DUAL
UNION ALL SELECT 'A1', 'sorry', 'adjective', '/ˈsɒri/', 'xin lỗi, tiếc' FROM DUAL
UNION ALL SELECT 'A1', 'sound', 'noun', '/saʊnd/', 'âm thanh' FROM DUAL
UNION ALL SELECT 'A1', 'soup', 'noun', '/suːp/', 'món súp, canh' FROM DUAL
UNION ALL SELECT 'A1', 'south', 'noun', '/saʊθ/', 'phía nam' FROM DUAL
UNION ALL SELECT 'A1', 'space', 'noun', '/speɪs/', 'không gian, chỗ trống' FROM DUAL
UNION ALL SELECT 'A1', 'speak', 'verb', '/spiːk/', 'nói' FROM DUAL
UNION ALL SELECT 'A1', 'special', 'adjective', '/ˈspeʃl/', 'đặc biệt' FROM DUAL
UNION ALL SELECT 'A1', 'spell', 'verb', '/spel/', 'đánh vần' FROM DUAL
UNION ALL SELECT 'A1', 'spelling', 'noun', '/ˈspelɪŋ/', 'chính tả' FROM DUAL
UNION ALL SELECT 'A1', 'spend', 'verb', '/spend/', 'tiêu (tiền), dành (thời gian)' FROM DUAL
UNION ALL SELECT 'A1', 'sport', 'noun', '/spɔːt/', 'thể thao' FROM DUAL
UNION ALL SELECT 'A1', 'spring', 'noun', '/sprɪŋ/', 'mùa xuân' FROM DUAL
UNION ALL SELECT 'A1', 'stand', 'verb', '/stænd/', 'đứng' FROM DUAL
UNION ALL SELECT 'A1', 'star', 'noun', '/stɑː(r)/', 'ngôi sao' FROM DUAL
UNION ALL SELECT 'A1', 'start', 'verb', '/stɑːt/', 'bắt đầu' FROM DUAL
UNION ALL SELECT 'A1', 'statement', 'noun', '/ˈsteɪtmənt/', 'lời phát biểu, câu trần thuật' FROM DUAL
UNION ALL SELECT 'A1', 'station', 'noun', '/ˈsteɪʃn/', 'nhà ga, trạm' FROM DUAL
UNION ALL SELECT 'A1', 'stay', 'verb', '/steɪ/', 'ở lại' FROM DUAL
UNION ALL SELECT 'A1', 'still', 'adverb', '/stɪl/', 'vẫn' FROM DUAL
UNION ALL SELECT 'A1', 'stop', 'verb', '/stɒp/', 'dừng lại' FROM DUAL
UNION ALL SELECT 'A1', 'story', 'noun', '/ˈstɔːri/', 'câu chuyện' FROM DUAL
UNION ALL SELECT 'A1', 'street', 'noun', '/striːt/', 'đường phố' FROM DUAL
UNION ALL SELECT 'A1', 'strong', 'adjective', '/strɒŋ/', 'mạnh' FROM DUAL
UNION ALL SELECT 'A1', 'student', 'noun', '/ˈstjuːdnt/', 'học sinh, sinh viên' FROM DUAL
UNION ALL SELECT 'A1', 'study', 'verb', '/ˈstʌdi/', 'học' FROM DUAL
UNION ALL SELECT 'A1', 'style', 'noun', '/staɪl/', 'phong cách' FROM DUAL
UNION ALL SELECT 'A1', 'subject', 'noun', '/ˈsʌbdʒɪkt/', 'môn học, chủ đề' FROM DUAL
UNION ALL SELECT 'A1', 'success', 'noun', '/səkˈses/', 'sự thành công' FROM DUAL
UNION ALL SELECT 'A1', 'sugar', 'noun', '/ˈʃʊɡə(r)/', 'đường' FROM DUAL
UNION ALL SELECT 'A1', 'summer', 'noun', '/ˈsʌmə(r)/', 'mùa hè' FROM DUAL
UNION ALL SELECT 'A1', 'sun', 'noun', '/sʌn/', 'mặt trời' FROM DUAL
UNION ALL SELECT 'A1', 'Sunday', 'noun', '/ˈsʌndeɪ/', 'Chủ nhật' FROM DUAL
UNION ALL SELECT 'A1', 'supermarket', 'noun', '/ˈsuːpəmɑːkɪt/', 'siêu thị' FROM DUAL
UNION ALL SELECT 'A1', 'sure', 'adjective', '/ʃʊə(r)/', 'chắc chắn' FROM DUAL
UNION ALL SELECT 'A1', 'sweater', 'noun', '/ˈswetə(r)/', 'áo len' FROM DUAL
UNION ALL SELECT 'A1', 'swim', 'verb', '/swɪm/', 'bơi' FROM DUAL
UNION ALL SELECT 'A1', 'swimming', 'noun', '/ˈswɪmɪŋ/', 'môn bơi lội' FROM DUAL
UNION ALL SELECT 'A1', 'table', 'noun', '/ˈteɪbl/', 'cái bàn, bảng' FROM DUAL
UNION ALL SELECT 'A1', 'take', 'verb', '/teɪk/', 'lấy, cầm' FROM DUAL
UNION ALL SELECT 'A1', 'talk', 'verb', '/tɔːk/', 'nói chuyện' FROM DUAL
UNION ALL SELECT 'A1', 'tall', 'adjective', '/tɔːl/', 'cao' FROM DUAL
UNION ALL SELECT 'A1', 'taxi', 'noun', '/ˈtæksi/', 'xe taxi' FROM DUAL
UNION ALL SELECT 'A1', 'tea', 'noun', '/tiː/', 'trà' FROM DUAL
UNION ALL SELECT 'A1', 'teach', 'verb', '/tiːtʃ/', 'dạy' FROM DUAL
UNION ALL SELECT 'A1', 'teacher', 'noun', '/ˈtiːtʃə(r)/', 'giáo viên' FROM DUAL
UNION ALL SELECT 'A1', 'team', 'noun', '/tiːm/', 'đội' FROM DUAL
UNION ALL SELECT 'A1', 'teenager', 'noun', '/ˈtiːneɪdʒə(r)/', 'thanh thiếu niên' FROM DUAL
UNION ALL SELECT 'A1', 'telephone', 'noun', '/ˈtelɪfəʊn/', 'điện thoại' FROM DUAL
UNION ALL SELECT 'A1', 'television', 'noun', '/ˈtelɪvɪʒn/', 'ti vi' FROM DUAL
UNION ALL SELECT 'A1', 'tell', 'verb', '/tel/', 'kể, bảo' FROM DUAL
UNION ALL SELECT 'A1', 'ten', 'number', '/ten/', 'số mười' FROM DUAL
UNION ALL SELECT 'A1', 'tennis', 'noun', '/ˈtenɪs/', 'quần vợt' FROM DUAL
UNION ALL SELECT 'A1', 'terrible', 'adjective', '/ˈterəbl/', 'khủng khiếp' FROM DUAL
UNION ALL SELECT 'A1', 'test', 'noun', '/test/', 'bài kiểm tra' FROM DUAL
UNION ALL SELECT 'A1', 'text', 'noun', '/tekst/', 'văn bản, tin nhắn' FROM DUAL
UNION ALL SELECT 'A1', 'than', 'conjunction', '/ðæn/', 'hơn' FROM DUAL
UNION ALL SELECT 'A1', 'thank', 'verb', '/θæŋk/', 'cảm ơn' FROM DUAL
UNION ALL SELECT 'A1', 'thanks', 'exclamation', '/θæŋks/', 'cảm ơn' FROM DUAL
UNION ALL SELECT 'A1', 'that', 'determiner', '/ðæt/', 'đó, kia' FROM DUAL
UNION ALL SELECT 'A1', 'the', 'determiner', '/ðə/', '(mạo từ xác định)' FROM DUAL
UNION ALL SELECT 'A1', 'theatre', 'noun', '/ˈθɪətə(r)/', 'nhà hát' FROM DUAL
UNION ALL SELECT 'A1', 'their', 'determiner', '/ðeə(r)/', 'của họ' FROM DUAL
UNION ALL SELECT 'A1', 'them', 'pronoun', '/ðem/', 'họ (tân ngữ)' FROM DUAL
UNION ALL SELECT 'A1', 'then', 'adverb', '/ðen/', 'sau đó, khi đó' FROM DUAL
UNION ALL SELECT 'A1', 'there', 'adverb', '/ðeə(r)/', 'ở đó' FROM DUAL
UNION ALL SELECT 'A1', 'they', 'pronoun', '/ðeɪ/', 'họ' FROM DUAL
UNION ALL SELECT 'A1', 'thing', 'noun', '/θɪŋ/', 'đồ vật, thứ' FROM DUAL
UNION ALL SELECT 'A1', 'think', 'verb', '/θɪŋk/', 'nghĩ' FROM DUAL
UNION ALL SELECT 'A1', 'third', 'number', '/θɜːd/', 'thứ ba' FROM DUAL
UNION ALL SELECT 'A1', 'thirsty', 'adjective', '/ˈθɜːsti/', 'khát' FROM DUAL
UNION ALL SELECT 'A1', 'thirteen', 'number', '/ˌθɜːˈtiːn/', 'số mười ba' FROM DUAL
UNION ALL SELECT 'A1', 'thirty', 'number', '/ˈθɜːti/', 'số ba mươi' FROM DUAL
UNION ALL SELECT 'A1', 'this', 'determiner', '/ðɪs/', 'này' FROM DUAL
UNION ALL SELECT 'A1', 'thousand', 'number', '/ˈθaʊznd/', 'một nghìn' FROM DUAL
UNION ALL SELECT 'A1', 'three', 'number', '/θriː/', 'số ba' FROM DUAL
UNION ALL SELECT 'A1', 'through', 'preposition', '/θruː/', 'xuyên qua' FROM DUAL
UNION ALL SELECT 'A1', 'Thursday', 'noun', '/ˈθɜːzdeɪ/', 'thứ Năm' FROM DUAL
UNION ALL SELECT 'A1', 'ticket', 'noun', '/ˈtɪkɪt/', 'vé' FROM DUAL
UNION ALL SELECT 'A1', 'time', 'noun', '/taɪm/', 'thời gian, lần' FROM DUAL
UNION ALL SELECT 'A1', 'tired', 'adjective', '/ˈtaɪəd/', 'mệt mỏi' FROM DUAL
UNION ALL SELECT 'A1', 'title', 'noun', '/ˈtaɪtl/', 'tiêu đề' FROM DUAL
UNION ALL SELECT 'A1', 'to', 'preposition', '/tuː/', 'đến, tới' FROM DUAL
UNION ALL SELECT 'A1', 'today', 'adverb', '/təˈdeɪ/', 'hôm nay' FROM DUAL
UNION ALL SELECT 'A1', 'together', 'adverb', '/təˈɡeðə(r)/', 'cùng nhau' FROM DUAL
UNION ALL SELECT 'A1', 'toilet', 'noun', '/ˈtɔɪlət/', 'nhà vệ sinh' FROM DUAL
UNION ALL SELECT 'A1', 'tomato', 'noun', '/təˈmɑːtəʊ/', 'quả cà chua' FROM DUAL
UNION ALL SELECT 'A1', 'tomorrow', 'adverb', '/təˈmɒrəʊ/', 'ngày mai' FROM DUAL
UNION ALL SELECT 'A1', 'tonight', 'adverb', '/təˈnaɪt/', 'tối nay' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A1', 'too', 'adverb', '/tuː/', 'cũng, quá' FROM DUAL
UNION ALL SELECT 'A1', 'tooth', 'noun', '/tuːθ/', 'cái răng' FROM DUAL
UNION ALL SELECT 'A1', 'topic', 'noun', '/ˈtɒpɪk/', 'chủ đề' FROM DUAL
UNION ALL SELECT 'A1', 'tourist', 'noun', '/ˈtʊərɪst/', 'khách du lịch' FROM DUAL
UNION ALL SELECT 'A1', 'town', 'noun', '/taʊn/', 'thị trấn' FROM DUAL
UNION ALL SELECT 'A1', 'traffic', 'noun', '/ˈtræfɪk/', 'giao thông' FROM DUAL
UNION ALL SELECT 'A1', 'train', 'noun', '/treɪn/', 'tàu hỏa' FROM DUAL
UNION ALL SELECT 'A1', 'travel', 'verb', '/ˈtrævl/', 'đi du lịch' FROM DUAL
UNION ALL SELECT 'A1', 'tree', 'noun', '/triː/', 'cái cây' FROM DUAL
UNION ALL SELECT 'A1', 'trip', 'noun', '/trɪp/', 'chuyến đi' FROM DUAL
UNION ALL SELECT 'A1', 'trousers', 'noun', '/ˈtraʊzəz/', 'quần dài' FROM DUAL
UNION ALL SELECT 'A1', 'true', 'adjective', '/truː/', 'đúng, thật' FROM DUAL
UNION ALL SELECT 'A1', 'try', 'verb', '/traɪ/', 'thử, cố gắng' FROM DUAL
UNION ALL SELECT 'A1', 'T-shirt', 'noun', '/ˈtiː ʃɜːt/', 'áo phông' FROM DUAL
UNION ALL SELECT 'A1', 'Tuesday', 'noun', '/ˈtjuːzdeɪ/', 'thứ Ba' FROM DUAL
UNION ALL SELECT 'A1', 'turn', 'verb', '/tɜːn/', 'rẽ, quay' FROM DUAL
UNION ALL SELECT 'A1', 'TV', 'noun', '/ˌtiː ˈviː/', 'ti vi' FROM DUAL
UNION ALL SELECT 'A1', 'twelve', 'number', '/twelv/', 'số mười hai' FROM DUAL
UNION ALL SELECT 'A1', 'twenty', 'number', '/ˈtwenti/', 'số hai mươi' FROM DUAL
UNION ALL SELECT 'A1', 'twice', 'adverb', '/twaɪs/', 'hai lần' FROM DUAL
UNION ALL SELECT 'A1', 'two', 'number', '/tuː/', 'số hai' FROM DUAL
UNION ALL SELECT 'A1', 'type', 'noun', '/taɪp/', 'kiểu, loại' FROM DUAL
UNION ALL SELECT 'A1', 'umbrella', 'noun', '/ʌmˈbrelə/', 'cái ô' FROM DUAL
UNION ALL SELECT 'A1', 'uncle', 'noun', '/ˈʌŋkl/', 'chú, bác, cậu' FROM DUAL
UNION ALL SELECT 'A1', 'under', 'preposition', '/ˈʌndə(r)/', 'ở dưới' FROM DUAL
UNION ALL SELECT 'A1', 'understand', 'verb', '/ˌʌndəˈstænd/', 'hiểu' FROM DUAL
UNION ALL SELECT 'A1', 'university', 'noun', '/ˌjuːnɪˈvɜːsəti/', 'trường đại học' FROM DUAL
UNION ALL SELECT 'A1', 'until', 'preposition', '/ənˈtɪl/', 'cho đến khi' FROM DUAL
UNION ALL SELECT 'A1', 'up', 'adverb', '/ʌp/', 'lên' FROM DUAL
UNION ALL SELECT 'A1', 'upstairs', 'adverb', '/ˌʌpˈsteəz/', 'ở tầng trên' FROM DUAL
UNION ALL SELECT 'A1', 'us', 'pronoun', '/ʌs/', 'chúng tôi (tân ngữ)' FROM DUAL
UNION ALL SELECT 'A1', 'use', 'verb', '/juːz/', 'sử dụng' FROM DUAL
UNION ALL SELECT 'A1', 'useful', 'adjective', '/ˈjuːsfl/', 'hữu ích' FROM DUAL
UNION ALL SELECT 'A1', 'usually', 'adverb', '/ˈjuːʒuəli/', 'thường thường' FROM DUAL
UNION ALL SELECT 'A1', 'vacation', 'noun', '/veɪˈkeɪʃn/', 'kỳ nghỉ' FROM DUAL
UNION ALL SELECT 'A1', 'vegetable', 'noun', '/ˈvedʒtəbl/', 'rau củ' FROM DUAL
UNION ALL SELECT 'A1', 'very', 'adverb', '/ˈveri/', 'rất' FROM DUAL
UNION ALL SELECT 'A1', 'video', 'noun', '/ˈvɪdiəʊ/', 'video' FROM DUAL
UNION ALL SELECT 'A1', 'village', 'noun', '/ˈvɪlɪdʒ/', 'ngôi làng' FROM DUAL
UNION ALL SELECT 'A1', 'visit', 'verb', '/ˈvɪzɪt/', 'thăm' FROM DUAL
UNION ALL SELECT 'A1', 'visitor', 'noun', '/ˈvɪzɪtə(r)/', 'khách tham quan' FROM DUAL
UNION ALL SELECT 'A1', 'wait', 'verb', '/weɪt/', 'chờ đợi' FROM DUAL
UNION ALL SELECT 'A1', 'waiter', 'noun', '/ˈweɪtə(r)/', 'bồi bàn' FROM DUAL
UNION ALL SELECT 'A1', 'wake', 'verb', '/weɪk/', 'thức dậy' FROM DUAL
UNION ALL SELECT 'A1', 'walk', 'verb', '/wɔːk/', 'đi bộ' FROM DUAL
UNION ALL SELECT 'A1', 'wall', 'noun', '/wɔːl/', 'bức tường' FROM DUAL
UNION ALL SELECT 'A1', 'want', 'verb', '/wɒnt/', 'muốn' FROM DUAL
UNION ALL SELECT 'A1', 'warm', 'adjective', '/wɔːm/', 'ấm áp' FROM DUAL
UNION ALL SELECT 'A1', 'wash', 'verb', '/wɒʃ/', 'rửa, giặt' FROM DUAL
UNION ALL SELECT 'A1', 'watch', 'verb', '/wɒtʃ/', 'xem' FROM DUAL
UNION ALL SELECT 'A1', 'water', 'noun', '/ˈwɔːtə(r)/', 'nước' FROM DUAL
UNION ALL SELECT 'A1', 'way', 'noun', '/weɪ/', 'con đường, cách' FROM DUAL
UNION ALL SELECT 'A1', 'we', 'pronoun', '/wiː/', 'chúng tôi' FROM DUAL
UNION ALL SELECT 'A1', 'wear', 'verb', '/weə(r)/', 'mặc, đội' FROM DUAL
UNION ALL SELECT 'A1', 'weather', 'noun', '/ˈweðə(r)/', 'thời tiết' FROM DUAL
UNION ALL SELECT 'A1', 'website', 'noun', '/ˈwebsaɪt/', 'trang web' FROM DUAL
UNION ALL SELECT 'A1', 'Wednesday', 'noun', '/ˈwenzdeɪ/', 'thứ Tư' FROM DUAL
UNION ALL SELECT 'A1', 'week', 'noun', '/wiːk/', 'tuần' FROM DUAL
UNION ALL SELECT 'A1', 'weekend', 'noun', '/ˌwiːkˈend/', 'cuối tuần' FROM DUAL
UNION ALL SELECT 'A1', 'welcome', 'exclamation', '/ˈwelkəm/', 'chào mừng' FROM DUAL
UNION ALL SELECT 'A1', 'well', 'adverb', '/wel/', 'tốt, giỏi' FROM DUAL
UNION ALL SELECT 'A1', 'west', 'noun', '/west/', 'phía tây' FROM DUAL
UNION ALL SELECT 'A1', 'what', 'pronoun', '/wɒt/', 'cái gì' FROM DUAL
UNION ALL SELECT 'A1', 'when', 'adverb', '/wen/', 'khi nào' FROM DUAL
UNION ALL SELECT 'A1', 'where', 'adverb', '/weə(r)/', 'ở đâu' FROM DUAL
UNION ALL SELECT 'A1', 'which', 'pronoun', '/wɪtʃ/', 'cái nào' FROM DUAL
UNION ALL SELECT 'A1', 'white', 'adjective', '/waɪt/', 'màu trắng' FROM DUAL
UNION ALL SELECT 'A1', 'who', 'pronoun', '/huː/', 'ai' FROM DUAL
UNION ALL SELECT 'A1', 'why', 'adverb', '/waɪ/', 'tại sao' FROM DUAL
UNION ALL SELECT 'A1', 'wife', 'noun', '/waɪf/', 'vợ' FROM DUAL
UNION ALL SELECT 'A1', 'will', 'modal verb', '/wɪl/', 'sẽ' FROM DUAL
UNION ALL SELECT 'A1', 'win', 'verb', '/wɪn/', 'chiến thắng' FROM DUAL
UNION ALL SELECT 'A1', 'window', 'noun', '/ˈwɪndəʊ/', 'cửa sổ' FROM DUAL
UNION ALL SELECT 'A1', 'wine', 'noun', '/waɪn/', 'rượu vang' FROM DUAL
UNION ALL SELECT 'A1', 'winter', 'noun', '/ˈwɪntə(r)/', 'mùa đông' FROM DUAL
UNION ALL SELECT 'A1', 'with', 'preposition', '/wɪð/', 'với' FROM DUAL
UNION ALL SELECT 'A1', 'without', 'preposition', '/wɪˈðaʊt/', 'không có' FROM DUAL
UNION ALL SELECT 'A1', 'woman', 'noun', '/ˈwʊmən/', 'người phụ nữ' FROM DUAL
UNION ALL SELECT 'A1', 'wonderful', 'adjective', '/ˈwʌndəfl/', 'tuyệt vời' FROM DUAL
UNION ALL SELECT 'A1', 'word', 'noun', '/wɜːd/', 'từ' FROM DUAL
UNION ALL SELECT 'A1', 'work', 'verb', '/wɜːk/', 'làm việc' FROM DUAL
UNION ALL SELECT 'A1', 'worker', 'noun', '/ˈwɜːkə(r)/', 'công nhân' FROM DUAL
UNION ALL SELECT 'A1', 'world', 'noun', '/wɜːld/', 'thế giới' FROM DUAL
UNION ALL SELECT 'A1', 'would', 'modal verb', '/wʊd/', 'sẽ (quá khứ của will)' FROM DUAL
UNION ALL SELECT 'A1', 'write', 'verb', '/raɪt/', 'viết' FROM DUAL
UNION ALL SELECT 'A1', 'writer', 'noun', '/ˈraɪtə(r)/', 'nhà văn' FROM DUAL
UNION ALL SELECT 'A1', 'writing', 'noun', '/ˈraɪtɪŋ/', 'việc viết, bài viết' FROM DUAL
UNION ALL SELECT 'A1', 'wrong', 'adjective', '/rɒŋ/', 'sai' FROM DUAL
UNION ALL SELECT 'A1', 'yeah', 'exclamation', '/jeə/', 'ừ, vâng' FROM DUAL
UNION ALL SELECT 'A1', 'year', 'noun', '/jɪə(r)/', 'năm' FROM DUAL
UNION ALL SELECT 'A1', 'yellow', 'adjective', '/ˈjeləʊ/', 'màu vàng' FROM DUAL
UNION ALL SELECT 'A1', 'yes', 'exclamation', '/jes/', 'vâng, có' FROM DUAL
UNION ALL SELECT 'A1', 'yesterday', 'adverb', '/ˈjestədeɪ/', 'hôm qua' FROM DUAL
UNION ALL SELECT 'A1', 'you', 'pronoun', '/juː/', 'bạn' FROM DUAL
UNION ALL SELECT 'A1', 'young', 'adjective', '/jʌŋ/', 'trẻ' FROM DUAL
UNION ALL SELECT 'A1', 'your', 'determiner', '/jɔː(r)/', 'của bạn' FROM DUAL
UNION ALL SELECT 'A1', 'yourself', 'pronoun', '/jɔːˈself/', 'chính bạn' FROM DUAL
UNION ALL SELECT 'A2', 'able', 'adjective', '/ˈeɪbl/', 'có thể, có khả năng' FROM DUAL
UNION ALL SELECT 'A2', 'abroad', 'adverb', '/əˈbrɔːd/', 'ở nước ngoài' FROM DUAL
UNION ALL SELECT 'A2', 'accept', 'verb', '/əkˈsept/', 'chấp nhận' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A2', 'accident', 'noun', '/ˈæksɪdənt/', 'tai nạn' FROM DUAL
UNION ALL SELECT 'A2', 'according to', 'preposition', '/əˈkɔːdɪŋ tə/', 'theo như' FROM DUAL
UNION ALL SELECT 'A2', 'achieve', 'verb', '/əˈtʃiːv/', 'đạt được' FROM DUAL
UNION ALL SELECT 'A2', 'act', 'verb', '/ækt/', 'hành động, diễn' FROM DUAL
UNION ALL SELECT 'A2', 'active', 'adjective', '/ˈæktɪv/', 'năng động, tích cực' FROM DUAL
UNION ALL SELECT 'A2', 'actually', 'adverb', '/ˈæktʃuəli/', 'thực ra' FROM DUAL
UNION ALL SELECT 'A2', 'adventure', 'noun', '/ədˈventʃə(r)/', 'cuộc phiêu lưu' FROM DUAL
UNION ALL SELECT 'A2', 'advertise', 'verb', '/ˈædvətaɪz/', 'quảng cáo' FROM DUAL
UNION ALL SELECT 'A2', 'advertisement', 'noun', '/ədˈvɜːtɪsmənt/', 'bài quảng cáo' FROM DUAL
UNION ALL SELECT 'A2', 'advertising', 'noun', '/ˈædvətaɪzɪŋ/', 'ngành quảng cáo' FROM DUAL
UNION ALL SELECT 'A2', 'affect', 'verb', '/əˈfekt/', 'ảnh hưởng' FROM DUAL
UNION ALL SELECT 'A2', 'against', 'preposition', '/əˈɡenst/', 'chống lại, dựa vào' FROM DUAL
UNION ALL SELECT 'A2', 'ah', 'exclamation', '/ɑː/', 'à' FROM DUAL
UNION ALL SELECT 'A2', 'airline', 'noun', '/ˈeəlaɪn/', 'hãng hàng không' FROM DUAL
UNION ALL SELECT 'A2', 'alive', 'adjective', '/əˈlaɪv/', 'còn sống' FROM DUAL
UNION ALL SELECT 'A2', 'allow', 'verb', '/əˈlaʊ/', 'cho phép' FROM DUAL
UNION ALL SELECT 'A2', 'almost', 'adverb', '/ˈɔːlməʊst/', 'gần như' FROM DUAL
UNION ALL SELECT 'A2', 'alone', 'adjective', '/əˈləʊn/', 'một mình' FROM DUAL
UNION ALL SELECT 'A2', 'along', 'preposition', '/əˈlɒŋ/', 'dọc theo' FROM DUAL
UNION ALL SELECT 'A2', 'already', 'adverb', '/ɔːlˈredi/', 'đã, rồi' FROM DUAL
UNION ALL SELECT 'A2', 'alternative', 'adjective', '/ɔːlˈtɜːnətɪv/', 'thay thế' FROM DUAL
UNION ALL SELECT 'A2', 'although', 'conjunction', '/ɔːlˈðəʊ/', 'mặc dù' FROM DUAL
UNION ALL SELECT 'A2', 'among', 'preposition', '/əˈmʌŋ/', 'trong số' FROM DUAL
UNION ALL SELECT 'A2', 'amount', 'noun', '/əˈmaʊnt/', 'số lượng' FROM DUAL
UNION ALL SELECT 'A2', 'ancient', 'adjective', '/ˈeɪnʃənt/', 'cổ xưa' FROM DUAL
UNION ALL SELECT 'A2', 'ankle', 'noun', '/ˈæŋkl/', 'mắt cá chân' FROM DUAL
UNION ALL SELECT 'A2', 'anybody', 'pronoun', '/ˈenibɒdi/', 'bất kỳ ai' FROM DUAL
UNION ALL SELECT 'A2', 'any more', 'adverb', '/ˌeni ˈmɔː(r)/', 'nữa (phủ định)' FROM DUAL
UNION ALL SELECT 'A2', 'anyway', 'adverb', '/ˈeniweɪ/', 'dù sao đi nữa' FROM DUAL
UNION ALL SELECT 'A2', 'anywhere', 'adverb', '/ˈeniweə(r)/', 'bất cứ đâu' FROM DUAL
UNION ALL SELECT 'A2', 'app', 'noun', '/æp/', 'ứng dụng' FROM DUAL
UNION ALL SELECT 'A2', 'appear', 'verb', '/əˈpɪə(r)/', 'xuất hiện' FROM DUAL
UNION ALL SELECT 'A2', 'appearance', 'noun', '/əˈpɪərəns/', 'vẻ bề ngoài' FROM DUAL
UNION ALL SELECT 'A2', 'apply', 'verb', '/əˈplaɪ/', 'nộp đơn, áp dụng' FROM DUAL
UNION ALL SELECT 'A2', 'architect', 'noun', '/ˈɑːkɪtekt/', 'kiến trúc sư' FROM DUAL
UNION ALL SELECT 'A2', 'architecture', 'noun', '/ˈɑːkɪtektʃə(r)/', 'kiến trúc' FROM DUAL
UNION ALL SELECT 'A2', 'argue', 'verb', '/ˈɑːɡjuː/', 'tranh cãi' FROM DUAL
UNION ALL SELECT 'A2', 'argument', 'noun', '/ˈɑːɡjumənt/', 'cuộc tranh cãi, lập luận' FROM DUAL
UNION ALL SELECT 'A2', 'army', 'noun', '/ˈɑːmi/', 'quân đội' FROM DUAL
UNION ALL SELECT 'A2', 'arrange', 'verb', '/əˈreɪndʒ/', 'sắp xếp' FROM DUAL
UNION ALL SELECT 'A2', 'arrangement', 'noun', '/əˈreɪndʒmənt/', 'sự sắp xếp' FROM DUAL
UNION ALL SELECT 'A2', 'asleep', 'adjective', '/əˈsliːp/', 'đang ngủ' FROM DUAL
UNION ALL SELECT 'A2', 'assistant', 'noun', '/əˈsɪstənt/', 'trợ lý' FROM DUAL
UNION ALL SELECT 'A2', 'athlete', 'noun', '/ˈæθliːt/', 'vận động viên' FROM DUAL
UNION ALL SELECT 'A2', 'attack', 'noun', '/əˈtæk/', 'cuộc tấn công' FROM DUAL
UNION ALL SELECT 'A2', 'attend', 'verb', '/əˈtend/', 'tham dự' FROM DUAL
UNION ALL SELECT 'A2', 'attention', 'noun', '/əˈtenʃn/', 'sự chú ý' FROM DUAL
UNION ALL SELECT 'A2', 'attractive', 'adjective', '/əˈtræktɪv/', 'hấp dẫn' FROM DUAL
UNION ALL SELECT 'A2', 'audience', 'noun', '/ˈɔːdiəns/', 'khán giả' FROM DUAL
UNION ALL SELECT 'A2', 'author', 'noun', '/ˈɔːθə(r)/', 'tác giả' FROM DUAL
UNION ALL SELECT 'A2', 'available', 'adjective', '/əˈveɪləbl/', 'có sẵn' FROM DUAL
UNION ALL SELECT 'A2', 'average', 'noun', '/ˈævərɪdʒ/', 'mức trung bình' FROM DUAL
UNION ALL SELECT 'A2', 'avoid', 'verb', '/əˈvɔɪd/', 'tránh' FROM DUAL
UNION ALL SELECT 'A2', 'award', 'verb', '/əˈwɔːd/', 'trao giải' FROM DUAL
UNION ALL SELECT 'A2', 'awful', 'adjective', '/ˈɔːfl/', 'tồi tệ, kinh khủng' FROM DUAL
UNION ALL SELECT 'A2', 'background', 'noun', '/ˈbækɡraʊnd/', 'bối cảnh, lý lịch' FROM DUAL
UNION ALL SELECT 'A2', 'badly', 'adverb', '/ˈbædli/', 'tệ, nặng' FROM DUAL
UNION ALL SELECT 'A2', 'bar', 'noun', '/bɑː(r)/', 'quán bar, thanh' FROM DUAL
UNION ALL SELECT 'A2', 'baseball', 'noun', '/ˈbeɪsbɔːl/', 'bóng chày' FROM DUAL
UNION ALL SELECT 'A2', 'based', 'adjective', '/beɪst/', 'dựa trên, đặt tại' FROM DUAL
UNION ALL SELECT 'A2', 'basketball', 'noun', '/ˈbɑːskɪtbɔːl/', 'bóng rổ' FROM DUAL
UNION ALL SELECT 'A2', 'bean', 'noun', '/biːn/', 'hạt đậu' FROM DUAL
UNION ALL SELECT 'A2', 'bear', 'noun', '/beə(r)/', 'con gấu' FROM DUAL
UNION ALL SELECT 'A2', 'beat', 'verb', '/biːt/', 'đánh bại, đập' FROM DUAL
UNION ALL SELECT 'A2', 'beef', 'noun', '/biːf/', 'thịt bò' FROM DUAL
UNION ALL SELECT 'A2', 'before', 'adverb', '/bɪˈfɔː(r)/', 'trước đây' FROM DUAL
UNION ALL SELECT 'A2', 'behave', 'verb', '/bɪˈheɪv/', 'cư xử' FROM DUAL
UNION ALL SELECT 'A2', 'behaviour', 'noun', '/bɪˈheɪvjə(r)/', 'hành vi' FROM DUAL
UNION ALL SELECT 'A2', 'belong', 'verb', '/bɪˈlɒŋ/', 'thuộc về' FROM DUAL
UNION ALL SELECT 'A2', 'belt', 'noun', '/belt/', 'thắt lưng' FROM DUAL
UNION ALL SELECT 'A2', 'benefit', 'verb', '/ˈbenɪfɪt/', 'có lợi' FROM DUAL
UNION ALL SELECT 'A2', 'best', 'adverb', '/best/', 'tốt nhất' FROM DUAL
UNION ALL SELECT 'A2', 'better', 'adverb', '/ˈbetə(r)/', 'tốt hơn' FROM DUAL
UNION ALL SELECT 'A2', 'billion', 'number', '/ˈbɪljən/', 'một tỷ' FROM DUAL
UNION ALL SELECT 'A2', 'bin', 'noun', '/bɪn/', 'thùng rác' FROM DUAL
UNION ALL SELECT 'A2', 'biology', 'noun', '/baɪˈɒlədʒi/', 'sinh học' FROM DUAL
UNION ALL SELECT 'A2', 'birth', 'noun', '/bɜːθ/', 'sự ra đời' FROM DUAL
UNION ALL SELECT 'A2', 'biscuit', 'noun', '/ˈbɪskɪt/', 'bánh quy' FROM DUAL
UNION ALL SELECT 'A2', 'bit', 'noun', '/bɪt/', 'một chút, mẩu' FROM DUAL
UNION ALL SELECT 'A2', 'blank', 'adjective', '/blæŋk/', 'trống, để trắng' FROM DUAL
UNION ALL SELECT 'A2', 'blood', 'noun', '/blʌd/', 'máu' FROM DUAL
UNION ALL SELECT 'A2', 'blow', 'verb', '/bləʊ/', 'thổi' FROM DUAL
UNION ALL SELECT 'A2', 'board', 'noun', '/bɔːd/', 'tấm bảng' FROM DUAL
UNION ALL SELECT 'A2', 'boil', 'verb', '/bɔɪl/', 'đun sôi, luộc' FROM DUAL
UNION ALL SELECT 'A2', 'bone', 'noun', '/bəʊn/', 'xương' FROM DUAL
UNION ALL SELECT 'A2', 'book', 'verb', '/bʊk/', 'đặt chỗ' FROM DUAL
UNION ALL SELECT 'A2', 'borrow', 'verb', '/ˈbɒrəʊ/', 'mượn' FROM DUAL
UNION ALL SELECT 'A2', 'boss', 'noun', '/bɒs/', 'ông chủ, sếp' FROM DUAL
UNION ALL SELECT 'A2', 'bottom', 'noun', '/ˈbɒtəm/', 'đáy, phần dưới cùng' FROM DUAL
UNION ALL SELECT 'A2', 'bowl', 'noun', '/bəʊl/', 'cái bát' FROM DUAL
UNION ALL SELECT 'A2', 'brain', 'noun', '/breɪn/', 'bộ não' FROM DUAL
UNION ALL SELECT 'A2', 'bridge', 'noun', '/brɪdʒ/', 'cây cầu' FROM DUAL
UNION ALL SELECT 'A2', 'bright', 'adjective', '/braɪt/', 'sáng, tươi' FROM DUAL
UNION ALL SELECT 'A2', 'brilliant', 'adjective', '/ˈbrɪliənt/', 'xuất sắc, rực rỡ' FROM DUAL
UNION ALL SELECT 'A2', 'broken', 'adjective', '/ˈbrəʊkən/', 'bị vỡ, hỏng' FROM DUAL
UNION ALL SELECT 'A2', 'brush', 'verb', '/brʌʃ/', 'chải, đánh (răng)' FROM DUAL
UNION ALL SELECT 'A2', 'burn', 'verb', '/bɜːn/', 'đốt cháy' FROM DUAL
UNION ALL SELECT 'A2', 'businessman', 'noun', '/ˈbɪznəsmæn/', 'doanh nhân' FROM DUAL
UNION ALL SELECT 'A2', 'button', 'noun', '/ˈbʌtn/', 'cái nút' FROM DUAL
UNION ALL SELECT 'A2', 'camp', 'noun', '/kæmp/', 'trại' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A2', 'camping', 'noun', '/ˈkæmpɪŋ/', 'cắm trại' FROM DUAL
UNION ALL SELECT 'A2', 'can', 'noun', '/kæn/', 'cái lon' FROM DUAL
UNION ALL SELECT 'A2', 'care', 'noun', '/keə(r)/', 'sự chăm sóc' FROM DUAL
UNION ALL SELECT 'A2', 'careful', 'adjective', '/ˈkeəfl/', 'cẩn thận' FROM DUAL
UNION ALL SELECT 'A2', 'carefully', 'adverb', '/ˈkeəfəli/', 'một cách cẩn thận' FROM DUAL
UNION ALL SELECT 'A2', 'carpet', 'noun', '/ˈkɑːpɪt/', 'tấm thảm' FROM DUAL
UNION ALL SELECT 'A2', 'cartoon', 'noun', '/kɑːˈtuːn/', 'phim hoạt hình' FROM DUAL
UNION ALL SELECT 'A2', 'case', 'noun', '/keɪs/', 'trường hợp, cái hộp' FROM DUAL
UNION ALL SELECT 'A2', 'cash', 'noun', '/kæʃ/', 'tiền mặt' FROM DUAL
UNION ALL SELECT 'A2', 'castle', 'noun', '/ˈkɑːsl/', 'lâu đài' FROM DUAL
UNION ALL SELECT 'A2', 'catch', 'verb', '/kætʃ/', 'bắt, bắt kịp' FROM DUAL
UNION ALL SELECT 'A2', 'cause', 'noun', '/kɔːz/', 'nguyên nhân' FROM DUAL
UNION ALL SELECT 'A2', 'celebrate', 'verb', '/ˈselɪbreɪt/', 'kỷ niệm, ăn mừng' FROM DUAL
UNION ALL SELECT 'A2', 'celebrity', 'noun', '/səˈlebrəti/', 'người nổi tiếng' FROM DUAL
UNION ALL SELECT 'A2', 'certain', 'adjective', '/ˈsɜːtn/', 'chắc chắn, nhất định' FROM DUAL
UNION ALL SELECT 'A2', 'certainly', 'adverb', '/ˈsɜːtnli/', 'chắc chắn' FROM DUAL
UNION ALL SELECT 'A2', 'chance', 'noun', '/tʃɑːns/', 'cơ hội' FROM DUAL
UNION ALL SELECT 'A2', 'character', 'noun', '/ˈkærəktə(r)/', 'nhân vật, tính cách' FROM DUAL
UNION ALL SELECT 'A2', 'charity', 'noun', '/ˈtʃærəti/', 'tổ chức từ thiện' FROM DUAL
UNION ALL SELECT 'A2', 'chat', 'verb', '/tʃæt/', 'trò chuyện' FROM DUAL
UNION ALL SELECT 'A2', 'check', 'noun', '/tʃek/', 'sự kiểm tra' FROM DUAL
UNION ALL SELECT 'A2', 'chef', 'noun', '/ʃef/', 'đầu bếp' FROM DUAL
UNION ALL SELECT 'A2', 'chemistry', 'noun', '/ˈkemɪstri/', 'hóa học' FROM DUAL
UNION ALL SELECT 'A2', 'chip', 'noun', '/tʃɪp/', 'khoai tây chiên' FROM DUAL
UNION ALL SELECT 'A2', 'choice', 'noun', '/tʃɔɪs/', 'sự lựa chọn' FROM DUAL
UNION ALL SELECT 'A2', 'church', 'noun', '/tʃɜːtʃ/', 'nhà thờ' FROM DUAL
UNION ALL SELECT 'A2', 'cigarette', 'noun', '/ˌsɪɡəˈret/', 'điếu thuốc lá' FROM DUAL
UNION ALL SELECT 'A2', 'circle', 'noun', '/ˈsɜːkl/', 'hình tròn' FROM DUAL
UNION ALL SELECT 'A2', 'classical', 'adjective', '/ˈklæsɪkl/', 'cổ điển' FROM DUAL
UNION ALL SELECT 'A2', 'clear', 'adjective', '/klɪə(r)/', 'rõ ràng' FROM DUAL
UNION ALL SELECT 'A2', 'clearly', 'adverb', '/ˈklɪəli/', 'một cách rõ ràng' FROM DUAL
UNION ALL SELECT 'A2', 'clever', 'adjective', '/ˈklevə(r)/', 'thông minh' FROM DUAL
UNION ALL SELECT 'A2', 'climate', 'noun', '/ˈklaɪmət/', 'khí hậu' FROM DUAL
UNION ALL SELECT 'A2', 'close', 'adjective', '/kləʊs/', 'gần, thân thiết' FROM DUAL
UNION ALL SELECT 'A2', 'closed', 'adjective', '/kləʊzd/', 'đóng cửa' FROM DUAL
UNION ALL SELECT 'A2', 'clothing', 'noun', '/ˈkləʊðɪŋ/', 'quần áo' FROM DUAL
UNION ALL SELECT 'A2', 'cloud', 'noun', '/klaʊd/', 'đám mây' FROM DUAL
UNION ALL SELECT 'A2', 'coach', 'noun', '/kəʊtʃ/', 'xe khách' FROM DUAL
UNION ALL SELECT 'A2', 'coast', 'noun', '/kəʊst/', 'bờ biển' FROM DUAL
UNION ALL SELECT 'A2', 'code', 'noun', '/kəʊd/', 'mã' FROM DUAL
UNION ALL SELECT 'A2', 'colleague', 'noun', '/ˈkɒliːɡ/', 'đồng nghiệp' FROM DUAL
UNION ALL SELECT 'A2', 'collect', 'verb', '/kəˈlekt/', 'thu thập, sưu tầm' FROM DUAL
UNION ALL SELECT 'A2', 'column', 'noun', '/ˈkɒləm/', 'cột' FROM DUAL
UNION ALL SELECT 'A2', 'comedy', 'noun', '/ˈkɒmədi/', 'hài kịch' FROM DUAL
UNION ALL SELECT 'A2', 'comfortable', 'adjective', '/ˈkʌmftəbl/', 'thoải mái' FROM DUAL
UNION ALL SELECT 'A2', 'comment', 'verb', '/ˈkɒment/', 'bình luận' FROM DUAL
UNION ALL SELECT 'A2', 'communicate', 'verb', '/kəˈmjuːnɪkeɪt/', 'giao tiếp' FROM DUAL
UNION ALL SELECT 'A2', 'community', 'noun', '/kəˈmjuːnəti/', 'cộng đồng' FROM DUAL
UNION ALL SELECT 'A2', 'competition', 'noun', '/ˌkɒmpəˈtɪʃn/', 'cuộc thi' FROM DUAL
UNION ALL SELECT 'A2', 'complain', 'verb', '/kəmˈpleɪn/', 'phàn nàn' FROM DUAL
UNION ALL SELECT 'A2', 'completely', 'adverb', '/kəmˈpliːtli/', 'hoàn toàn' FROM DUAL
UNION ALL SELECT 'A2', 'condition', 'noun', '/kənˈdɪʃn/', 'điều kiện, tình trạng' FROM DUAL
UNION ALL SELECT 'A2', 'conference', 'noun', '/ˈkɒnfərəns/', 'hội nghị' FROM DUAL
UNION ALL SELECT 'A2', 'connect', 'verb', '/kəˈnekt/', 'kết nối' FROM DUAL
UNION ALL SELECT 'A2', 'consider', 'verb', '/kənˈsɪdə(r)/', 'cân nhắc' FROM DUAL
UNION ALL SELECT 'A2', 'contain', 'verb', '/kənˈteɪn/', 'chứa đựng' FROM DUAL
UNION ALL SELECT 'A2', 'context', 'noun', '/ˈkɒntekst/', 'ngữ cảnh' FROM DUAL
UNION ALL SELECT 'A2', 'continent', 'noun', '/ˈkɒntɪnənt/', 'lục địa' FROM DUAL
UNION ALL SELECT 'A2', 'continue', 'verb', '/kənˈtɪnjuː/', 'tiếp tục' FROM DUAL
UNION ALL SELECT 'A2', 'control', 'noun', '/kənˈtrəʊl/', 'sự kiểm soát' FROM DUAL
UNION ALL SELECT 'A2', 'cook', 'noun', '/kʊk/', 'đầu bếp' FROM DUAL
UNION ALL SELECT 'A2', 'cooker', 'noun', '/ˈkʊkə(r)/', 'bếp nấu' FROM DUAL
UNION ALL SELECT 'A2', 'copy', 'noun', '/ˈkɒpi/', 'bản sao' FROM DUAL
UNION ALL SELECT 'A2', 'corner', 'noun', '/ˈkɔːnə(r)/', 'góc' FROM DUAL
UNION ALL SELECT 'A2', 'correctly', 'adverb', '/kəˈrektli/', 'một cách chính xác' FROM DUAL
UNION ALL SELECT 'A2', 'count', 'verb', '/kaʊnt/', 'đếm' FROM DUAL
UNION ALL SELECT 'A2', 'couple', 'noun', '/ˈkʌpl/', 'cặp đôi' FROM DUAL
UNION ALL SELECT 'A2', 'cover', 'verb', '/ˈkʌvə(r)/', 'che phủ' FROM DUAL
UNION ALL SELECT 'A2', 'crazy', 'adjective', '/ˈkreɪzi/', 'điên rồ' FROM DUAL
UNION ALL SELECT 'A2', 'creative', 'adjective', '/kriˈeɪtɪv/', 'sáng tạo' FROM DUAL
UNION ALL SELECT 'A2', 'credit', 'noun', '/ˈkredɪt/', 'tín dụng' FROM DUAL
UNION ALL SELECT 'A2', 'crime', 'noun', '/kraɪm/', 'tội phạm' FROM DUAL
UNION ALL SELECT 'A2', 'criminal', 'adjective', '/ˈkrɪmɪnl/', 'thuộc tội phạm' FROM DUAL
UNION ALL SELECT 'A2', 'cross', 'verb', '/krɒs/', 'băng qua' FROM DUAL
UNION ALL SELECT 'A2', 'crowd', 'noun', '/kraʊd/', 'đám đông' FROM DUAL
UNION ALL SELECT 'A2', 'crowded', 'adjective', '/ˈkraʊdɪd/', 'đông đúc' FROM DUAL
UNION ALL SELECT 'A2', 'cry', 'verb', '/kraɪ/', 'khóc' FROM DUAL
UNION ALL SELECT 'A2', 'cupboard', 'noun', '/ˈkʌbəd/', 'tủ chén' FROM DUAL
UNION ALL SELECT 'A2', 'curly', 'adjective', '/ˈkɜːli/', 'xoăn' FROM DUAL
UNION ALL SELECT 'A2', 'cycle', 'verb', '/ˈsaɪkl/', 'đạp xe' FROM DUAL
UNION ALL SELECT 'A2', 'daily', 'adverb', '/ˈdeɪli/', 'hằng ngày' FROM DUAL
UNION ALL SELECT 'A2', 'danger', 'noun', '/ˈdeɪndʒə(r)/', 'sự nguy hiểm' FROM DUAL
UNION ALL SELECT 'A2', 'dark', 'noun', '/dɑːk/', 'bóng tối' FROM DUAL
UNION ALL SELECT 'A2', 'data', 'noun', '/ˈdeɪtə/', 'dữ liệu' FROM DUAL
UNION ALL SELECT 'A2', 'dead', 'adjective', '/ded/', 'chết' FROM DUAL
UNION ALL SELECT 'A2', 'deal', 'verb', '/diːl/', 'giải quyết, xử lý' FROM DUAL
UNION ALL SELECT 'A2', 'death', 'noun', '/deθ/', 'cái chết' FROM DUAL
UNION ALL SELECT 'A2', 'decision', 'noun', '/dɪˈsɪʒn/', 'quyết định' FROM DUAL
UNION ALL SELECT 'A2', 'deep', 'adjective', '/diːp/', 'sâu' FROM DUAL
UNION ALL SELECT 'A2', 'definitely', 'adverb', '/ˈdefɪnətli/', 'chắc chắn' FROM DUAL
UNION ALL SELECT 'A2', 'degree', 'noun', '/dɪˈɡriː/', 'bằng cấp, độ' FROM DUAL
UNION ALL SELECT 'A2', 'dentist', 'noun', '/ˈdentɪst/', 'nha sĩ' FROM DUAL
UNION ALL SELECT 'A2', 'department', 'noun', '/dɪˈpɑːtmənt/', 'phòng ban, khoa' FROM DUAL
UNION ALL SELECT 'A2', 'depend', 'verb', '/dɪˈpend/', 'phụ thuộc' FROM DUAL
UNION ALL SELECT 'A2', 'desert', 'noun', '/ˈdezət/', 'sa mạc' FROM DUAL
UNION ALL SELECT 'A2', 'designer', 'noun', '/dɪˈzaɪnə(r)/', 'nhà thiết kế' FROM DUAL
UNION ALL SELECT 'A2', 'destroy', 'verb', '/dɪˈstrɔɪ/', 'phá hủy' FROM DUAL
UNION ALL SELECT 'A2', 'detective', 'noun', '/dɪˈtektɪv/', 'thám tử' FROM DUAL
UNION ALL SELECT 'A2', 'develop', 'verb', '/dɪˈveləp/', 'phát triển' FROM DUAL
UNION ALL SELECT 'A2', 'device', 'noun', '/dɪˈvaɪs/', 'thiết bị' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A2', 'diary', 'noun', '/ˈdaɪəri/', 'nhật ký' FROM DUAL
UNION ALL SELECT 'A2', 'differently', 'adverb', '/ˈdɪfrəntli/', 'khác biệt' FROM DUAL
UNION ALL SELECT 'A2', 'digital', 'adjective', '/ˈdɪdʒɪtl/', 'kỹ thuật số' FROM DUAL
UNION ALL SELECT 'A2', 'direction', 'noun', '/dəˈrekʃn/', 'phương hướng' FROM DUAL
UNION ALL SELECT 'A2', 'director', 'noun', '/dəˈrektə(r)/', 'giám đốc, đạo diễn' FROM DUAL
UNION ALL SELECT 'A2', 'disagree', 'verb', '/ˌdɪsəˈɡriː/', 'không đồng ý' FROM DUAL
UNION ALL SELECT 'A2', 'disappear', 'verb', '/ˌdɪsəˈpɪə(r)/', 'biến mất' FROM DUAL
UNION ALL SELECT 'A2', 'disaster', 'noun', '/dɪˈzɑːstə(r)/', 'thảm họa' FROM DUAL
UNION ALL SELECT 'A2', 'discover', 'verb', '/dɪˈskʌvə(r)/', 'khám phá' FROM DUAL
UNION ALL SELECT 'A2', 'discovery', 'noun', '/dɪˈskʌvəri/', 'sự khám phá' FROM DUAL
UNION ALL SELECT 'A2', 'discussion', 'noun', '/dɪˈskʌʃn/', 'cuộc thảo luận' FROM DUAL
UNION ALL SELECT 'A2', 'disease', 'noun', '/dɪˈziːz/', 'bệnh tật' FROM DUAL
UNION ALL SELECT 'A2', 'distance', 'noun', '/ˈdɪstəns/', 'khoảng cách' FROM DUAL
UNION ALL SELECT 'A2', 'divorced', 'adjective', '/dɪˈvɔːst/', 'đã ly hôn' FROM DUAL
UNION ALL SELECT 'A2', 'document', 'noun', '/ˈdɒkjumənt/', 'tài liệu' FROM DUAL
UNION ALL SELECT 'A2', 'double', 'adjective', '/ˈdʌbl/', 'gấp đôi' FROM DUAL
UNION ALL SELECT 'A2', 'download', 'verb', '/ˌdaʊnˈləʊd/', 'tải xuống' FROM DUAL
UNION ALL SELECT 'A2', 'downtown', 'adverb', '/ˌdaʊnˈtaʊn/', 'ở trung tâm thành phố' FROM DUAL
UNION ALL SELECT 'A2', 'drama', 'noun', '/ˈdrɑːmə/', 'kịch' FROM DUAL
UNION ALL SELECT 'A2', 'drawing', 'noun', '/ˈdrɔːɪŋ/', 'bức vẽ' FROM DUAL
UNION ALL SELECT 'A2', 'dream', 'noun', '/driːm/', 'giấc mơ' FROM DUAL
UNION ALL SELECT 'A2', 'drop', 'verb', '/drɒp/', 'làm rơi' FROM DUAL
UNION ALL SELECT 'A2', 'drug', 'noun', '/drʌɡ/', 'thuốc, ma túy' FROM DUAL
UNION ALL SELECT 'A2', 'dry', 'adjective', '/draɪ/', 'khô' FROM DUAL
UNION ALL SELECT 'A2', 'earn', 'verb', '/ɜːn/', 'kiếm (tiền)' FROM DUAL
UNION ALL SELECT 'A2', 'earth', 'noun', '/ɜːθ/', 'trái đất' FROM DUAL
UNION ALL SELECT 'A2', 'easily', 'adverb', '/ˈiːzəli/', 'một cách dễ dàng' FROM DUAL
UNION ALL SELECT 'A2', 'education', 'noun', '/ˌedʒuˈkeɪʃn/', 'giáo dục' FROM DUAL
UNION ALL SELECT 'A2', 'effect', 'noun', '/ɪˈfekt/', 'ảnh hưởng, hiệu quả' FROM DUAL
UNION ALL SELECT 'A2', 'either', 'adverb', '/ˈaɪðə(r)/', 'cũng (phủ định)' FROM DUAL
UNION ALL SELECT 'A2', 'electric', 'adjective', '/ɪˈlektrɪk/', 'chạy bằng điện' FROM DUAL
UNION ALL SELECT 'A2', 'electricity', 'noun', '/ɪˌlekˈtrɪsəti/', 'điện' FROM DUAL
UNION ALL SELECT 'A2', 'electronic', 'adjective', '/ɪˌlekˈtrɒnɪk/', 'điện tử' FROM DUAL
UNION ALL SELECT 'A2', 'employee', 'noun', '/ɪmˈplɔɪiː/', 'nhân viên' FROM DUAL
UNION ALL SELECT 'A2', 'employer', 'noun', '/ɪmˈplɔɪə(r)/', 'người sử dụng lao động' FROM DUAL
UNION ALL SELECT 'A2', 'empty', 'adjective', '/ˈempti/', 'trống rỗng' FROM DUAL
UNION ALL SELECT 'A2', 'ending', 'noun', '/ˈendɪŋ/', 'kết thúc (truyện, phim)' FROM DUAL
UNION ALL SELECT 'A2', 'energy', 'noun', '/ˈenədʒi/', 'năng lượng' FROM DUAL
UNION ALL SELECT 'A2', 'engine', 'noun', '/ˈendʒɪn/', 'động cơ' FROM DUAL
UNION ALL SELECT 'A2', 'engineer', 'noun', '/ˌendʒɪˈnɪə(r)/', 'kỹ sư' FROM DUAL
UNION ALL SELECT 'A2', 'enormous', 'adjective', '/ɪˈnɔːməs/', 'to lớn, khổng lồ' FROM DUAL
UNION ALL SELECT 'A2', 'enter', 'verb', '/ˈentə(r)/', 'đi vào, nhập' FROM DUAL
UNION ALL SELECT 'A2', 'environment', 'noun', '/ɪnˈvaɪrənmənt/', 'môi trường' FROM DUAL
UNION ALL SELECT 'A2', 'equipment', 'noun', '/ɪˈkwɪpmənt/', 'thiết bị' FROM DUAL
UNION ALL SELECT 'A2', 'error', 'noun', '/ˈerə(r)/', 'lỗi' FROM DUAL
UNION ALL SELECT 'A2', 'especially', 'adverb', '/ɪˈspeʃəli/', 'đặc biệt là' FROM DUAL
UNION ALL SELECT 'A2', 'essay', 'noun', '/ˈeseɪ/', 'bài luận' FROM DUAL
UNION ALL SELECT 'A2', 'everyday', 'adjective', '/ˈevrideɪ/', 'hằng ngày' FROM DUAL
UNION ALL SELECT 'A2', 'everywhere', 'adverb', '/ˈevriweə(r)/', 'ở mọi nơi' FROM DUAL
UNION ALL SELECT 'A2', 'evidence', 'noun', '/ˈevɪdəns/', 'bằng chứng' FROM DUAL
UNION ALL SELECT 'A2', 'exact', 'adjective', '/ɪɡˈzækt/', 'chính xác' FROM DUAL
UNION ALL SELECT 'A2', 'exactly', 'adverb', '/ɪɡˈzæktli/', 'chính xác' FROM DUAL
UNION ALL SELECT 'A2', 'excellent', 'adjective', '/ˈeksələnt/', 'xuất sắc' FROM DUAL
UNION ALL SELECT 'A2', 'except', 'preposition', '/ɪkˈsept/', 'ngoại trừ' FROM DUAL
UNION ALL SELECT 'A2', 'exist', 'verb', '/ɪɡˈzɪst/', 'tồn tại' FROM DUAL
UNION ALL SELECT 'A2', 'expect', 'verb', '/ɪkˈspekt/', 'mong đợi' FROM DUAL
UNION ALL SELECT 'A2', 'experience', 'noun', '/ɪkˈspɪəriəns/', 'kinh nghiệm, trải nghiệm' FROM DUAL
UNION ALL SELECT 'A2', 'experiment', 'noun', '/ɪkˈsperɪmənt/', 'thí nghiệm' FROM DUAL
UNION ALL SELECT 'A2', 'expert', 'noun', '/ˈekspɜːt/', 'chuyên gia' FROM DUAL
UNION ALL SELECT 'A2', 'explanation', 'noun', '/ˌekspləˈneɪʃn/', 'lời giải thích' FROM DUAL
UNION ALL SELECT 'A2', 'express', 'verb', '/ɪkˈspres/', 'bày tỏ' FROM DUAL
UNION ALL SELECT 'A2', 'expression', 'noun', '/ɪkˈspreʃn/', 'sự biểu lộ, thành ngữ' FROM DUAL
UNION ALL SELECT 'A2', 'extreme', 'adjective', '/ɪkˈstriːm/', 'cực độ' FROM DUAL
UNION ALL SELECT 'A2', 'extremely', 'adverb', '/ɪkˈstriːmli/', 'cực kỳ' FROM DUAL
UNION ALL SELECT 'A2', 'factory', 'noun', '/ˈfæktri/', 'nhà máy' FROM DUAL
UNION ALL SELECT 'A2', 'fail', 'verb', '/feɪl/', 'thất bại, trượt' FROM DUAL
UNION ALL SELECT 'A2', 'fair', 'adjective', '/feə(r)/', 'công bằng' FROM DUAL
UNION ALL SELECT 'A2', 'fan', 'noun', '/fæn/', 'người hâm mộ, cái quạt' FROM DUAL
UNION ALL SELECT 'A2', 'farming', 'noun', '/ˈfɑːmɪŋ/', 'nghề nông' FROM DUAL
UNION ALL SELECT 'A2', 'fashion', 'noun', '/ˈfæʃn/', 'thời trang' FROM DUAL
UNION ALL SELECT 'A2', 'fear', 'verb', '/fɪə(r)/', 'sợ' FROM DUAL
UNION ALL SELECT 'A2', 'feature', 'verb', '/ˈfiːtʃə(r)/', 'có đặc điểm, có sự góp mặt' FROM DUAL
UNION ALL SELECT 'A2', 'feed', 'verb', '/fiːd/', 'cho ăn' FROM DUAL
UNION ALL SELECT 'A2', 'female', 'noun', '/ˈfiːmeɪl/', 'giống cái, nữ' FROM DUAL
UNION ALL SELECT 'A2', 'fiction', 'noun', '/ˈfɪkʃn/', 'tiểu thuyết hư cấu' FROM DUAL
UNION ALL SELECT 'A2', 'field', 'noun', '/fiːld/', 'cánh đồng, lĩnh vực' FROM DUAL
UNION ALL SELECT 'A2', 'fight', 'verb', '/faɪt/', 'chiến đấu, đánh nhau' FROM DUAL
UNION ALL SELECT 'A2', 'figure', 'noun', '/ˈfɪɡə(r)/', 'con số, hình dáng' FROM DUAL
UNION ALL SELECT 'A2', 'finally', 'adverb', '/ˈfaɪnəli/', 'cuối cùng' FROM DUAL
UNION ALL SELECT 'A2', 'finger', 'noun', '/ˈfɪŋɡə(r)/', 'ngón tay' FROM DUAL
UNION ALL SELECT 'A2', 'fish', 'verb', '/fɪʃ/', 'câu cá' FROM DUAL
UNION ALL SELECT 'A2', 'fishing', 'noun', '/ˈfɪʃɪŋ/', 'việc câu cá' FROM DUAL
UNION ALL SELECT 'A2', 'fit', 'verb', '/fɪt/', 'vừa vặn' FROM DUAL
UNION ALL SELECT 'A2', 'fit', 'adjective', '/fɪt/', 'khỏe mạnh, cân đối' FROM DUAL
UNION ALL SELECT 'A2', 'fix', 'verb', '/fɪks/', 'sửa chữa' FROM DUAL
UNION ALL SELECT 'A2', 'flat', 'adjective', '/flæt/', 'bằng phẳng' FROM DUAL
UNION ALL SELECT 'A2', 'flu', 'noun', '/fluː/', 'bệnh cúm' FROM DUAL
UNION ALL SELECT 'A2', 'fly', 'noun', '/flaɪ/', 'con ruồi' FROM DUAL
UNION ALL SELECT 'A2', 'focus', 'verb', '/ˈfəʊkəs/', 'tập trung' FROM DUAL
UNION ALL SELECT 'A2', 'fog', 'noun', '/fɒɡ/', 'sương mù' FROM DUAL
UNION ALL SELECT 'A2', 'foreign', 'adjective', '/ˈfɒrən/', 'thuộc nước ngoài' FROM DUAL
UNION ALL SELECT 'A2', 'forest', 'noun', '/ˈfɒrɪst/', 'khu rừng' FROM DUAL
UNION ALL SELECT 'A2', 'fork', 'noun', '/fɔːk/', 'cái nĩa' FROM DUAL
UNION ALL SELECT 'A2', 'formal', 'adjective', '/ˈfɔːml/', 'trang trọng' FROM DUAL
UNION ALL SELECT 'A2', 'fortunately', 'adverb', '/ˈfɔːtʃənətli/', 'may mắn thay' FROM DUAL
UNION ALL SELECT 'A2', 'forward', 'adverb', '/ˈfɔːwəd/', 'về phía trước' FROM DUAL
UNION ALL SELECT 'A2', 'free', 'adverb', '/friː/', 'miễn phí' FROM DUAL
UNION ALL SELECT 'A2', 'fresh', 'adjective', '/freʃ/', 'tươi' FROM DUAL
UNION ALL SELECT 'A2', 'fridge', 'noun', '/frɪdʒ/', 'tủ lạnh' FROM DUAL
UNION ALL SELECT 'A2', 'frog', 'noun', '/frɒɡ/', 'con ếch' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A2', 'fun', 'adjective', '/fʌn/', 'vui' FROM DUAL
UNION ALL SELECT 'A2', 'furniture', 'noun', '/ˈfɜːnɪtʃə(r)/', 'đồ nội thất' FROM DUAL
UNION ALL SELECT 'A2', 'further', 'adjective', '/ˈfɜːðə(r)/', 'xa hơn, thêm' FROM DUAL
UNION ALL SELECT 'A2', 'gallery', 'noun', '/ˈɡæləri/', 'phòng trưng bày' FROM DUAL
UNION ALL SELECT 'A2', 'gap', 'noun', '/ɡæp/', 'khoảng trống' FROM DUAL
UNION ALL SELECT 'A2', 'gas', 'noun', '/ɡæs/', 'khí ga' FROM DUAL
UNION ALL SELECT 'A2', 'gate', 'noun', '/ɡeɪt/', 'cổng' FROM DUAL
UNION ALL SELECT 'A2', 'general', 'adjective', '/ˈdʒenrəl/', 'chung, tổng quát' FROM DUAL
UNION ALL SELECT 'A2', 'gift', 'noun', '/ɡɪft/', 'món quà' FROM DUAL
UNION ALL SELECT 'A2', 'goal', 'noun', '/ɡəʊl/', 'mục tiêu, bàn thắng' FROM DUAL
UNION ALL SELECT 'A2', 'god', 'noun', '/ɡɒd/', 'thần, Chúa' FROM DUAL
UNION ALL SELECT 'A2', 'gold', 'noun', '/ɡəʊld/', 'vàng' FROM DUAL
UNION ALL SELECT 'A2', 'golf', 'noun', '/ɡɒlf/', 'môn gôn' FROM DUAL
UNION ALL SELECT 'A2', 'good', 'noun', '/ɡʊd/', 'điều tốt' FROM DUAL
UNION ALL SELECT 'A2', 'government', 'noun', '/ˈɡʌvənmənt/', 'chính phủ' FROM DUAL
UNION ALL SELECT 'A2', 'grass', 'noun', '/ɡrɑːs/', 'cỏ' FROM DUAL
UNION ALL SELECT 'A2', 'greet', 'verb', '/ɡriːt/', 'chào hỏi' FROM DUAL
UNION ALL SELECT 'A2', 'ground', 'noun', '/ɡraʊnd/', 'mặt đất' FROM DUAL
UNION ALL SELECT 'A2', 'guest', 'noun', '/ɡest/', 'khách' FROM DUAL
UNION ALL SELECT 'A2', 'guide', 'noun', '/ɡaɪd/', 'hướng dẫn viên' FROM DUAL
UNION ALL SELECT 'A2', 'gun', 'noun', '/ɡʌn/', 'khẩu súng' FROM DUAL
UNION ALL SELECT 'A2', 'guy', 'noun', '/ɡaɪ/', 'anh chàng' FROM DUAL
UNION ALL SELECT 'A2', 'habit', 'noun', '/ˈhæbɪt/', 'thói quen' FROM DUAL
UNION ALL SELECT 'A2', 'hall', 'noun', '/hɔːl/', 'hội trường, sảnh' FROM DUAL
UNION ALL SELECT 'A2', 'happily', 'adverb', '/ˈhæpɪli/', 'một cách vui vẻ' FROM DUAL
UNION ALL SELECT 'A2', 'have to', 'modal verb', '/ˈhæv tə/', 'phải' FROM DUAL
UNION ALL SELECT 'A2', 'headache', 'noun', '/ˈhedeɪk/', 'chứng đau đầu' FROM DUAL
UNION ALL SELECT 'A2', 'heart', 'noun', '/hɑːt/', 'trái tim' FROM DUAL
UNION ALL SELECT 'A2', 'heat', 'noun', '/hiːt/', 'nhiệt, sức nóng' FROM DUAL
UNION ALL SELECT 'A2', 'heavy', 'adjective', '/ˈhevi/', 'nặng' FROM DUAL
UNION ALL SELECT 'A2', 'height', 'noun', '/haɪt/', 'chiều cao' FROM DUAL
UNION ALL SELECT 'A2', 'helpful', 'adjective', '/ˈhelpfl/', 'hữu ích' FROM DUAL
UNION ALL SELECT 'A2', 'hero', 'noun', '/ˈhɪərəʊ/', 'anh hùng' FROM DUAL
UNION ALL SELECT 'A2', 'hers', 'pronoun', '/hɜːz/', 'của cô ấy' FROM DUAL
UNION ALL SELECT 'A2', 'herself', 'pronoun', '/hɜːˈself/', 'chính cô ấy' FROM DUAL
UNION ALL SELECT 'A2', 'hide', 'verb', '/haɪd/', 'trốn, giấu' FROM DUAL
UNION ALL SELECT 'A2', 'hill', 'noun', '/hɪl/', 'ngọn đồi' FROM DUAL
UNION ALL SELECT 'A2', 'himself', 'pronoun', '/hɪmˈself/', 'chính anh ấy' FROM DUAL
UNION ALL SELECT 'A2', 'hit', 'verb', '/hɪt/', 'đánh, va vào' FROM DUAL
UNION ALL SELECT 'A2', 'hockey', 'noun', '/ˈhɒki/', 'khúc côn cầu' FROM DUAL
UNION ALL SELECT 'A2', 'hold', 'verb', '/həʊld/', 'cầm, giữ' FROM DUAL
UNION ALL SELECT 'A2', 'hole', 'noun', '/həʊl/', 'cái lỗ' FROM DUAL
UNION ALL SELECT 'A2', 'home', 'adverb', '/həʊm/', 'ở nhà, về nhà' FROM DUAL
UNION ALL SELECT 'A2', 'hope', 'noun', '/həʊp/', 'hy vọng' FROM DUAL
UNION ALL SELECT 'A2', 'huge', 'adjective', '/hjuːdʒ/', 'khổng lồ' FROM DUAL
UNION ALL SELECT 'A2', 'human', 'adjective', '/ˈhjuːmən/', 'thuộc con người' FROM DUAL
UNION ALL SELECT 'A2', 'hurt', 'verb', '/hɜːt/', 'làm đau' FROM DUAL
UNION ALL SELECT 'A2', 'ideal', 'adjective', '/aɪˈdiːəl/', 'lý tưởng' FROM DUAL
UNION ALL SELECT 'A2', 'identify', 'verb', '/aɪˈdentɪfaɪ/', 'nhận diện' FROM DUAL
UNION ALL SELECT 'A2', 'ill', 'adjective', '/ɪl/', 'ốm' FROM DUAL
UNION ALL SELECT 'A2', 'illness', 'noun', '/ˈɪlnəs/', 'bệnh tật' FROM DUAL
UNION ALL SELECT 'A2', 'image', 'noun', '/ˈɪmɪdʒ/', 'hình ảnh' FROM DUAL
UNION ALL SELECT 'A2', 'immediately', 'adverb', '/ɪˈmiːdiətli/', 'ngay lập tức' FROM DUAL
UNION ALL SELECT 'A2', 'impossible', 'adjective', '/ɪmˈpɒsəbl/', 'không thể' FROM DUAL
UNION ALL SELECT 'A2', 'included', 'adjective', '/ɪnˈkluːdɪd/', 'bao gồm' FROM DUAL
UNION ALL SELECT 'A2', 'including', 'preposition', '/ɪnˈkluːdɪŋ/', 'bao gồm cả' FROM DUAL
UNION ALL SELECT 'A2', 'increase', 'verb', '/ɪnˈkriːs/', 'tăng lên' FROM DUAL
UNION ALL SELECT 'A2', 'incredible', 'adjective', '/ɪnˈkredəbl/', 'khó tin, tuyệt vời' FROM DUAL
UNION ALL SELECT 'A2', 'independent', 'adjective', '/ˌɪndɪˈpendənt/', 'độc lập' FROM DUAL
UNION ALL SELECT 'A2', 'individual', 'noun', '/ˌɪndɪˈvɪdʒuəl/', 'cá nhân' FROM DUAL
UNION ALL SELECT 'A2', 'industry', 'noun', '/ˈɪndəstri/', 'ngành công nghiệp' FROM DUAL
UNION ALL SELECT 'A2', 'informal', 'adjective', '/ɪnˈfɔːml/', 'thân mật, không trang trọng' FROM DUAL
UNION ALL SELECT 'A2', 'injury', 'noun', '/ˈɪndʒəri/', 'vết thương' FROM DUAL
UNION ALL SELECT 'A2', 'insect', 'noun', '/ˈɪnsekt/', 'côn trùng' FROM DUAL
UNION ALL SELECT 'A2', 'inside', 'preposition', '/ɪnˈsaɪd/', 'bên trong' FROM DUAL
UNION ALL SELECT 'A2', 'instead', 'adverb', '/ɪnˈsted/', 'thay vào đó' FROM DUAL
UNION ALL SELECT 'A2', 'instruction', 'noun', '/ɪnˈstrʌkʃn/', 'sự hướng dẫn' FROM DUAL
UNION ALL SELECT 'A2', 'instructor', 'noun', '/ɪnˈstrʌktə(r)/', 'người hướng dẫn' FROM DUAL
UNION ALL SELECT 'A2', 'instrument', 'noun', '/ˈɪnstrəmənt/', 'nhạc cụ, dụng cụ' FROM DUAL
UNION ALL SELECT 'A2', 'intelligent', 'adjective', '/ɪnˈtelɪdʒənt/', 'thông minh' FROM DUAL
UNION ALL SELECT 'A2', 'international', 'adjective', '/ˌɪntəˈnæʃnəl/', 'quốc tế' FROM DUAL
UNION ALL SELECT 'A2', 'introduction', 'noun', '/ˌɪntrəˈdʌkʃn/', 'sự giới thiệu' FROM DUAL
UNION ALL SELECT 'A2', 'invent', 'verb', '/ɪnˈvent/', 'phát minh' FROM DUAL
UNION ALL SELECT 'A2', 'invention', 'noun', '/ɪnˈvenʃn/', 'phát minh' FROM DUAL
UNION ALL SELECT 'A2', 'invitation', 'noun', '/ˌɪnvɪˈteɪʃn/', 'lời mời' FROM DUAL
UNION ALL SELECT 'A2', 'invite', 'verb', '/ɪnˈvaɪt/', 'mời' FROM DUAL
UNION ALL SELECT 'A2', 'involve', 'verb', '/ɪnˈvɒlv/', 'liên quan, bao gồm' FROM DUAL
UNION ALL SELECT 'A2', 'item', 'noun', '/ˈaɪtəm/', 'món đồ, mục' FROM DUAL
UNION ALL SELECT 'A2', 'itself', 'pronoun', '/ɪtˈself/', 'chính nó' FROM DUAL
UNION ALL SELECT 'A2', 'jam', 'noun', '/dʒæm/', 'mứt' FROM DUAL
UNION ALL SELECT 'A2', 'jazz', 'noun', '/dʒæz/', 'nhạc jazz' FROM DUAL
UNION ALL SELECT 'A2', 'jewellery', 'noun', '/ˈdʒuːəlri/', 'đồ trang sức' FROM DUAL
UNION ALL SELECT 'A2', 'joke', 'noun', '/dʒəʊk/', 'câu chuyện cười' FROM DUAL
UNION ALL SELECT 'A2', 'journalist', 'noun', '/ˈdʒɜːnəlɪst/', 'nhà báo' FROM DUAL
UNION ALL SELECT 'A2', 'jump', 'verb', '/dʒʌmp/', 'nhảy' FROM DUAL
UNION ALL SELECT 'A2', 'kid', 'noun', '/kɪd/', 'đứa trẻ' FROM DUAL
UNION ALL SELECT 'A2', 'kill', 'verb', '/kɪl/', 'giết' FROM DUAL
UNION ALL SELECT 'A2', 'king', 'noun', '/kɪŋ/', 'vua' FROM DUAL
UNION ALL SELECT 'A2', 'knee', 'noun', '/niː/', 'đầu gối' FROM DUAL
UNION ALL SELECT 'A2', 'knife', 'noun', '/naɪf/', 'con dao' FROM DUAL
UNION ALL SELECT 'A2', 'knock', 'verb', '/nɒk/', 'gõ' FROM DUAL
UNION ALL SELECT 'A2', 'knowledge', 'noun', '/ˈnɒlɪdʒ/', 'kiến thức' FROM DUAL
UNION ALL SELECT 'A2', 'lab', 'noun', '/læb/', 'phòng thí nghiệm' FROM DUAL
UNION ALL SELECT 'A2', 'lady', 'noun', '/ˈleɪdi/', 'quý bà' FROM DUAL
UNION ALL SELECT 'A2', 'lake', 'noun', '/leɪk/', 'hồ nước' FROM DUAL
UNION ALL SELECT 'A2', 'lamp', 'noun', '/læmp/', 'cái đèn' FROM DUAL
UNION ALL SELECT 'A2', 'land', 'verb', '/lænd/', 'hạ cánh' FROM DUAL
UNION ALL SELECT 'A2', 'laptop', 'noun', '/ˈlæptɒp/', 'máy tính xách tay' FROM DUAL
UNION ALL SELECT 'A2', 'last', 'verb', '/lɑːst/', 'kéo dài' FROM DUAL
UNION ALL SELECT 'A2', 'later', 'adjective', '/ˈleɪtə(r)/', 'sau này' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A2', 'law', 'noun', '/lɔː/', 'luật pháp' FROM DUAL
UNION ALL SELECT 'A2', 'lawyer', 'noun', '/ˈlɔːjə(r)/', 'luật sư' FROM DUAL
UNION ALL SELECT 'A2', 'lazy', 'adjective', '/ˈleɪzi/', 'lười biếng' FROM DUAL
UNION ALL SELECT 'A2', 'lead', 'verb', '/liːd/', 'dẫn dắt' FROM DUAL
UNION ALL SELECT 'A2', 'leader', 'noun', '/ˈliːdə(r)/', 'người lãnh đạo' FROM DUAL
UNION ALL SELECT 'A2', 'learning', 'noun', '/ˈlɜːnɪŋ/', 'việc học' FROM DUAL
UNION ALL SELECT 'A2', 'least', 'adverb', '/liːst/', 'ít nhất' FROM DUAL
UNION ALL SELECT 'A2', 'lecture', 'noun', '/ˈlektʃə(r)/', 'bài giảng' FROM DUAL
UNION ALL SELECT 'A2', 'lemon', 'noun', '/ˈlemən/', 'quả chanh vàng' FROM DUAL
UNION ALL SELECT 'A2', 'lend', 'verb', '/lend/', 'cho mượn' FROM DUAL
UNION ALL SELECT 'A2', 'less', 'determiner', '/les/', 'ít hơn' FROM DUAL
UNION ALL SELECT 'A2', 'level', 'noun', '/ˈlevl/', 'cấp độ' FROM DUAL
UNION ALL SELECT 'A2', 'lifestyle', 'noun', '/ˈlaɪfstaɪl/', 'lối sống' FROM DUAL
UNION ALL SELECT 'A2', 'lift', 'verb', '/lɪft/', 'nâng lên' FROM DUAL
UNION ALL SELECT 'A2', 'light', 'adjective', '/laɪt/', 'nhẹ, sáng' FROM DUAL
UNION ALL SELECT 'A2', 'likely', 'adjective', '/ˈlaɪkli/', 'có khả năng xảy ra' FROM DUAL
UNION ALL SELECT 'A2', 'link', 'noun', '/lɪŋk/', 'liên kết' FROM DUAL
UNION ALL SELECT 'A2', 'listener', 'noun', '/ˈlɪsənə(r)/', 'người nghe' FROM DUAL
UNION ALL SELECT 'A2', 'little', 'adverb', '/ˈlɪtl/', 'một chút' FROM DUAL
UNION ALL SELECT 'A2', 'lock', 'verb', '/lɒk/', 'khóa' FROM DUAL
UNION ALL SELECT 'A2', 'look', 'noun', '/lʊk/', 'cái nhìn' FROM DUAL
UNION ALL SELECT 'A2', 'lorry', 'noun', '/ˈlɒri/', 'xe tải' FROM DUAL
UNION ALL SELECT 'A2', 'lost', 'adjective', '/lɒst/', 'bị lạc, bị mất' FROM DUAL
UNION ALL SELECT 'A2', 'loud', 'adjective', '/laʊd/', 'to, ồn' FROM DUAL
UNION ALL SELECT 'A2', 'loudly', 'adverb', '/ˈlaʊdli/', 'một cách ồn ào' FROM DUAL
UNION ALL SELECT 'A2', 'lovely', 'adjective', '/ˈlʌvli/', 'đáng yêu' FROM DUAL
UNION ALL SELECT 'A2', 'low', 'adjective', '/ləʊ/', 'thấp' FROM DUAL
UNION ALL SELECT 'A2', 'luck', 'noun', '/lʌk/', 'vận may' FROM DUAL
UNION ALL SELECT 'A2', 'lucky', 'adjective', '/ˈlʌki/', 'may mắn' FROM DUAL
UNION ALL SELECT 'A2', 'mail', 'noun', '/meɪl/', 'thư từ' FROM DUAL
UNION ALL SELECT 'A2', 'major', 'adjective', '/ˈmeɪdʒə(r)/', 'chính, chủ yếu' FROM DUAL
UNION ALL SELECT 'A2', 'male', 'adjective', '/meɪl/', 'giống đực, nam' FROM DUAL
UNION ALL SELECT 'A2', 'manage', 'verb', '/ˈmænɪdʒ/', 'quản lý' FROM DUAL
UNION ALL SELECT 'A2', 'manager', 'noun', '/ˈmænɪdʒə(r)/', 'người quản lý' FROM DUAL
UNION ALL SELECT 'A2', 'manner', 'noun', '/ˈmænə(r)/', 'cách thức, thái độ' FROM DUAL
UNION ALL SELECT 'A2', 'mark', 'noun', '/mɑːk/', 'điểm số, dấu' FROM DUAL
UNION ALL SELECT 'A2', 'marry', 'verb', '/ˈmæri/', 'kết hôn' FROM DUAL
UNION ALL SELECT 'A2', 'material', 'noun', '/məˈtɪəriəl/', 'vật liệu, tài liệu' FROM DUAL
UNION ALL SELECT 'A2', 'mathematics', 'noun', '/ˌmæθəˈmætɪks/', 'toán học' FROM DUAL
UNION ALL SELECT 'A2', 'maths', 'noun', '/mæθs/', 'môn toán' FROM DUAL
UNION ALL SELECT 'A2', 'matter', 'verb', '/ˈmætə(r)/', 'có ý nghĩa, quan trọng' FROM DUAL
UNION ALL SELECT 'A2', 'may', 'modal verb', '/meɪ/', 'có thể' FROM DUAL
UNION ALL SELECT 'A2', 'media', 'noun', '/ˈmiːdiə/', 'phương tiện truyền thông' FROM DUAL
UNION ALL SELECT 'A2', 'medical', 'adjective', '/ˈmedɪkl/', 'thuộc y tế' FROM DUAL
UNION ALL SELECT 'A2', 'medicine', 'noun', '/ˈmedsn/', 'thuốc, y học' FROM DUAL
UNION ALL SELECT 'A2', 'memory', 'noun', '/ˈmeməri/', 'trí nhớ, kỷ niệm' FROM DUAL
UNION ALL SELECT 'A2', 'mention', 'verb', '/ˈmenʃn/', 'đề cập' FROM DUAL
UNION ALL SELECT 'A2', 'metal', 'noun', '/ˈmetl/', 'kim loại' FROM DUAL
UNION ALL SELECT 'A2', 'method', 'noun', '/ˈmeθəd/', 'phương pháp' FROM DUAL
UNION ALL SELECT 'A2', 'middle', 'noun', '/ˈmɪdl/', 'ở giữa' FROM DUAL
UNION ALL SELECT 'A2', 'might', 'modal verb', '/maɪt/', 'có lẽ' FROM DUAL
UNION ALL SELECT 'A2', 'mind', 'noun', '/maɪnd/', 'tâm trí' FROM DUAL
UNION ALL SELECT 'A2', 'mine', 'pronoun', '/maɪn/', 'của tôi' FROM DUAL
UNION ALL SELECT 'A2', 'mirror', 'noun', '/ˈmɪrə(r)/', 'gương' FROM DUAL
UNION ALL SELECT 'A2', 'missing', 'adjective', '/ˈmɪsɪŋ/', 'mất tích, thiếu' FROM DUAL
UNION ALL SELECT 'A2', 'mobile', 'adjective', '/ˈməʊbaɪl/', 'di động' FROM DUAL
UNION ALL SELECT 'A2', 'monkey', 'noun', '/ˈmʌŋki/', 'con khỉ' FROM DUAL
UNION ALL SELECT 'A2', 'moon', 'noun', '/muːn/', 'mặt trăng' FROM DUAL
UNION ALL SELECT 'A2', 'mostly', 'adverb', '/ˈməʊstli/', 'chủ yếu' FROM DUAL
UNION ALL SELECT 'A2', 'motorcycle', 'noun', '/ˈməʊtəsaɪkl/', 'xe máy' FROM DUAL
UNION ALL SELECT 'A2', 'movement', 'noun', '/ˈmuːvmənt/', 'sự chuyển động' FROM DUAL
UNION ALL SELECT 'A2', 'musical', 'adjective', '/ˈmjuːzɪkl/', 'thuộc âm nhạc' FROM DUAL
UNION ALL SELECT 'A2', 'musician', 'noun', '/mjuˈzɪʃn/', 'nhạc sĩ' FROM DUAL
UNION ALL SELECT 'A2', 'myself', 'pronoun', '/maɪˈself/', 'chính tôi' FROM DUAL
UNION ALL SELECT 'A2', 'narrow', 'adjective', '/ˈnærəʊ/', 'hẹp' FROM DUAL
UNION ALL SELECT 'A2', 'national', 'adjective', '/ˈnæʃnəl/', 'thuộc quốc gia' FROM DUAL
UNION ALL SELECT 'A2', 'nature', 'noun', '/ˈneɪtʃə(r)/', 'thiên nhiên, bản chất' FROM DUAL
UNION ALL SELECT 'A2', 'nearly', 'adverb', '/ˈnɪəli/', 'gần như' FROM DUAL
UNION ALL SELECT 'A2', 'necessary', 'adjective', '/ˈnesəsəri/', 'cần thiết' FROM DUAL
UNION ALL SELECT 'A2', 'neck', 'noun', '/nek/', 'cái cổ' FROM DUAL
UNION ALL SELECT 'A2', 'need', 'noun', '/niːd/', 'nhu cầu' FROM DUAL
UNION ALL SELECT 'A2', 'neither', 'determiner', '/ˈnaɪðə(r)/', 'không cái nào (trong hai)' FROM DUAL
UNION ALL SELECT 'A2', 'nervous', 'adjective', '/ˈnɜːvəs/', 'lo lắng, hồi hộp' FROM DUAL
UNION ALL SELECT 'A2', 'network', 'noun', '/ˈnetwɜːk/', 'mạng lưới' FROM DUAL
UNION ALL SELECT 'A2', 'noise', 'noun', '/nɔɪz/', 'tiếng ồn' FROM DUAL
UNION ALL SELECT 'A2', 'noisy', 'adjective', '/ˈnɔɪzi/', 'ồn ào' FROM DUAL
UNION ALL SELECT 'A2', 'none', 'pronoun', '/nʌn/', 'không ai, không cái nào' FROM DUAL
UNION ALL SELECT 'A2', 'normal', 'adjective', '/ˈnɔːml/', 'bình thường' FROM DUAL
UNION ALL SELECT 'A2', 'normally', 'adverb', '/ˈnɔːməli/', 'thông thường' FROM DUAL
UNION ALL SELECT 'A2', 'notice', 'verb', '/ˈnəʊtɪs/', 'nhận thấy' FROM DUAL
UNION ALL SELECT 'A2', 'novel', 'noun', '/ˈnɒvl/', 'tiểu thuyết' FROM DUAL
UNION ALL SELECT 'A2', 'nowhere', 'adverb', '/ˈnəʊweə(r)/', 'không nơi nào' FROM DUAL
UNION ALL SELECT 'A2', 'nut', 'noun', '/nʌt/', 'hạt (quả hạch)' FROM DUAL
UNION ALL SELECT 'A2', 'ocean', 'noun', '/ˈəʊʃn/', 'đại dương' FROM DUAL
UNION ALL SELECT 'A2', 'offer', 'verb', '/ˈɒfə(r)/', 'đề nghị, mời' FROM DUAL
UNION ALL SELECT 'A2', 'officer', 'noun', '/ˈɒfɪsə(r)/', 'sĩ quan, viên chức' FROM DUAL
UNION ALL SELECT 'A2', 'oil', 'noun', '/ɔɪl/', 'dầu' FROM DUAL
UNION ALL SELECT 'A2', 'onto', 'preposition', '/ˈɒntə/', 'lên trên' FROM DUAL
UNION ALL SELECT 'A2', 'opportunity', 'noun', '/ˌɒpəˈtjuːnəti/', 'cơ hội' FROM DUAL
UNION ALL SELECT 'A2', 'option', 'noun', '/ˈɒpʃn/', 'lựa chọn' FROM DUAL
UNION ALL SELECT 'A2', 'ordinary', 'adjective', '/ˈɔːdnri/', 'bình thường' FROM DUAL
UNION ALL SELECT 'A2', 'organization', 'noun', '/ˌɔːɡənaɪˈzeɪʃn/', 'tổ chức' FROM DUAL
UNION ALL SELECT 'A2', 'organize', 'verb', '/ˈɔːɡənaɪz/', 'tổ chức' FROM DUAL
UNION ALL SELECT 'A2', 'original', 'adjective', '/əˈrɪdʒənl/', 'nguyên bản, độc đáo' FROM DUAL
UNION ALL SELECT 'A2', 'ourselves', 'pronoun', '/ɑːˈselvz/', 'chính chúng ta' FROM DUAL
UNION ALL SELECT 'A2', 'outside', 'preposition', '/ˌaʊtˈsaɪd/', 'bên ngoài' FROM DUAL
UNION ALL SELECT 'A2', 'oven', 'noun', '/ˈʌvn/', 'lò nướng' FROM DUAL
UNION ALL SELECT 'A2', 'own', 'verb', '/əʊn/', 'sở hữu' FROM DUAL
UNION ALL SELECT 'A2', 'owner', 'noun', '/ˈəʊnə(r)/', 'chủ sở hữu' FROM DUAL
UNION ALL SELECT 'A2', 'pack', 'verb', '/pæk/', 'đóng gói' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A2', 'pain', 'noun', '/peɪn/', 'cơn đau' FROM DUAL
UNION ALL SELECT 'A2', 'painter', 'noun', '/ˈpeɪntə(r)/', 'họa sĩ' FROM DUAL
UNION ALL SELECT 'A2', 'palace', 'noun', '/ˈpæləs/', 'cung điện' FROM DUAL
UNION ALL SELECT 'A2', 'pants', 'noun', '/pænts/', 'quần' FROM DUAL
UNION ALL SELECT 'A2', 'parking', 'noun', '/ˈpɑːkɪŋ/', 'việc đỗ xe' FROM DUAL
UNION ALL SELECT 'A2', 'particular', 'adjective', '/pəˈtɪkjələ(r)/', 'cụ thể, đặc biệt' FROM DUAL
UNION ALL SELECT 'A2', 'pass', 'verb', '/pɑːs/', 'đi qua, thi đỗ' FROM DUAL
UNION ALL SELECT 'A2', 'passenger', 'noun', '/ˈpæsɪndʒə(r)/', 'hành khách' FROM DUAL
UNION ALL SELECT 'A2', 'past', 'preposition', '/pɑːst/', 'qua, quá' FROM DUAL
UNION ALL SELECT 'A2', 'patient', 'noun', '/ˈpeɪʃnt/', 'bệnh nhân' FROM DUAL
UNION ALL SELECT 'A2', 'pattern', 'noun', '/ˈpætn/', 'hoa văn, khuôn mẫu' FROM DUAL
UNION ALL SELECT 'A2', 'pay', 'noun', '/peɪ/', 'tiền lương' FROM DUAL
UNION ALL SELECT 'A2', 'peace', 'noun', '/piːs/', 'hòa bình' FROM DUAL
UNION ALL SELECT 'A2', 'penny', 'noun', '/ˈpeni/', 'đồng xu penny' FROM DUAL
UNION ALL SELECT 'A2', 'per', 'preposition', '/pə(r)/', 'mỗi' FROM DUAL
UNION ALL SELECT 'A2', 'per cent', 'noun', '/pə ˈsent/', 'phần trăm' FROM DUAL
UNION ALL SELECT 'A2', 'perform', 'verb', '/pəˈfɔːm/', 'biểu diễn, thực hiện' FROM DUAL
UNION ALL SELECT 'A2', 'perhaps', 'adverb', '/pəˈhæps/', 'có lẽ' FROM DUAL
UNION ALL SELECT 'A2', 'permission', 'noun', '/pəˈmɪʃn/', 'sự cho phép' FROM DUAL
UNION ALL SELECT 'A2', 'personality', 'noun', '/ˌpɜːsəˈnæləti/', 'tính cách' FROM DUAL
UNION ALL SELECT 'A2', 'pet', 'noun', '/pet/', 'thú cưng' FROM DUAL
UNION ALL SELECT 'A2', 'petrol', 'noun', '/ˈpetrəl/', 'xăng' FROM DUAL
UNION ALL SELECT 'A2', 'photographer', 'noun', '/fəˈtɒɡrəfə(r)/', 'nhiếp ảnh gia' FROM DUAL
UNION ALL SELECT 'A2', 'physical', 'adjective', '/ˈfɪzɪkl/', 'thể chất' FROM DUAL
UNION ALL SELECT 'A2', 'physics', 'noun', '/ˈfɪzɪks/', 'vật lý' FROM DUAL
UNION ALL SELECT 'A2', 'pick', 'verb', '/pɪk/', 'chọn, hái' FROM DUAL
UNION ALL SELECT 'A2', 'pilot', 'noun', '/ˈpaɪlət/', 'phi công' FROM DUAL
UNION ALL SELECT 'A2', 'planet', 'noun', '/ˈplænɪt/', 'hành tinh' FROM DUAL
UNION ALL SELECT 'A2', 'plant', 'verb', '/plɑːnt/', 'trồng cây' FROM DUAL
UNION ALL SELECT 'A2', 'plastic', 'noun', '/ˈplæstɪk/', 'nhựa' FROM DUAL
UNION ALL SELECT 'A2', 'plate', 'noun', '/pleɪt/', 'cái đĩa' FROM DUAL
UNION ALL SELECT 'A2', 'platform', 'noun', '/ˈplætfɔːm/', 'sân ga, nền tảng' FROM DUAL
UNION ALL SELECT 'A2', 'please', 'verb', '/pliːz/', 'làm hài lòng' FROM DUAL
UNION ALL SELECT 'A2', 'pleased', 'adjective', '/pliːzd/', 'hài lòng' FROM DUAL
UNION ALL SELECT 'A2', 'pocket', 'noun', '/ˈpɒkɪt/', 'túi quần áo' FROM DUAL
UNION ALL SELECT 'A2', 'polite', 'adjective', '/pəˈlaɪt/', 'lịch sự' FROM DUAL
UNION ALL SELECT 'A2', 'pollution', 'noun', '/pəˈluːʃn/', 'sự ô nhiễm' FROM DUAL
UNION ALL SELECT 'A2', 'pop', 'noun', '/pɒp/', 'nhạc pop' FROM DUAL
UNION ALL SELECT 'A2', 'population', 'noun', '/ˌpɒpjuˈleɪʃn/', 'dân số' FROM DUAL
UNION ALL SELECT 'A2', 'position', 'noun', '/pəˈzɪʃn/', 'vị trí' FROM DUAL
UNION ALL SELECT 'A2', 'possession', 'noun', '/pəˈzeʃn/', 'vật sở hữu' FROM DUAL
UNION ALL SELECT 'A2', 'possibility', 'noun', '/ˌpɒsəˈbɪləti/', 'khả năng' FROM DUAL
UNION ALL SELECT 'A2', 'poster', 'noun', '/ˈpəʊstə(r)/', 'áp phích' FROM DUAL
UNION ALL SELECT 'A2', 'power', 'noun', '/ˈpaʊə(r)/', 'sức mạnh, quyền lực' FROM DUAL
UNION ALL SELECT 'A2', 'predict', 'verb', '/prɪˈdɪkt/', 'dự đoán' FROM DUAL
UNION ALL SELECT 'A2', 'present', 'verb', '/prɪˈzent/', 'trình bày, tặng' FROM DUAL
UNION ALL SELECT 'A2', 'president', 'noun', '/ˈprezɪdənt/', 'tổng thống, chủ tịch' FROM DUAL
UNION ALL SELECT 'A2', 'prevent', 'verb', '/prɪˈvent/', 'ngăn chặn' FROM DUAL
UNION ALL SELECT 'A2', 'print', 'verb', '/prɪnt/', 'in' FROM DUAL
UNION ALL SELECT 'A2', 'printer', 'noun', '/ˈprɪntə(r)/', 'máy in' FROM DUAL
UNION ALL SELECT 'A2', 'prison', 'noun', '/ˈprɪzn/', 'nhà tù' FROM DUAL
UNION ALL SELECT 'A2', 'prize', 'noun', '/praɪz/', 'giải thưởng' FROM DUAL
UNION ALL SELECT 'A2', 'process', 'noun', '/ˈprəʊses/', 'quá trình' FROM DUAL
UNION ALL SELECT 'A2', 'produce', 'verb', '/prəˈdjuːs/', 'sản xuất' FROM DUAL
UNION ALL SELECT 'A2', 'professional', 'adjective', '/prəˈfeʃənl/', 'chuyên nghiệp' FROM DUAL
UNION ALL SELECT 'A2', 'professor', 'noun', '/prəˈfesə(r)/', 'giáo sư' FROM DUAL
UNION ALL SELECT 'A2', 'profile', 'noun', '/ˈprəʊfaɪl/', 'hồ sơ, sơ lược' FROM DUAL
UNION ALL SELECT 'A2', 'program', 'noun', '/ˈprəʊɡræm/', 'chương trình (máy tính)' FROM DUAL
UNION ALL SELECT 'A2', 'progress', 'noun', '/ˈprəʊɡres/', 'sự tiến bộ' FROM DUAL
UNION ALL SELECT 'A2', 'promise', 'verb', '/ˈprɒmɪs/', 'hứa' FROM DUAL
UNION ALL SELECT 'A2', 'pronounce', 'verb', '/prəˈnaʊns/', 'phát âm' FROM DUAL
UNION ALL SELECT 'A2', 'protect', 'verb', '/prəˈtekt/', 'bảo vệ' FROM DUAL
UNION ALL SELECT 'A2', 'provide', 'verb', '/prəˈvaɪd/', 'cung cấp' FROM DUAL
UNION ALL SELECT 'A2', 'pub', 'noun', '/pʌb/', 'quán rượu' FROM DUAL
UNION ALL SELECT 'A2', 'public', 'adjective', '/ˈpʌblɪk/', 'công cộng' FROM DUAL
UNION ALL SELECT 'A2', 'publish', 'verb', '/ˈpʌblɪʃ/', 'xuất bản' FROM DUAL
UNION ALL SELECT 'A2', 'pull', 'verb', '/pʊl/', 'kéo' FROM DUAL
UNION ALL SELECT 'A2', 'purpose', 'noun', '/ˈpɜːpəs/', 'mục đích' FROM DUAL
UNION ALL SELECT 'A2', 'push', 'verb', '/pʊʃ/', 'đẩy' FROM DUAL
UNION ALL SELECT 'A2', 'quality', 'noun', '/ˈkwɒləti/', 'chất lượng' FROM DUAL
UNION ALL SELECT 'A2', 'quantity', 'noun', '/ˈkwɒntəti/', 'số lượng' FROM DUAL
UNION ALL SELECT 'A2', 'queen', 'noun', '/kwiːn/', 'nữ hoàng' FROM DUAL
UNION ALL SELECT 'A2', 'question', 'verb', '/ˈkwestʃən/', 'đặt câu hỏi, chất vấn' FROM DUAL
UNION ALL SELECT 'A2', 'quietly', 'adverb', '/ˈkwaɪətli/', 'một cách yên lặng' FROM DUAL
UNION ALL SELECT 'A2', 'race', 'noun', '/reɪs/', 'cuộc đua, chủng tộc' FROM DUAL
UNION ALL SELECT 'A2', 'railway', 'noun', '/ˈreɪlweɪ/', 'đường sắt' FROM DUAL
UNION ALL SELECT 'A2', 'raise', 'verb', '/reɪz/', 'nâng lên' FROM DUAL
UNION ALL SELECT 'A2', 'rate', 'noun', '/reɪt/', 'tỷ lệ' FROM DUAL
UNION ALL SELECT 'A2', 'rather', 'adverb', '/ˈrɑːðə(r)/', 'khá, thà' FROM DUAL
UNION ALL SELECT 'A2', 'reach', 'verb', '/riːtʃ/', 'đạt tới, với tới' FROM DUAL
UNION ALL SELECT 'A2', 'react', 'verb', '/riˈækt/', 'phản ứng' FROM DUAL
UNION ALL SELECT 'A2', 'realize', 'verb', '/ˈriːəlaɪz/', 'nhận ra' FROM DUAL
UNION ALL SELECT 'A2', 'receive', 'verb', '/rɪˈsiːv/', 'nhận' FROM DUAL
UNION ALL SELECT 'A2', 'recent', 'adjective', '/ˈriːsnt/', 'gần đây' FROM DUAL
UNION ALL SELECT 'A2', 'recently', 'adverb', '/ˈriːsntli/', 'gần đây' FROM DUAL
UNION ALL SELECT 'A2', 'reception', 'noun', '/rɪˈsepʃn/', 'quầy lễ tân' FROM DUAL
UNION ALL SELECT 'A2', 'recipe', 'noun', '/ˈresəpi/', 'công thức nấu ăn' FROM DUAL
UNION ALL SELECT 'A2', 'recognize', 'verb', '/ˈrekəɡnaɪz/', 'nhận ra' FROM DUAL
UNION ALL SELECT 'A2', 'recommend', 'verb', '/ˌrekəˈmend/', 'giới thiệu, đề xuất' FROM DUAL
UNION ALL SELECT 'A2', 'record', 'noun', '/ˈrekɔːd/', 'kỷ lục, hồ sơ' FROM DUAL
UNION ALL SELECT 'A2', 'record', 'verb', '/rɪˈkɔːd/', 'ghi âm, ghi lại' FROM DUAL
UNION ALL SELECT 'A2', 'recycle', 'verb', '/ˌriːˈsaɪkl/', 'tái chế' FROM DUAL
UNION ALL SELECT 'A2', 'reduce', 'verb', '/rɪˈdjuːs/', 'giảm' FROM DUAL
UNION ALL SELECT 'A2', 'region', 'noun', '/ˈriːdʒən/', 'vùng, khu vực' FROM DUAL
UNION ALL SELECT 'A2', 'regular', 'adjective', '/ˈreɡjələ(r)/', 'đều đặn' FROM DUAL
UNION ALL SELECT 'A2', 'relationship', 'noun', '/rɪˈleɪʃnʃɪp/', 'mối quan hệ' FROM DUAL
UNION ALL SELECT 'A2', 'remove', 'verb', '/rɪˈmuːv/', 'loại bỏ' FROM DUAL
UNION ALL SELECT 'A2', 'rent', 'verb', '/rent/', 'thuê' FROM DUAL
UNION ALL SELECT 'A2', 'repair', 'verb', '/rɪˈpeə(r)/', 'sửa chữa' FROM DUAL
UNION ALL SELECT 'A2', 'replace', 'verb', '/rɪˈpleɪs/', 'thay thế' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A2', 'reply', 'verb', '/rɪˈplaɪ/', 'trả lời' FROM DUAL
UNION ALL SELECT 'A2', 'report', 'verb', '/rɪˈpɔːt/', 'báo cáo' FROM DUAL
UNION ALL SELECT 'A2', 'reporter', 'noun', '/rɪˈpɔːtə(r)/', 'phóng viên' FROM DUAL
UNION ALL SELECT 'A2', 'request', 'noun', '/rɪˈkwest/', 'yêu cầu' FROM DUAL
UNION ALL SELECT 'A2', 'research', 'noun', '/rɪˈsɜːtʃ/', 'nghiên cứu' FROM DUAL
UNION ALL SELECT 'A2', 'researcher', 'noun', '/rɪˈsɜːtʃə(r)/', 'nhà nghiên cứu' FROM DUAL
UNION ALL SELECT 'A2', 'respond', 'verb', '/rɪˈspɒnd/', 'phản hồi' FROM DUAL
UNION ALL SELECT 'A2', 'response', 'noun', '/rɪˈspɒns/', 'sự phản hồi' FROM DUAL
UNION ALL SELECT 'A2', 'rest', 'noun', '/rest/', 'sự nghỉ ngơi, phần còn lại' FROM DUAL
UNION ALL SELECT 'A2', 'review', 'noun', '/rɪˈvjuː/', 'bài đánh giá, sự ôn tập' FROM DUAL
UNION ALL SELECT 'A2', 'ring', 'noun', '/rɪŋ/', 'chiếc nhẫn' FROM DUAL
UNION ALL SELECT 'A2', 'ring', 'verb', '/rɪŋ/', 'reo, gọi điện' FROM DUAL
UNION ALL SELECT 'A2', 'rise', 'verb', '/raɪz/', 'tăng lên, mọc' FROM DUAL
UNION ALL SELECT 'A2', 'rock', 'noun', '/rɒk/', 'đá, nhạc rock' FROM DUAL
UNION ALL SELECT 'A2', 'role', 'noun', '/rəʊl/', 'vai trò' FROM DUAL
UNION ALL SELECT 'A2', 'roof', 'noun', '/ruːf/', 'mái nhà' FROM DUAL
UNION ALL SELECT 'A2', 'round', 'adjective', '/raʊnd/', 'tròn' FROM DUAL
UNION ALL SELECT 'A2', 'route', 'noun', '/ruːt/', 'tuyến đường' FROM DUAL
UNION ALL SELECT 'A2', 'rubbish', 'noun', '/ˈrʌbɪʃ/', 'rác' FROM DUAL
UNION ALL SELECT 'A2', 'rude', 'adjective', '/ruːd/', 'thô lỗ' FROM DUAL
UNION ALL SELECT 'A2', 'runner', 'noun', '/ˈrʌnə(r)/', 'người chạy' FROM DUAL
UNION ALL SELECT 'A2', 'running', 'noun', '/ˈrʌnɪŋ/', 'môn chạy' FROM DUAL
UNION ALL SELECT 'A2', 'sadly', 'adverb', '/ˈsædli/', 'đáng buồn thay' FROM DUAL
UNION ALL SELECT 'A2', 'safe', 'adjective', '/seɪf/', 'an toàn' FROM DUAL
UNION ALL SELECT 'A2', 'sail', 'verb', '/seɪl/', 'đi thuyền' FROM DUAL
UNION ALL SELECT 'A2', 'sailing', 'noun', '/ˈseɪlɪŋ/', 'môn chèo thuyền buồm' FROM DUAL
UNION ALL SELECT 'A2', 'salary', 'noun', '/ˈsæləri/', 'lương' FROM DUAL
UNION ALL SELECT 'A2', 'sale', 'noun', '/seɪl/', 'sự bán, đợt giảm giá' FROM DUAL
UNION ALL SELECT 'A2', 'sauce', 'noun', '/sɔːs/', 'nước sốt' FROM DUAL
UNION ALL SELECT 'A2', 'save', 'verb', '/seɪv/', 'cứu, tiết kiệm' FROM DUAL
UNION ALL SELECT 'A2', 'scared', 'adjective', '/skeəd/', 'sợ hãi' FROM DUAL
UNION ALL SELECT 'A2', 'scary', 'adjective', '/ˈskeəri/', 'đáng sợ' FROM DUAL
UNION ALL SELECT 'A2', 'scene', 'noun', '/siːn/', 'cảnh' FROM DUAL
UNION ALL SELECT 'A2', 'schedule', 'noun', '/ˈʃedjuːl/', 'lịch trình' FROM DUAL
UNION ALL SELECT 'A2', 'score', 'noun', '/skɔː(r)/', 'điểm số' FROM DUAL
UNION ALL SELECT 'A2', 'screen', 'noun', '/skriːn/', 'màn hình' FROM DUAL
UNION ALL SELECT 'A2', 'search', 'verb', '/sɜːtʃ/', 'tìm kiếm' FROM DUAL
UNION ALL SELECT 'A2', 'season', 'noun', '/ˈsiːzn/', 'mùa' FROM DUAL
UNION ALL SELECT 'A2', 'seat', 'noun', '/siːt/', 'chỗ ngồi' FROM DUAL
UNION ALL SELECT 'A2', 'secret', 'noun', '/ˈsiːkrət/', 'bí mật' FROM DUAL
UNION ALL SELECT 'A2', 'secretary', 'noun', '/ˈsekrətri/', 'thư ký' FROM DUAL
UNION ALL SELECT 'A2', 'seem', 'verb', '/siːm/', 'có vẻ' FROM DUAL
UNION ALL SELECT 'A2', 'sense', 'noun', '/sens/', 'giác quan, ý thức' FROM DUAL
UNION ALL SELECT 'A2', 'separate', 'adjective', '/ˈseprət/', 'riêng biệt' FROM DUAL
UNION ALL SELECT 'A2', 'series', 'noun', '/ˈsɪəriːz/', 'loạt, chuỗi phim' FROM DUAL
UNION ALL SELECT 'A2', 'serious', 'adjective', '/ˈsɪəriəs/', 'nghiêm túc, nghiêm trọng' FROM DUAL
UNION ALL SELECT 'A2', 'serve', 'verb', '/sɜːv/', 'phục vụ' FROM DUAL
UNION ALL SELECT 'A2', 'service', 'noun', '/ˈsɜːvɪs/', 'dịch vụ' FROM DUAL
UNION ALL SELECT 'A2', 'several', 'determiner', '/ˈsevrəl/', 'một vài' FROM DUAL
UNION ALL SELECT 'A2', 'shake', 'verb', '/ʃeɪk/', 'lắc' FROM DUAL
UNION ALL SELECT 'A2', 'shape', 'noun', '/ʃeɪp/', 'hình dạng' FROM DUAL
UNION ALL SELECT 'A2', 'sheet', 'noun', '/ʃiːt/', 'tờ giấy, ga trải giường' FROM DUAL
UNION ALL SELECT 'A2', 'ship', 'noun', '/ʃɪp/', 'con tàu' FROM DUAL
UNION ALL SELECT 'A2', 'shoulder', 'noun', '/ˈʃəʊldə(r)/', 'vai' FROM DUAL
UNION ALL SELECT 'A2', 'shout', 'verb', '/ʃaʊt/', 'hét lên' FROM DUAL
UNION ALL SELECT 'A2', 'shut', 'verb', '/ʃʌt/', 'đóng' FROM DUAL
UNION ALL SELECT 'A2', 'side', 'noun', '/saɪd/', 'phía, bên' FROM DUAL
UNION ALL SELECT 'A2', 'sign', 'noun', '/saɪn/', 'dấu hiệu, biển báo' FROM DUAL
UNION ALL SELECT 'A2', 'silver', 'noun', '/ˈsɪlvə(r)/', 'bạc' FROM DUAL
UNION ALL SELECT 'A2', 'simple', 'adjective', '/ˈsɪmpl/', 'đơn giản' FROM DUAL
UNION ALL SELECT 'A2', 'since', 'preposition', '/sɪns/', 'kể từ' FROM DUAL
UNION ALL SELECT 'A2', 'singing', 'noun', '/ˈsɪŋɪŋ/', 'việc ca hát' FROM DUAL
UNION ALL SELECT 'A2', 'single', 'adjective', '/ˈsɪŋɡl/', 'đơn, độc thân' FROM DUAL
UNION ALL SELECT 'A2', 'sir', 'noun', '/sɜː(r)/', 'thưa ông' FROM DUAL
UNION ALL SELECT 'A2', 'site', 'noun', '/saɪt/', 'địa điểm, trang web' FROM DUAL
UNION ALL SELECT 'A2', 'size', 'noun', '/saɪz/', 'kích cỡ' FROM DUAL
UNION ALL SELECT 'A2', 'ski', 'verb', '/skiː/', 'trượt tuyết' FROM DUAL
UNION ALL SELECT 'A2', 'skiing', 'noun', '/ˈskiːɪŋ/', 'môn trượt tuyết' FROM DUAL
UNION ALL SELECT 'A2', 'skin', 'noun', '/skɪn/', 'da' FROM DUAL
UNION ALL SELECT 'A2', 'sky', 'noun', '/skaɪ/', 'bầu trời' FROM DUAL
UNION ALL SELECT 'A2', 'sleep', 'noun', '/sliːp/', 'giấc ngủ' FROM DUAL
UNION ALL SELECT 'A2', 'slowly', 'adverb', '/ˈsləʊli/', 'một cách chậm rãi' FROM DUAL
UNION ALL SELECT 'A2', 'smartphone', 'noun', '/ˈsmɑːtfəʊn/', 'điện thoại thông minh' FROM DUAL
UNION ALL SELECT 'A2', 'smell', 'verb', '/smel/', 'ngửi, có mùi' FROM DUAL
UNION ALL SELECT 'A2', 'smile', 'verb', '/smaɪl/', 'mỉm cười' FROM DUAL
UNION ALL SELECT 'A2', 'smoke', 'verb', '/sməʊk/', 'hút thuốc' FROM DUAL
UNION ALL SELECT 'A2', 'smoking', 'noun', '/ˈsməʊkɪŋ/', 'việc hút thuốc' FROM DUAL
UNION ALL SELECT 'A2', 'soap', 'noun', '/səʊp/', 'xà phòng' FROM DUAL
UNION ALL SELECT 'A2', 'soccer', 'noun', '/ˈsɒkə(r)/', 'bóng đá' FROM DUAL
UNION ALL SELECT 'A2', 'social', 'adjective', '/ˈsəʊʃl/', 'thuộc xã hội' FROM DUAL
UNION ALL SELECT 'A2', 'society', 'noun', '/səˈsaɪəti/', 'xã hội' FROM DUAL
UNION ALL SELECT 'A2', 'sock', 'noun', '/sɒk/', 'chiếc tất' FROM DUAL
UNION ALL SELECT 'A2', 'soft', 'adjective', '/sɒft/', 'mềm' FROM DUAL
UNION ALL SELECT 'A2', 'soldier', 'noun', '/ˈsəʊldʒə(r)/', 'người lính' FROM DUAL
UNION ALL SELECT 'A2', 'solution', 'noun', '/səˈluːʃn/', 'giải pháp' FROM DUAL
UNION ALL SELECT 'A2', 'solve', 'verb', '/sɒlv/', 'giải quyết' FROM DUAL
UNION ALL SELECT 'A2', 'somewhere', 'adverb', '/ˈsʌmweə(r)/', 'ở đâu đó' FROM DUAL
UNION ALL SELECT 'A2', 'sort', 'noun', '/sɔːt/', 'loại' FROM DUAL
UNION ALL SELECT 'A2', 'source', 'noun', '/sɔːs/', 'nguồn' FROM DUAL
UNION ALL SELECT 'A2', 'speaker', 'noun', '/ˈspiːkə(r)/', 'người nói, loa' FROM DUAL
UNION ALL SELECT 'A2', 'specific', 'adjective', '/spəˈsɪfɪk/', 'cụ thể' FROM DUAL
UNION ALL SELECT 'A2', 'speech', 'noun', '/spiːtʃ/', 'bài phát biểu' FROM DUAL
UNION ALL SELECT 'A2', 'speed', 'noun', '/spiːd/', 'tốc độ' FROM DUAL
UNION ALL SELECT 'A2', 'spider', 'noun', '/ˈspaɪdə(r)/', 'con nhện' FROM DUAL
UNION ALL SELECT 'A2', 'spoon', 'noun', '/spuːn/', 'cái thìa' FROM DUAL
UNION ALL SELECT 'A2', 'square', 'noun', '/skweə(r)/', 'hình vuông, quảng trường' FROM DUAL
UNION ALL SELECT 'A2', 'stage', 'noun', '/steɪdʒ/', 'sân khấu, giai đoạn' FROM DUAL
UNION ALL SELECT 'A2', 'stair', 'noun', '/steə(r)/', 'bậc cầu thang' FROM DUAL
UNION ALL SELECT 'A2', 'stamp', 'noun', '/stæmp/', 'con tem' FROM DUAL
UNION ALL SELECT 'A2', 'star', 'verb', '/stɑː(r)/', 'đóng vai chính' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A2', 'start', 'noun', '/stɑːt/', 'sự bắt đầu' FROM DUAL
UNION ALL SELECT 'A2', 'state', 'noun', '/steɪt/', 'bang, trạng thái' FROM DUAL
UNION ALL SELECT 'A2', 'stay', 'noun', '/steɪ/', 'thời gian lưu lại' FROM DUAL
UNION ALL SELECT 'A2', 'steal', 'verb', '/stiːl/', 'ăn trộm' FROM DUAL
UNION ALL SELECT 'A2', 'step', 'noun', '/step/', 'bước' FROM DUAL
UNION ALL SELECT 'A2', 'stomach', 'noun', '/ˈstʌmək/', 'dạ dày, bụng' FROM DUAL
UNION ALL SELECT 'A2', 'stone', 'noun', '/stəʊn/', 'hòn đá' FROM DUAL
UNION ALL SELECT 'A2', 'store', 'noun', '/stɔː(r)/', 'cửa hàng' FROM DUAL
UNION ALL SELECT 'A2', 'storm', 'noun', '/stɔːm/', 'cơn bão' FROM DUAL
UNION ALL SELECT 'A2', 'straight', 'adverb', '/streɪt/', 'thẳng' FROM DUAL
UNION ALL SELECT 'A2', 'strange', 'adjective', '/streɪndʒ/', 'lạ' FROM DUAL
UNION ALL SELECT 'A2', 'strategy', 'noun', '/ˈstrætədʒi/', 'chiến lược' FROM DUAL
UNION ALL SELECT 'A2', 'stress', 'noun', '/stres/', 'căng thẳng' FROM DUAL
UNION ALL SELECT 'A2', 'structure', 'noun', '/ˈstrʌktʃə(r)/', 'cấu trúc' FROM DUAL
UNION ALL SELECT 'A2', 'stupid', 'adjective', '/ˈstjuːpɪd/', 'ngu ngốc' FROM DUAL
UNION ALL SELECT 'A2', 'succeed', 'verb', '/səkˈsiːd/', 'thành công' FROM DUAL
UNION ALL SELECT 'A2', 'successful', 'adjective', '/səkˈsesfl/', 'thành công' FROM DUAL
UNION ALL SELECT 'A2', 'such', 'determiner', '/sʌtʃ/', 'như vậy' FROM DUAL
UNION ALL SELECT 'A2', 'suddenly', 'adverb', '/ˈsʌdənli/', 'đột nhiên' FROM DUAL
UNION ALL SELECT 'A2', 'suggest', 'verb', '/səˈdʒest/', 'gợi ý' FROM DUAL
UNION ALL SELECT 'A2', 'suggestion', 'noun', '/səˈdʒestʃən/', 'lời gợi ý' FROM DUAL
UNION ALL SELECT 'A2', 'suit', 'noun', '/suːt/', 'bộ com-lê' FROM DUAL
UNION ALL SELECT 'A2', 'support', 'verb', '/səˈpɔːt/', 'ủng hộ, hỗ trợ' FROM DUAL
UNION ALL SELECT 'A2', 'suppose', 'verb', '/səˈpəʊz/', 'cho rằng' FROM DUAL
UNION ALL SELECT 'A2', 'surprise', 'noun', '/səˈpraɪz/', 'sự ngạc nhiên' FROM DUAL
UNION ALL SELECT 'A2', 'surprised', 'adjective', '/səˈpraɪzd/', 'ngạc nhiên' FROM DUAL
UNION ALL SELECT 'A2', 'surprising', 'adjective', '/səˈpraɪzɪŋ/', 'đáng ngạc nhiên' FROM DUAL
UNION ALL SELECT 'A2', 'survey', 'noun', '/ˈsɜːveɪ/', 'cuộc khảo sát' FROM DUAL
UNION ALL SELECT 'A2', 'sweet', 'adjective', '/swiːt/', 'ngọt' FROM DUAL
UNION ALL SELECT 'A2', 'symbol', 'noun', '/ˈsɪmbl/', 'biểu tượng' FROM DUAL
UNION ALL SELECT 'A2', 'system', 'noun', '/ˈsɪstəm/', 'hệ thống' FROM DUAL
UNION ALL SELECT 'A2', 'tablet', 'noun', '/ˈtæblət/', 'viên thuốc, máy tính bảng' FROM DUAL
UNION ALL SELECT 'A2', 'talk', 'noun', '/tɔːk/', 'cuộc nói chuyện' FROM DUAL
UNION ALL SELECT 'A2', 'target', 'noun', '/ˈtɑːɡɪt/', 'mục tiêu' FROM DUAL
UNION ALL SELECT 'A2', 'task', 'noun', '/tɑːsk/', 'nhiệm vụ' FROM DUAL
UNION ALL SELECT 'A2', 'taste', 'noun', '/teɪst/', 'vị, khẩu vị' FROM DUAL
UNION ALL SELECT 'A2', 'teaching', 'noun', '/ˈtiːtʃɪŋ/', 'việc giảng dạy' FROM DUAL
UNION ALL SELECT 'A2', 'technology', 'noun', '/tekˈnɒlədʒi/', 'công nghệ' FROM DUAL
UNION ALL SELECT 'A2', 'teenage', 'adjective', '/ˈtiːneɪdʒ/', 'thuộc tuổi thiếu niên' FROM DUAL
UNION ALL SELECT 'A2', 'temperature', 'noun', '/ˈtemprətʃə(r)/', 'nhiệt độ' FROM DUAL
UNION ALL SELECT 'A2', 'term', 'noun', '/tɜːm/', 'học kỳ, thuật ngữ' FROM DUAL
UNION ALL SELECT 'A2', 'theirs', 'pronoun', '/ðeəz/', 'của họ' FROM DUAL
UNION ALL SELECT 'A2', 'themselves', 'pronoun', '/ðəmˈselvz/', 'chính họ' FROM DUAL
UNION ALL SELECT 'A2', 'therefore', 'adverb', '/ˈðeəfɔː(r)/', 'vì vậy' FROM DUAL
UNION ALL SELECT 'A2', 'thick', 'adjective', '/θɪk/', 'dày' FROM DUAL
UNION ALL SELECT 'A2', 'thief', 'noun', '/θiːf/', 'kẻ trộm' FROM DUAL
UNION ALL SELECT 'A2', 'thin', 'adjective', '/θɪn/', 'mỏng, gầy' FROM DUAL
UNION ALL SELECT 'A2', 'though', 'adverb', '/ðəʊ/', 'tuy nhiên' FROM DUAL
UNION ALL SELECT 'A2', 'throat', 'noun', '/θrəʊt/', 'cổ họng' FROM DUAL
UNION ALL SELECT 'A2', 'throw', 'verb', '/θrəʊ/', 'ném' FROM DUAL
UNION ALL SELECT 'A2', 'tidy', 'adjective', '/ˈtaɪdi/', 'gọn gàng' FROM DUAL
UNION ALL SELECT 'A2', 'tie', 'verb', '/taɪ/', 'buộc' FROM DUAL
UNION ALL SELECT 'A2', 'tie', 'noun', '/taɪ/', 'cà vạt' FROM DUAL
UNION ALL SELECT 'A2', 'tiny', 'adjective', '/ˈtaɪni/', 'nhỏ xíu' FROM DUAL
UNION ALL SELECT 'A2', 'tip', 'noun', '/tɪp/', 'mẹo, tiền boa' FROM DUAL
UNION ALL SELECT 'A2', 'toe', 'noun', '/təʊ/', 'ngón chân' FROM DUAL
UNION ALL SELECT 'A2', 'tool', 'noun', '/tuːl/', 'công cụ' FROM DUAL
UNION ALL SELECT 'A2', 'top', 'noun', '/tɒp/', 'đỉnh' FROM DUAL
UNION ALL SELECT 'A2', 'total', 'adjective', '/ˈtəʊtl/', 'tổng cộng' FROM DUAL
UNION ALL SELECT 'A2', 'totally', 'adverb', '/ˈtəʊtəli/', 'hoàn toàn' FROM DUAL
UNION ALL SELECT 'A2', 'touch', 'verb', '/tʌtʃ/', 'chạm' FROM DUAL
UNION ALL SELECT 'A2', 'tour', 'noun', '/tʊə(r)/', 'chuyến tham quan' FROM DUAL
UNION ALL SELECT 'A2', 'towards', 'preposition', '/təˈwɔːdz/', 'về phía' FROM DUAL
UNION ALL SELECT 'A2', 'towel', 'noun', '/ˈtaʊəl/', 'khăn tắm' FROM DUAL
UNION ALL SELECT 'A2', 'tower', 'noun', '/ˈtaʊə(r)/', 'tòa tháp' FROM DUAL
UNION ALL SELECT 'A2', 'toy', 'noun', '/tɔɪ/', 'đồ chơi' FROM DUAL
UNION ALL SELECT 'A2', 'track', 'noun', '/træk/', 'đường đua, bài hát' FROM DUAL
UNION ALL SELECT 'A2', 'tradition', 'noun', '/trəˈdɪʃn/', 'truyền thống' FROM DUAL
UNION ALL SELECT 'A2', 'traditional', 'adjective', '/trəˈdɪʃənl/', 'truyền thống' FROM DUAL
UNION ALL SELECT 'A2', 'train', 'verb', '/treɪn/', 'huấn luyện' FROM DUAL
UNION ALL SELECT 'A2', 'trainer', 'noun', '/ˈtreɪnə(r)/', 'giày thể thao, huấn luyện viên' FROM DUAL
UNION ALL SELECT 'A2', 'training', 'noun', '/ˈtreɪnɪŋ/', 'sự đào tạo' FROM DUAL
UNION ALL SELECT 'A2', 'transport', 'noun', '/ˈtrænspɔːt/', 'giao thông vận tải' FROM DUAL
UNION ALL SELECT 'A2', 'traveller', 'noun', '/ˈtrævələ(r)/', 'người du lịch' FROM DUAL
UNION ALL SELECT 'A2', 'treat', 'verb', '/triːt/', 'đối xử, chữa trị' FROM DUAL
UNION ALL SELECT 'A2', 'tropical', 'adjective', '/ˈtrɒpɪkl/', 'nhiệt đới' FROM DUAL
UNION ALL SELECT 'A2', 'trouble', 'noun', '/ˈtrʌbl/', 'rắc rối' FROM DUAL
UNION ALL SELECT 'A2', 'truck', 'noun', '/trʌk/', 'xe tải' FROM DUAL
UNION ALL SELECT 'A2', 'truth', 'noun', '/truːθ/', 'sự thật' FROM DUAL
UNION ALL SELECT 'A2', 'twin', 'noun', '/twɪn/', 'sinh đôi' FROM DUAL
UNION ALL SELECT 'A2', 'typical', 'adjective', '/ˈtɪpɪkl/', 'điển hình' FROM DUAL
UNION ALL SELECT 'A2', 'unfortunately', 'adverb', '/ʌnˈfɔːtʃənətli/', 'thật không may' FROM DUAL
UNION ALL SELECT 'A2', 'unhappy', 'adjective', '/ʌnˈhæpi/', 'không vui' FROM DUAL
UNION ALL SELECT 'A2', 'uniform', 'noun', '/ˈjuːnɪfɔːm/', 'đồng phục' FROM DUAL
UNION ALL SELECT 'A2', 'unit', 'noun', '/ˈjuːnɪt/', 'đơn vị, bài học' FROM DUAL
UNION ALL SELECT 'A2', 'united', 'adjective', '/juˈnaɪtɪd/', 'đoàn kết, thống nhất' FROM DUAL
UNION ALL SELECT 'A2', 'unusual', 'adjective', '/ʌnˈjuːʒuəl/', 'khác thường' FROM DUAL
UNION ALL SELECT 'A2', 'upset', 'adjective', '/ˌʌpˈset/', 'buồn bực' FROM DUAL
UNION ALL SELECT 'A2', 'user', 'noun', '/ˈjuːzə(r)/', 'người dùng' FROM DUAL
UNION ALL SELECT 'A2', 'usual', 'adjective', '/ˈjuːʒuəl/', 'thông thường' FROM DUAL
UNION ALL SELECT 'A2', 'valley', 'noun', '/ˈvæli/', 'thung lũng' FROM DUAL
UNION ALL SELECT 'A2', 'van', 'noun', '/væn/', 'xe tải nhỏ' FROM DUAL
UNION ALL SELECT 'A2', 'variety', 'noun', '/vəˈraɪəti/', 'sự đa dạng' FROM DUAL
UNION ALL SELECT 'A2', 'vehicle', 'noun', '/ˈviːəkl/', 'phương tiện, xe cộ' FROM DUAL
UNION ALL SELECT 'A2', 'view', 'noun', '/vjuː/', 'quang cảnh, quan điểm' FROM DUAL
UNION ALL SELECT 'A2', 'violent', 'adjective', '/ˈvaɪələnt/', 'bạo lực' FROM DUAL
UNION ALL SELECT 'A2', 'virus', 'noun', '/ˈvaɪrəs/', 'vi-rút' FROM DUAL
UNION ALL SELECT 'A2', 'voice', 'noun', '/vɔɪs/', 'giọng nói' FROM DUAL
UNION ALL SELECT 'A2', 'vote', 'verb', '/vəʊt/', 'bỏ phiếu' FROM DUAL
UNION ALL SELECT 'A2', 'wait', 'noun', '/weɪt/', 'sự chờ đợi' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'A2', 'war', 'noun', '/wɔː(r)/', 'chiến tranh' FROM DUAL
UNION ALL SELECT 'A2', 'wash', 'noun', '/wɒʃ/', 'sự tắm rửa, giặt' FROM DUAL
UNION ALL SELECT 'A2', 'washing', 'noun', '/ˈwɒʃɪŋ/', 'việc giặt giũ' FROM DUAL
UNION ALL SELECT 'A2', 'wave', 'noun', '/weɪv/', 'làn sóng' FROM DUAL
UNION ALL SELECT 'A2', 'weak', 'adjective', '/wiːk/', 'yếu' FROM DUAL
UNION ALL SELECT 'A2', 'web', 'noun', '/web/', 'mạng nhện, mạng web' FROM DUAL
UNION ALL SELECT 'A2', 'wedding', 'noun', '/ˈwedɪŋ/', 'đám cưới' FROM DUAL
UNION ALL SELECT 'A2', 'weight', 'noun', '/weɪt/', 'cân nặng' FROM DUAL
UNION ALL SELECT 'A2', 'welcome', 'verb', '/ˈwelkəm/', 'chào đón' FROM DUAL
UNION ALL SELECT 'A2', 'wet', 'adjective', '/wet/', 'ướt' FROM DUAL
UNION ALL SELECT 'A2', 'wheel', 'noun', '/wiːl/', 'bánh xe' FROM DUAL
UNION ALL SELECT 'A2', 'while', 'conjunction', '/waɪl/', 'trong khi' FROM DUAL
UNION ALL SELECT 'A2', 'whole', 'adjective', '/həʊl/', 'toàn bộ' FROM DUAL
UNION ALL SELECT 'A2', 'whose', 'determiner', '/huːz/', 'của ai' FROM DUAL
UNION ALL SELECT 'A2', 'wide', 'adjective', '/waɪd/', 'rộng' FROM DUAL
UNION ALL SELECT 'A2', 'wild', 'adjective', '/waɪld/', 'hoang dã' FROM DUAL
UNION ALL SELECT 'A2', 'wind', 'noun', '/wɪnd/', 'gió' FROM DUAL
UNION ALL SELECT 'A2', 'winner', 'noun', '/ˈwɪnə(r)/', 'người chiến thắng' FROM DUAL
UNION ALL SELECT 'A2', 'wish', 'verb', '/wɪʃ/', 'ước' FROM DUAL
UNION ALL SELECT 'A2', 'wood', 'noun', '/wʊd/', 'gỗ' FROM DUAL
UNION ALL SELECT 'A2', 'wooden', 'adjective', '/ˈwʊdn/', 'bằng gỗ' FROM DUAL
UNION ALL SELECT 'A2', 'working', 'adjective', '/ˈwɜːkɪŋ/', 'đang làm việc' FROM DUAL
UNION ALL SELECT 'A2', 'worried', 'adjective', '/ˈwʌrid/', 'lo lắng' FROM DUAL
UNION ALL SELECT 'A2', 'worry', 'verb', '/ˈwʌri/', 'lo lắng' FROM DUAL
UNION ALL SELECT 'A2', 'worse', 'adjective', '/wɜːs/', 'tệ hơn' FROM DUAL
UNION ALL SELECT 'A2', 'worst', 'adjective', '/wɜːst/', 'tệ nhất' FROM DUAL
UNION ALL SELECT 'A2', 'wow', 'exclamation', '/waʊ/', 'chà, ồ' FROM DUAL
UNION ALL SELECT 'A2', 'yet', 'adverb', '/jet/', 'chưa, vẫn chưa' FROM DUAL
UNION ALL SELECT 'A2', 'yours', 'pronoun', '/jɔːz/', 'của bạn' FROM DUAL
UNION ALL SELECT 'A2', 'zero', 'number', '/ˈzɪərəʊ/', 'số không' FROM DUAL
UNION ALL SELECT 'B1', 'ability', 'noun', '/əˈbɪləti/', 'khả năng, năng lực' FROM DUAL
UNION ALL SELECT 'B1', 'absolutely', 'adverb', '/ˈæbsəluːtli/', 'hoàn toàn, tuyệt đối' FROM DUAL
UNION ALL SELECT 'B1', 'academic', 'adjective', '/ˌækəˈdemɪk/', 'thuộc học thuật' FROM DUAL
UNION ALL SELECT 'B1', 'access', 'noun', '/ˈækses/', 'quyền truy cập, lối vào' FROM DUAL
UNION ALL SELECT 'B1', 'accommodation', 'noun', '/əˌkɒməˈdeɪʃn/', 'chỗ ở' FROM DUAL
UNION ALL SELECT 'B1', 'account', 'noun', '/əˈkaʊnt/', 'tài khoản' FROM DUAL
UNION ALL SELECT 'B1', 'achievement', 'noun', '/əˈtʃiːvmənt/', 'thành tích, thành tựu' FROM DUAL
UNION ALL SELECT 'B1', 'addition', 'noun', '/əˈdɪʃn/', 'sự thêm vào, phép cộng' FROM DUAL
UNION ALL SELECT 'B1', 'admire', 'verb', '/ədˈmaɪə(r)/', 'ngưỡng mộ' FROM DUAL
UNION ALL SELECT 'B1', 'admit', 'verb', '/ədˈmɪt/', 'thừa nhận' FROM DUAL
UNION ALL SELECT 'B1', 'advanced', 'adjective', '/ədˈvɑːnst/', 'nâng cao, tiên tiến' FROM DUAL
UNION ALL SELECT 'B1', 'advise', 'verb', '/ədˈvaɪz/', 'khuyên' FROM DUAL
UNION ALL SELECT 'B1', 'afford', 'verb', '/əˈfɔːd/', 'có đủ khả năng (chi trả)' FROM DUAL
UNION ALL SELECT 'B1', 'aged', 'adjective', '/eɪdʒd/', 'ở độ tuổi' FROM DUAL
UNION ALL SELECT 'B1', 'agent', 'noun', '/ˈeɪdʒənt/', 'đại lý, nhân viên đại diện' FROM DUAL
UNION ALL SELECT 'B1', 'agreement', 'noun', '/əˈɡriːmənt/', 'sự đồng ý, thỏa thuận' FROM DUAL
UNION ALL SELECT 'B1', 'ahead', 'adverb', '/əˈhed/', 'phía trước' FROM DUAL
UNION ALL SELECT 'B1', 'aim', 'noun', '/eɪm/', 'mục đích, mục tiêu' FROM DUAL
UNION ALL SELECT 'B1', 'alarm', 'noun', '/əˈlɑːm/', 'chuông báo, báo động' FROM DUAL
UNION ALL SELECT 'B1', 'album', 'noun', '/ˈælbəm/', 'album (ảnh, nhạc)' FROM DUAL
UNION ALL SELECT 'B1', 'alcohol', 'noun', '/ˈælkəhɒl/', 'rượu, cồn' FROM DUAL
UNION ALL SELECT 'B1', 'alcoholic', 'adjective', '/ˌælkəˈhɒlɪk/', 'có cồn' FROM DUAL
UNION ALL SELECT 'B1', 'alternative', 'noun', '/ɔːlˈtɜːnətɪv/', 'sự lựa chọn khác' FROM DUAL
UNION ALL SELECT 'B1', 'amazed', 'adjective', '/əˈmeɪzd/', 'kinh ngạc' FROM DUAL
UNION ALL SELECT 'B1', 'ambition', 'noun', '/æmˈbɪʃn/', 'hoài bão, tham vọng' FROM DUAL
UNION ALL SELECT 'B1', 'ambitious', 'adjective', '/æmˈbɪʃəs/', 'có hoài bão, tham vọng' FROM DUAL
UNION ALL SELECT 'B1', 'analyse', 'verb', '/ˈænəlaɪz/', 'phân tích' FROM DUAL
UNION ALL SELECT 'B1', 'analysis', 'noun', '/əˈnæləsɪs/', 'sự phân tích' FROM DUAL
UNION ALL SELECT 'B1', 'announce', 'verb', '/əˈnaʊns/', 'thông báo, công bố' FROM DUAL
UNION ALL SELECT 'B1', 'announcement', 'noun', '/əˈnaʊnsmənt/', 'lời thông báo' FROM DUAL
UNION ALL SELECT 'B1', 'annoy', 'verb', '/əˈnɔɪ/', 'làm phiền, làm bực mình' FROM DUAL
UNION ALL SELECT 'B1', 'annoyed', 'adjective', '/əˈnɔɪd/', 'bực mình' FROM DUAL
UNION ALL SELECT 'B1', 'annoying', 'adjective', '/əˈnɔɪɪŋ/', 'gây khó chịu' FROM DUAL
UNION ALL SELECT 'B1', 'apart', 'adverb', '/əˈpɑːt/', 'cách nhau, riêng ra' FROM DUAL
UNION ALL SELECT 'B1', 'apologize', 'verb', '/əˈpɒlədʒaɪz/', 'xin lỗi' FROM DUAL
UNION ALL SELECT 'B1', 'application', 'noun', '/ˌæplɪˈkeɪʃn/', 'đơn xin, ứng dụng' FROM DUAL
UNION ALL SELECT 'B1', 'appointment', 'noun', '/əˈpɔɪntmənt/', 'cuộc hẹn' FROM DUAL
UNION ALL SELECT 'B1', 'appreciate', 'verb', '/əˈpriːʃieɪt/', 'đánh giá cao, cảm kích' FROM DUAL
UNION ALL SELECT 'B1', 'approximately', 'adverb', '/əˈprɒksɪmətli/', 'khoảng chừng, xấp xỉ' FROM DUAL
UNION ALL SELECT 'B1', 'arrest', 'verb', '/əˈrest/', 'bắt giữ' FROM DUAL
UNION ALL SELECT 'B1', 'arrival', 'noun', '/əˈraɪvl/', 'sự đến nơi' FROM DUAL
UNION ALL SELECT 'B1', 'assignment', 'noun', '/əˈsaɪnmənt/', 'bài tập, nhiệm vụ được giao' FROM DUAL
UNION ALL SELECT 'B1', 'assist', 'verb', '/əˈsɪst/', 'hỗ trợ, giúp đỡ' FROM DUAL
UNION ALL SELECT 'B1', 'atmosphere', 'noun', '/ˈætməsfɪə(r)/', 'bầu không khí' FROM DUAL
UNION ALL SELECT 'B1', 'attach', 'verb', '/əˈtætʃ/', 'gắn, đính kèm' FROM DUAL
UNION ALL SELECT 'B1', 'attitude', 'noun', '/ˈætɪtjuːd/', 'thái độ' FROM DUAL
UNION ALL SELECT 'B1', 'attract', 'verb', '/əˈtrækt/', 'thu hút' FROM DUAL
UNION ALL SELECT 'B1', 'attraction', 'noun', '/əˈtrækʃn/', 'sự thu hút, điểm tham quan' FROM DUAL
UNION ALL SELECT 'B1', 'authority', 'noun', '/ɔːˈθɒrəti/', 'quyền lực, chính quyền' FROM DUAL
UNION ALL SELECT 'B1', 'average', 'adjective', '/ˈævərɪdʒ/', 'trung bình' FROM DUAL
UNION ALL SELECT 'B1', 'award', 'noun', '/əˈwɔːd/', 'giải thưởng' FROM DUAL
UNION ALL SELECT 'B1', 'aware', 'adjective', '/əˈweə(r)/', 'nhận thức được, biết' FROM DUAL
UNION ALL SELECT 'B1', 'backwards', 'adverb', '/ˈbækwədz/', 'về phía sau, ngược lại' FROM DUAL
UNION ALL SELECT 'B1', 'bake', 'verb', '/beɪk/', 'nướng (bánh)' FROM DUAL
UNION ALL SELECT 'B1', 'balance', 'noun', '/ˈbæləns/', 'sự cân bằng' FROM DUAL
UNION ALL SELECT 'B1', 'ban', 'verb', '/bæn/', 'cấm' FROM DUAL
UNION ALL SELECT 'B1', 'base', 'verb', '/beɪs/', 'dựa vào, đặt cơ sở' FROM DUAL
UNION ALL SELECT 'B1', 'basis', 'noun', '/ˈbeɪsɪs/', 'nền tảng, cơ sở' FROM DUAL
UNION ALL SELECT 'B1', 'battery', 'noun', '/ˈbætri/', 'pin, ắc quy' FROM DUAL
UNION ALL SELECT 'B1', 'battle', 'noun', '/ˈbætl/', 'trận chiến' FROM DUAL
UNION ALL SELECT 'B1', 'bear', 'verb', '/beə(r)/', 'chịu đựng' FROM DUAL
UNION ALL SELECT 'B1', 'beat', 'noun', '/biːt/', 'nhịp (nhạc), tiếng đập' FROM DUAL
UNION ALL SELECT 'B1', 'beauty', 'noun', '/ˈbjuːti/', 'vẻ đẹp' FROM DUAL
UNION ALL SELECT 'B1', 'bee', 'noun', '/biː/', 'con ong' FROM DUAL
UNION ALL SELECT 'B1', 'belief', 'noun', '/bɪˈliːf/', 'niềm tin' FROM DUAL
UNION ALL SELECT 'B1', 'bell', 'noun', '/bel/', 'cái chuông' FROM DUAL
UNION ALL SELECT 'B1', 'bend', 'verb', '/bend/', 'uốn cong, cúi xuống' FROM DUAL
UNION ALL SELECT 'B1', 'benefit', 'noun', '/ˈbenɪfɪt/', 'lợi ích' FROM DUAL
UNION ALL SELECT 'B1', 'bite', 'verb', '/baɪt/', 'cắn' FROM DUAL
UNION ALL SELECT 'B1', 'blind', 'adjective', '/blaɪnd/', 'mù' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B1', 'block', 'noun', '/blɒk/', 'khối, dãy nhà' FROM DUAL
UNION ALL SELECT 'B1', 'bomb', 'noun', '/bɒm/', 'quả bom' FROM DUAL
UNION ALL SELECT 'B1', 'border', 'noun', '/ˈbɔːdə(r)/', 'biên giới' FROM DUAL
UNION ALL SELECT 'B1', 'bother', 'verb', '/ˈbɒðə(r)/', 'làm phiền, bận tâm' FROM DUAL
UNION ALL SELECT 'B1', 'branch', 'noun', '/brɑːntʃ/', 'cành cây, chi nhánh' FROM DUAL
UNION ALL SELECT 'B1', 'brand', 'noun', '/brænd/', 'nhãn hiệu, thương hiệu' FROM DUAL
UNION ALL SELECT 'B1', 'brave', 'adjective', '/breɪv/', 'dũng cảm' FROM DUAL
UNION ALL SELECT 'B1', 'breath', 'noun', '/breθ/', 'hơi thở' FROM DUAL
UNION ALL SELECT 'B1', 'breathe', 'verb', '/briːð/', 'thở' FROM DUAL
UNION ALL SELECT 'B1', 'bride', 'noun', '/braɪd/', 'cô dâu' FROM DUAL
UNION ALL SELECT 'B1', 'bubble', 'noun', '/ˈbʌbl/', 'bong bóng' FROM DUAL
UNION ALL SELECT 'B1', 'bury', 'verb', '/ˈberi/', 'chôn' FROM DUAL
UNION ALL SELECT 'B1', 'calm', 'adjective', '/kɑːm/', 'bình tĩnh, yên tĩnh' FROM DUAL
UNION ALL SELECT 'B1', 'campaign', 'noun', '/kæmˈpeɪn/', 'chiến dịch' FROM DUAL
UNION ALL SELECT 'B1', 'campus', 'noun', '/ˈkæmpəs/', 'khuôn viên trường' FROM DUAL
UNION ALL SELECT 'B1', 'candidate', 'noun', '/ˈkændɪdət/', 'ứng viên' FROM DUAL
UNION ALL SELECT 'B1', 'cap', 'noun', '/kæp/', 'mũ lưỡi trai, nắp' FROM DUAL
UNION ALL SELECT 'B1', 'captain', 'noun', '/ˈkæptɪn/', 'thuyền trưởng, đội trưởng' FROM DUAL
UNION ALL SELECT 'B1', 'careless', 'adjective', '/ˈkeələs/', 'bất cẩn' FROM DUAL
UNION ALL SELECT 'B1', 'category', 'noun', '/ˈkætəɡəri/', 'hạng mục, loại' FROM DUAL
UNION ALL SELECT 'B1', 'ceiling', 'noun', '/ˈsiːlɪŋ/', 'trần nhà' FROM DUAL
UNION ALL SELECT 'B1', 'celebration', 'noun', '/ˌselɪˈbreɪʃn/', 'lễ kỷ niệm, sự ăn mừng' FROM DUAL
UNION ALL SELECT 'B1', 'central', 'adjective', '/ˈsentrəl/', 'trung tâm' FROM DUAL
UNION ALL SELECT 'B1', 'ceremony', 'noun', '/ˈserəməni/', 'nghi lễ, buổi lễ' FROM DUAL
UNION ALL SELECT 'B1', 'chain', 'noun', '/tʃeɪn/', 'dây xích, chuỗi' FROM DUAL
UNION ALL SELECT 'B1', 'challenge', 'noun', '/ˈtʃælɪndʒ/', 'thử thách' FROM DUAL
UNION ALL SELECT 'B1', 'champion', 'noun', '/ˈtʃæmpiən/', 'nhà vô địch' FROM DUAL
UNION ALL SELECT 'B1', 'channel', 'noun', '/ˈtʃænl/', 'kênh' FROM DUAL
UNION ALL SELECT 'B1', 'chapter', 'noun', '/ˈtʃæptə(r)/', 'chương (sách)' FROM DUAL
UNION ALL SELECT 'B1', 'charge', 'noun', '/tʃɑːdʒ/', 'phí, tiền phải trả' FROM DUAL
UNION ALL SELECT 'B1', 'cheat', 'verb', '/tʃiːt/', 'gian lận, lừa dối' FROM DUAL
UNION ALL SELECT 'B1', 'cheerful', 'adjective', '/ˈtʃɪəfl/', 'vui vẻ' FROM DUAL
UNION ALL SELECT 'B1', 'chemical', 'adjective', '/ˈkemɪkl/', 'thuộc hóa học' FROM DUAL
UNION ALL SELECT 'B1', 'chest', 'noun', '/tʃest/', 'ngực' FROM DUAL
UNION ALL SELECT 'B1', 'childhood', 'noun', '/ˈtʃaɪldhʊd/', 'thời thơ ấu' FROM DUAL
UNION ALL SELECT 'B1', 'claim', 'verb', '/kleɪm/', 'khẳng định, đòi quyền' FROM DUAL
UNION ALL SELECT 'B1', 'clause', 'noun', '/klɔːz/', 'mệnh đề, điều khoản' FROM DUAL
UNION ALL SELECT 'B1', 'clear', 'verb', '/klɪə(r)/', 'dọn dẹp, làm sạch' FROM DUAL
UNION ALL SELECT 'B1', 'click', 'verb', '/klɪk/', 'nhấp chuột' FROM DUAL
UNION ALL SELECT 'B1', 'client', 'noun', '/ˈklaɪənt/', 'khách hàng' FROM DUAL
UNION ALL SELECT 'B1', 'climb', 'noun', '/klaɪm/', 'sự leo trèo' FROM DUAL
UNION ALL SELECT 'B1', 'cloth', 'noun', '/klɒθ/', 'vải' FROM DUAL
UNION ALL SELECT 'B1', 'clue', 'noun', '/kluː/', 'manh mối' FROM DUAL
UNION ALL SELECT 'B1', 'coal', 'noun', '/kəʊl/', 'than đá' FROM DUAL
UNION ALL SELECT 'B1', 'coin', 'noun', '/kɔɪn/', 'đồng xu' FROM DUAL
UNION ALL SELECT 'B1', 'collection', 'noun', '/kəˈlekʃn/', 'bộ sưu tập' FROM DUAL
UNION ALL SELECT 'B1', 'coloured', 'adjective', '/ˈkʌləd/', 'có màu' FROM DUAL
UNION ALL SELECT 'B1', 'combine', 'verb', '/kəmˈbaɪn/', 'kết hợp' FROM DUAL
UNION ALL SELECT 'B1', 'comment', 'noun', '/ˈkɒment/', 'lời bình luận' FROM DUAL
UNION ALL SELECT 'B1', 'commercial', 'adjective', '/kəˈmɜːʃl/', 'thuộc thương mại' FROM DUAL
UNION ALL SELECT 'B1', 'commit', 'verb', '/kəˈmɪt/', 'phạm (tội), cam kết' FROM DUAL
UNION ALL SELECT 'B1', 'communication', 'noun', '/kəˌmjuːnɪˈkeɪʃn/', 'sự giao tiếp' FROM DUAL
UNION ALL SELECT 'B1', 'comparison', 'noun', '/kəmˈpærɪsn/', 'sự so sánh' FROM DUAL
UNION ALL SELECT 'B1', 'compete', 'verb', '/kəmˈpiːt/', 'cạnh tranh, thi đấu' FROM DUAL
UNION ALL SELECT 'B1', 'competitive', 'adjective', '/kəmˈpetətɪv/', 'cạnh tranh' FROM DUAL
UNION ALL SELECT 'B1', 'competitor', 'noun', '/kəmˈpetɪtə(r)/', 'đối thủ cạnh tranh' FROM DUAL
UNION ALL SELECT 'B1', 'complaint', 'noun', '/kəmˈpleɪnt/', 'lời phàn nàn' FROM DUAL
UNION ALL SELECT 'B1', 'complex', 'adjective', '/ˈkɒmpleks/', 'phức tạp' FROM DUAL
UNION ALL SELECT 'B1', 'concentrate', 'verb', '/ˈkɒnsntreɪt/', 'tập trung' FROM DUAL
UNION ALL SELECT 'B1', 'conclude', 'verb', '/kənˈkluːd/', 'kết luận' FROM DUAL
UNION ALL SELECT 'B1', 'conclusion', 'noun', '/kənˈkluːʒn/', 'kết luận' FROM DUAL
UNION ALL SELECT 'B1', 'confidence', 'noun', '/ˈkɒnfɪdəns/', 'sự tự tin' FROM DUAL
UNION ALL SELECT 'B1', 'confident', 'adjective', '/ˈkɒnfɪdənt/', 'tự tin' FROM DUAL
UNION ALL SELECT 'B1', 'confirm', 'verb', '/kənˈfɜːm/', 'xác nhận' FROM DUAL
UNION ALL SELECT 'B1', 'confuse', 'verb', '/kənˈfjuːz/', 'làm bối rối, nhầm lẫn' FROM DUAL
UNION ALL SELECT 'B1', 'confused', 'adjective', '/kənˈfjuːzd/', 'bối rối' FROM DUAL
UNION ALL SELECT 'B1', 'connection', 'noun', '/kəˈnekʃn/', 'sự kết nối, mối liên hệ' FROM DUAL
UNION ALL SELECT 'B1', 'consequence', 'noun', '/ˈkɒnsɪkwəns/', 'hậu quả' FROM DUAL
UNION ALL SELECT 'B1', 'consist', 'verb', '/kənˈsɪst/', 'bao gồm' FROM DUAL
UNION ALL SELECT 'B1', 'consume', 'verb', '/kənˈsjuːm/', 'tiêu thụ' FROM DUAL
UNION ALL SELECT 'B1', 'consumer', 'noun', '/kənˈsjuːmə(r)/', 'người tiêu dùng' FROM DUAL
UNION ALL SELECT 'B1', 'contact', 'verb', '/ˈkɒntækt/', 'liên lạc' FROM DUAL
UNION ALL SELECT 'B1', 'container', 'noun', '/kənˈteɪnə(r)/', 'thùng chứa, hộp đựng' FROM DUAL
UNION ALL SELECT 'B1', 'content', 'noun', '/ˈkɒntent/', 'nội dung' FROM DUAL
UNION ALL SELECT 'B1', 'continuous', 'adjective', '/kənˈtɪnjuəs/', 'liên tục' FROM DUAL
UNION ALL SELECT 'B1', 'contrast', 'noun', '/ˈkɒntrɑːst/', 'sự tương phản' FROM DUAL
UNION ALL SELECT 'B1', 'convenient', 'adjective', '/kənˈviːniənt/', 'thuận tiện' FROM DUAL
UNION ALL SELECT 'B1', 'convince', 'verb', '/kənˈvɪns/', 'thuyết phục' FROM DUAL
UNION ALL SELECT 'B1', 'cool', 'verb', '/kuːl/', 'làm mát, nguội đi' FROM DUAL
UNION ALL SELECT 'B1', 'costume', 'noun', '/ˈkɒstjuːm/', 'trang phục (biểu diễn)' FROM DUAL
UNION ALL SELECT 'B1', 'cottage', 'noun', '/ˈkɒtɪdʒ/', 'nhà tranh, nhà nhỏ ở quê' FROM DUAL
UNION ALL SELECT 'B1', 'cotton', 'noun', '/ˈkɒtn/', 'bông, vải bông' FROM DUAL
UNION ALL SELECT 'B1', 'countryside', 'noun', '/ˈkʌntrisaɪd/', 'vùng nông thôn' FROM DUAL
UNION ALL SELECT 'B1', 'court', 'noun', '/kɔːt/', 'tòa án, sân (thể thao)' FROM DUAL
UNION ALL SELECT 'B1', 'cover', 'noun', '/ˈkʌvə(r)/', 'bìa, vỏ bọc' FROM DUAL
UNION ALL SELECT 'B1', 'covered', 'adjective', '/ˈkʌvəd/', 'được bao phủ' FROM DUAL
UNION ALL SELECT 'B1', 'creature', 'noun', '/ˈkriːtʃə(r)/', 'sinh vật' FROM DUAL
UNION ALL SELECT 'B1', 'criminal', 'noun', '/ˈkrɪmɪnl/', 'tội phạm' FROM DUAL
UNION ALL SELECT 'B1', 'cruel', 'adjective', '/ˈkruːəl/', 'tàn nhẫn' FROM DUAL
UNION ALL SELECT 'B1', 'cultural', 'adjective', '/ˈkʌltʃərəl/', 'thuộc văn hóa' FROM DUAL
UNION ALL SELECT 'B1', 'currency', 'noun', '/ˈkʌrənsi/', 'tiền tệ' FROM DUAL
UNION ALL SELECT 'B1', 'current', 'adjective', '/ˈkʌrənt/', 'hiện tại' FROM DUAL
UNION ALL SELECT 'B1', 'currently', 'adverb', '/ˈkʌrəntli/', 'hiện nay' FROM DUAL
UNION ALL SELECT 'B1', 'curtain', 'noun', '/ˈkɜːtn/', 'rèm cửa' FROM DUAL
UNION ALL SELECT 'B1', 'custom', 'noun', '/ˈkʌstəm/', 'phong tục' FROM DUAL
UNION ALL SELECT 'B1', 'cut', 'noun', '/kʌt/', 'vết cắt, sự cắt giảm' FROM DUAL
UNION ALL SELECT 'B1', 'daily', 'adjective', '/ˈdeɪli/', 'hằng ngày' FROM DUAL
UNION ALL SELECT 'B1', 'damage', 'noun', '/ˈdæmɪdʒ/', 'sự thiệt hại' FROM DUAL
UNION ALL SELECT 'B1', 'deal', 'noun', '/diːl/', 'thỏa thuận, giao dịch' FROM DUAL
UNION ALL SELECT 'B1', 'decade', 'noun', '/ˈdekeɪd/', 'thập kỷ' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B1', 'decorate', 'verb', '/ˈdekəreɪt/', 'trang trí' FROM DUAL
UNION ALL SELECT 'B1', 'deep', 'adverb', '/diːp/', 'sâu' FROM DUAL
UNION ALL SELECT 'B1', 'define', 'verb', '/dɪˈfaɪn/', 'định nghĩa' FROM DUAL
UNION ALL SELECT 'B1', 'definite', 'adjective', '/ˈdefɪnət/', 'rõ ràng, chắc chắn' FROM DUAL
UNION ALL SELECT 'B1', 'definition', 'noun', '/ˌdefɪˈnɪʃn/', 'định nghĩa' FROM DUAL
UNION ALL SELECT 'B1', 'delay', 'noun', '/dɪˈleɪ/', 'sự chậm trễ' FROM DUAL
UNION ALL SELECT 'B1', 'deliver', 'verb', '/dɪˈlɪvə(r)/', 'giao hàng' FROM DUAL
UNION ALL SELECT 'B1', 'demand', 'noun', '/dɪˈmɑːnd/', 'nhu cầu, yêu cầu' FROM DUAL
UNION ALL SELECT 'B1', 'departure', 'noun', '/dɪˈpɑːtʃə(r)/', 'sự khởi hành' FROM DUAL
UNION ALL SELECT 'B1', 'despite', 'preposition', '/dɪˈspaɪt/', 'mặc dù' FROM DUAL
UNION ALL SELECT 'B1', 'destination', 'noun', '/ˌdestɪˈneɪʃn/', 'điểm đến' FROM DUAL
UNION ALL SELECT 'B1', 'determine', 'verb', '/dɪˈtɜːmɪn/', 'xác định, quyết định' FROM DUAL
UNION ALL SELECT 'B1', 'determined', 'adjective', '/dɪˈtɜːmɪnd/', 'quyết tâm' FROM DUAL
UNION ALL SELECT 'B1', 'development', 'noun', '/dɪˈveləpmənt/', 'sự phát triển' FROM DUAL
UNION ALL SELECT 'B1', 'diagram', 'noun', '/ˈdaɪəɡræm/', 'biểu đồ, sơ đồ' FROM DUAL
UNION ALL SELECT 'B1', 'diamond', 'noun', '/ˈdaɪəmənd/', 'kim cương' FROM DUAL
UNION ALL SELECT 'B1', 'difficulty', 'noun', '/ˈdɪfɪkəlti/', 'sự khó khăn' FROM DUAL
UNION ALL SELECT 'B1', 'direct', 'adjective', '/dəˈrekt/', 'trực tiếp' FROM DUAL
UNION ALL SELECT 'B1', 'directly', 'adverb', '/dəˈrektli/', 'một cách trực tiếp' FROM DUAL
UNION ALL SELECT 'B1', 'dirt', 'noun', '/dɜːt/', 'bụi bẩn, đất' FROM DUAL
UNION ALL SELECT 'B1', 'disadvantage', 'noun', '/ˌdɪsədˈvɑːntɪdʒ/', 'bất lợi, nhược điểm' FROM DUAL
UNION ALL SELECT 'B1', 'disappointed', 'adjective', '/ˌdɪsəˈpɔɪntɪd/', 'thất vọng' FROM DUAL
UNION ALL SELECT 'B1', 'disappointing', 'adjective', '/ˌdɪsəˈpɔɪntɪŋ/', 'gây thất vọng' FROM DUAL
UNION ALL SELECT 'B1', 'discount', 'noun', '/ˈdɪskaʊnt/', 'sự giảm giá' FROM DUAL
UNION ALL SELECT 'B1', 'dislike', 'verb', '/dɪsˈlaɪk/', 'không thích' FROM DUAL
UNION ALL SELECT 'B1', 'display', 'noun', '/dɪˈspleɪ/', 'sự trưng bày' FROM DUAL
UNION ALL SELECT 'B1', 'dive', 'verb', '/daɪv/', 'lặn, nhảy xuống nước' FROM DUAL
UNION ALL SELECT 'B1', 'divide', 'verb', '/dɪˈvaɪd/', 'chia' FROM DUAL
UNION ALL SELECT 'B1', 'documentary', 'noun', '/ˌdɒkjuˈmentri/', 'phim tài liệu' FROM DUAL
UNION ALL SELECT 'B1', 'donate', 'verb', '/dəʊˈneɪt/', 'quyên góp' FROM DUAL
UNION ALL SELECT 'B1', 'doubt', 'noun', '/daʊt/', 'sự nghi ngờ' FROM DUAL
UNION ALL SELECT 'B1', 'dramatic', 'adjective', '/drəˈmætɪk/', 'kịch tính, đột ngột' FROM DUAL
UNION ALL SELECT 'B1', 'dressed', 'adjective', '/drest/', 'đã mặc quần áo' FROM DUAL
UNION ALL SELECT 'B1', 'drop', 'noun', '/drɒp/', 'giọt, sự sụt giảm' FROM DUAL
UNION ALL SELECT 'B1', 'drum', 'noun', '/drʌm/', 'cái trống' FROM DUAL
UNION ALL SELECT 'B1', 'drunk', 'adjective', '/drʌŋk/', 'say rượu' FROM DUAL
UNION ALL SELECT 'B1', 'due', 'adjective', '/djuː/', 'đến hạn, dự kiến' FROM DUAL
UNION ALL SELECT 'B1', 'dust', 'noun', '/dʌst/', 'bụi' FROM DUAL
UNION ALL SELECT 'B1', 'duty', 'noun', '/ˈdjuːti/', 'nghĩa vụ, bổn phận' FROM DUAL
UNION ALL SELECT 'B1', 'earthquake', 'noun', '/ˈɜːθkweɪk/', 'động đất' FROM DUAL
UNION ALL SELECT 'B1', 'eastern', 'adjective', '/ˈiːstən/', 'thuộc phía đông' FROM DUAL
UNION ALL SELECT 'B1', 'economic', 'adjective', '/ˌiːkəˈnɒmɪk/', 'thuộc kinh tế' FROM DUAL
UNION ALL SELECT 'B1', 'economy', 'noun', '/ɪˈkɒnəmi/', 'nền kinh tế' FROM DUAL
UNION ALL SELECT 'B1', 'edge', 'noun', '/edʒ/', 'mép, cạnh' FROM DUAL
UNION ALL SELECT 'B1', 'edit', 'verb', '/ˈedɪt/', 'chỉnh sửa, biên tập' FROM DUAL
UNION ALL SELECT 'B1', 'editor', 'noun', '/ˈedɪtə(r)/', 'biên tập viên' FROM DUAL
UNION ALL SELECT 'B1', 'educate', 'verb', '/ˈedʒukeɪt/', 'giáo dục' FROM DUAL
UNION ALL SELECT 'B1', 'educated', 'adjective', '/ˈedʒukeɪtɪd/', 'có học thức' FROM DUAL
UNION ALL SELECT 'B1', 'educational', 'adjective', '/ˌedʒuˈkeɪʃənl/', 'mang tính giáo dục' FROM DUAL
UNION ALL SELECT 'B1', 'effective', 'adjective', '/ɪˈfektɪv/', 'hiệu quả' FROM DUAL
UNION ALL SELECT 'B1', 'effectively', 'adverb', '/ɪˈfektɪvli/', 'một cách hiệu quả' FROM DUAL
UNION ALL SELECT 'B1', 'effort', 'noun', '/ˈefət/', 'nỗ lực' FROM DUAL
UNION ALL SELECT 'B1', 'elect', 'verb', '/ɪˈlekt/', 'bầu chọn' FROM DUAL
UNION ALL SELECT 'B1', 'election', 'noun', '/ɪˈlekʃn/', 'cuộc bầu cử' FROM DUAL
UNION ALL SELECT 'B1', 'electrical', 'adjective', '/ɪˈlektrɪkl/', 'thuộc về điện' FROM DUAL
UNION ALL SELECT 'B1', 'element', 'noun', '/ˈelɪmənt/', 'yếu tố, nguyên tố' FROM DUAL
UNION ALL SELECT 'B1', 'embarrassed', 'adjective', '/ɪmˈbærəst/', 'xấu hổ, ngượng' FROM DUAL
UNION ALL SELECT 'B1', 'embarrassing', 'adjective', '/ɪmˈbærəsɪŋ/', 'gây xấu hổ' FROM DUAL
UNION ALL SELECT 'B1', 'emergency', 'noun', '/iˈmɜːdʒənsi/', 'tình trạng khẩn cấp' FROM DUAL
UNION ALL SELECT 'B1', 'emotion', 'noun', '/ɪˈməʊʃn/', 'cảm xúc' FROM DUAL
UNION ALL SELECT 'B1', 'employ', 'verb', '/ɪmˈplɔɪ/', 'thuê, tuyển dụng' FROM DUAL
UNION ALL SELECT 'B1', 'employment', 'noun', '/ɪmˈplɔɪmənt/', 'việc làm' FROM DUAL
UNION ALL SELECT 'B1', 'empty', 'verb', '/ˈempti/', 'làm rỗng, đổ hết' FROM DUAL
UNION ALL SELECT 'B1', 'encourage', 'verb', '/ɪnˈkʌrɪdʒ/', 'khuyến khích, động viên' FROM DUAL
UNION ALL SELECT 'B1', 'enemy', 'noun', '/ˈenəmi/', 'kẻ thù' FROM DUAL
UNION ALL SELECT 'B1', 'engaged', 'adjective', '/ɪnˈɡeɪdʒd/', 'đã đính hôn, bận' FROM DUAL
UNION ALL SELECT 'B1', 'engineering', 'noun', '/ˌendʒɪˈnɪərɪŋ/', 'ngành kỹ thuật' FROM DUAL
UNION ALL SELECT 'B1', 'entertain', 'verb', '/ˌentəˈteɪn/', 'giải trí, tiếp đãi' FROM DUAL
UNION ALL SELECT 'B1', 'entertainment', 'noun', '/ˌentəˈteɪnmənt/', 'sự giải trí' FROM DUAL
UNION ALL SELECT 'B1', 'entrance', 'noun', '/ˈentrəns/', 'lối vào' FROM DUAL
UNION ALL SELECT 'B1', 'entry', 'noun', '/ˈentri/', 'sự đi vào, mục (từ điển)' FROM DUAL
UNION ALL SELECT 'B1', 'environmental', 'adjective', '/ɪnˌvaɪrənˈmentl/', 'thuộc môi trường' FROM DUAL
UNION ALL SELECT 'B1', 'episode', 'noun', '/ˈepɪsəʊd/', 'tập (phim)' FROM DUAL
UNION ALL SELECT 'B1', 'equal', 'adjective', '/ˈiːkwəl/', 'bằng nhau, bình đẳng' FROM DUAL
UNION ALL SELECT 'B1', 'equally', 'adverb', '/ˈiːkwəli/', 'đều nhau, như nhau' FROM DUAL
UNION ALL SELECT 'B1', 'escape', 'verb', '/ɪˈskeɪp/', 'trốn thoát' FROM DUAL
UNION ALL SELECT 'B1', 'essential', 'adjective', '/ɪˈsenʃl/', 'thiết yếu, cần thiết' FROM DUAL
UNION ALL SELECT 'B1', 'eventually', 'adverb', '/ɪˈventʃuəli/', 'cuối cùng' FROM DUAL
UNION ALL SELECT 'B1', 'evil', 'adjective', '/ˈiːvl/', 'xấu xa, độc ác' FROM DUAL
UNION ALL SELECT 'B1', 'examination', 'noun', '/ɪɡˌzæmɪˈneɪʃn/', 'kỳ thi, sự kiểm tra' FROM DUAL
UNION ALL SELECT 'B1', 'examine', 'verb', '/ɪɡˈzæmɪn/', 'kiểm tra, khám xét' FROM DUAL
UNION ALL SELECT 'B1', 'exchange', 'noun', '/ɪksˈtʃeɪndʒ/', 'sự trao đổi' FROM DUAL
UNION ALL SELECT 'B1', 'excitement', 'noun', '/ɪkˈsaɪtmənt/', 'sự phấn khích' FROM DUAL
UNION ALL SELECT 'B1', 'exhibition', 'noun', '/ˌeksɪˈbɪʃn/', 'cuộc triển lãm' FROM DUAL
UNION ALL SELECT 'B1', 'expand', 'verb', '/ɪkˈspænd/', 'mở rộng' FROM DUAL
UNION ALL SELECT 'B1', 'expected', 'adjective', '/ɪkˈspektɪd/', 'được mong đợi' FROM DUAL
UNION ALL SELECT 'B1', 'expedition', 'noun', '/ˌekspəˈdɪʃn/', 'cuộc thám hiểm' FROM DUAL
UNION ALL SELECT 'B1', 'experienced', 'adjective', '/ɪkˈspɪəriənst/', 'có kinh nghiệm' FROM DUAL
UNION ALL SELECT 'B1', 'experiment', 'verb', '/ɪkˈsperɪment/', 'thử nghiệm' FROM DUAL
UNION ALL SELECT 'B1', 'explode', 'verb', '/ɪkˈspləʊd/', 'nổ' FROM DUAL
UNION ALL SELECT 'B1', 'explore', 'verb', '/ɪkˈsplɔː(r)/', 'khám phá' FROM DUAL
UNION ALL SELECT 'B1', 'explosion', 'noun', '/ɪkˈspləʊʒn/', 'vụ nổ' FROM DUAL
UNION ALL SELECT 'B1', 'export', 'noun', '/ˈekspɔːt/', 'hàng xuất khẩu, sự xuất khẩu' FROM DUAL
UNION ALL SELECT 'B1', 'face', 'verb', '/feɪs/', 'đối mặt' FROM DUAL
UNION ALL SELECT 'B1', 'facility', 'noun', '/fəˈsɪləti/', 'cơ sở vật chất, tiện nghi' FROM DUAL
UNION ALL SELECT 'B1', 'factor', 'noun', '/ˈfæktə(r)/', 'yếu tố, nhân tố' FROM DUAL
UNION ALL SELECT 'B1', 'fairly', 'adverb', '/ˈfeəli/', 'khá, công bằng' FROM DUAL
UNION ALL SELECT 'B1', 'fall', 'noun', '/fɔːl/', 'sự rơi, sự sụt giảm' FROM DUAL
UNION ALL SELECT 'B1', 'fashionable', 'adjective', '/ˈfæʃnəbl/', 'hợp thời trang' FROM DUAL
UNION ALL SELECT 'B1', 'fault', 'noun', '/fɔːlt/', 'lỗi' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B1', 'fear', 'noun', '/fɪə(r)/', 'nỗi sợ' FROM DUAL
UNION ALL SELECT 'B1', 'feature', 'noun', '/ˈfiːtʃə(r)/', 'đặc điểm, tính năng' FROM DUAL
UNION ALL SELECT 'B1', 'fee', 'noun', '/fiː/', 'phí, lệ phí' FROM DUAL
UNION ALL SELECT 'B1', 'female', 'adjective', '/ˈfiːmeɪl/', 'thuộc giống cái, nữ' FROM DUAL
UNION ALL SELECT 'B1', 'file', 'noun', '/faɪl/', 'tệp, hồ sơ' FROM DUAL
UNION ALL SELECT 'B1', 'financial', 'adjective', '/faɪˈnænʃl/', 'thuộc tài chính' FROM DUAL
UNION ALL SELECT 'B1', 'fine', 'noun', '/faɪn/', 'tiền phạt' FROM DUAL
UNION ALL SELECT 'B1', 'firm', 'noun', '/fɜːm/', 'công ty, hãng' FROM DUAL
UNION ALL SELECT 'B1', 'flag', 'noun', '/flæɡ/', 'lá cờ' FROM DUAL
UNION ALL SELECT 'B1', 'flood', 'noun', '/flʌd/', 'lũ lụt' FROM DUAL
UNION ALL SELECT 'B1', 'flour', 'noun', '/ˈflaʊə(r)/', 'bột mì' FROM DUAL
UNION ALL SELECT 'B1', 'flow', 'verb', '/fləʊ/', 'chảy' FROM DUAL
UNION ALL SELECT 'B1', 'fold', 'verb', '/fəʊld/', 'gấp' FROM DUAL
UNION ALL SELECT 'B1', 'following', 'adjective', '/ˈfɒləʊɪŋ/', 'tiếp theo, sau đây' FROM DUAL
UNION ALL SELECT 'B1', 'force', 'noun', '/fɔːs/', 'sức mạnh, lực lượng' FROM DUAL
UNION ALL SELECT 'B1', 'forever', 'adverb', '/fərˈevə(r)/', 'mãi mãi' FROM DUAL
UNION ALL SELECT 'B1', 'fortune', 'noun', '/ˈfɔːtʃuːn/', 'vận may, gia tài' FROM DUAL
UNION ALL SELECT 'B1', 'frame', 'noun', '/freɪm/', 'khung' FROM DUAL
UNION ALL SELECT 'B1', 'freedom', 'noun', '/ˈfriːdəm/', 'sự tự do' FROM DUAL
UNION ALL SELECT 'B1', 'freeze', 'verb', '/friːz/', 'đóng băng' FROM DUAL
UNION ALL SELECT 'B1', 'frequently', 'adverb', '/ˈfriːkwəntli/', 'thường xuyên' FROM DUAL
UNION ALL SELECT 'B1', 'friendship', 'noun', '/ˈfrendʃɪp/', 'tình bạn' FROM DUAL
UNION ALL SELECT 'B1', 'frighten', 'verb', '/ˈfraɪtn/', 'làm sợ hãi' FROM DUAL
UNION ALL SELECT 'B1', 'frightened', 'adjective', '/ˈfraɪtnd/', 'sợ hãi' FROM DUAL
UNION ALL SELECT 'B1', 'frozen', 'adjective', '/ˈfrəʊzn/', 'đông lạnh' FROM DUAL
UNION ALL SELECT 'B1', 'fry', 'verb', '/fraɪ/', 'chiên, rán' FROM DUAL
UNION ALL SELECT 'B1', 'fuel', 'noun', '/ˈfjuːəl/', 'nhiên liệu' FROM DUAL
UNION ALL SELECT 'B1', 'function', 'noun', '/ˈfʌŋkʃn/', 'chức năng' FROM DUAL
UNION ALL SELECT 'B1', 'fur', 'noun', '/fɜː(r)/', 'lông thú' FROM DUAL
UNION ALL SELECT 'B1', 'further', 'adverb', '/ˈfɜːðə(r)/', 'xa hơn, thêm nữa' FROM DUAL
UNION ALL SELECT 'B1', 'garage', 'noun', '/ˈɡærɑːʒ/', 'nhà để xe, xưởng sửa xe' FROM DUAL
UNION ALL SELECT 'B1', 'gather', 'verb', '/ˈɡæðə(r)/', 'tụ tập, thu thập' FROM DUAL
UNION ALL SELECT 'B1', 'generally', 'adverb', '/ˈdʒenrəli/', 'nói chung' FROM DUAL
UNION ALL SELECT 'B1', 'generation', 'noun', '/ˌdʒenəˈreɪʃn/', 'thế hệ' FROM DUAL
UNION ALL SELECT 'B1', 'generous', 'adjective', '/ˈdʒenərəs/', 'hào phóng' FROM DUAL
UNION ALL SELECT 'B1', 'gentle', 'adjective', '/ˈdʒentl/', 'nhẹ nhàng, hiền lành' FROM DUAL
UNION ALL SELECT 'B1', 'gentleman', 'noun', '/ˈdʒentlmən/', 'quý ông' FROM DUAL
UNION ALL SELECT 'B1', 'ghost', 'noun', '/ɡəʊst/', 'con ma' FROM DUAL
UNION ALL SELECT 'B1', 'giant', 'adjective', '/ˈdʒaɪənt/', 'khổng lồ' FROM DUAL
UNION ALL SELECT 'B1', 'glad', 'adjective', '/ɡlæd/', 'vui mừng' FROM DUAL
UNION ALL SELECT 'B1', 'global', 'adjective', '/ˈɡləʊbl/', 'toàn cầu' FROM DUAL
UNION ALL SELECT 'B1', 'glove', 'noun', '/ɡlʌv/', 'găng tay' FROM DUAL
UNION ALL SELECT 'B1', 'goods', 'noun', '/ɡʊdz/', 'hàng hóa' FROM DUAL
UNION ALL SELECT 'B1', 'grade', 'noun', '/ɡreɪd/', 'điểm số, cấp lớp' FROM DUAL
UNION ALL SELECT 'B1', 'graduate', 'verb', '/ˈɡrædʒueɪt/', 'tốt nghiệp' FROM DUAL
UNION ALL SELECT 'B1', 'grain', 'noun', '/ɡreɪn/', 'hạt ngũ cốc' FROM DUAL
UNION ALL SELECT 'B1', 'grateful', 'adjective', '/ˈɡreɪtfl/', 'biết ơn' FROM DUAL
UNION ALL SELECT 'B1', 'growth', 'noun', '/ɡrəʊθ/', 'sự tăng trưởng' FROM DUAL
UNION ALL SELECT 'B1', 'guard', 'noun', '/ɡɑːd/', 'người bảo vệ' FROM DUAL
UNION ALL SELECT 'B1', 'guide', 'verb', '/ɡaɪd/', 'hướng dẫn' FROM DUAL
UNION ALL SELECT 'B1', 'guilty', 'adjective', '/ˈɡɪlti/', 'có tội, cảm thấy tội lỗi' FROM DUAL
UNION ALL SELECT 'B1', 'hand', 'verb', '/hænd/', 'đưa, trao' FROM DUAL
UNION ALL SELECT 'B1', 'hang', 'verb', '/hæŋ/', 'treo' FROM DUAL
UNION ALL SELECT 'B1', 'happiness', 'noun', '/ˈhæpinəs/', 'niềm hạnh phúc' FROM DUAL
UNION ALL SELECT 'B1', 'hardly', 'adverb', '/ˈhɑːdli/', 'hầu như không' FROM DUAL
UNION ALL SELECT 'B1', 'hate', 'noun', '/heɪt/', 'sự căm ghét' FROM DUAL
UNION ALL SELECT 'B1', 'head', 'verb', '/hed/', 'đi về phía, dẫn đầu' FROM DUAL
UNION ALL SELECT 'B1', 'headline', 'noun', '/ˈhedlaɪn/', 'tiêu đề báo' FROM DUAL
UNION ALL SELECT 'B1', 'heating', 'noun', '/ˈhiːtɪŋ/', 'hệ thống sưởi' FROM DUAL
UNION ALL SELECT 'B1', 'heavily', 'adverb', '/ˈhevɪli/', 'nặng nề, nhiều' FROM DUAL
UNION ALL SELECT 'B1', 'helicopter', 'noun', '/ˈhelɪkɒptə(r)/', 'máy bay trực thăng' FROM DUAL
UNION ALL SELECT 'B1', 'highlight', 'verb', '/ˈhaɪlaɪt/', 'làm nổi bật' FROM DUAL
UNION ALL SELECT 'B1', 'highly', 'adverb', '/ˈhaɪli/', 'rất, ở mức cao' FROM DUAL
UNION ALL SELECT 'B1', 'hire', 'verb', '/ˈhaɪə(r)/', 'thuê' FROM DUAL
UNION ALL SELECT 'B1', 'historic', 'adjective', '/hɪˈstɒrɪk/', 'mang tính lịch sử, quan trọng' FROM DUAL
UNION ALL SELECT 'B1', 'historical', 'adjective', '/hɪˈstɒrɪkl/', 'thuộc về lịch sử' FROM DUAL
UNION ALL SELECT 'B1', 'honest', 'adjective', '/ˈɒnɪst/', 'trung thực' FROM DUAL
UNION ALL SELECT 'B1', 'horrible', 'adjective', '/ˈhɒrəbl/', 'kinh khủng' FROM DUAL
UNION ALL SELECT 'B1', 'horror', 'noun', '/ˈhɒrə(r)/', 'sự kinh hoàng, phim kinh dị' FROM DUAL
UNION ALL SELECT 'B1', 'host', 'noun', '/həʊst/', 'chủ nhà, người dẫn chương trình' FROM DUAL
UNION ALL SELECT 'B1', 'humour', 'noun', '/ˈhjuːmə(r)/', 'sự hài hước' FROM DUAL
UNION ALL SELECT 'B1', 'hunt', 'verb', '/hʌnt/', 'săn bắt' FROM DUAL
UNION ALL SELECT 'B1', 'hurricane', 'noun', '/ˈhʌrɪkən/', 'bão lớn, cuồng phong' FROM DUAL
UNION ALL SELECT 'B1', 'hurry', 'noun', '/ˈhʌri/', 'sự vội vàng' FROM DUAL
UNION ALL SELECT 'B1', 'identity', 'noun', '/aɪˈdentəti/', 'danh tính, bản sắc' FROM DUAL
UNION ALL SELECT 'B1', 'ignore', 'verb', '/ɪɡˈnɔː(r)/', 'phớt lờ' FROM DUAL
UNION ALL SELECT 'B1', 'illegal', 'adjective', '/ɪˈliːɡl/', 'bất hợp pháp' FROM DUAL
UNION ALL SELECT 'B1', 'imaginary', 'adjective', '/ɪˈmædʒɪnəri/', 'tưởng tượng' FROM DUAL
UNION ALL SELECT 'B1', 'immediate', 'adjective', '/ɪˈmiːdiət/', 'ngay lập tức' FROM DUAL
UNION ALL SELECT 'B1', 'immigrant', 'noun', '/ˈɪmɪɡrənt/', 'người nhập cư' FROM DUAL
UNION ALL SELECT 'B1', 'impact', 'noun', '/ˈɪmpækt/', 'tác động, ảnh hưởng' FROM DUAL
UNION ALL SELECT 'B1', 'import', 'noun', '/ˈɪmpɔːt/', 'hàng nhập khẩu, sự nhập khẩu' FROM DUAL
UNION ALL SELECT 'B1', 'importance', 'noun', '/ɪmˈpɔːtns/', 'tầm quan trọng' FROM DUAL
UNION ALL SELECT 'B1', 'impression', 'noun', '/ɪmˈpreʃn/', 'ấn tượng' FROM DUAL
UNION ALL SELECT 'B1', 'impressive', 'adjective', '/ɪmˈpresɪv/', 'gây ấn tượng' FROM DUAL
UNION ALL SELECT 'B1', 'improvement', 'noun', '/ɪmˈpruːvmənt/', 'sự cải thiện' FROM DUAL
UNION ALL SELECT 'B1', 'income', 'noun', '/ˈɪnkʌm/', 'thu nhập' FROM DUAL
UNION ALL SELECT 'B1', 'incredibly', 'adverb', '/ɪnˈkredəbli/', 'đáng kinh ngạc, cực kỳ' FROM DUAL
UNION ALL SELECT 'B1', 'indeed', 'adverb', '/ɪnˈdiːd/', 'thật vậy' FROM DUAL
UNION ALL SELECT 'B1', 'indicate', 'verb', '/ˈɪndɪkeɪt/', 'chỉ ra, cho thấy' FROM DUAL
UNION ALL SELECT 'B1', 'indirect', 'adjective', '/ˌɪndəˈrekt/', 'gián tiếp' FROM DUAL
UNION ALL SELECT 'B1', 'indoor', 'adjective', '/ˈɪndɔː(r)/', 'trong nhà' FROM DUAL
UNION ALL SELECT 'B1', 'indoors', 'adverb', '/ˌɪnˈdɔːz/', 'ở trong nhà' FROM DUAL
UNION ALL SELECT 'B1', 'influence', 'noun', '/ˈɪnfluəns/', 'sự ảnh hưởng' FROM DUAL
UNION ALL SELECT 'B1', 'inform', 'verb', '/ɪnˈfɔːm/', 'thông báo, báo tin' FROM DUAL
UNION ALL SELECT 'B1', 'ingredient', 'noun', '/ɪnˈɡriːdiənt/', 'nguyên liệu, thành phần' FROM DUAL
UNION ALL SELECT 'B1', 'injure', 'verb', '/ˈɪndʒə(r)/', 'làm bị thương' FROM DUAL
UNION ALL SELECT 'B1', 'injured', 'adjective', '/ˈɪndʒəd/', 'bị thương' FROM DUAL
UNION ALL SELECT 'B1', 'innocent', 'adjective', '/ˈɪnəsnt/', 'vô tội, ngây thơ' FROM DUAL
UNION ALL SELECT 'B1', 'install', 'verb', '/ɪnˈstɔːl/', 'cài đặt, lắp đặt' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B1', 'intelligence', 'noun', '/ɪnˈtelɪdʒəns/', 'trí thông minh' FROM DUAL
UNION ALL SELECT 'B1', 'intend', 'verb', '/ɪnˈtend/', 'dự định' FROM DUAL
UNION ALL SELECT 'B1', 'intention', 'noun', '/ɪnˈtenʃn/', 'ý định' FROM DUAL
UNION ALL SELECT 'B1', 'invest', 'verb', '/ɪnˈvest/', 'đầu tư' FROM DUAL
UNION ALL SELECT 'B1', 'investigate', 'verb', '/ɪnˈvestɪɡeɪt/', 'điều tra' FROM DUAL
UNION ALL SELECT 'B1', 'involved', 'adjective', '/ɪnˈvɒlvd/', 'có liên quan, tham gia' FROM DUAL
UNION ALL SELECT 'B1', 'iron', 'noun', '/ˈaɪən/', 'sắt, bàn là' FROM DUAL
UNION ALL SELECT 'B1', 'issue', 'noun', '/ˈɪʃuː/', 'vấn đề' FROM DUAL
UNION ALL SELECT 'B1', 'journal', 'noun', '/ˈdʒɜːnl/', 'tạp chí, nhật ký' FROM DUAL
UNION ALL SELECT 'B1', 'judge', 'noun', '/dʒʌdʒ/', 'thẩm phán, giám khảo' FROM DUAL
UNION ALL SELECT 'B1', 'keen', 'adjective', '/kiːn/', 'hăng hái, say mê' FROM DUAL
UNION ALL SELECT 'B1', 'key', 'adjective', '/kiː/', 'then chốt, quan trọng' FROM DUAL
UNION ALL SELECT 'B1', 'keyboard', 'noun', '/ˈkiːbɔːd/', 'bàn phím' FROM DUAL
UNION ALL SELECT 'B1', 'kick', 'noun', '/kɪk/', 'cú đá' FROM DUAL
UNION ALL SELECT 'B1', 'killing', 'noun', '/ˈkɪlɪŋ/', 'vụ giết người' FROM DUAL
UNION ALL SELECT 'B1', 'kingdom', 'noun', '/ˈkɪŋdəm/', 'vương quốc' FROM DUAL
UNION ALL SELECT 'B1', 'kiss', 'noun', '/kɪs/', 'nụ hôn' FROM DUAL
UNION ALL SELECT 'B1', 'label', 'noun', '/ˈleɪbl/', 'nhãn' FROM DUAL
UNION ALL SELECT 'B1', 'laboratory', 'noun', '/ləˈbɒrətri/', 'phòng thí nghiệm' FROM DUAL
UNION ALL SELECT 'B1', 'lack', 'noun', '/læk/', 'sự thiếu' FROM DUAL
UNION ALL SELECT 'B1', 'latest', 'adjective', '/ˈleɪtɪst/', 'mới nhất' FROM DUAL
UNION ALL SELECT 'B1', 'lay', 'verb', '/leɪ/', 'đặt, để' FROM DUAL
UNION ALL SELECT 'B1', 'layer', 'noun', '/ˈleɪə(r)/', 'lớp, tầng' FROM DUAL
UNION ALL SELECT 'B1', 'lead', 'noun', '/liːd/', 'sự dẫn đầu, vai chính' FROM DUAL
UNION ALL SELECT 'B1', 'leading', 'adjective', '/ˈliːdɪŋ/', 'hàng đầu' FROM DUAL
UNION ALL SELECT 'B1', 'leaf', 'noun', '/liːf/', 'lá cây' FROM DUAL
UNION ALL SELECT 'B1', 'leather', 'noun', '/ˈleðə(r)/', 'da (thuộc)' FROM DUAL
UNION ALL SELECT 'B1', 'legal', 'adjective', '/ˈliːɡl/', 'hợp pháp, thuộc pháp luật' FROM DUAL
UNION ALL SELECT 'B1', 'leisure', 'noun', '/ˈleʒə(r)/', 'thời gian rảnh rỗi' FROM DUAL
UNION ALL SELECT 'B1', 'length', 'noun', '/leŋθ/', 'chiều dài' FROM DUAL
UNION ALL SELECT 'B1', 'limit', 'noun', '/ˈlɪmɪt/', 'giới hạn' FROM DUAL
UNION ALL SELECT 'B1', 'lip', 'noun', '/lɪp/', 'môi' FROM DUAL
UNION ALL SELECT 'B1', 'liquid', 'noun', '/ˈlɪkwɪd/', 'chất lỏng' FROM DUAL
UNION ALL SELECT 'B1', 'literature', 'noun', '/ˈlɪtrətʃə(r)/', 'văn học' FROM DUAL
UNION ALL SELECT 'B1', 'live', 'adjective', '/laɪv/', 'trực tiếp, còn sống' FROM DUAL
UNION ALL SELECT 'B1', 'living', 'adjective', '/ˈlɪvɪŋ/', 'đang sống' FROM DUAL
UNION ALL SELECT 'B1', 'loan', 'noun', '/ləʊn/', 'khoản vay' FROM DUAL
UNION ALL SELECT 'B1', 'locate', 'verb', '/ləʊˈkeɪt/', 'định vị, xác định vị trí' FROM DUAL
UNION ALL SELECT 'B1', 'located', 'adjective', '/ləʊˈkeɪtɪd/', 'nằm ở, tọa lạc' FROM DUAL
UNION ALL SELECT 'B1', 'location', 'noun', '/ləʊˈkeɪʃn/', 'vị trí, địa điểm' FROM DUAL
UNION ALL SELECT 'B1', 'lonely', 'adjective', '/ˈləʊnli/', 'cô đơn' FROM DUAL
UNION ALL SELECT 'B1', 'loss', 'noun', '/lɒs/', 'sự mất mát' FROM DUAL
UNION ALL SELECT 'B1', 'luxury', 'noun', '/ˈlʌkʃəri/', 'sự xa xỉ, đồ xa xỉ' FROM DUAL
UNION ALL SELECT 'B1', 'mad', 'adjective', '/mæd/', 'điên, tức giận' FROM DUAL
UNION ALL SELECT 'B1', 'magic', 'noun', '/ˈmædʒɪk/', 'phép thuật, ảo thuật' FROM DUAL
UNION ALL SELECT 'B1', 'mainly', 'adverb', '/ˈmeɪnli/', 'chủ yếu' FROM DUAL
UNION ALL SELECT 'B1', 'mall', 'noun', '/mɔːl/', 'trung tâm mua sắm' FROM DUAL
UNION ALL SELECT 'B1', 'management', 'noun', '/ˈmænɪdʒmənt/', 'sự quản lý' FROM DUAL
UNION ALL SELECT 'B1', 'market', 'verb', '/ˈmɑːkɪt/', 'tiếp thị, quảng bá' FROM DUAL
UNION ALL SELECT 'B1', 'marketing', 'noun', '/ˈmɑːkɪtɪŋ/', 'tiếp thị' FROM DUAL
UNION ALL SELECT 'B1', 'marriage', 'noun', '/ˈmærɪdʒ/', 'hôn nhân' FROM DUAL
UNION ALL SELECT 'B1', 'mean', 'adjective', '/miːn/', 'keo kiệt, xấu tính' FROM DUAL
UNION ALL SELECT 'B1', 'means', 'noun', '/miːnz/', 'phương tiện, cách thức' FROM DUAL
UNION ALL SELECT 'B1', 'meanwhile', 'adverb', '/ˈmiːnwaɪl/', 'trong khi đó' FROM DUAL
UNION ALL SELECT 'B1', 'measure', 'verb', '/ˈmeʒə(r)/', 'đo lường' FROM DUAL
UNION ALL SELECT 'B1', 'medium', 'adjective', '/ˈmiːdiəm/', 'trung bình, vừa' FROM DUAL
UNION ALL SELECT 'B1', 'mental', 'adjective', '/ˈmentl/', 'thuộc tinh thần' FROM DUAL
UNION ALL SELECT 'B1', 'mess', 'noun', '/mes/', 'sự bừa bộn' FROM DUAL
UNION ALL SELECT 'B1', 'mild', 'adjective', '/maɪld/', 'nhẹ, ôn hòa' FROM DUAL
UNION ALL SELECT 'B1', 'mine', 'noun', '/maɪn/', 'mỏ' FROM DUAL
UNION ALL SELECT 'B1', 'mix', 'noun', '/mɪks/', 'sự pha trộn' FROM DUAL
UNION ALL SELECT 'B1', 'mixture', 'noun', '/ˈmɪkstʃə(r)/', 'hỗn hợp' FROM DUAL
UNION ALL SELECT 'B1', 'monument', 'noun', '/ˈmɒnjumənt/', 'đài tưởng niệm' FROM DUAL
UNION ALL SELECT 'B1', 'mood', 'noun', '/muːd/', 'tâm trạng' FROM DUAL
UNION ALL SELECT 'B1', 'move', 'noun', '/muːv/', 'nước đi, sự di chuyển' FROM DUAL
UNION ALL SELECT 'B1', 'mud', 'noun', '/mʌd/', 'bùn' FROM DUAL
UNION ALL SELECT 'B1', 'murder', 'noun', '/ˈmɜːdə(r)/', 'vụ giết người' FROM DUAL
UNION ALL SELECT 'B1', 'muscle', 'noun', '/ˈmʌsl/', 'cơ bắp' FROM DUAL
UNION ALL SELECT 'B1', 'mystery', 'noun', '/ˈmɪstri/', 'điều bí ẩn' FROM DUAL
UNION ALL SELECT 'B1', 'nail', 'noun', '/neɪl/', 'móng tay, cái đinh' FROM DUAL
UNION ALL SELECT 'B1', 'narrative', 'noun', '/ˈnærətɪv/', 'bài tường thuật, câu chuyện' FROM DUAL
UNION ALL SELECT 'B1', 'nation', 'noun', '/ˈneɪʃn/', 'quốc gia, dân tộc' FROM DUAL
UNION ALL SELECT 'B1', 'native', 'adjective', '/ˈneɪtɪv/', 'bản xứ, bản địa' FROM DUAL
UNION ALL SELECT 'B1', 'naturally', 'adverb', '/ˈnætʃrəli/', 'một cách tự nhiên' FROM DUAL
UNION ALL SELECT 'B1', 'necessarily', 'adverb', '/ˌnesəˈserəli/', 'nhất thiết' FROM DUAL
UNION ALL SELECT 'B1', 'needle', 'noun', '/ˈniːdl/', 'cây kim' FROM DUAL
UNION ALL SELECT 'B1', 'neighbourhood', 'noun', '/ˈneɪbəhʊd/', 'khu phố, vùng lân cận' FROM DUAL
UNION ALL SELECT 'B1', 'neither', 'adverb', '/ˈnaɪðə(r)/', 'cũng không' FROM DUAL
UNION ALL SELECT 'B1', 'net', 'noun', '/net/', 'lưới' FROM DUAL
UNION ALL SELECT 'B1', 'nightlife', 'noun', '/ˈnaɪtlaɪf/', 'cuộc sống về đêm' FROM DUAL
UNION ALL SELECT 'B1', 'nor', 'conjunction', '/nɔː(r)/', 'cũng không' FROM DUAL
UNION ALL SELECT 'B1', 'northern', 'adjective', '/ˈnɔːðən/', 'thuộc phía bắc' FROM DUAL
UNION ALL SELECT 'B1', 'note', 'verb', '/nəʊt/', 'ghi chú, lưu ý' FROM DUAL
UNION ALL SELECT 'B1', 'nuclear', 'adjective', '/ˈnjuːkliə(r)/', 'thuộc hạt nhân' FROM DUAL
UNION ALL SELECT 'B1', 'obvious', 'adjective', '/ˈɒbviəs/', 'hiển nhiên, rõ ràng' FROM DUAL
UNION ALL SELECT 'B1', 'obviously', 'adverb', '/ˈɒbviəsli/', 'rõ ràng là' FROM DUAL
UNION ALL SELECT 'B1', 'occasion', 'noun', '/əˈkeɪʒn/', 'dịp' FROM DUAL
UNION ALL SELECT 'B1', 'occur', 'verb', '/əˈkɜː(r)/', 'xảy ra' FROM DUAL
UNION ALL SELECT 'B1', 'odd', 'adjective', '/ɒd/', 'kỳ lạ, lẻ' FROM DUAL
UNION ALL SELECT 'B1', 'official', 'adjective', '/əˈfɪʃl/', 'chính thức' FROM DUAL
UNION ALL SELECT 'B1', 'old-fashioned', 'adjective', '/ˌəʊld ˈfæʃnd/', 'lỗi thời, cổ hủ' FROM DUAL
UNION ALL SELECT 'B1', 'once', 'conjunction', '/wʌns/', 'một khi' FROM DUAL
UNION ALL SELECT 'B1', 'operation', 'noun', '/ˌɒpəˈreɪʃn/', 'ca phẫu thuật, sự vận hành' FROM DUAL
UNION ALL SELECT 'B1', 'organized', 'adjective', '/ˈɔːɡənaɪzd/', 'ngăn nắp, có tổ chức' FROM DUAL
UNION ALL SELECT 'B1', 'organizer', 'noun', '/ˈɔːɡənaɪzə(r)/', 'người tổ chức' FROM DUAL
UNION ALL SELECT 'B1', 'origin', 'noun', '/ˈɒrɪdʒɪn/', 'nguồn gốc' FROM DUAL
UNION ALL SELECT 'B1', 'original', 'noun', '/əˈrɪdʒənl/', 'bản gốc' FROM DUAL
UNION ALL SELECT 'B1', 'originally', 'adverb', '/əˈrɪdʒənəli/', 'ban đầu, vốn dĩ' FROM DUAL
UNION ALL SELECT 'B1', 'otherwise', 'adverb', '/ˈʌðəwaɪz/', 'nếu không thì' FROM DUAL
UNION ALL SELECT 'B1', 'ought', 'modal verb', '/ɔːt/', 'nên (ought to)' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B1', 'ours', 'pronoun', '/ˈaʊəz/', 'của chúng tôi' FROM DUAL
UNION ALL SELECT 'B1', 'outdoor', 'adjective', '/ˈaʊtdɔː(r)/', 'ngoài trời' FROM DUAL
UNION ALL SELECT 'B1', 'outdoors', 'adverb', '/ˌaʊtˈdɔːz/', 'ở ngoài trời' FROM DUAL
UNION ALL SELECT 'B1', 'package', 'noun', '/ˈpækɪdʒ/', 'gói hàng, kiện hàng' FROM DUAL
UNION ALL SELECT 'B1', 'painful', 'adjective', '/ˈpeɪnfl/', 'đau đớn' FROM DUAL
UNION ALL SELECT 'B1', 'pale', 'adjective', '/peɪl/', 'nhợt nhạt' FROM DUAL
UNION ALL SELECT 'B1', 'pan', 'noun', '/pæn/', 'chảo' FROM DUAL
UNION ALL SELECT 'B1', 'participate', 'verb', '/pɑːˈtɪsɪpeɪt/', 'tham gia' FROM DUAL
UNION ALL SELECT 'B1', 'particularly', 'adverb', '/pəˈtɪkjələli/', 'đặc biệt là' FROM DUAL
UNION ALL SELECT 'B1', 'partly', 'adverb', '/ˈpɑːtli/', 'một phần' FROM DUAL
UNION ALL SELECT 'B1', 'pass', 'noun', '/pɑːs/', 'đường chuyền, giấy thông hành' FROM DUAL
UNION ALL SELECT 'B1', 'passion', 'noun', '/ˈpæʃn/', 'niềm đam mê' FROM DUAL
UNION ALL SELECT 'B1', 'path', 'noun', '/pɑːθ/', 'con đường mòn' FROM DUAL
UNION ALL SELECT 'B1', 'payment', 'noun', '/ˈpeɪmənt/', 'sự thanh toán' FROM DUAL
UNION ALL SELECT 'B1', 'peaceful', 'adjective', '/ˈpiːsfl/', 'yên bình' FROM DUAL
UNION ALL SELECT 'B1', 'percentage', 'noun', '/pəˈsentɪdʒ/', 'tỷ lệ phần trăm' FROM DUAL
UNION ALL SELECT 'B1', 'perfectly', 'adverb', '/ˈpɜːfɪktli/', 'một cách hoàn hảo' FROM DUAL
UNION ALL SELECT 'B1', 'performance', 'noun', '/pəˈfɔːməns/', 'màn trình diễn, hiệu suất' FROM DUAL
UNION ALL SELECT 'B1', 'personally', 'adverb', '/ˈpɜːsənəli/', 'về mặt cá nhân' FROM DUAL
UNION ALL SELECT 'B1', 'persuade', 'verb', '/pəˈsweɪd/', 'thuyết phục' FROM DUAL
UNION ALL SELECT 'B1', 'photography', 'noun', '/fəˈtɒɡrəfi/', 'nhiếp ảnh' FROM DUAL
UNION ALL SELECT 'B1', 'pin', 'noun', '/pɪn/', 'ghim, mã PIN' FROM DUAL
UNION ALL SELECT 'B1', 'pipe', 'noun', '/paɪp/', 'ống nước, tẩu thuốc' FROM DUAL
UNION ALL SELECT 'B1', 'place', 'verb', '/pleɪs/', 'đặt, để' FROM DUAL
UNION ALL SELECT 'B1', 'planning', 'noun', '/ˈplænɪŋ/', 'sự lập kế hoạch' FROM DUAL
UNION ALL SELECT 'B1', 'pleasant', 'adjective', '/ˈpleznt/', 'dễ chịu' FROM DUAL
UNION ALL SELECT 'B1', 'pleasure', 'noun', '/ˈpleʒə(r)/', 'niềm vui thích' FROM DUAL
UNION ALL SELECT 'B1', 'plenty', 'pronoun', '/ˈplenti/', 'nhiều, dư dả' FROM DUAL
UNION ALL SELECT 'B1', 'plot', 'noun', '/plɒt/', 'cốt truyện, âm mưu' FROM DUAL
UNION ALL SELECT 'B1', 'plus', 'preposition', '/plʌs/', 'cộng với' FROM DUAL
UNION ALL SELECT 'B1', 'poem', 'noun', '/ˈpəʊɪm/', 'bài thơ' FROM DUAL
UNION ALL SELECT 'B1', 'poet', 'noun', '/ˈpəʊɪt/', 'nhà thơ' FROM DUAL
UNION ALL SELECT 'B1', 'poetry', 'noun', '/ˈpəʊətri/', 'thơ ca' FROM DUAL
UNION ALL SELECT 'B1', 'point', 'verb', '/pɔɪnt/', 'chỉ, trỏ' FROM DUAL
UNION ALL SELECT 'B1', 'poison', 'noun', '/ˈpɔɪzn/', 'chất độc' FROM DUAL
UNION ALL SELECT 'B1', 'poisonous', 'adjective', '/ˈpɔɪzənəs/', 'có độc' FROM DUAL
UNION ALL SELECT 'B1', 'policy', 'noun', '/ˈpɒləsi/', 'chính sách' FROM DUAL
UNION ALL SELECT 'B1', 'political', 'adjective', '/pəˈlɪtɪkl/', 'thuộc chính trị' FROM DUAL
UNION ALL SELECT 'B1', 'politician', 'noun', '/ˌpɒləˈtɪʃn/', 'chính trị gia' FROM DUAL
UNION ALL SELECT 'B1', 'politics', 'noun', '/ˈpɒlətɪks/', 'chính trị' FROM DUAL
UNION ALL SELECT 'B1', 'port', 'noun', '/pɔːt/', 'cảng' FROM DUAL
UNION ALL SELECT 'B1', 'portrait', 'noun', '/ˈpɔːtreɪt/', 'bức chân dung' FROM DUAL
UNION ALL SELECT 'B1', 'possibly', 'adverb', '/ˈpɒsəbli/', 'có lẽ, có thể' FROM DUAL
UNION ALL SELECT 'B1', 'pot', 'noun', '/pɒt/', 'cái nồi, chậu' FROM DUAL
UNION ALL SELECT 'B1', 'pour', 'verb', '/pɔː(r)/', 'rót, đổ' FROM DUAL
UNION ALL SELECT 'B1', 'poverty', 'noun', '/ˈpɒvəti/', 'sự nghèo đói' FROM DUAL
UNION ALL SELECT 'B1', 'powder', 'noun', '/ˈpaʊdə(r)/', 'bột' FROM DUAL
UNION ALL SELECT 'B1', 'powerful', 'adjective', '/ˈpaʊəfl/', 'mạnh mẽ, quyền lực' FROM DUAL
UNION ALL SELECT 'B1', 'practical', 'adjective', '/ˈpræktɪkl/', 'thực tế, thiết thực' FROM DUAL
UNION ALL SELECT 'B1', 'pray', 'verb', '/preɪ/', 'cầu nguyện' FROM DUAL
UNION ALL SELECT 'B1', 'prayer', 'noun', '/preə(r)/', 'lời cầu nguyện' FROM DUAL
UNION ALL SELECT 'B1', 'prediction', 'noun', '/prɪˈdɪkʃn/', 'lời dự đoán' FROM DUAL
UNION ALL SELECT 'B1', 'prepared', 'adjective', '/prɪˈpeəd/', 'đã chuẩn bị, sẵn sàng' FROM DUAL
UNION ALL SELECT 'B1', 'presentation', 'noun', '/ˌpreznˈteɪʃn/', 'bài thuyết trình' FROM DUAL
UNION ALL SELECT 'B1', 'press', 'noun', '/pres/', 'báo chí' FROM DUAL
UNION ALL SELECT 'B1', 'pressure', 'noun', '/ˈpreʃə(r)/', 'áp lực' FROM DUAL
UNION ALL SELECT 'B1', 'pretend', 'verb', '/prɪˈtend/', 'giả vờ' FROM DUAL
UNION ALL SELECT 'B1', 'previous', 'adjective', '/ˈpriːviəs/', 'trước đó' FROM DUAL
UNION ALL SELECT 'B1', 'previously', 'adverb', '/ˈpriːviəsli/', 'trước đây' FROM DUAL
UNION ALL SELECT 'B1', 'priest', 'noun', '/priːst/', 'linh mục, thầy tu' FROM DUAL
UNION ALL SELECT 'B1', 'primary', 'adjective', '/ˈpraɪməri/', 'chính, chủ yếu, tiểu học' FROM DUAL
UNION ALL SELECT 'B1', 'prince', 'noun', '/prɪns/', 'hoàng tử' FROM DUAL
UNION ALL SELECT 'B1', 'princess', 'noun', '/ˌprɪnˈses/', 'công chúa' FROM DUAL
UNION ALL SELECT 'B1', 'printing', 'noun', '/ˈprɪntɪŋ/', 'sự in ấn' FROM DUAL
UNION ALL SELECT 'B1', 'prisoner', 'noun', '/ˈprɪznə(r)/', 'tù nhân' FROM DUAL
UNION ALL SELECT 'B1', 'private', 'adjective', '/ˈpraɪvət/', 'riêng tư, tư nhân' FROM DUAL
UNION ALL SELECT 'B1', 'producer', 'noun', '/prəˈdjuːsə(r)/', 'nhà sản xuất' FROM DUAL
UNION ALL SELECT 'B1', 'production', 'noun', '/prəˈdʌkʃn/', 'sự sản xuất' FROM DUAL
UNION ALL SELECT 'B1', 'profession', 'noun', '/prəˈfeʃn/', 'nghề nghiệp' FROM DUAL
UNION ALL SELECT 'B1', 'profit', 'noun', '/ˈprɒfɪt/', 'lợi nhuận' FROM DUAL
UNION ALL SELECT 'B1', 'promote', 'verb', '/prəˈməʊt/', 'thúc đẩy, thăng chức' FROM DUAL
UNION ALL SELECT 'B1', 'proper', 'adjective', '/ˈprɒpə(r)/', 'thích hợp, đúng đắn' FROM DUAL
UNION ALL SELECT 'B1', 'properly', 'adverb', '/ˈprɒpəli/', 'một cách đúng đắn' FROM DUAL
UNION ALL SELECT 'B1', 'property', 'noun', '/ˈprɒpəti/', 'tài sản, bất động sản' FROM DUAL
UNION ALL SELECT 'B1', 'protection', 'noun', '/prəˈtekʃn/', 'sự bảo vệ' FROM DUAL
UNION ALL SELECT 'B1', 'protest', 'noun', '/ˈprəʊtest/', 'cuộc biểu tình, sự phản đối' FROM DUAL
UNION ALL SELECT 'B1', 'proud', 'adjective', '/praʊd/', 'tự hào' FROM DUAL
UNION ALL SELECT 'B1', 'prove', 'verb', '/pruːv/', 'chứng minh' FROM DUAL
UNION ALL SELECT 'B1', 'pull', 'noun', '/pʊl/', 'cái kéo, sức hút' FROM DUAL
UNION ALL SELECT 'B1', 'punish', 'verb', '/ˈpʌnɪʃ/', 'trừng phạt' FROM DUAL
UNION ALL SELECT 'B1', 'punishment', 'noun', '/ˈpʌnɪʃmənt/', 'sự trừng phạt' FROM DUAL
UNION ALL SELECT 'B1', 'push', 'noun', '/pʊʃ/', 'cú đẩy' FROM DUAL
UNION ALL SELECT 'B1', 'qualification', 'noun', '/ˌkwɒlɪfɪˈkeɪʃn/', 'bằng cấp, trình độ chuyên môn' FROM DUAL
UNION ALL SELECT 'B1', 'qualified', 'adjective', '/ˈkwɒlɪfaɪd/', 'đủ trình độ' FROM DUAL
UNION ALL SELECT 'B1', 'qualify', 'verb', '/ˈkwɒlɪfaɪ/', 'đủ điều kiện' FROM DUAL
UNION ALL SELECT 'B1', 'queue', 'noun', '/kjuː/', 'hàng (người xếp hàng)' FROM DUAL
UNION ALL SELECT 'B1', 'quit', 'verb', '/kwɪt/', 'từ bỏ, nghỉ việc' FROM DUAL
UNION ALL SELECT 'B1', 'quotation', 'noun', '/kwəʊˈteɪʃn/', 'câu trích dẫn, bảng báo giá' FROM DUAL
UNION ALL SELECT 'B1', 'quote', 'verb', '/kwəʊt/', 'trích dẫn' FROM DUAL
UNION ALL SELECT 'B1', 'race', 'verb', '/reɪs/', 'chạy đua' FROM DUAL
UNION ALL SELECT 'B1', 'racing', 'noun', '/ˈreɪsɪŋ/', 'môn đua (xe, ngựa)' FROM DUAL
UNION ALL SELECT 'B1', 'range', 'noun', '/reɪndʒ/', 'phạm vi, dãy' FROM DUAL
UNION ALL SELECT 'B1', 'rare', 'adjective', '/reə(r)/', 'hiếm' FROM DUAL
UNION ALL SELECT 'B1', 'rarely', 'adverb', '/ˈreəli/', 'hiếm khi' FROM DUAL
UNION ALL SELECT 'B1', 'reaction', 'noun', '/riˈækʃn/', 'phản ứng' FROM DUAL
UNION ALL SELECT 'B1', 'reality', 'noun', '/riˈæləti/', 'thực tế' FROM DUAL
UNION ALL SELECT 'B1', 'receipt', 'noun', '/rɪˈsiːt/', 'hóa đơn, biên lai' FROM DUAL
UNION ALL SELECT 'B1', 'recommendation', 'noun', '/ˌrekəmenˈdeɪʃn/', 'lời giới thiệu, đề xuất' FROM DUAL
UNION ALL SELECT 'B1', 'reference', 'noun', '/ˈrefrəns/', 'sự tham khảo' FROM DUAL
UNION ALL SELECT 'B1', 'reflect', 'verb', '/rɪˈflekt/', 'phản chiếu, phản ánh' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B1', 'regularly', 'adverb', '/ˈreɡjələli/', 'thường xuyên, đều đặn' FROM DUAL
UNION ALL SELECT 'B1', 'reject', 'verb', '/rɪˈdʒekt/', 'từ chối, bác bỏ' FROM DUAL
UNION ALL SELECT 'B1', 'relate', 'verb', '/rɪˈleɪt/', 'liên quan, liên hệ' FROM DUAL
UNION ALL SELECT 'B1', 'related', 'adjective', '/rɪˈleɪtɪd/', 'có liên quan' FROM DUAL
UNION ALL SELECT 'B1', 'relation', 'noun', '/rɪˈleɪʃn/', 'mối quan hệ' FROM DUAL
UNION ALL SELECT 'B1', 'relaxed', 'adjective', '/rɪˈlækst/', 'thư giãn' FROM DUAL
UNION ALL SELECT 'B1', 'relaxing', 'adjective', '/rɪˈlæksɪŋ/', 'làm thư giãn' FROM DUAL
UNION ALL SELECT 'B1', 'release', 'verb', '/rɪˈliːs/', 'thả, phát hành' FROM DUAL
UNION ALL SELECT 'B1', 'reliable', 'adjective', '/rɪˈlaɪəbl/', 'đáng tin cậy' FROM DUAL
UNION ALL SELECT 'B1', 'religion', 'noun', '/rɪˈlɪdʒən/', 'tôn giáo' FROM DUAL
UNION ALL SELECT 'B1', 'religious', 'adjective', '/rɪˈlɪdʒəs/', 'thuộc tôn giáo' FROM DUAL
UNION ALL SELECT 'B1', 'remain', 'verb', '/rɪˈmeɪn/', 'vẫn còn, ở lại' FROM DUAL
UNION ALL SELECT 'B1', 'remind', 'verb', '/rɪˈmaɪnd/', 'nhắc nhở' FROM DUAL
UNION ALL SELECT 'B1', 'remote', 'adjective', '/rɪˈməʊt/', 'xa xôi, từ xa' FROM DUAL
UNION ALL SELECT 'B1', 'rent', 'noun', '/rent/', 'tiền thuê' FROM DUAL
UNION ALL SELECT 'B1', 'repair', 'noun', '/rɪˈpeə(r)/', 'sự sửa chữa' FROM DUAL
UNION ALL SELECT 'B1', 'reply', 'noun', '/rɪˈplaɪ/', 'câu trả lời, hồi âm' FROM DUAL
UNION ALL SELECT 'B1', 'represent', 'verb', '/ˌreprɪˈzent/', 'đại diện, tượng trưng' FROM DUAL
UNION ALL SELECT 'B1', 'require', 'verb', '/rɪˈkwaɪə(r)/', 'yêu cầu, đòi hỏi' FROM DUAL
UNION ALL SELECT 'B1', 'reservation', 'noun', '/ˌrezəˈveɪʃn/', 'sự đặt chỗ trước' FROM DUAL
UNION ALL SELECT 'B1', 'resource', 'noun', '/rɪˈsɔːs/', 'tài nguyên, nguồn lực' FROM DUAL
UNION ALL SELECT 'B1', 'respect', 'noun', '/rɪˈspekt/', 'sự tôn trọng' FROM DUAL
UNION ALL SELECT 'B1', 'responsibility', 'noun', '/rɪˌspɒnsəˈbɪləti/', 'trách nhiệm' FROM DUAL
UNION ALL SELECT 'B1', 'responsible', 'adjective', '/rɪˈspɒnsəbl/', 'chịu trách nhiệm' FROM DUAL
UNION ALL SELECT 'B1', 'retire', 'verb', '/rɪˈtaɪə(r)/', 'nghỉ hưu' FROM DUAL
UNION ALL SELECT 'B1', 'retired', 'adjective', '/rɪˈtaɪəd/', 'đã nghỉ hưu' FROM DUAL
UNION ALL SELECT 'B1', 'revise', 'verb', '/rɪˈvaɪz/', 'ôn tập, sửa lại' FROM DUAL
UNION ALL SELECT 'B1', 'rise', 'noun', '/raɪz/', 'sự tăng lên' FROM DUAL
UNION ALL SELECT 'B1', 'risk', 'noun', '/rɪsk/', 'rủi ro' FROM DUAL
UNION ALL SELECT 'B1', 'robot', 'noun', '/ˈrəʊbɒt/', 'người máy' FROM DUAL
UNION ALL SELECT 'B1', 'roll', 'noun', '/rəʊl/', 'cuộn, ổ bánh mì nhỏ' FROM DUAL
UNION ALL SELECT 'B1', 'romantic', 'adjective', '/rəʊˈmæntɪk/', 'lãng mạn' FROM DUAL
UNION ALL SELECT 'B1', 'rope', 'noun', '/rəʊp/', 'sợi dây thừng' FROM DUAL
UNION ALL SELECT 'B1', 'rough', 'adjective', '/rʌf/', 'thô ráp, gồ ghề' FROM DUAL
UNION ALL SELECT 'B1', 'row', 'noun', '/rəʊ/', 'hàng, dãy' FROM DUAL
UNION ALL SELECT 'B1', 'royal', 'adjective', '/ˈrɔɪəl/', 'thuộc hoàng gia' FROM DUAL
UNION ALL SELECT 'B1', 'rugby', 'noun', '/ˈrʌɡbi/', 'bóng bầu dục' FROM DUAL
UNION ALL SELECT 'B1', 'rule', 'verb', '/ruːl/', 'cai trị' FROM DUAL
UNION ALL SELECT 'B1', 'safety', 'noun', '/ˈseɪfti/', 'sự an toàn' FROM DUAL
UNION ALL SELECT 'B1', 'sailor', 'noun', '/ˈseɪlə(r)/', 'thủy thủ' FROM DUAL
UNION ALL SELECT 'B1', 'sample', 'noun', '/ˈsɑːmpl/', 'mẫu thử' FROM DUAL
UNION ALL SELECT 'B1', 'sand', 'noun', '/sænd/', 'cát' FROM DUAL
UNION ALL SELECT 'B1', 'scale', 'noun', '/skeɪl/', 'quy mô, cái cân' FROM DUAL
UNION ALL SELECT 'B1', 'scan', 'verb', '/skæn/', 'quét' FROM DUAL
UNION ALL SELECT 'B1', 'scientific', 'adjective', '/ˌsaɪənˈtɪfɪk/', 'thuộc khoa học' FROM DUAL
UNION ALL SELECT 'B1', 'script', 'noun', '/skrɪpt/', 'kịch bản' FROM DUAL
UNION ALL SELECT 'B1', 'sculpture', 'noun', '/ˈskʌlptʃə(r)/', 'tác phẩm điêu khắc' FROM DUAL
UNION ALL SELECT 'B1', 'secondary', 'adjective', '/ˈsekəndri/', 'thứ yếu, trung học' FROM DUAL
UNION ALL SELECT 'B1', 'security', 'noun', '/sɪˈkjʊərəti/', 'an ninh' FROM DUAL
UNION ALL SELECT 'B1', 'seed', 'noun', '/siːd/', 'hạt giống' FROM DUAL
UNION ALL SELECT 'B1', 'sensible', 'adjective', '/ˈsensəbl/', 'hợp lý, khôn ngoan' FROM DUAL
UNION ALL SELECT 'B1', 'separate', 'verb', '/ˈsepəreɪt/', 'tách ra' FROM DUAL
UNION ALL SELECT 'B1', 'seriously', 'adverb', '/ˈsɪəriəsli/', 'một cách nghiêm túc' FROM DUAL
UNION ALL SELECT 'B1', 'servant', 'noun', '/ˈsɜːvənt/', 'người hầu' FROM DUAL
UNION ALL SELECT 'B1', 'set', 'noun', '/set/', 'bộ, tập hợp' FROM DUAL
UNION ALL SELECT 'B1', 'setting', 'noun', '/ˈsetɪŋ/', 'bối cảnh, cài đặt' FROM DUAL
UNION ALL SELECT 'B1', 'share', 'noun', '/ʃeə(r)/', 'phần, cổ phần' FROM DUAL
UNION ALL SELECT 'B1', 'sharp', 'adjective', '/ʃɑːp/', 'sắc, nhọn' FROM DUAL
UNION ALL SELECT 'B1', 'shelf', 'noun', '/ʃelf/', 'cái kệ, giá sách' FROM DUAL
UNION ALL SELECT 'B1', 'shell', 'noun', '/ʃel/', 'vỏ (sò, trứng)' FROM DUAL
UNION ALL SELECT 'B1', 'shift', 'noun', '/ʃɪft/', 'ca làm việc, sự thay đổi' FROM DUAL
UNION ALL SELECT 'B1', 'shine', 'verb', '/ʃaɪn/', 'chiếu sáng, tỏa sáng' FROM DUAL
UNION ALL SELECT 'B1', 'shiny', 'adjective', '/ˈʃaɪni/', 'sáng bóng' FROM DUAL
UNION ALL SELECT 'B1', 'shoot', 'verb', '/ʃuːt/', 'bắn, quay phim' FROM DUAL
UNION ALL SELECT 'B1', 'shy', 'adjective', '/ʃaɪ/', 'nhút nhát' FROM DUAL
UNION ALL SELECT 'B1', 'sight', 'noun', '/saɪt/', 'thị lực, cảnh tượng' FROM DUAL
UNION ALL SELECT 'B1', 'signal', 'noun', '/ˈsɪɡnəl/', 'tín hiệu' FROM DUAL
UNION ALL SELECT 'B1', 'silent', 'adjective', '/ˈsaɪlənt/', 'im lặng' FROM DUAL
UNION ALL SELECT 'B1', 'silly', 'adjective', '/ˈsɪli/', 'ngớ ngẩn' FROM DUAL
UNION ALL SELECT 'B1', 'similarity', 'noun', '/ˌsɪməˈlærəti/', 'sự giống nhau' FROM DUAL
UNION ALL SELECT 'B1', 'similarly', 'adverb', '/ˈsɪmələli/', 'tương tự' FROM DUAL
UNION ALL SELECT 'B1', 'simply', 'adverb', '/ˈsɪmpli/', 'một cách đơn giản, chỉ là' FROM DUAL
UNION ALL SELECT 'B1', 'sink', 'verb', '/sɪŋk/', 'chìm' FROM DUAL
UNION ALL SELECT 'B1', 'slice', 'noun', '/slaɪs/', 'lát, miếng mỏng' FROM DUAL
UNION ALL SELECT 'B1', 'slightly', 'adverb', '/ˈslaɪtli/', 'hơi, một chút' FROM DUAL
UNION ALL SELECT 'B1', 'slow', 'verb', '/sləʊ/', 'làm chậm lại' FROM DUAL
UNION ALL SELECT 'B1', 'smart', 'adjective', '/smɑːt/', 'thông minh, lịch sự' FROM DUAL
UNION ALL SELECT 'B1', 'smooth', 'adjective', '/smuːð/', 'mịn, trơn tru' FROM DUAL
UNION ALL SELECT 'B1', 'software', 'noun', '/ˈsɒftweə(r)/', 'phần mềm' FROM DUAL
UNION ALL SELECT 'B1', 'soil', 'noun', '/sɔɪl/', 'đất trồng' FROM DUAL
UNION ALL SELECT 'B1', 'solid', 'adjective', '/ˈsɒlɪd/', 'rắn, chắc chắn' FROM DUAL
UNION ALL SELECT 'B1', 'southern', 'adjective', '/ˈsʌðən/', 'thuộc phía nam' FROM DUAL
UNION ALL SELECT 'B1', 'specifically', 'adverb', '/spəˈsɪfɪkli/', 'cụ thể là' FROM DUAL
UNION ALL SELECT 'B1', 'spending', 'noun', '/ˈspendɪŋ/', 'sự chi tiêu' FROM DUAL
UNION ALL SELECT 'B1', 'spicy', 'adjective', '/ˈspaɪsi/', 'cay' FROM DUAL
UNION ALL SELECT 'B1', 'spirit', 'noun', '/ˈspɪrɪt/', 'tinh thần, linh hồn' FROM DUAL
UNION ALL SELECT 'B1', 'spoken', 'adjective', '/ˈspəʊkən/', 'nói (dạng nói)' FROM DUAL
UNION ALL SELECT 'B1', 'spot', 'noun', '/spɒt/', 'chấm, địa điểm' FROM DUAL
UNION ALL SELECT 'B1', 'spread', 'verb', '/spred/', 'lan rộng, trải ra' FROM DUAL
UNION ALL SELECT 'B1', 'stadium', 'noun', '/ˈsteɪdiəm/', 'sân vận động' FROM DUAL
UNION ALL SELECT 'B1', 'staff', 'noun', '/stɑːf/', 'nhân viên' FROM DUAL
UNION ALL SELECT 'B1', 'standard', 'noun', '/ˈstændəd/', 'tiêu chuẩn' FROM DUAL
UNION ALL SELECT 'B1', 'statistic', 'noun', '/stəˈtɪstɪk/', 'số liệu thống kê' FROM DUAL
UNION ALL SELECT 'B1', 'statue', 'noun', '/ˈstætʃuː/', 'bức tượng' FROM DUAL
UNION ALL SELECT 'B1', 'stick', 'verb', '/stɪk/', 'dán, dính' FROM DUAL
UNION ALL SELECT 'B1', 'still', 'adjective', '/stɪl/', 'tĩnh lặng, đứng yên' FROM DUAL
UNION ALL SELECT 'B1', 'store', 'verb', '/stɔː(r)/', 'lưu trữ, cất giữ' FROM DUAL
UNION ALL SELECT 'B1', 'stranger', 'noun', '/ˈstreɪndʒə(r)/', 'người lạ' FROM DUAL
UNION ALL SELECT 'B1', 'strength', 'noun', '/streŋθ/', 'sức mạnh, điểm mạnh' FROM DUAL
UNION ALL SELECT 'B1', 'strict', 'adjective', '/strɪkt/', 'nghiêm khắc' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B1', 'string', 'noun', '/strɪŋ/', 'sợi dây, dây đàn' FROM DUAL
UNION ALL SELECT 'B1', 'strongly', 'adverb', '/ˈstrɒŋli/', 'mạnh mẽ' FROM DUAL
UNION ALL SELECT 'B1', 'studio', 'noun', '/ˈstjuːdiəʊ/', 'xưởng phim, phòng thu' FROM DUAL
UNION ALL SELECT 'B1', 'stuff', 'noun', '/stʌf/', 'đồ đạc, thứ' FROM DUAL
UNION ALL SELECT 'B1', 'substance', 'noun', '/ˈsʌbstəns/', 'chất, vật chất' FROM DUAL
UNION ALL SELECT 'B1', 'successfully', 'adverb', '/səkˈsesfəli/', 'một cách thành công' FROM DUAL
UNION ALL SELECT 'B1', 'sudden', 'adjective', '/ˈsʌdn/', 'đột ngột' FROM DUAL
UNION ALL SELECT 'B1', 'suffer', 'verb', '/ˈsʌfə(r)/', 'chịu đựng, đau khổ' FROM DUAL
UNION ALL SELECT 'B1', 'suit', 'verb', '/suːt/', 'phù hợp với' FROM DUAL
UNION ALL SELECT 'B1', 'suitable', 'adjective', '/ˈsuːtəbl/', 'phù hợp' FROM DUAL
UNION ALL SELECT 'B1', 'summarize', 'verb', '/ˈsʌməraɪz/', 'tóm tắt' FROM DUAL
UNION ALL SELECT 'B1', 'summary', 'noun', '/ˈsʌməri/', 'bản tóm tắt' FROM DUAL
UNION ALL SELECT 'B1', 'supply', 'noun', '/səˈplaɪ/', 'nguồn cung cấp' FROM DUAL
UNION ALL SELECT 'B1', 'supporter', 'noun', '/səˈpɔːtə(r)/', 'người ủng hộ, cổ động viên' FROM DUAL
UNION ALL SELECT 'B1', 'surely', 'adverb', '/ˈʃʊəli/', 'chắc chắn' FROM DUAL
UNION ALL SELECT 'B1', 'surface', 'noun', '/ˈsɜːfɪs/', 'bề mặt' FROM DUAL
UNION ALL SELECT 'B1', 'survive', 'verb', '/səˈvaɪv/', 'sống sót' FROM DUAL
UNION ALL SELECT 'B1', 'swim', 'noun', '/swɪm/', 'sự bơi lội' FROM DUAL
UNION ALL SELECT 'B1', 'switch', 'verb', '/swɪtʃ/', 'chuyển đổi, bật/tắt' FROM DUAL
UNION ALL SELECT 'B1', 'symptom', 'noun', '/ˈsɪmptəm/', 'triệu chứng' FROM DUAL
UNION ALL SELECT 'B1', 'tail', 'noun', '/teɪl/', 'cái đuôi' FROM DUAL
UNION ALL SELECT 'B1', 'talent', 'noun', '/ˈtælənt/', 'tài năng' FROM DUAL
UNION ALL SELECT 'B1', 'talented', 'adjective', '/ˈtæləntɪd/', 'có tài' FROM DUAL
UNION ALL SELECT 'B1', 'tape', 'noun', '/teɪp/', 'băng dính, băng ghi âm' FROM DUAL
UNION ALL SELECT 'B1', 'tax', 'noun', '/tæks/', 'thuế' FROM DUAL
UNION ALL SELECT 'B1', 'technical', 'adjective', '/ˈteknɪkl/', 'thuộc kỹ thuật' FROM DUAL
UNION ALL SELECT 'B1', 'technique', 'noun', '/tekˈniːk/', 'kỹ thuật, kỹ năng' FROM DUAL
UNION ALL SELECT 'B1', 'tend', 'verb', '/tend/', 'có xu hướng' FROM DUAL
UNION ALL SELECT 'B1', 'tent', 'noun', '/tent/', 'cái lều' FROM DUAL
UNION ALL SELECT 'B1', 'theory', 'noun', '/ˈθɪəri/', 'lý thuyết' FROM DUAL
UNION ALL SELECT 'B1', 'thinking', 'noun', '/ˈθɪŋkɪŋ/', 'suy nghĩ, tư duy' FROM DUAL
UNION ALL SELECT 'B1', 'though', 'conjunction', '/ðəʊ/', 'mặc dù' FROM DUAL
UNION ALL SELECT 'B1', 'threat', 'noun', '/θret/', 'mối đe dọa' FROM DUAL
UNION ALL SELECT 'B1', 'threaten', 'verb', '/ˈθretn/', 'đe dọa' FROM DUAL
UNION ALL SELECT 'B1', 'thus', 'adverb', '/ðʌs/', 'do đó, như vậy' FROM DUAL
UNION ALL SELECT 'B1', 'tight', 'adjective', '/taɪt/', 'chật, chặt' FROM DUAL
UNION ALL SELECT 'B1', 'till', 'conjunction', '/tɪl/', 'cho đến khi' FROM DUAL
UNION ALL SELECT 'B1', 'top', 'adjective', '/tɒp/', 'cao nhất, hàng đầu' FROM DUAL
UNION ALL SELECT 'B1', 'touch', 'noun', '/tʌtʃ/', 'sự chạm, liên lạc' FROM DUAL
UNION ALL SELECT 'B1', 'tour', 'verb', '/tʊə(r)/', 'đi du lịch, đi tham quan' FROM DUAL
UNION ALL SELECT 'B1', 'tourism', 'noun', '/ˈtʊərɪzəm/', 'ngành du lịch' FROM DUAL
UNION ALL SELECT 'B1', 'traditionally', 'adverb', '/trəˈdɪʃənəli/', 'theo truyền thống' FROM DUAL
UNION ALL SELECT 'B1', 'transfer', 'verb', '/trænsˈfɜː(r)/', 'chuyển, chuyển nhượng' FROM DUAL
UNION ALL SELECT 'B1', 'transport', 'verb', '/trænˈspɔːt/', 'vận chuyển' FROM DUAL
UNION ALL SELECT 'B1', 'trap', 'verb', '/træp/', 'bẫy, mắc kẹt' FROM DUAL
UNION ALL SELECT 'B1', 'treatment', 'noun', '/ˈtriːtmənt/', 'sự điều trị, cách đối xử' FROM DUAL
UNION ALL SELECT 'B1', 'trend', 'noun', '/trend/', 'xu hướng' FROM DUAL
UNION ALL SELECT 'B1', 'trick', 'noun', '/trɪk/', 'mánh khóe, trò ảo thuật' FROM DUAL
UNION ALL SELECT 'B1', 'trust', 'verb', '/trʌst/', 'tin tưởng' FROM DUAL
UNION ALL SELECT 'B1', 'tube', 'noun', '/tjuːb/', 'ống, tàu điện ngầm' FROM DUAL
UNION ALL SELECT 'B1', 'typically', 'adverb', '/ˈtɪpɪkli/', 'thường thì, một cách điển hình' FROM DUAL
UNION ALL SELECT 'B1', 'tyre', 'noun', '/ˈtaɪə(r)/', 'lốp xe' FROM DUAL
UNION ALL SELECT 'B1', 'ugly', 'adjective', '/ˈʌɡli/', 'xấu xí' FROM DUAL
UNION ALL SELECT 'B1', 'unable', 'adjective', '/ʌnˈeɪbl/', 'không thể' FROM DUAL
UNION ALL SELECT 'B1', 'uncomfortable', 'adjective', '/ʌnˈkʌmftəbl/', 'không thoải mái' FROM DUAL
UNION ALL SELECT 'B1', 'underwear', 'noun', '/ˈʌndəweə(r)/', 'đồ lót' FROM DUAL
UNION ALL SELECT 'B1', 'unemployed', 'adjective', '/ˌʌnɪmˈplɔɪd/', 'thất nghiệp' FROM DUAL
UNION ALL SELECT 'B1', 'unemployment', 'noun', '/ˌʌnɪmˈplɔɪmənt/', 'tình trạng thất nghiệp' FROM DUAL
UNION ALL SELECT 'B1', 'unfair', 'adjective', '/ˌʌnˈfeə(r)/', 'không công bằng' FROM DUAL
UNION ALL SELECT 'B1', 'union', 'noun', '/ˈjuːniən/', 'liên minh, công đoàn' FROM DUAL
UNION ALL SELECT 'B1', 'unless', 'conjunction', '/ənˈles/', 'trừ khi' FROM DUAL
UNION ALL SELECT 'B1', 'unlike', 'preposition', '/ˌʌnˈlaɪk/', 'không giống' FROM DUAL
UNION ALL SELECT 'B1', 'unlikely', 'adjective', '/ʌnˈlaɪkli/', 'không chắc xảy ra' FROM DUAL
UNION ALL SELECT 'B1', 'unnecessary', 'adjective', '/ʌnˈnesəsəri/', 'không cần thiết' FROM DUAL
UNION ALL SELECT 'B1', 'unpleasant', 'adjective', '/ʌnˈpleznt/', 'khó chịu' FROM DUAL
UNION ALL SELECT 'B1', 'update', 'verb', '/ˌʌpˈdeɪt/', 'cập nhật' FROM DUAL
UNION ALL SELECT 'B1', 'upon', 'preposition', '/əˈpɒn/', 'trên, ngay khi' FROM DUAL
UNION ALL SELECT 'B1', 'valuable', 'adjective', '/ˈvæljuəbl/', 'có giá trị' FROM DUAL
UNION ALL SELECT 'B1', 'value', 'noun', '/ˈvæljuː/', 'giá trị' FROM DUAL
UNION ALL SELECT 'B1', 'various', 'adjective', '/ˈveəriəs/', 'khác nhau, đa dạng' FROM DUAL
UNION ALL SELECT 'B1', 'version', 'noun', '/ˈvɜːʃn/', 'phiên bản' FROM DUAL
UNION ALL SELECT 'B1', 'victim', 'noun', '/ˈvɪktɪm/', 'nạn nhân' FROM DUAL
UNION ALL SELECT 'B1', 'view', 'verb', '/vjuː/', 'xem, nhìn nhận' FROM DUAL
UNION ALL SELECT 'B1', 'viewer', 'noun', '/ˈvjuːə(r)/', 'người xem' FROM DUAL
UNION ALL SELECT 'B1', 'volunteer', 'noun', '/ˌvɒlənˈtɪə(r)/', 'tình nguyện viên' FROM DUAL
UNION ALL SELECT 'B1', 'warm', 'verb', '/wɔːm/', 'làm ấm' FROM DUAL
UNION ALL SELECT 'B1', 'warn', 'verb', '/wɔːn/', 'cảnh báo' FROM DUAL
UNION ALL SELECT 'B1', 'warning', 'noun', '/ˈwɔːnɪŋ/', 'lời cảnh báo' FROM DUAL
UNION ALL SELECT 'B1', 'waste', 'noun', '/weɪst/', 'sự lãng phí, rác thải' FROM DUAL
UNION ALL SELECT 'B1', 'water', 'verb', '/ˈwɔːtə(r)/', 'tưới nước' FROM DUAL
UNION ALL SELECT 'B1', 'wave', 'verb', '/weɪv/', 'vẫy tay' FROM DUAL
UNION ALL SELECT 'B1', 'weapon', 'noun', '/ˈwepən/', 'vũ khí' FROM DUAL
UNION ALL SELECT 'B1', 'weigh', 'verb', '/weɪ/', 'cân, nặng' FROM DUAL
UNION ALL SELECT 'B1', 'western', 'adjective', '/ˈwestən/', 'thuộc phía tây' FROM DUAL
UNION ALL SELECT 'B1', 'whatever', 'determiner', '/wɒtˈevə(r)/', 'bất cứ thứ gì' FROM DUAL
UNION ALL SELECT 'B1', 'whenever', 'conjunction', '/wenˈevə(r)/', 'bất cứ khi nào' FROM DUAL
UNION ALL SELECT 'B1', 'whether', 'conjunction', '/ˈweðə(r)/', 'liệu, có hay không' FROM DUAL
UNION ALL SELECT 'B1', 'whole', 'noun', '/həʊl/', 'toàn bộ' FROM DUAL
UNION ALL SELECT 'B1', 'will', 'noun', '/wɪl/', 'ý chí, di chúc' FROM DUAL
UNION ALL SELECT 'B1', 'win', 'noun', '/wɪn/', 'chiến thắng' FROM DUAL
UNION ALL SELECT 'B1', 'wing', 'noun', '/wɪŋ/', 'cánh' FROM DUAL
UNION ALL SELECT 'B1', 'within', 'preposition', '/wɪˈðɪn/', 'trong vòng, bên trong' FROM DUAL
UNION ALL SELECT 'B1', 'wonder', 'noun', '/ˈwʌndə(r)/', 'kỳ quan, sự ngạc nhiên' FROM DUAL
UNION ALL SELECT 'B1', 'wool', 'noun', '/wʊl/', 'len' FROM DUAL
UNION ALL SELECT 'B1', 'worldwide', 'adjective', '/ˈwɜːldwaɪd/', 'toàn thế giới' FROM DUAL
UNION ALL SELECT 'B1', 'worry', 'noun', '/ˈwʌri/', 'sự lo lắng' FROM DUAL
UNION ALL SELECT 'B1', 'worse', 'noun', '/wɜːs/', 'điều tệ hơn' FROM DUAL
UNION ALL SELECT 'B1', 'worst', 'noun', '/wɜːst/', 'điều tệ nhất' FROM DUAL
UNION ALL SELECT 'B1', 'worth', 'adjective', '/wɜːθ/', 'đáng giá' FROM DUAL
UNION ALL SELECT 'B1', 'written', 'adjective', '/ˈrɪtn/', 'bằng văn bản, dạng viết' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B1', 'yard', 'noun', '/jɑːd/', 'sân, thước Anh' FROM DUAL
UNION ALL SELECT 'B1', 'youth', 'noun', '/juːθ/', 'tuổi trẻ, thanh niên' FROM DUAL
UNION ALL SELECT 'B2', 'abandon', 'verb', '/əˈbændən/', 'bỏ rơi, từ bỏ' FROM DUAL
UNION ALL SELECT 'B2', 'absolute', 'adjective', '/ˈæbsəluːt/', 'tuyệt đối' FROM DUAL
UNION ALL SELECT 'B2', 'absorb', 'verb', '/əbˈzɔːb/', 'hấp thụ' FROM DUAL
UNION ALL SELECT 'B2', 'abstract', 'adjective', '/ˈæbstrækt/', 'trừu tượng' FROM DUAL
UNION ALL SELECT 'B2', 'academic', 'noun', '/ˌækəˈdemɪk/', 'giảng viên đại học' FROM DUAL
UNION ALL SELECT 'B2', 'acceptable', 'adjective', '/əkˈseptəbl/', 'có thể chấp nhận' FROM DUAL
UNION ALL SELECT 'B2', 'accompany', 'verb', '/əˈkʌmpəni/', 'đi cùng, đệm nhạc' FROM DUAL
UNION ALL SELECT 'B2', 'account', 'verb', '/əˈkaʊnt/', 'giải thích, chiếm (tỷ lệ)' FROM DUAL
UNION ALL SELECT 'B2', 'accurate', 'adjective', '/ˈækjərət/', 'chính xác' FROM DUAL
UNION ALL SELECT 'B2', 'accuse', 'verb', '/əˈkjuːz/', 'buộc tội' FROM DUAL
UNION ALL SELECT 'B2', 'acknowledge', 'verb', '/əkˈnɒlɪdʒ/', 'thừa nhận' FROM DUAL
UNION ALL SELECT 'B2', 'acquire', 'verb', '/əˈkwaɪə(r)/', 'thu được, đạt được' FROM DUAL
UNION ALL SELECT 'B2', 'actual', 'adjective', '/ˈæktʃuəl/', 'thực tế' FROM DUAL
UNION ALL SELECT 'B2', 'adapt', 'verb', '/əˈdæpt/', 'thích nghi, chuyển thể' FROM DUAL
UNION ALL SELECT 'B2', 'additional', 'adjective', '/əˈdɪʃənl/', 'thêm vào, bổ sung' FROM DUAL
UNION ALL SELECT 'B2', 'address', 'verb', '/əˈdres/', 'giải quyết, phát biểu' FROM DUAL
UNION ALL SELECT 'B2', 'administration', 'noun', '/ədˌmɪnɪˈstreɪʃn/', 'sự quản lý, chính quyền' FROM DUAL
UNION ALL SELECT 'B2', 'adopt', 'verb', '/əˈdɒpt/', 'nhận nuôi, áp dụng' FROM DUAL
UNION ALL SELECT 'B2', 'advance', 'noun', '/ədˈvɑːns/', 'sự tiến bộ' FROM DUAL
UNION ALL SELECT 'B2', 'affair', 'noun', '/əˈfeə(r)/', 'công việc, sự việc' FROM DUAL
UNION ALL SELECT 'B2', 'afterwards', 'adverb', '/ˈɑːftəwədz/', 'sau đó' FROM DUAL
UNION ALL SELECT 'B2', 'agency', 'noun', '/ˈeɪdʒənsi/', 'cơ quan, đại lý' FROM DUAL
UNION ALL SELECT 'B2', 'agenda', 'noun', '/əˈdʒendə/', 'chương trình nghị sự' FROM DUAL
UNION ALL SELECT 'B2', 'aggressive', 'adjective', '/əˈɡresɪv/', 'hung hăng, xông xáo' FROM DUAL
UNION ALL SELECT 'B2', 'aid', 'noun', '/eɪd/', 'sự viện trợ' FROM DUAL
UNION ALL SELECT 'B2', 'aircraft', 'noun', '/ˈeəkrɑːft/', 'máy bay' FROM DUAL
UNION ALL SELECT 'B2', 'alarm', 'verb', '/əˈlɑːm/', 'làm hoảng sợ' FROM DUAL
UNION ALL SELECT 'B2', 'alter', 'verb', '/ˈɔːltə(r)/', 'thay đổi' FROM DUAL
UNION ALL SELECT 'B2', 'amount', 'verb', '/əˈmaʊnt/', 'lên tới' FROM DUAL
UNION ALL SELECT 'B2', 'anger', 'noun', '/ˈæŋɡə(r)/', 'sự tức giận' FROM DUAL
UNION ALL SELECT 'B2', 'angle', 'noun', '/ˈæŋɡl/', 'góc' FROM DUAL
UNION ALL SELECT 'B2', 'anniversary', 'noun', '/ˌænɪˈvɜːsəri/', 'ngày kỷ niệm' FROM DUAL
UNION ALL SELECT 'B2', 'annual', 'adjective', '/ˈænjuəl/', 'hằng năm' FROM DUAL
UNION ALL SELECT 'B2', 'anxious', 'adjective', '/ˈæŋkʃəs/', 'lo âu' FROM DUAL
UNION ALL SELECT 'B2', 'apparent', 'adjective', '/əˈpærənt/', 'rõ ràng, có vẻ' FROM DUAL
UNION ALL SELECT 'B2', 'apparently', 'adverb', '/əˈpærəntli/', 'hình như' FROM DUAL
UNION ALL SELECT 'B2', 'appeal', 'noun', '/əˈpiːl/', 'lời kêu gọi, sức hấp dẫn' FROM DUAL
UNION ALL SELECT 'B2', 'approach', 'noun', '/əˈprəʊtʃ/', 'cách tiếp cận' FROM DUAL
UNION ALL SELECT 'B2', 'appropriate', 'adjective', '/əˈprəʊpriət/', 'thích hợp' FROM DUAL
UNION ALL SELECT 'B2', 'approval', 'noun', '/əˈpruːvl/', 'sự chấp thuận' FROM DUAL
UNION ALL SELECT 'B2', 'approve', 'verb', '/əˈpruːv/', 'tán thành, phê duyệt' FROM DUAL
UNION ALL SELECT 'B2', 'arise', 'verb', '/əˈraɪz/', 'nảy sinh' FROM DUAL
UNION ALL SELECT 'B2', 'armed', 'adjective', '/ɑːmd/', 'có vũ trang' FROM DUAL
UNION ALL SELECT 'B2', 'arms', 'noun', '/ɑːmz/', 'vũ khí' FROM DUAL
UNION ALL SELECT 'B2', 'artificial', 'adjective', '/ˌɑːtɪˈfɪʃl/', 'nhân tạo' FROM DUAL
UNION ALL SELECT 'B2', 'artistic', 'adjective', '/ɑːˈtɪstɪk/', 'có tính nghệ thuật' FROM DUAL
UNION ALL SELECT 'B2', 'ashamed', 'adjective', '/əˈʃeɪmd/', 'xấu hổ' FROM DUAL
UNION ALL SELECT 'B2', 'aspect', 'noun', '/ˈæspekt/', 'khía cạnh' FROM DUAL
UNION ALL SELECT 'B2', 'assess', 'verb', '/əˈses/', 'đánh giá' FROM DUAL
UNION ALL SELECT 'B2', 'assessment', 'noun', '/əˈsesmənt/', 'sự đánh giá' FROM DUAL
UNION ALL SELECT 'B2', 'associate', 'verb', '/əˈsəʊʃieɪt/', 'liên tưởng, kết giao' FROM DUAL
UNION ALL SELECT 'B2', 'associated', 'adjective', '/əˈsəʊʃieɪtɪd/', 'có liên quan' FROM DUAL
UNION ALL SELECT 'B2', 'association', 'noun', '/əˌsəʊsiˈeɪʃn/', 'hiệp hội, sự liên kết' FROM DUAL
UNION ALL SELECT 'B2', 'assume', 'verb', '/əˈsjuːm/', 'cho rằng, đảm nhận' FROM DUAL
UNION ALL SELECT 'B2', 'attempt', 'noun', '/əˈtempt/', 'sự cố gắng, nỗ lực' FROM DUAL
UNION ALL SELECT 'B2', 'audio', 'adjective', '/ˈɔːdiəʊ/', 'thuộc âm thanh' FROM DUAL
UNION ALL SELECT 'B2', 'automatic', 'adjective', '/ˌɔːtəˈmætɪk/', 'tự động' FROM DUAL
UNION ALL SELECT 'B2', 'automatically', 'adverb', '/ˌɔːtəˈmætɪkli/', 'một cách tự động' FROM DUAL
UNION ALL SELECT 'B2', 'awareness', 'noun', '/əˈweənəs/', 'nhận thức' FROM DUAL
UNION ALL SELECT 'B2', 'back', 'verb', '/bæk/', 'ủng hộ, lùi lại' FROM DUAL
UNION ALL SELECT 'B2', 'bacteria', 'noun', '/bækˈtɪəriə/', 'vi khuẩn' FROM DUAL
UNION ALL SELECT 'B2', 'badge', 'noun', '/bædʒ/', 'huy hiệu' FROM DUAL
UNION ALL SELECT 'B2', 'bar', 'verb', '/bɑː(r)/', 'cấm, chặn' FROM DUAL
UNION ALL SELECT 'B2', 'barrier', 'noun', '/ˈbæriə(r)/', 'rào cản' FROM DUAL
UNION ALL SELECT 'B2', 'basically', 'adverb', '/ˈbeɪsɪkli/', 'về cơ bản' FROM DUAL
UNION ALL SELECT 'B2', 'battle', 'verb', '/ˈbætl/', 'chiến đấu' FROM DUAL
UNION ALL SELECT 'B2', 'beg', 'verb', '/beɡ/', 'cầu xin' FROM DUAL
UNION ALL SELECT 'B2', 'being', 'noun', '/ˈbiːɪŋ/', 'sự tồn tại, sinh vật' FROM DUAL
UNION ALL SELECT 'B2', 'bent', 'adjective', '/bent/', 'bị cong' FROM DUAL
UNION ALL SELECT 'B2', 'bet', 'verb', '/bet/', 'cá cược' FROM DUAL
UNION ALL SELECT 'B2', 'beyond', 'preposition', '/bɪˈjɒnd/', 'vượt quá, bên kia' FROM DUAL
UNION ALL SELECT 'B2', 'bill', 'verb', '/bɪl/', 'gửi hóa đơn' FROM DUAL
UNION ALL SELECT 'B2', 'biological', 'adjective', '/ˌbaɪəˈlɒdʒɪkl/', 'thuộc sinh học' FROM DUAL
UNION ALL SELECT 'B2', 'bitter', 'adjective', '/ˈbɪtə(r)/', 'đắng, cay đắng' FROM DUAL
UNION ALL SELECT 'B2', 'blame', 'verb', '/bleɪm/', 'đổ lỗi' FROM DUAL
UNION ALL SELECT 'B2', 'blind', 'noun', '/blaɪnd/', 'rèm che' FROM DUAL
UNION ALL SELECT 'B2', 'bond', 'noun', '/bɒnd/', 'mối liên kết, trái phiếu' FROM DUAL
UNION ALL SELECT 'B2', 'bound', 'adjective', '/baʊnd/', 'chắc chắn sẽ, bị ràng buộc' FROM DUAL
UNION ALL SELECT 'B2', 'breast', 'noun', '/brest/', 'ngực' FROM DUAL
UNION ALL SELECT 'B2', 'briefly', 'adverb', '/ˈbriːfli/', 'ngắn gọn' FROM DUAL
UNION ALL SELECT 'B2', 'broad', 'adjective', '/brɔːd/', 'rộng' FROM DUAL
UNION ALL SELECT 'B2', 'broadcast', 'verb', '/ˈbrɔːdkɑːst/', 'phát sóng' FROM DUAL
UNION ALL SELECT 'B2', 'budget', 'noun', '/ˈbʌdʒɪt/', 'ngân sách' FROM DUAL
UNION ALL SELECT 'B2', 'bullet', 'noun', '/ˈbʊlɪt/', 'viên đạn' FROM DUAL
UNION ALL SELECT 'B2', 'bunch', 'noun', '/bʌntʃ/', 'bó, chùm' FROM DUAL
UNION ALL SELECT 'B2', 'burn', 'noun', '/bɜːn/', 'vết bỏng' FROM DUAL
UNION ALL SELECT 'B2', 'bush', 'noun', '/bʊʃ/', 'bụi cây' FROM DUAL
UNION ALL SELECT 'B2', 'but', 'preposition', '/bʌt/', 'ngoại trừ' FROM DUAL
UNION ALL SELECT 'B2', 'cabin', 'noun', '/ˈkæbɪn/', 'cabin, nhà gỗ nhỏ' FROM DUAL
UNION ALL SELECT 'B2', 'cable', 'noun', '/ˈkeɪbl/', 'dây cáp' FROM DUAL
UNION ALL SELECT 'B2', 'calculate', 'verb', '/ˈkælkjuleɪt/', 'tính toán' FROM DUAL
UNION ALL SELECT 'B2', 'cancel', 'verb', '/ˈkænsl/', 'hủy bỏ' FROM DUAL
UNION ALL SELECT 'B2', 'cancer', 'noun', '/ˈkænsə(r)/', 'bệnh ung thư' FROM DUAL
UNION ALL SELECT 'B2', 'capable', 'adjective', '/ˈkeɪpəbl/', 'có khả năng' FROM DUAL
UNION ALL SELECT 'B2', 'capacity', 'noun', '/kəˈpæsəti/', 'sức chứa, năng lực' FROM DUAL
UNION ALL SELECT 'B2', 'capture', 'verb', '/ˈkæptʃə(r)/', 'bắt giữ, ghi lại' FROM DUAL
UNION ALL SELECT 'B2', 'cast', 'noun', '/kɑːst/', 'dàn diễn viên' FROM DUAL
UNION ALL SELECT 'B2', 'casual', 'adjective', '/ˈkæʒuəl/', 'bình thường, thoải mái' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B2', 'catch', 'noun', '/kætʃ/', 'sự bắt bóng' FROM DUAL
UNION ALL SELECT 'B2', 'cell', 'noun', '/sel/', 'tế bào, xà lim' FROM DUAL
UNION ALL SELECT 'B2', 'chain', 'verb', '/tʃeɪn/', 'xích lại' FROM DUAL
UNION ALL SELECT 'B2', 'chair', 'verb', '/tʃeə(r)/', 'chủ trì' FROM DUAL
UNION ALL SELECT 'B2', 'chairman', 'noun', '/ˈtʃeəmən/', 'chủ tịch' FROM DUAL
UNION ALL SELECT 'B2', 'challenge', 'verb', '/ˈtʃælɪndʒ/', 'thách thức' FROM DUAL
UNION ALL SELECT 'B2', 'characteristic', 'noun', '/ˌkærəktəˈrɪstɪk/', 'đặc điểm, đặc tính' FROM DUAL
UNION ALL SELECT 'B2', 'chart', 'verb', '/tʃɑːt/', 'vẽ biểu đồ, ghi lại' FROM DUAL
UNION ALL SELECT 'B2', 'chief', 'adjective', '/tʃiːf/', 'chính, đứng đầu' FROM DUAL
UNION ALL SELECT 'B2', 'circumstance', 'noun', '/ˈsɜːkəmstəns/', 'hoàn cảnh' FROM DUAL
UNION ALL SELECT 'B2', 'citizen', 'noun', '/ˈsɪtɪzn/', 'công dân' FROM DUAL
UNION ALL SELECT 'B2', 'civil', 'adjective', '/ˈsɪvl/', 'thuộc công dân, dân sự' FROM DUAL
UNION ALL SELECT 'B2', 'classic', 'adjective', '/ˈklæsɪk/', 'kinh điển' FROM DUAL
UNION ALL SELECT 'B2', 'close', 'adverb', '/kləʊs/', 'gần' FROM DUAL
UNION ALL SELECT 'B2', 'closely', 'adverb', '/ˈkləʊsli/', 'chặt chẽ, sát sao' FROM DUAL
UNION ALL SELECT 'B2', 'collapse', 'verb', '/kəˈlæps/', 'sụp đổ' FROM DUAL
UNION ALL SELECT 'B2', 'combination', 'noun', '/ˌkɒmbɪˈneɪʃn/', 'sự kết hợp' FROM DUAL
UNION ALL SELECT 'B2', 'comfort', 'noun', '/ˈkʌmfət/', 'sự thoải mái, an ủi' FROM DUAL
UNION ALL SELECT 'B2', 'command', 'noun', '/kəˈmɑːnd/', 'mệnh lệnh' FROM DUAL
UNION ALL SELECT 'B2', 'commission', 'noun', '/kəˈmɪʃn/', 'tiền hoa hồng, ủy ban' FROM DUAL
UNION ALL SELECT 'B2', 'commitment', 'noun', '/kəˈmɪtmənt/', 'sự cam kết' FROM DUAL
UNION ALL SELECT 'B2', 'committee', 'noun', '/kəˈmɪti/', 'ủy ban' FROM DUAL
UNION ALL SELECT 'B2', 'commonly', 'adverb', '/ˈkɒmənli/', 'thường thường' FROM DUAL
UNION ALL SELECT 'B2', 'complex', 'noun', '/ˈkɒmpleks/', 'khu liên hợp' FROM DUAL
UNION ALL SELECT 'B2', 'complicated', 'adjective', '/ˈkɒmplɪkeɪtɪd/', 'phức tạp' FROM DUAL
UNION ALL SELECT 'B2', 'component', 'noun', '/kəmˈpəʊnənt/', 'thành phần' FROM DUAL
UNION ALL SELECT 'B2', 'concentration', 'noun', '/ˌkɒnsnˈtreɪʃn/', 'sự tập trung' FROM DUAL
UNION ALL SELECT 'B2', 'concept', 'noun', '/ˈkɒnsept/', 'khái niệm' FROM DUAL
UNION ALL SELECT 'B2', 'concern', 'noun', '/kənˈsɜːn/', 'mối lo ngại' FROM DUAL
UNION ALL SELECT 'B2', 'concerned', 'adjective', '/kənˈsɜːnd/', 'lo lắng, có liên quan' FROM DUAL
UNION ALL SELECT 'B2', 'conduct', 'verb', '/kənˈdʌkt/', 'tiến hành' FROM DUAL
UNION ALL SELECT 'B2', 'conflict', 'noun', '/ˈkɒnflɪkt/', 'xung đột' FROM DUAL
UNION ALL SELECT 'B2', 'confusing', 'adjective', '/kənˈfjuːzɪŋ/', 'gây khó hiểu' FROM DUAL
UNION ALL SELECT 'B2', 'conscious', 'adjective', '/ˈkɒnʃəs/', 'tỉnh táo, có ý thức' FROM DUAL
UNION ALL SELECT 'B2', 'conservative', 'adjective', '/kənˈsɜːvətɪv/', 'bảo thủ' FROM DUAL
UNION ALL SELECT 'B2', 'consideration', 'noun', '/kənˌsɪdəˈreɪʃn/', 'sự cân nhắc' FROM DUAL
UNION ALL SELECT 'B2', 'consistent', 'adjective', '/kənˈsɪstənt/', 'nhất quán' FROM DUAL
UNION ALL SELECT 'B2', 'constant', 'adjective', '/ˈkɒnstənt/', 'liên tục, không đổi' FROM DUAL
UNION ALL SELECT 'B2', 'constantly', 'adverb', '/ˈkɒnstəntli/', 'liên tục' FROM DUAL
UNION ALL SELECT 'B2', 'construct', 'verb', '/kənˈstrʌkt/', 'xây dựng' FROM DUAL
UNION ALL SELECT 'B2', 'construction', 'noun', '/kənˈstrʌkʃn/', 'sự xây dựng' FROM DUAL
UNION ALL SELECT 'B2', 'contemporary', 'adjective', '/kənˈtemprəri/', 'đương đại' FROM DUAL
UNION ALL SELECT 'B2', 'contest', 'noun', '/ˈkɒntest/', 'cuộc thi' FROM DUAL
UNION ALL SELECT 'B2', 'contract', 'noun', '/ˈkɒntrækt/', 'hợp đồng' FROM DUAL
UNION ALL SELECT 'B2', 'contribute', 'verb', '/kənˈtrɪbjuːt/', 'đóng góp' FROM DUAL
UNION ALL SELECT 'B2', 'contribution', 'noun', '/ˌkɒntrɪˈbjuːʃn/', 'sự đóng góp' FROM DUAL
UNION ALL SELECT 'B2', 'convert', 'verb', '/kənˈvɜːt/', 'chuyển đổi' FROM DUAL
UNION ALL SELECT 'B2', 'convinced', 'adjective', '/kənˈvɪnst/', 'tin chắc' FROM DUAL
UNION ALL SELECT 'B2', 'core', 'noun', '/kɔː(r)/', 'cốt lõi' FROM DUAL
UNION ALL SELECT 'B2', 'corporate', 'adjective', '/ˈkɔːpərət/', 'thuộc công ty' FROM DUAL
UNION ALL SELECT 'B2', 'council', 'noun', '/ˈkaʊnsl/', 'hội đồng' FROM DUAL
UNION ALL SELECT 'B2', 'county', 'noun', '/ˈkaʊnti/', 'hạt, quận' FROM DUAL
UNION ALL SELECT 'B2', 'courage', 'noun', '/ˈkʌrɪdʒ/', 'lòng dũng cảm' FROM DUAL
UNION ALL SELECT 'B2', 'crash', 'noun', '/kræʃ/', 'vụ va chạm, sự sụp đổ' FROM DUAL
UNION ALL SELECT 'B2', 'creation', 'noun', '/kriˈeɪʃn/', 'sự sáng tạo' FROM DUAL
UNION ALL SELECT 'B2', 'credit', 'verb', '/ˈkredɪt/', 'ghi có, công nhận' FROM DUAL
UNION ALL SELECT 'B2', 'crew', 'noun', '/kruː/', 'phi hành đoàn, đoàn làm phim' FROM DUAL
UNION ALL SELECT 'B2', 'crisis', 'noun', '/ˈkraɪsɪs/', 'khủng hoảng' FROM DUAL
UNION ALL SELECT 'B2', 'criterion', 'noun', '/kraɪˈtɪəriən/', 'tiêu chí' FROM DUAL
UNION ALL SELECT 'B2', 'critic', 'noun', '/ˈkrɪtɪk/', 'nhà phê bình' FROM DUAL
UNION ALL SELECT 'B2', 'critical', 'adjective', '/ˈkrɪtɪkl/', 'phê phán, quan trọng' FROM DUAL
UNION ALL SELECT 'B2', 'criticism', 'noun', '/ˈkrɪtɪsɪzəm/', 'sự chỉ trích' FROM DUAL
UNION ALL SELECT 'B2', 'criticize', 'verb', '/ˈkrɪtɪsaɪz/', 'chỉ trích' FROM DUAL
UNION ALL SELECT 'B2', 'crop', 'noun', '/krɒp/', 'vụ mùa, cây trồng' FROM DUAL
UNION ALL SELECT 'B2', 'crucial', 'adjective', '/ˈkruːʃl/', 'cốt yếu' FROM DUAL
UNION ALL SELECT 'B2', 'cry', 'noun', '/kraɪ/', 'tiếng khóc, tiếng kêu' FROM DUAL
UNION ALL SELECT 'B2', 'cure', 'noun', '/kjʊə(r)/', 'cách chữa trị' FROM DUAL
UNION ALL SELECT 'B2', 'current', 'noun', '/ˈkʌrənt/', 'dòng chảy, dòng điện' FROM DUAL
UNION ALL SELECT 'B2', 'curve', 'noun', '/kɜːv/', 'đường cong' FROM DUAL
UNION ALL SELECT 'B2', 'curved', 'adjective', '/kɜːvd/', 'cong' FROM DUAL
UNION ALL SELECT 'B2', 'date', 'verb', '/deɪt/', 'hẹn hò, ghi ngày' FROM DUAL
UNION ALL SELECT 'B2', 'debate', 'noun', '/dɪˈbeɪt/', 'cuộc tranh luận' FROM DUAL
UNION ALL SELECT 'B2', 'debt', 'noun', '/det/', 'món nợ' FROM DUAL
UNION ALL SELECT 'B2', 'decent', 'adjective', '/ˈdiːsnt/', 'tử tế, kha khá' FROM DUAL
UNION ALL SELECT 'B2', 'declare', 'verb', '/dɪˈkleə(r)/', 'tuyên bố' FROM DUAL
UNION ALL SELECT 'B2', 'decline', 'verb', '/dɪˈklaɪn/', 'suy giảm, từ chối' FROM DUAL
UNION ALL SELECT 'B2', 'decoration', 'noun', '/ˌdekəˈreɪʃn/', 'đồ trang trí' FROM DUAL
UNION ALL SELECT 'B2', 'decrease', 'verb', '/dɪˈkriːs/', 'giảm' FROM DUAL
UNION ALL SELECT 'B2', 'deeply', 'adverb', '/ˈdiːpli/', 'sâu sắc' FROM DUAL
UNION ALL SELECT 'B2', 'defeat', 'verb', '/dɪˈfiːt/', 'đánh bại' FROM DUAL
UNION ALL SELECT 'B2', 'defence', 'noun', '/dɪˈfens/', 'sự phòng thủ' FROM DUAL
UNION ALL SELECT 'B2', 'defend', 'verb', '/dɪˈfend/', 'bảo vệ, phòng thủ' FROM DUAL
UNION ALL SELECT 'B2', 'delay', 'verb', '/dɪˈleɪ/', 'trì hoãn' FROM DUAL
UNION ALL SELECT 'B2', 'deliberate', 'adjective', '/dɪˈlɪbərət/', 'cố ý' FROM DUAL
UNION ALL SELECT 'B2', 'deliberately', 'adverb', '/dɪˈlɪbərətli/', 'một cách cố ý' FROM DUAL
UNION ALL SELECT 'B2', 'delight', 'noun', '/dɪˈlaɪt/', 'niềm vui sướng' FROM DUAL
UNION ALL SELECT 'B2', 'delighted', 'adjective', '/dɪˈlaɪtɪd/', 'vui mừng' FROM DUAL
UNION ALL SELECT 'B2', 'delivery', 'noun', '/dɪˈlɪvəri/', 'sự giao hàng' FROM DUAL
UNION ALL SELECT 'B2', 'demand', 'verb', '/dɪˈmɑːnd/', 'đòi hỏi' FROM DUAL
UNION ALL SELECT 'B2', 'demonstrate', 'verb', '/ˈdemənstreɪt/', 'chứng minh, biểu tình' FROM DUAL
UNION ALL SELECT 'B2', 'deny', 'verb', '/dɪˈnaɪ/', 'phủ nhận' FROM DUAL
UNION ALL SELECT 'B2', 'depressed', 'adjective', '/dɪˈprest/', 'chán nản, trầm cảm' FROM DUAL
UNION ALL SELECT 'B2', 'depressing', 'adjective', '/dɪˈpresɪŋ/', 'gây chán nản' FROM DUAL
UNION ALL SELECT 'B2', 'depth', 'noun', '/depθ/', 'độ sâu' FROM DUAL
UNION ALL SELECT 'B2', 'desert', 'verb', '/dɪˈzɜːt/', 'bỏ rơi' FROM DUAL
UNION ALL SELECT 'B2', 'deserve', 'verb', '/dɪˈzɜːv/', 'xứng đáng' FROM DUAL
UNION ALL SELECT 'B2', 'desire', 'noun', '/dɪˈzaɪə(r)/', 'khát khao' FROM DUAL
UNION ALL SELECT 'B2', 'desperate', 'adjective', '/ˈdespərət/', 'tuyệt vọng' FROM DUAL
UNION ALL SELECT 'B2', 'detailed', 'adjective', '/ˈdiːteɪld/', 'chi tiết' FROM DUAL
UNION ALL SELECT 'B2', 'detect', 'verb', '/dɪˈtekt/', 'phát hiện' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B2', 'dig', 'verb', '/dɪɡ/', 'đào' FROM DUAL
UNION ALL SELECT 'B2', 'disc', 'noun', '/dɪsk/', 'đĩa' FROM DUAL
UNION ALL SELECT 'B2', 'discipline', 'noun', '/ˈdɪsəplɪn/', 'kỷ luật' FROM DUAL
UNION ALL SELECT 'B2', 'discount', 'verb', '/dɪsˈkaʊnt/', 'giảm giá' FROM DUAL
UNION ALL SELECT 'B2', 'dishonest', 'adjective', '/dɪsˈɒnɪst/', 'không trung thực' FROM DUAL
UNION ALL SELECT 'B2', 'dismiss', 'verb', '/dɪsˈmɪs/', 'sa thải, gạt bỏ' FROM DUAL
UNION ALL SELECT 'B2', 'display', 'verb', '/dɪˈspleɪ/', 'trưng bày, hiển thị' FROM DUAL
UNION ALL SELECT 'B2', 'distribute', 'verb', '/dɪˈstrɪbjuːt/', 'phân phối' FROM DUAL
UNION ALL SELECT 'B2', 'distribution', 'noun', '/ˌdɪstrɪˈbjuːʃn/', 'sự phân phối' FROM DUAL
UNION ALL SELECT 'B2', 'district', 'noun', '/ˈdɪstrɪkt/', 'quận, huyện' FROM DUAL
UNION ALL SELECT 'B2', 'divide', 'noun', '/dɪˈvaɪd/', 'sự chia rẽ' FROM DUAL
UNION ALL SELECT 'B2', 'division', 'noun', '/dɪˈvɪʒn/', 'sự phân chia, bộ phận' FROM DUAL
UNION ALL SELECT 'B2', 'document', 'verb', '/ˈdɒkjument/', 'ghi chép lại' FROM DUAL
UNION ALL SELECT 'B2', 'domestic', 'adjective', '/dəˈmestɪk/', 'trong nước, trong nhà' FROM DUAL
UNION ALL SELECT 'B2', 'dominate', 'verb', '/ˈdɒmɪneɪt/', 'chi phối, thống trị' FROM DUAL
UNION ALL SELECT 'B2', 'downwards', 'adverb', '/ˈdaʊnwədz/', 'xuống dưới' FROM DUAL
UNION ALL SELECT 'B2', 'dozen', 'noun', '/ˈdʌzn/', 'một tá' FROM DUAL
UNION ALL SELECT 'B2', 'draft', 'noun', '/drɑːft/', 'bản nháp' FROM DUAL
UNION ALL SELECT 'B2', 'drag', 'verb', '/dræɡ/', 'kéo lê' FROM DUAL
UNION ALL SELECT 'B2', 'dramatically', 'adverb', '/drəˈmætɪkli/', 'một cách đột ngột' FROM DUAL
UNION ALL SELECT 'B2', 'earnings', 'noun', '/ˈɜːnɪŋz/', 'thu nhập' FROM DUAL
UNION ALL SELECT 'B2', 'ease', 'noun', '/iːz/', 'sự dễ dàng' FROM DUAL
UNION ALL SELECT 'B2', 'echo', 'noun', '/ˈekəʊ/', 'tiếng vang' FROM DUAL
UNION ALL SELECT 'B2', 'efficient', 'adjective', '/ɪˈfɪʃnt/', 'hiệu quả' FROM DUAL
UNION ALL SELECT 'B2', 'elderly', 'adjective', '/ˈeldəli/', 'cao tuổi' FROM DUAL
UNION ALL SELECT 'B2', 'elsewhere', 'adverb', '/ˌelsˈweə(r)/', 'ở nơi khác' FROM DUAL
UNION ALL SELECT 'B2', 'emerge', 'verb', '/iˈmɜːdʒ/', 'nổi lên, xuất hiện' FROM DUAL
UNION ALL SELECT 'B2', 'emotional', 'adjective', '/ɪˈməʊʃənl/', 'đầy cảm xúc' FROM DUAL
UNION ALL SELECT 'B2', 'emphasis', 'noun', '/ˈemfəsɪs/', 'sự nhấn mạnh' FROM DUAL
UNION ALL SELECT 'B2', 'emphasize', 'verb', '/ˈemfəsaɪz/', 'nhấn mạnh' FROM DUAL
UNION ALL SELECT 'B2', 'enable', 'verb', '/ɪˈneɪbl/', 'cho phép, làm cho có thể' FROM DUAL
UNION ALL SELECT 'B2', 'encounter', 'verb', '/ɪnˈkaʊntə(r)/', 'bắt gặp, đối mặt' FROM DUAL
UNION ALL SELECT 'B2', 'engage', 'verb', '/ɪnˈɡeɪdʒ/', 'thu hút, tham gia' FROM DUAL
UNION ALL SELECT 'B2', 'enhance', 'verb', '/ɪnˈhɑːns/', 'nâng cao' FROM DUAL
UNION ALL SELECT 'B2', 'enquiry', 'noun', '/ɪnˈkwaɪəri/', 'câu hỏi, sự điều tra' FROM DUAL
UNION ALL SELECT 'B2', 'ensure', 'verb', '/ɪnˈʃʊə(r)/', 'đảm bảo' FROM DUAL
UNION ALL SELECT 'B2', 'enthusiasm', 'noun', '/ɪnˈθjuːziæzəm/', 'sự nhiệt tình' FROM DUAL
UNION ALL SELECT 'B2', 'enthusiastic', 'adjective', '/ɪnˌθjuːziˈæstɪk/', 'nhiệt tình' FROM DUAL
UNION ALL SELECT 'B2', 'entire', 'adjective', '/ɪnˈtaɪə(r)/', 'toàn bộ' FROM DUAL
UNION ALL SELECT 'B2', 'entirely', 'adverb', '/ɪnˈtaɪəli/', 'hoàn toàn' FROM DUAL
UNION ALL SELECT 'B2', 'equal', 'verb', '/ˈiːkwəl/', 'bằng' FROM DUAL
UNION ALL SELECT 'B2', 'establish', 'verb', '/ɪˈstæblɪʃ/', 'thành lập' FROM DUAL
UNION ALL SELECT 'B2', 'estate', 'noun', '/ɪˈsteɪt/', 'bất động sản, điền trang' FROM DUAL
UNION ALL SELECT 'B2', 'estimate', 'verb', '/ˈestɪmeɪt/', 'ước tính' FROM DUAL
UNION ALL SELECT 'B2', 'ethical', 'adjective', '/ˈeθɪkl/', 'thuộc đạo đức' FROM DUAL
UNION ALL SELECT 'B2', 'evaluate', 'verb', '/ɪˈvæljueɪt/', 'đánh giá' FROM DUAL
UNION ALL SELECT 'B2', 'even', 'adjective', '/ˈiːvn/', 'bằng phẳng, đều' FROM DUAL
UNION ALL SELECT 'B2', 'evil', 'noun', '/ˈiːvl/', 'cái ác' FROM DUAL
UNION ALL SELECT 'B2', 'excuse', 'noun', '/ɪkˈskjuːs/', 'lời bào chữa' FROM DUAL
UNION ALL SELECT 'B2', 'executive', 'noun', '/ɪɡˈzekjətɪv/', 'giám đốc điều hành' FROM DUAL
UNION ALL SELECT 'B2', 'existence', 'noun', '/ɪɡˈzɪstəns/', 'sự tồn tại' FROM DUAL
UNION ALL SELECT 'B2', 'expectation', 'noun', '/ˌekspekˈteɪʃn/', 'sự kỳ vọng' FROM DUAL
UNION ALL SELECT 'B2', 'expense', 'noun', '/ɪkˈspens/', 'chi phí' FROM DUAL
UNION ALL SELECT 'B2', 'exploration', 'noun', '/ˌekspləˈreɪʃn/', 'sự thám hiểm' FROM DUAL
UNION ALL SELECT 'B2', 'expose', 'verb', '/ɪkˈspəʊz/', 'phơi bày' FROM DUAL
UNION ALL SELECT 'B2', 'extend', 'verb', '/ɪkˈstend/', 'mở rộng, kéo dài' FROM DUAL
UNION ALL SELECT 'B2', 'extent', 'noun', '/ɪkˈstent/', 'mức độ' FROM DUAL
UNION ALL SELECT 'B2', 'external', 'adjective', '/ɪkˈstɜːnl/', 'bên ngoài' FROM DUAL
UNION ALL SELECT 'B2', 'extraordinary', 'adjective', '/ɪkˈstrɔːdnri/', 'phi thường' FROM DUAL
UNION ALL SELECT 'B2', 'extreme', 'noun', '/ɪkˈstriːm/', 'thái cực' FROM DUAL
UNION ALL SELECT 'B2', 'failure', 'noun', '/ˈfeɪljə(r)/', 'sự thất bại' FROM DUAL
UNION ALL SELECT 'B2', 'faith', 'noun', '/feɪθ/', 'niềm tin, đức tin' FROM DUAL
UNION ALL SELECT 'B2', 'favour', 'noun', '/ˈfeɪvə(r)/', 'sự giúp đỡ, ân huệ' FROM DUAL
UNION ALL SELECT 'B2', 'feed', 'noun', '/fiːd/', 'thức ăn (gia súc), nguồn cấp tin' FROM DUAL
UNION ALL SELECT 'B2', 'feedback', 'noun', '/ˈfiːdbæk/', 'phản hồi' FROM DUAL
UNION ALL SELECT 'B2', 'feel', 'noun', '/fiːl/', 'cảm giác' FROM DUAL
UNION ALL SELECT 'B2', 'fellow', 'adjective', '/ˈfeləʊ/', 'đồng (đồng nghiệp, đồng hương)' FROM DUAL
UNION ALL SELECT 'B2', 'figure', 'verb', '/ˈfɪɡə(r)/', 'cho rằng, tính toán' FROM DUAL
UNION ALL SELECT 'B2', 'finance', 'noun', '/ˈfaɪnæns/', 'tài chính' FROM DUAL
UNION ALL SELECT 'B2', 'finding', 'noun', '/ˈfaɪndɪŋ/', 'phát hiện, kết quả nghiên cứu' FROM DUAL
UNION ALL SELECT 'B2', 'firm', 'adjective', '/fɜːm/', 'chắc chắn, kiên quyết' FROM DUAL
UNION ALL SELECT 'B2', 'fix', 'noun', '/fɪks/', 'giải pháp nhanh' FROM DUAL
UNION ALL SELECT 'B2', 'flame', 'noun', '/fleɪm/', 'ngọn lửa' FROM DUAL
UNION ALL SELECT 'B2', 'flash', 'noun', '/flæʃ/', 'tia chớp, ánh đèn' FROM DUAL
UNION ALL SELECT 'B2', 'flexible', 'adjective', '/ˈfleksəbl/', 'linh hoạt' FROM DUAL
UNION ALL SELECT 'B2', 'float', 'verb', '/fləʊt/', 'nổi' FROM DUAL
UNION ALL SELECT 'B2', 'fold', 'noun', '/fəʊld/', 'nếp gấp' FROM DUAL
UNION ALL SELECT 'B2', 'folding', 'adjective', '/ˈfəʊldɪŋ/', 'gấp lại được' FROM DUAL
UNION ALL SELECT 'B2', 'following', 'noun', '/ˈfɒləʊɪŋ/', 'người theo dõi, ủng hộ' FROM DUAL
UNION ALL SELECT 'B2', 'forgive', 'verb', '/fəˈɡɪv/', 'tha thứ' FROM DUAL
UNION ALL SELECT 'B2', 'former', 'adjective', '/ˈfɔːmə(r)/', 'trước đây, cựu' FROM DUAL
UNION ALL SELECT 'B2', 'fortunate', 'adjective', '/ˈfɔːtʃənət/', 'may mắn' FROM DUAL
UNION ALL SELECT 'B2', 'forward', 'verb', '/ˈfɔːwəd/', 'chuyển tiếp' FROM DUAL
UNION ALL SELECT 'B2', 'found', 'verb', '/faʊnd/', 'thành lập' FROM DUAL
UNION ALL SELECT 'B2', 'foundation', 'noun', '/faʊnˈdeɪʃn/', 'nền móng, quỹ' FROM DUAL
UNION ALL SELECT 'B2', 'founder', 'noun', '/ˈfaʊndə(r)/', 'người sáng lập' FROM DUAL
UNION ALL SELECT 'B2', 'fraction', 'noun', '/ˈfrækʃn/', 'phân số, phần nhỏ' FROM DUAL
UNION ALL SELECT 'B2', 'free', 'verb', '/friː/', 'giải phóng' FROM DUAL
UNION ALL SELECT 'B2', 'frequent', 'adjective', '/ˈfriːkwənt/', 'thường xuyên' FROM DUAL
UNION ALL SELECT 'B2', 'frightening', 'adjective', '/ˈfraɪtnɪŋ/', 'đáng sợ' FROM DUAL
UNION ALL SELECT 'B2', 'fully', 'adverb', '/ˈfʊli/', 'đầy đủ, hoàn toàn' FROM DUAL
UNION ALL SELECT 'B2', 'fund', 'noun', '/fʌnd/', 'quỹ' FROM DUAL
UNION ALL SELECT 'B2', 'fundamental', 'adjective', '/ˌfʌndəˈmentl/', 'cơ bản, nền tảng' FROM DUAL
UNION ALL SELECT 'B2', 'funding', 'noun', '/ˈfʌndɪŋ/', 'nguồn vốn, tài trợ' FROM DUAL
UNION ALL SELECT 'B2', 'funeral', 'noun', '/ˈfjuːnərəl/', 'đám tang' FROM DUAL
UNION ALL SELECT 'B2', 'furthermore', 'adverb', '/ˌfɜːðəˈmɔː(r)/', 'hơn nữa' FROM DUAL
UNION ALL SELECT 'B2', 'gain', 'verb', '/ɡeɪn/', 'đạt được, tăng' FROM DUAL
UNION ALL SELECT 'B2', 'gang', 'noun', '/ɡæŋ/', 'băng nhóm' FROM DUAL
UNION ALL SELECT 'B2', 'gender', 'noun', '/ˈdʒendə(r)/', 'giới tính' FROM DUAL
UNION ALL SELECT 'B2', 'gene', 'noun', '/dʒiːn/', 'gen' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B2', 'general', 'noun', '/ˈdʒenrəl/', 'vị tướng' FROM DUAL
UNION ALL SELECT 'B2', 'generate', 'verb', '/ˈdʒenəreɪt/', 'tạo ra' FROM DUAL
UNION ALL SELECT 'B2', 'genetic', 'adjective', '/dʒəˈnetɪk/', 'thuộc di truyền' FROM DUAL
UNION ALL SELECT 'B2', 'genre', 'noun', '/ˈʒɒnrə/', 'thể loại' FROM DUAL
UNION ALL SELECT 'B2', 'genuine', 'adjective', '/ˈdʒenjuɪn/', 'thật, chân thành' FROM DUAL
UNION ALL SELECT 'B2', 'gesture', 'noun', '/ˈdʒestʃə(r)/', 'cử chỉ' FROM DUAL
UNION ALL SELECT 'B2', 'golden', 'adjective', '/ˈɡəʊldən/', 'bằng vàng, quý giá' FROM DUAL
UNION ALL SELECT 'B2', 'governor', 'noun', '/ˈɡʌvənə(r)/', 'thống đốc' FROM DUAL
UNION ALL SELECT 'B2', 'graphic', 'adjective', '/ˈɡræfɪk/', 'thuộc đồ họa' FROM DUAL
UNION ALL SELECT 'B2', 'graphics', 'noun', '/ˈɡræfɪks/', 'đồ họa' FROM DUAL
UNION ALL SELECT 'B2', 'grave', 'noun', '/ɡreɪv/', 'ngôi mộ' FROM DUAL
UNION ALL SELECT 'B2', 'greatly', 'adverb', '/ˈɡreɪtli/', 'rất nhiều' FROM DUAL
UNION ALL SELECT 'B2', 'greenhouse', 'noun', '/ˈɡriːnhaʊs/', 'nhà kính' FROM DUAL
UNION ALL SELECT 'B2', 'guarantee', 'verb', '/ˌɡærənˈtiː/', 'bảo đảm' FROM DUAL
UNION ALL SELECT 'B2', 'guideline', 'noun', '/ˈɡaɪdlaɪn/', 'hướng dẫn, nguyên tắc chỉ đạo' FROM DUAL
UNION ALL SELECT 'B2', 'habitat', 'noun', '/ˈhæbɪtæt/', 'môi trường sống' FROM DUAL
UNION ALL SELECT 'B2', 'handle', 'verb', '/ˈhændl/', 'xử lý' FROM DUAL
UNION ALL SELECT 'B2', 'handle', 'noun', '/ˈhændl/', 'tay cầm' FROM DUAL
UNION ALL SELECT 'B2', 'harm', 'noun', '/hɑːm/', 'sự tổn hại' FROM DUAL
UNION ALL SELECT 'B2', 'harmful', 'adjective', '/ˈhɑːmfl/', 'có hại' FROM DUAL
UNION ALL SELECT 'B2', 'headquarters', 'noun', '/ˌhedˈkwɔːtəz/', 'trụ sở chính' FROM DUAL
UNION ALL SELECT 'B2', 'heal', 'verb', '/hiːl/', 'chữa lành' FROM DUAL
UNION ALL SELECT 'B2', 'hearing', 'noun', '/ˈhɪərɪŋ/', 'thính giác, phiên điều trần' FROM DUAL
UNION ALL SELECT 'B2', 'heaven', 'noun', '/ˈhevn/', 'thiên đường' FROM DUAL
UNION ALL SELECT 'B2', 'hell', 'noun', '/hel/', 'địa ngục' FROM DUAL
UNION ALL SELECT 'B2', 'hence', 'adverb', '/hens/', 'do đó' FROM DUAL
UNION ALL SELECT 'B2', 'heritage', 'noun', '/ˈherɪtɪdʒ/', 'di sản' FROM DUAL
UNION ALL SELECT 'B2', 'hidden', 'adjective', '/ˈhɪdn/', 'ẩn giấu' FROM DUAL
UNION ALL SELECT 'B2', 'hierarchy', 'noun', '/ˈhaɪərɑːki/', 'hệ thống thứ bậc' FROM DUAL
UNION ALL SELECT 'B2', 'highlight', 'noun', '/ˈhaɪlaɪt/', 'điểm nổi bật' FROM DUAL
UNION ALL SELECT 'B2', 'hire', 'noun', '/ˈhaɪə(r)/', 'sự thuê' FROM DUAL
UNION ALL SELECT 'B2', 'hold', 'noun', '/həʊld/', 'sự nắm giữ' FROM DUAL
UNION ALL SELECT 'B2', 'holy', 'adjective', '/ˈhəʊli/', 'thần thánh, linh thiêng' FROM DUAL
UNION ALL SELECT 'B2', 'honour', 'noun', '/ˈɒnə(r)/', 'danh dự, vinh dự' FROM DUAL
UNION ALL SELECT 'B2', 'horizon', 'noun', '/həˈraɪzn/', 'đường chân trời' FROM DUAL
UNION ALL SELECT 'B2', 'hostile', 'adjective', '/ˈhɒstaɪl/', 'thù địch' FROM DUAL
UNION ALL SELECT 'B2', 'household', 'noun', '/ˈhaʊshəʊld/', 'hộ gia đình' FROM DUAL
UNION ALL SELECT 'B2', 'housing', 'noun', '/ˈhaʊzɪŋ/', 'nhà ở' FROM DUAL
UNION ALL SELECT 'B2', 'hunger', 'noun', '/ˈhʌŋɡə(r)/', 'cơn đói, nạn đói' FROM DUAL
UNION ALL SELECT 'B2', 'hurt', 'adjective', '/hɜːt/', 'bị thương, tổn thương' FROM DUAL
UNION ALL SELECT 'B2', 'hypothesis', 'noun', '/haɪˈpɒθəsɪs/', 'giả thuyết' FROM DUAL
UNION ALL SELECT 'B2', 'ideal', 'noun', '/aɪˈdiːəl/', 'lý tưởng' FROM DUAL
UNION ALL SELECT 'B2', 'identical', 'adjective', '/aɪˈdentɪkl/', 'giống hệt' FROM DUAL
UNION ALL SELECT 'B2', 'identification', 'noun', '/aɪˌdentɪfɪˈkeɪʃn/', 'sự nhận dạng' FROM DUAL
UNION ALL SELECT 'B2', 'ignorance', 'noun', '/ˈɪɡnərəns/', 'sự thiếu hiểu biết' FROM DUAL
UNION ALL SELECT 'B2', 'illustrate', 'verb', '/ˈɪləstreɪt/', 'minh họa' FROM DUAL
UNION ALL SELECT 'B2', 'illustration', 'noun', '/ˌɪləˈstreɪʃn/', 'hình minh họa' FROM DUAL
UNION ALL SELECT 'B2', 'imagination', 'noun', '/ɪˌmædʒɪˈneɪʃn/', 'trí tưởng tượng' FROM DUAL
UNION ALL SELECT 'B2', 'impact', 'verb', '/ɪmˈpækt/', 'tác động' FROM DUAL
UNION ALL SELECT 'B2', 'implication', 'noun', '/ˌɪmplɪˈkeɪʃn/', 'hàm ý, hệ quả' FROM DUAL
UNION ALL SELECT 'B2', 'imply', 'verb', '/ɪmˈplaɪ/', 'ngụ ý' FROM DUAL
UNION ALL SELECT 'B2', 'impose', 'verb', '/ɪmˈpəʊz/', 'áp đặt' FROM DUAL
UNION ALL SELECT 'B2', 'incident', 'noun', '/ˈɪnsɪdənt/', 'sự cố' FROM DUAL
UNION ALL SELECT 'B2', 'increasingly', 'adverb', '/ɪnˈkriːsɪŋli/', 'ngày càng' FROM DUAL
UNION ALL SELECT 'B2', 'index', 'noun', '/ˈɪndeks/', 'chỉ số, mục lục' FROM DUAL
UNION ALL SELECT 'B2', 'indication', 'noun', '/ˌɪndɪˈkeɪʃn/', 'dấu hiệu' FROM DUAL
UNION ALL SELECT 'B2', 'industrial', 'adjective', '/ɪnˈdʌstriəl/', 'thuộc công nghiệp' FROM DUAL
UNION ALL SELECT 'B2', 'inevitable', 'adjective', '/ɪnˈevɪtəbl/', 'không thể tránh khỏi' FROM DUAL
UNION ALL SELECT 'B2', 'infection', 'noun', '/ɪnˈfekʃn/', 'sự nhiễm trùng' FROM DUAL
UNION ALL SELECT 'B2', 'inflation', 'noun', '/ɪnˈfleɪʃn/', 'lạm phát' FROM DUAL
UNION ALL SELECT 'B2', 'influence', 'verb', '/ˈɪnfluəns/', 'ảnh hưởng' FROM DUAL
UNION ALL SELECT 'B2', 'initial', 'adjective', '/ɪˈnɪʃl/', 'ban đầu' FROM DUAL
UNION ALL SELECT 'B2', 'initially', 'adverb', '/ɪˈnɪʃəli/', 'lúc đầu' FROM DUAL
UNION ALL SELECT 'B2', 'initiative', 'noun', '/ɪˈnɪʃətɪv/', 'sáng kiến' FROM DUAL
UNION ALL SELECT 'B2', 'inner', 'adjective', '/ˈɪnə(r)/', 'bên trong' FROM DUAL
UNION ALL SELECT 'B2', 'input', 'noun', '/ˈɪnpʊt/', 'đầu vào, ý kiến đóng góp' FROM DUAL
UNION ALL SELECT 'B2', 'insight', 'noun', '/ˈɪnsaɪt/', 'sự hiểu biết sâu sắc' FROM DUAL
UNION ALL SELECT 'B2', 'insist', 'verb', '/ɪnˈsɪst/', 'khăng khăng' FROM DUAL
UNION ALL SELECT 'B2', 'inspire', 'verb', '/ɪnˈspaɪə(r)/', 'truyền cảm hứng' FROM DUAL
UNION ALL SELECT 'B2', 'instance', 'noun', '/ˈɪnstəns/', 'ví dụ, trường hợp' FROM DUAL
UNION ALL SELECT 'B2', 'institute', 'noun', '/ˈɪnstɪtjuːt/', 'viện' FROM DUAL
UNION ALL SELECT 'B2', 'institution', 'noun', '/ˌɪnstɪˈtjuːʃn/', 'thể chế, tổ chức' FROM DUAL
UNION ALL SELECT 'B2', 'insurance', 'noun', '/ɪnˈʃʊərəns/', 'bảo hiểm' FROM DUAL
UNION ALL SELECT 'B2', 'intellectual', 'adjective', '/ˌɪntəˈlektʃuəl/', 'thuộc trí tuệ' FROM DUAL
UNION ALL SELECT 'B2', 'intense', 'adjective', '/ɪnˈtens/', 'dữ dội, mãnh liệt' FROM DUAL
UNION ALL SELECT 'B2', 'interaction', 'noun', '/ˌɪntərˈækʃn/', 'sự tương tác' FROM DUAL
UNION ALL SELECT 'B2', 'internal', 'adjective', '/ɪnˈtɜːnl/', 'bên trong, nội bộ' FROM DUAL
UNION ALL SELECT 'B2', 'interpret', 'verb', '/ɪnˈtɜːprɪt/', 'giải thích, phiên dịch' FROM DUAL
UNION ALL SELECT 'B2', 'interpretation', 'noun', '/ɪnˌtɜːprɪˈteɪʃn/', 'sự giải thích, cách hiểu' FROM DUAL
UNION ALL SELECT 'B2', 'interrupt', 'verb', '/ˌɪntəˈrʌpt/', 'ngắt lời, làm gián đoạn' FROM DUAL
UNION ALL SELECT 'B2', 'interval', 'noun', '/ˈɪntəvl/', 'khoảng thời gian, giờ nghỉ' FROM DUAL
UNION ALL SELECT 'B2', 'investigation', 'noun', '/ɪnˌvestɪˈɡeɪʃn/', 'cuộc điều tra' FROM DUAL
UNION ALL SELECT 'B2', 'investment', 'noun', '/ɪnˈvestmənt/', 'sự đầu tư' FROM DUAL
UNION ALL SELECT 'B2', 'investor', 'noun', '/ɪnˈvestə(r)/', 'nhà đầu tư' FROM DUAL
UNION ALL SELECT 'B2', 'isolate', 'verb', '/ˈaɪsəleɪt/', 'cô lập' FROM DUAL
UNION ALL SELECT 'B2', 'isolated', 'adjective', '/ˈaɪsəleɪtɪd/', 'bị cô lập, hẻo lánh' FROM DUAL
UNION ALL SELECT 'B2', 'issue', 'verb', '/ˈɪʃuː/', 'ban hành, phát hành' FROM DUAL
UNION ALL SELECT 'B2', 'jail', 'noun', '/dʒeɪl/', 'nhà tù' FROM DUAL
UNION ALL SELECT 'B2', 'joint', 'adjective', '/dʒɔɪnt/', 'chung' FROM DUAL
UNION ALL SELECT 'B2', 'joint', 'noun', '/dʒɔɪnt/', 'khớp xương' FROM DUAL
UNION ALL SELECT 'B2', 'journalism', 'noun', '/ˈdʒɜːnəlɪzəm/', 'nghề báo' FROM DUAL
UNION ALL SELECT 'B2', 'judgement', 'noun', '/ˈdʒʌdʒmənt/', 'sự phán xét, óc phán đoán' FROM DUAL
UNION ALL SELECT 'B2', 'junior', 'adjective', '/ˈdʒuːniə(r)/', 'cấp dưới, trẻ hơn' FROM DUAL
UNION ALL SELECT 'B2', 'jury', 'noun', '/ˈdʒʊəri/', 'bồi thẩm đoàn' FROM DUAL
UNION ALL SELECT 'B2', 'justice', 'noun', '/ˈdʒʌstɪs/', 'công lý' FROM DUAL
UNION ALL SELECT 'B2', 'justify', 'verb', '/ˈdʒʌstɪfaɪ/', 'biện minh' FROM DUAL
UNION ALL SELECT 'B2', 'labour', 'noun', '/ˈleɪbə(r)/', 'lao động' FROM DUAL
UNION ALL SELECT 'B2', 'landscape', 'noun', '/ˈlændskeɪp/', 'phong cảnh' FROM DUAL
UNION ALL SELECT 'B2', 'largely', 'adverb', '/ˈlɑːdʒli/', 'phần lớn' FROM DUAL
UNION ALL SELECT 'B2', 'lately', 'adverb', '/ˈleɪtli/', 'gần đây' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B2', 'launch', 'verb', '/lɔːntʃ/', 'ra mắt, phóng' FROM DUAL
UNION ALL SELECT 'B2', 'leadership', 'noun', '/ˈliːdəʃɪp/', 'khả năng lãnh đạo' FROM DUAL
UNION ALL SELECT 'B2', 'league', 'noun', '/liːɡ/', 'liên đoàn, giải đấu' FROM DUAL
UNION ALL SELECT 'B2', 'lean', 'verb', '/liːn/', 'dựa, nghiêng' FROM DUAL
UNION ALL SELECT 'B2', 'leave', 'noun', '/liːv/', 'kỳ nghỉ phép' FROM DUAL
UNION ALL SELECT 'B2', 'level', 'verb', '/ˈlevl/', 'san bằng' FROM DUAL
UNION ALL SELECT 'B2', 'licence', 'noun', '/ˈlaɪsns/', 'giấy phép' FROM DUAL
UNION ALL SELECT 'B2', 'limited', 'adjective', '/ˈlɪmɪtɪd/', 'có hạn' FROM DUAL
UNION ALL SELECT 'B2', 'lively', 'adjective', '/ˈlaɪvli/', 'sôi nổi' FROM DUAL
UNION ALL SELECT 'B2', 'load', 'noun', '/ləʊd/', 'vật nặng, khối lượng' FROM DUAL
UNION ALL SELECT 'B2', 'logical', 'adjective', '/ˈlɒdʒɪkl/', 'hợp lý, logic' FROM DUAL
UNION ALL SELECT 'B2', 'long-term', 'adjective', '/ˌlɒŋ ˈtɜːm/', 'dài hạn' FROM DUAL
UNION ALL SELECT 'B2', 'loose', 'adjective', '/luːs/', 'lỏng, rộng' FROM DUAL
UNION ALL SELECT 'B2', 'lord', 'noun', '/lɔːd/', 'chúa tể, ngài' FROM DUAL
UNION ALL SELECT 'B2', 'low', 'adverb', '/ləʊ/', 'thấp' FROM DUAL
UNION ALL SELECT 'B2', 'lower', 'verb', '/ˈləʊə(r)/', 'hạ thấp' FROM DUAL
UNION ALL SELECT 'B2', 'lyric', 'noun', '/ˈlɪrɪk/', 'lời bài hát' FROM DUAL
UNION ALL SELECT 'B2', 'madness', 'noun', '/ˈmædnəs/', 'sự điên rồ' FROM DUAL
UNION ALL SELECT 'B2', 'magic', 'adjective', '/ˈmædʒɪk/', 'kỳ diệu' FROM DUAL
UNION ALL SELECT 'B2', 'mainstream', 'noun', '/ˈmeɪnstriːm/', 'xu hướng chính' FROM DUAL
UNION ALL SELECT 'B2', 'maintain', 'verb', '/meɪnˈteɪn/', 'duy trì' FROM DUAL
UNION ALL SELECT 'B2', 'major', 'noun', '/ˈmeɪdʒə(r)/', 'chuyên ngành, thiếu tá' FROM DUAL
UNION ALL SELECT 'B2', 'majority', 'noun', '/məˈdʒɒrəti/', 'đa số' FROM DUAL
UNION ALL SELECT 'B2', 'manufacture', 'verb', '/ˌmænjuˈfæktʃə(r)/', 'sản xuất' FROM DUAL
UNION ALL SELECT 'B2', 'manufacturing', 'noun', '/ˌmænjuˈfæktʃərɪŋ/', 'ngành sản xuất' FROM DUAL
UNION ALL SELECT 'B2', 'map', 'verb', '/mæp/', 'vẽ bản đồ' FROM DUAL
UNION ALL SELECT 'B2', 'margin', 'noun', '/ˈmɑːdʒɪn/', 'lề, biên độ' FROM DUAL
UNION ALL SELECT 'B2', 'mark', 'verb', '/mɑːk/', 'đánh dấu, chấm điểm' FROM DUAL
UNION ALL SELECT 'B2', 'massive', 'adjective', '/ˈmæsɪv/', 'to lớn' FROM DUAL
UNION ALL SELECT 'B2', 'master', 'noun', '/ˈmɑːstə(r)/', 'bậc thầy, chủ' FROM DUAL
UNION ALL SELECT 'B2', 'match', 'verb', '/mætʃ/', 'phù hợp, khớp' FROM DUAL
UNION ALL SELECT 'B2', 'mate', 'noun', '/meɪt/', 'bạn bè' FROM DUAL
UNION ALL SELECT 'B2', 'matter', 'noun', '/ˈmætə(r)/', 'vấn đề, vật chất' FROM DUAL
UNION ALL SELECT 'B2', 'mature', 'adjective', '/məˈtʃʊə(r)/', 'trưởng thành' FROM DUAL
UNION ALL SELECT 'B2', 'maximum', 'adjective', '/ˈmæksɪməm/', 'tối đa' FROM DUAL
UNION ALL SELECT 'B2', 'meaningful', 'adjective', '/ˈmiːnɪŋfl/', 'có ý nghĩa' FROM DUAL
UNION ALL SELECT 'B2', 'measurement', 'noun', '/ˈmeʒəmənt/', 'sự đo lường, số đo' FROM DUAL
UNION ALL SELECT 'B2', 'mechanism', 'noun', '/ˈmekənɪzəm/', 'cơ chế' FROM DUAL
UNION ALL SELECT 'B2', 'medium', 'noun', '/ˈmiːdiəm/', 'phương tiện' FROM DUAL
UNION ALL SELECT 'B2', 'melt', 'verb', '/melt/', 'tan chảy' FROM DUAL
UNION ALL SELECT 'B2', 'mere', 'adjective', '/mɪə(r)/', 'chỉ là' FROM DUAL
UNION ALL SELECT 'B2', 'merely', 'adverb', '/ˈmɪəli/', 'chỉ đơn thuần' FROM DUAL
UNION ALL SELECT 'B2', 'mess', 'verb', '/mes/', 'làm bừa bộn' FROM DUAL
UNION ALL SELECT 'B2', 'military', 'adjective', '/ˈmɪlətri/', 'thuộc quân sự' FROM DUAL
UNION ALL SELECT 'B2', 'minimum', 'adjective', '/ˈmɪnɪməm/', 'tối thiểu' FROM DUAL
UNION ALL SELECT 'B2', 'minister', 'noun', '/ˈmɪnɪstə(r)/', 'bộ trưởng' FROM DUAL
UNION ALL SELECT 'B2', 'minor', 'adjective', '/ˈmaɪnə(r)/', 'nhỏ, không quan trọng' FROM DUAL
UNION ALL SELECT 'B2', 'minority', 'noun', '/maɪˈnɒrəti/', 'thiểu số' FROM DUAL
UNION ALL SELECT 'B2', 'mission', 'noun', '/ˈmɪʃn/', 'nhiệm vụ, sứ mệnh' FROM DUAL
UNION ALL SELECT 'B2', 'mobile', 'noun', '/ˈməʊbaɪl/', 'điện thoại di động' FROM DUAL
UNION ALL SELECT 'B2', 'moderate', 'adjective', '/ˈmɒdərət/', 'vừa phải' FROM DUAL
UNION ALL SELECT 'B2', 'modify', 'verb', '/ˈmɒdɪfaɪ/', 'sửa đổi' FROM DUAL
UNION ALL SELECT 'B2', 'monitor', 'verb', '/ˈmɒnɪtə(r)/', 'giám sát' FROM DUAL
UNION ALL SELECT 'B2', 'moral', 'adjective', '/ˈmɒrəl/', 'thuộc đạo đức' FROM DUAL
UNION ALL SELECT 'B2', 'motivation', 'noun', '/ˌməʊtɪˈveɪʃn/', 'động lực' FROM DUAL
UNION ALL SELECT 'B2', 'motor', 'noun', '/ˈməʊtə(r)/', 'động cơ' FROM DUAL
UNION ALL SELECT 'B2', 'mount', 'verb', '/maʊnt/', 'tăng lên, leo lên' FROM DUAL
UNION ALL SELECT 'B2', 'multiple', 'adjective', '/ˈmʌltɪpl/', 'nhiều, đa dạng' FROM DUAL
UNION ALL SELECT 'B2', 'mysterious', 'adjective', '/mɪˈstɪəriəs/', 'bí ẩn' FROM DUAL
UNION ALL SELECT 'B2', 'myth', 'noun', '/mɪθ/', 'thần thoại, chuyện hoang đường' FROM DUAL
UNION ALL SELECT 'B2', 'naked', 'adjective', '/ˈneɪkɪd/', 'trần truồng' FROM DUAL
UNION ALL SELECT 'B2', 'negotiate', 'verb', '/nɪˈɡəʊʃieɪt/', 'đàm phán' FROM DUAL
UNION ALL SELECT 'B2', 'nerve', 'noun', '/nɜːv/', 'dây thần kinh, sự can đảm' FROM DUAL
UNION ALL SELECT 'B2', 'neutral', 'adjective', '/ˈnjuːtrəl/', 'trung lập' FROM DUAL
UNION ALL SELECT 'B2', 'nevertheless', 'adverb', '/ˌnevəðəˈles/', 'tuy nhiên' FROM DUAL
UNION ALL SELECT 'B2', 'nightmare', 'noun', '/ˈnaɪtmeə(r)/', 'cơn ác mộng' FROM DUAL
UNION ALL SELECT 'B2', 'nonetheless', 'adverb', '/ˌnʌnðəˈles/', 'tuy nhiên' FROM DUAL
UNION ALL SELECT 'B2', 'norm', 'noun', '/nɔːm/', 'chuẩn mực' FROM DUAL
UNION ALL SELECT 'B2', 'notion', 'noun', '/ˈnəʊʃn/', 'khái niệm, ý niệm' FROM DUAL
UNION ALL SELECT 'B2', 'numerous', 'adjective', '/ˈnjuːmərəs/', 'nhiều' FROM DUAL
UNION ALL SELECT 'B2', 'obligation', 'noun', '/ˌɒblɪˈɡeɪʃn/', 'nghĩa vụ' FROM DUAL
UNION ALL SELECT 'B2', 'observation', 'noun', '/ˌɒbzəˈveɪʃn/', 'sự quan sát' FROM DUAL
UNION ALL SELECT 'B2', 'observe', 'verb', '/əbˈzɜːv/', 'quan sát' FROM DUAL
UNION ALL SELECT 'B2', 'obtain', 'verb', '/əbˈteɪn/', 'đạt được' FROM DUAL
UNION ALL SELECT 'B2', 'occasionally', 'adverb', '/əˈkeɪʒnəli/', 'thỉnh thoảng' FROM DUAL
UNION ALL SELECT 'B2', 'occupation', 'noun', '/ˌɒkjuˈpeɪʃn/', 'nghề nghiệp, sự chiếm đóng' FROM DUAL
UNION ALL SELECT 'B2', 'occupy', 'verb', '/ˈɒkjupaɪ/', 'chiếm giữ' FROM DUAL
UNION ALL SELECT 'B2', 'offence', 'noun', '/əˈfens/', 'sự vi phạm, sự xúc phạm' FROM DUAL
UNION ALL SELECT 'B2', 'offend', 'verb', '/əˈfend/', 'xúc phạm' FROM DUAL
UNION ALL SELECT 'B2', 'offensive', 'adjective', '/əˈfensɪv/', 'gây khó chịu, xúc phạm' FROM DUAL
UNION ALL SELECT 'B2', 'ongoing', 'adjective', '/ˈɒnɡəʊɪŋ/', 'đang diễn ra' FROM DUAL
UNION ALL SELECT 'B2', 'operate', 'verb', '/ˈɒpəreɪt/', 'vận hành, phẫu thuật' FROM DUAL
UNION ALL SELECT 'B2', 'opponent', 'noun', '/əˈpəʊnənt/', 'đối thủ' FROM DUAL
UNION ALL SELECT 'B2', 'oppose', 'verb', '/əˈpəʊz/', 'phản đối' FROM DUAL
UNION ALL SELECT 'B2', 'opposed', 'adjective', '/əˈpəʊzd/', 'phản đối' FROM DUAL
UNION ALL SELECT 'B2', 'opposition', 'noun', '/ˌɒpəˈzɪʃn/', 'sự phản đối, phe đối lập' FROM DUAL
UNION ALL SELECT 'B2', 'organ', 'noun', '/ˈɔːɡən/', 'cơ quan (cơ thể), đàn organ' FROM DUAL
UNION ALL SELECT 'B2', 'outcome', 'noun', '/ˈaʊtkʌm/', 'kết quả' FROM DUAL
UNION ALL SELECT 'B2', 'output', 'noun', '/ˈaʊtpʊt/', 'sản lượng, đầu ra' FROM DUAL
UNION ALL SELECT 'B2', 'outstanding', 'adjective', '/aʊtˈstændɪŋ/', 'nổi bật' FROM DUAL
UNION ALL SELECT 'B2', 'overall', 'adjective', '/ˌəʊvərˈɔːl/', 'tổng thể' FROM DUAL
UNION ALL SELECT 'B2', 'overcome', 'verb', '/ˌəʊvəˈkʌm/', 'vượt qua' FROM DUAL
UNION ALL SELECT 'B2', 'overseas', 'adjective', '/ˌəʊvəˈsiːz/', 'ở nước ngoài' FROM DUAL
UNION ALL SELECT 'B2', 'owe', 'verb', '/əʊ/', 'nợ' FROM DUAL
UNION ALL SELECT 'B2', 'ownership', 'noun', '/ˈəʊnəʃɪp/', 'quyền sở hữu' FROM DUAL
UNION ALL SELECT 'B2', 'pace', 'noun', '/peɪs/', 'nhịp độ' FROM DUAL
UNION ALL SELECT 'B2', 'panel', 'noun', '/ˈpænl/', 'ban hội thẩm, tấm ván' FROM DUAL
UNION ALL SELECT 'B2', 'parallel', 'adjective', '/ˈpærəlel/', 'song song' FROM DUAL
UNION ALL SELECT 'B2', 'participant', 'noun', '/pɑːˈtɪsɪpənt/', 'người tham gia' FROM DUAL
UNION ALL SELECT 'B2', 'participation', 'noun', '/pɑːˌtɪsɪˈpeɪʃn/', 'sự tham gia' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B2', 'partnership', 'noun', '/ˈpɑːtnəʃɪp/', 'quan hệ đối tác' FROM DUAL
UNION ALL SELECT 'B2', 'passage', 'noun', '/ˈpæsɪdʒ/', 'đoạn văn, lối đi' FROM DUAL
UNION ALL SELECT 'B2', 'passive', 'adjective', '/ˈpæsɪv/', 'thụ động' FROM DUAL
UNION ALL SELECT 'B2', 'patience', 'noun', '/ˈpeɪʃns/', 'sự kiên nhẫn' FROM DUAL
UNION ALL SELECT 'B2', 'patient', 'adjective', '/ˈpeɪʃnt/', 'kiên nhẫn' FROM DUAL
UNION ALL SELECT 'B2', 'pause', 'verb', '/pɔːz/', 'tạm dừng' FROM DUAL
UNION ALL SELECT 'B2', 'peak', 'noun', '/piːk/', 'đỉnh' FROM DUAL
UNION ALL SELECT 'B2', 'peer', 'noun', '/pɪə(r)/', 'người ngang hàng, bạn đồng trang lứa' FROM DUAL
UNION ALL SELECT 'B2', 'penalty', 'noun', '/ˈpenəlti/', 'hình phạt, quả phạt đền' FROM DUAL
UNION ALL SELECT 'B2', 'perceive', 'verb', '/pəˈsiːv/', 'nhận thức' FROM DUAL
UNION ALL SELECT 'B2', 'perception', 'noun', '/pəˈsepʃn/', 'sự nhận thức' FROM DUAL
UNION ALL SELECT 'B2', 'permanent', 'adjective', '/ˈpɜːmənənt/', 'lâu dài, vĩnh viễn' FROM DUAL
UNION ALL SELECT 'B2', 'permit', 'verb', '/pəˈmɪt/', 'cho phép' FROM DUAL
UNION ALL SELECT 'B2', 'persist', 'verb', '/pəˈsɪst/', 'kiên trì, dai dẳng' FROM DUAL
UNION ALL SELECT 'B2', 'perspective', 'noun', '/pəˈspektɪv/', 'quan điểm, góc nhìn' FROM DUAL
UNION ALL SELECT 'B2', 'phase', 'noun', '/feɪz/', 'giai đoạn' FROM DUAL
UNION ALL SELECT 'B2', 'phenomenon', 'noun', '/fəˈnɒmɪnən/', 'hiện tượng' FROM DUAL
UNION ALL SELECT 'B2', 'philosophy', 'noun', '/fəˈlɒsəfi/', 'triết học' FROM DUAL
UNION ALL SELECT 'B2', 'pile', 'noun', '/paɪl/', 'đống' FROM DUAL
UNION ALL SELECT 'B2', 'pitch', 'noun', '/pɪtʃ/', 'sân bóng, cao độ' FROM DUAL
UNION ALL SELECT 'B2', 'plain', 'adjective', '/pleɪn/', 'đơn giản, rõ ràng' FROM DUAL
UNION ALL SELECT 'B2', 'plead', 'verb', '/pliːd/', 'cầu xin, biện hộ' FROM DUAL
UNION ALL SELECT 'B2', 'pledge', 'noun', '/pledʒ/', 'lời cam kết' FROM DUAL
UNION ALL SELECT 'B2', 'plenty', 'adverb', '/ˈplenti/', 'rất nhiều' FROM DUAL
UNION ALL SELECT 'B2', 'pole', 'noun', '/pəʊl/', 'cái cột, cực' FROM DUAL
UNION ALL SELECT 'B2', 'poll', 'noun', '/pəʊl/', 'cuộc thăm dò ý kiến' FROM DUAL
UNION ALL SELECT 'B2', 'pose', 'verb', '/pəʊz/', 'đặt ra, tạo dáng' FROM DUAL
UNION ALL SELECT 'B2', 'possess', 'verb', '/pəˈzes/', 'sở hữu' FROM DUAL
UNION ALL SELECT 'B2', 'potential', 'adjective', '/pəˈtenʃl/', 'tiềm năng' FROM DUAL
UNION ALL SELECT 'B2', 'potential', 'noun', '/pəˈtenʃl/', 'tiềm năng' FROM DUAL
UNION ALL SELECT 'B2', 'precede', 'verb', '/prɪˈsiːd/', 'đi trước' FROM DUAL
UNION ALL SELECT 'B2', 'precious', 'adjective', '/ˈpreʃəs/', 'quý giá' FROM DUAL
UNION ALL SELECT 'B2', 'precise', 'adjective', '/prɪˈsaɪs/', 'chính xác' FROM DUAL
UNION ALL SELECT 'B2', 'precisely', 'adverb', '/prɪˈsaɪsli/', 'một cách chính xác' FROM DUAL
UNION ALL SELECT 'B2', 'predictable', 'adjective', '/prɪˈdɪktəbl/', 'có thể đoán trước' FROM DUAL
UNION ALL SELECT 'B2', 'preference', 'noun', '/ˈprefrəns/', 'sự ưa thích hơn' FROM DUAL
UNION ALL SELECT 'B2', 'pregnant', 'adjective', '/ˈpreɡnənt/', 'mang thai' FROM DUAL
UNION ALL SELECT 'B2', 'premise', 'noun', '/ˈpremɪs/', 'tiền đề' FROM DUAL
UNION ALL SELECT 'B2', 'preparation', 'noun', '/ˌprepəˈreɪʃn/', 'sự chuẩn bị' FROM DUAL
UNION ALL SELECT 'B2', 'presence', 'noun', '/ˈprezns/', 'sự hiện diện' FROM DUAL
UNION ALL SELECT 'B2', 'preserve', 'verb', '/prɪˈzɜːv/', 'bảo tồn' FROM DUAL
UNION ALL SELECT 'B2', 'pressure', 'verb', '/ˈpreʃə(r)/', 'gây áp lực' FROM DUAL
UNION ALL SELECT 'B2', 'prevention', 'noun', '/prɪˈvenʃn/', 'sự phòng ngừa' FROM DUAL
UNION ALL SELECT 'B2', 'pride', 'noun', '/praɪd/', 'niềm tự hào' FROM DUAL
UNION ALL SELECT 'B2', 'primarily', 'adverb', '/praɪˈmerəli/', 'chủ yếu' FROM DUAL
UNION ALL SELECT 'B2', 'principal', 'adjective', '/ˈprɪnsəpl/', 'chính, chủ yếu' FROM DUAL
UNION ALL SELECT 'B2', 'principle', 'noun', '/ˈprɪnsəpl/', 'nguyên tắc' FROM DUAL
UNION ALL SELECT 'B2', 'prior', 'adjective', '/ˈpraɪə(r)/', 'trước' FROM DUAL
UNION ALL SELECT 'B2', 'priority', 'noun', '/praɪˈɒrəti/', 'sự ưu tiên' FROM DUAL
UNION ALL SELECT 'B2', 'privacy', 'noun', '/ˈprɪvəsi/', 'sự riêng tư' FROM DUAL
UNION ALL SELECT 'B2', 'probability', 'noun', '/ˌprɒbəˈbɪləti/', 'xác suất' FROM DUAL
UNION ALL SELECT 'B2', 'proceed', 'verb', '/prəˈsiːd/', 'tiến hành' FROM DUAL
UNION ALL SELECT 'B2', 'proceeds', 'noun', '/ˈprəʊsiːdz/', 'tiền thu được' FROM DUAL
UNION ALL SELECT 'B2', 'productive', 'adjective', '/prəˈdʌktɪv/', 'năng suất' FROM DUAL
UNION ALL SELECT 'B2', 'progress', 'verb', '/prəˈɡres/', 'tiến bộ' FROM DUAL
UNION ALL SELECT 'B2', 'prominent', 'adjective', '/ˈprɒmɪnənt/', 'nổi bật, nổi tiếng' FROM DUAL
UNION ALL SELECT 'B2', 'promise', 'noun', '/ˈprɒmɪs/', 'lời hứa' FROM DUAL
UNION ALL SELECT 'B2', 'promotion', 'noun', '/prəˈməʊʃn/', 'sự thăng chức, khuyến mãi' FROM DUAL
UNION ALL SELECT 'B2', 'prompt', 'verb', '/prɒmpt/', 'thúc giục, gợi ý' FROM DUAL
UNION ALL SELECT 'B2', 'proof', 'noun', '/pruːf/', 'bằng chứng' FROM DUAL
UNION ALL SELECT 'B2', 'proportion', 'noun', '/prəˈpɔːʃn/', 'tỷ lệ' FROM DUAL
UNION ALL SELECT 'B2', 'proposal', 'noun', '/prəˈpəʊzl/', 'đề xuất' FROM DUAL
UNION ALL SELECT 'B2', 'propose', 'verb', '/prəˈpəʊz/', 'đề xuất, cầu hôn' FROM DUAL
UNION ALL SELECT 'B2', 'prosecution', 'noun', '/ˌprɒsɪˈkjuːʃn/', 'sự truy tố' FROM DUAL
UNION ALL SELECT 'B2', 'prospect', 'noun', '/ˈprɒspekt/', 'triển vọng' FROM DUAL
UNION ALL SELECT 'B2', 'protein', 'noun', '/ˈprəʊtiːn/', 'chất đạm' FROM DUAL
UNION ALL SELECT 'B2', 'protester', 'noun', '/prəˈtestə(r)/', 'người biểu tình' FROM DUAL
UNION ALL SELECT 'B2', 'provided', 'conjunction', '/prəˈvaɪdɪd/', 'với điều kiện là' FROM DUAL
UNION ALL SELECT 'B2', 'psychological', 'adjective', '/ˌsaɪkəˈlɒdʒɪkl/', 'thuộc tâm lý' FROM DUAL
UNION ALL SELECT 'B2', 'psychology', 'noun', '/saɪˈkɒlədʒi/', 'tâm lý học' FROM DUAL
UNION ALL SELECT 'B2', 'pump', 'noun', '/pʌmp/', 'cái bơm' FROM DUAL
UNION ALL SELECT 'B2', 'pupil', 'noun', '/ˈpjuːpl/', 'học sinh' FROM DUAL
UNION ALL SELECT 'B2', 'purchase', 'verb', '/ˈpɜːtʃəs/', 'mua' FROM DUAL
UNION ALL SELECT 'B2', 'pursue', 'verb', '/pəˈsjuː/', 'theo đuổi' FROM DUAL
UNION ALL SELECT 'B2', 'pursuit', 'noun', '/pəˈsjuːt/', 'sự theo đuổi' FROM DUAL
UNION ALL SELECT 'B2', 'puzzle', 'noun', '/ˈpʌzl/', 'câu đố' FROM DUAL
UNION ALL SELECT 'B2', 'quest', 'noun', '/kwest/', 'cuộc tìm kiếm' FROM DUAL
UNION ALL SELECT 'B2', 'racial', 'adjective', '/ˈreɪʃl/', 'thuộc chủng tộc' FROM DUAL
UNION ALL SELECT 'B2', 'radical', 'adjective', '/ˈrædɪkl/', 'triệt để, cấp tiến' FROM DUAL
UNION ALL SELECT 'B2', 'rail', 'noun', '/reɪl/', 'đường ray, lan can' FROM DUAL
UNION ALL SELECT 'B2', 'random', 'adjective', '/ˈrændəm/', 'ngẫu nhiên' FROM DUAL
UNION ALL SELECT 'B2', 'rank', 'noun', '/ræŋk/', 'cấp bậc' FROM DUAL
UNION ALL SELECT 'B2', 'rapid', 'adjective', '/ˈræpɪd/', 'nhanh chóng' FROM DUAL
UNION ALL SELECT 'B2', 'rapidly', 'adverb', '/ˈræpɪdli/', 'một cách nhanh chóng' FROM DUAL
UNION ALL SELECT 'B2', 'rating', 'noun', '/ˈreɪtɪŋ/', 'sự xếp hạng' FROM DUAL
UNION ALL SELECT 'B2', 'raw', 'adjective', '/rɔː/', 'thô, sống' FROM DUAL
UNION ALL SELECT 'B2', 'reasonable', 'adjective', '/ˈriːznəbl/', 'hợp lý' FROM DUAL
UNION ALL SELECT 'B2', 'reasonably', 'adverb', '/ˈriːznəbli/', 'khá, hợp lý' FROM DUAL
UNION ALL SELECT 'B2', 'rebuild', 'verb', '/ˌriːˈbɪld/', 'xây dựng lại' FROM DUAL
UNION ALL SELECT 'B2', 'recall', 'verb', '/rɪˈkɔːl/', 'nhớ lại' FROM DUAL
UNION ALL SELECT 'B2', 'recipient', 'noun', '/rɪˈsɪpiənt/', 'người nhận' FROM DUAL
UNION ALL SELECT 'B2', 'recognition', 'noun', '/ˌrekəɡˈnɪʃn/', 'sự công nhận' FROM DUAL
UNION ALL SELECT 'B2', 'recover', 'verb', '/rɪˈkʌvə(r)/', 'hồi phục' FROM DUAL
UNION ALL SELECT 'B2', 'recovery', 'noun', '/rɪˈkʌvəri/', 'sự hồi phục' FROM DUAL
UNION ALL SELECT 'B2', 'recruit', 'verb', '/rɪˈkruːt/', 'tuyển dụng' FROM DUAL
UNION ALL SELECT 'B2', 'reduction', 'noun', '/rɪˈdʌkʃn/', 'sự giảm bớt' FROM DUAL
UNION ALL SELECT 'B2', 'refer', 'verb', '/rɪˈfɜː(r)/', 'đề cập, tham khảo' FROM DUAL
UNION ALL SELECT 'B2', 'reflection', 'noun', '/rɪˈflekʃn/', 'sự phản chiếu, suy ngẫm' FROM DUAL
UNION ALL SELECT 'B2', 'reform', 'noun', '/rɪˈfɔːm/', 'sự cải cách' FROM DUAL
UNION ALL SELECT 'B2', 'refuse', 'verb', '/rɪˈfjuːz/', 'từ chối' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B2', 'regard', 'verb', '/rɪˈɡɑːd/', 'coi như, xem xét' FROM DUAL
UNION ALL SELECT 'B2', 'regardless', 'adverb', '/rɪˈɡɑːdləs/', 'bất kể' FROM DUAL
UNION ALL SELECT 'B2', 'regime', 'noun', '/reɪˈʒiːm/', 'chế độ' FROM DUAL
UNION ALL SELECT 'B2', 'regional', 'adjective', '/ˈriːdʒənl/', 'thuộc vùng' FROM DUAL
UNION ALL SELECT 'B2', 'register', 'verb', '/ˈredʒɪstə(r)/', 'đăng ký' FROM DUAL
UNION ALL SELECT 'B2', 'regret', 'verb', '/rɪˈɡret/', 'hối tiếc' FROM DUAL
UNION ALL SELECT 'B2', 'regulation', 'noun', '/ˌreɡjuˈleɪʃn/', 'quy định' FROM DUAL
UNION ALL SELECT 'B2', 'reinforce', 'verb', '/ˌriːɪnˈfɔːs/', 'củng cố' FROM DUAL
UNION ALL SELECT 'B2', 'relevant', 'adjective', '/ˈreləvənt/', 'có liên quan' FROM DUAL
UNION ALL SELECT 'B2', 'relief', 'noun', '/rɪˈliːf/', 'sự nhẹ nhõm, sự cứu trợ' FROM DUAL
UNION ALL SELECT 'B2', 'relieved', 'adjective', '/rɪˈliːvd/', 'nhẹ nhõm' FROM DUAL
UNION ALL SELECT 'B2', 'reluctant', 'adjective', '/rɪˈlʌktənt/', 'miễn cưỡng' FROM DUAL
UNION ALL SELECT 'B2', 'rely', 'verb', '/rɪˈlaɪ/', 'dựa vào' FROM DUAL
UNION ALL SELECT 'B2', 'remaining', 'adjective', '/rɪˈmeɪnɪŋ/', 'còn lại' FROM DUAL
UNION ALL SELECT 'B2', 'remark', 'noun', '/rɪˈmɑːk/', 'lời nhận xét' FROM DUAL
UNION ALL SELECT 'B2', 'remarkable', 'adjective', '/rɪˈmɑːkəbl/', 'đáng chú ý' FROM DUAL
UNION ALL SELECT 'B2', 'render', 'verb', '/ˈrendə(r)/', 'làm cho, thể hiện' FROM DUAL
UNION ALL SELECT 'B2', 'repeatedly', 'adverb', '/rɪˈpiːtɪdli/', 'nhiều lần' FROM DUAL
UNION ALL SELECT 'B2', 'representation', 'noun', '/ˌreprɪzenˈteɪʃn/', 'sự đại diện, sự miêu tả' FROM DUAL
UNION ALL SELECT 'B2', 'representative', 'noun', '/ˌreprɪˈzentətɪv/', 'người đại diện' FROM DUAL
UNION ALL SELECT 'B2', 'reputation', 'noun', '/ˌrepjuˈteɪʃn/', 'danh tiếng' FROM DUAL
UNION ALL SELECT 'B2', 'requirement', 'noun', '/rɪˈkwaɪəmənt/', 'yêu cầu' FROM DUAL
UNION ALL SELECT 'B2', 'rescue', 'verb', '/ˈreskjuː/', 'giải cứu' FROM DUAL
UNION ALL SELECT 'B2', 'reserve', 'verb', '/rɪˈzɜːv/', 'đặt trước, dự trữ' FROM DUAL
UNION ALL SELECT 'B2', 'resident', 'noun', '/ˈrezɪdənt/', 'cư dân' FROM DUAL
UNION ALL SELECT 'B2', 'resign', 'verb', '/rɪˈzaɪn/', 'từ chức' FROM DUAL
UNION ALL SELECT 'B2', 'resist', 'verb', '/rɪˈzɪst/', 'chống lại, cưỡng lại' FROM DUAL
UNION ALL SELECT 'B2', 'resolution', 'noun', '/ˌrezəˈluːʃn/', 'nghị quyết, độ phân giải' FROM DUAL
UNION ALL SELECT 'B2', 'resolve', 'verb', '/rɪˈzɒlv/', 'giải quyết' FROM DUAL
UNION ALL SELECT 'B2', 'resort', 'noun', '/rɪˈzɔːt/', 'khu nghỉ dưỡng' FROM DUAL
UNION ALL SELECT 'B2', 'respectively', 'adverb', '/rɪˈspektɪvli/', 'lần lượt, tương ứng' FROM DUAL
UNION ALL SELECT 'B2', 'restore', 'verb', '/rɪˈstɔː(r)/', 'khôi phục' FROM DUAL
UNION ALL SELECT 'B2', 'restrict', 'verb', '/rɪˈstrɪkt/', 'hạn chế' FROM DUAL
UNION ALL SELECT 'B2', 'restriction', 'noun', '/rɪˈstrɪkʃn/', 'sự hạn chế' FROM DUAL
UNION ALL SELECT 'B2', 'retain', 'verb', '/rɪˈteɪn/', 'giữ lại' FROM DUAL
UNION ALL SELECT 'B2', 'retirement', 'noun', '/rɪˈtaɪəmənt/', 'sự nghỉ hưu' FROM DUAL
UNION ALL SELECT 'B2', 'reveal', 'verb', '/rɪˈviːl/', 'tiết lộ' FROM DUAL
UNION ALL SELECT 'B2', 'revenue', 'noun', '/ˈrevənjuː/', 'doanh thu' FROM DUAL
UNION ALL SELECT 'B2', 'reverse', 'verb', '/rɪˈvɜːs/', 'đảo ngược' FROM DUAL
UNION ALL SELECT 'B2', 'revolution', 'noun', '/ˌrevəˈluːʃn/', 'cuộc cách mạng' FROM DUAL
UNION ALL SELECT 'B2', 'reward', 'noun', '/rɪˈwɔːd/', 'phần thưởng' FROM DUAL
UNION ALL SELECT 'B2', 'rhythm', 'noun', '/ˈrɪðəm/', 'nhịp điệu' FROM DUAL
UNION ALL SELECT 'B2', 'rid', 'verb', '/rɪd/', 'loại bỏ (get rid of)' FROM DUAL
UNION ALL SELECT 'B2', 'ridiculous', 'adjective', '/rɪˈdɪkjələs/', 'lố bịch' FROM DUAL
UNION ALL SELECT 'B2', 'rival', 'noun', '/ˈraɪvl/', 'đối thủ' FROM DUAL
UNION ALL SELECT 'B2', 'roughly', 'adverb', '/ˈrʌfli/', 'khoảng, đại khái' FROM DUAL
UNION ALL SELECT 'B2', 'routine', 'adjective', '/ruːˈtiːn/', 'thường lệ' FROM DUAL
UNION ALL SELECT 'B2', 'rush', 'verb', '/rʌʃ/', 'vội vàng' FROM DUAL
UNION ALL SELECT 'B2', 'sacrifice', 'noun', '/ˈsækrɪfaɪs/', 'sự hy sinh' FROM DUAL
UNION ALL SELECT 'B2', 'sadness', 'noun', '/ˈsædnəs/', 'nỗi buồn' FROM DUAL
UNION ALL SELECT 'B2', 'satellite', 'noun', '/ˈsætəlaɪt/', 'vệ tinh' FROM DUAL
UNION ALL SELECT 'B2', 'satisfaction', 'noun', '/ˌsætɪsˈfækʃn/', 'sự hài lòng' FROM DUAL
UNION ALL SELECT 'B2', 'satisfied', 'adjective', '/ˈsætɪsfaɪd/', 'hài lòng' FROM DUAL
UNION ALL SELECT 'B2', 'satisfy', 'verb', '/ˈsætɪsfaɪ/', 'làm hài lòng' FROM DUAL
UNION ALL SELECT 'B2', 'saving', 'noun', '/ˈseɪvɪŋ/', 'khoản tiết kiệm' FROM DUAL
UNION ALL SELECT 'B2', 'scandal', 'noun', '/ˈskændl/', 'vụ bê bối' FROM DUAL
UNION ALL SELECT 'B2', 'scare', 'verb', '/skeə(r)/', 'làm sợ hãi' FROM DUAL
UNION ALL SELECT 'B2', 'scenario', 'noun', '/səˈnɑːriəʊ/', 'kịch bản, tình huống' FROM DUAL
UNION ALL SELECT 'B2', 'scheme', 'noun', '/skiːm/', 'kế hoạch, âm mưu' FROM DUAL
UNION ALL SELECT 'B2', 'scholar', 'noun', '/ˈskɒlə(r)/', 'học giả' FROM DUAL
UNION ALL SELECT 'B2', 'scholarship', 'noun', '/ˈskɒləʃɪp/', 'học bổng' FROM DUAL
UNION ALL SELECT 'B2', 'scope', 'noun', '/skəʊp/', 'phạm vi' FROM DUAL
UNION ALL SELECT 'B2', 'scratch', 'verb', '/skrætʃ/', 'cào, gãi' FROM DUAL
UNION ALL SELECT 'B2', 'screen', 'verb', '/skriːn/', 'chiếu, sàng lọc' FROM DUAL
UNION ALL SELECT 'B2', 'seal', 'verb', '/siːl/', 'niêm phong' FROM DUAL
UNION ALL SELECT 'B2', 'secure', 'adjective', '/sɪˈkjʊə(r)/', 'an toàn, chắc chắn' FROM DUAL
UNION ALL SELECT 'B2', 'seek', 'verb', '/siːk/', 'tìm kiếm' FROM DUAL
UNION ALL SELECT 'B2', 'seize', 'verb', '/siːz/', 'nắm lấy, chiếm giữ' FROM DUAL
UNION ALL SELECT 'B2', 'selection', 'noun', '/sɪˈlekʃn/', 'sự lựa chọn' FROM DUAL
UNION ALL SELECT 'B2', 'senior', 'adjective', '/ˈsiːniə(r)/', 'cấp cao, lớn tuổi hơn' FROM DUAL
UNION ALL SELECT 'B2', 'sensitive', 'adjective', '/ˈsensətɪv/', 'nhạy cảm' FROM DUAL
UNION ALL SELECT 'B2', 'sentence', 'verb', '/ˈsentəns/', 'kết án' FROM DUAL
UNION ALL SELECT 'B2', 'sequence', 'noun', '/ˈsiːkwəns/', 'chuỗi, trình tự' FROM DUAL
UNION ALL SELECT 'B2', 'session', 'noun', '/ˈseʃn/', 'phiên, buổi' FROM DUAL
UNION ALL SELECT 'B2', 'settle', 'verb', '/ˈsetl/', 'định cư, giải quyết' FROM DUAL
UNION ALL SELECT 'B2', 'severe', 'adjective', '/sɪˈvɪə(r)/', 'nghiêm trọng, khắc nghiệt' FROM DUAL
UNION ALL SELECT 'B2', 'shadow', 'noun', '/ˈʃædəʊ/', 'cái bóng' FROM DUAL
UNION ALL SELECT 'B2', 'shame', 'noun', '/ʃeɪm/', 'sự xấu hổ, điều đáng tiếc' FROM DUAL
UNION ALL SELECT 'B2', 'shed', 'noun', '/ʃed/', 'nhà kho nhỏ' FROM DUAL
UNION ALL SELECT 'B2', 'shelter', 'noun', '/ˈʃeltə(r)/', 'nơi trú ẩn' FROM DUAL
UNION ALL SELECT 'B2', 'shift', 'verb', '/ʃɪft/', 'chuyển dịch' FROM DUAL
UNION ALL SELECT 'B2', 'shock', 'noun', '/ʃɒk/', 'cú sốc' FROM DUAL
UNION ALL SELECT 'B2', 'shocked', 'adjective', '/ʃɒkt/', 'bị sốc' FROM DUAL
UNION ALL SELECT 'B2', 'shocking', 'adjective', '/ˈʃɒkɪŋ/', 'gây sốc' FROM DUAL
UNION ALL SELECT 'B2', 'shooting', 'noun', '/ˈʃuːtɪŋ/', 'vụ nổ súng' FROM DUAL
UNION ALL SELECT 'B2', 'short-term', 'adjective', '/ˌʃɔːt ˈtɜːm/', 'ngắn hạn' FROM DUAL
UNION ALL SELECT 'B2', 'sigh', 'verb', '/saɪ/', 'thở dài' FROM DUAL
UNION ALL SELECT 'B2', 'signature', 'noun', '/ˈsɪɡnətʃə(r)/', 'chữ ký' FROM DUAL
UNION ALL SELECT 'B2', 'significance', 'noun', '/sɪɡˈnɪfɪkəns/', 'ý nghĩa, tầm quan trọng' FROM DUAL
UNION ALL SELECT 'B2', 'significant', 'adjective', '/sɪɡˈnɪfɪkənt/', 'đáng kể, quan trọng' FROM DUAL
UNION ALL SELECT 'B2', 'significantly', 'adverb', '/sɪɡˈnɪfɪkəntli/', 'một cách đáng kể' FROM DUAL
UNION ALL SELECT 'B2', 'silence', 'noun', '/ˈsaɪləns/', 'sự im lặng' FROM DUAL
UNION ALL SELECT 'B2', 'sink', 'noun', '/sɪŋk/', 'bồn rửa' FROM DUAL
UNION ALL SELECT 'B2', 'skilled', 'adjective', '/skɪld/', 'lành nghề' FROM DUAL
UNION ALL SELECT 'B2', 'slave', 'noun', '/sleɪv/', 'nô lệ' FROM DUAL
UNION ALL SELECT 'B2', 'slide', 'verb', '/slaɪd/', 'trượt' FROM DUAL
UNION ALL SELECT 'B2', 'slip', 'verb', '/slɪp/', 'trượt chân' FROM DUAL
UNION ALL SELECT 'B2', 'slope', 'noun', '/sləʊp/', 'con dốc' FROM DUAL
UNION ALL SELECT 'B2', 'so-called', 'adjective', '/ˌsəʊ ˈkɔːld/', 'cái gọi là' FROM DUAL
UNION ALL SELECT 'B2', 'solar', 'adjective', '/ˈsəʊlə(r)/', 'thuộc mặt trời' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B2', 'sole', 'adjective', '/səʊl/', 'duy nhất' FROM DUAL
UNION ALL SELECT 'B2', 'somehow', 'adverb', '/ˈsʌmhaʊ/', 'bằng cách nào đó' FROM DUAL
UNION ALL SELECT 'B2', 'somewhat', 'adverb', '/ˈsʌmwɒt/', 'hơi, phần nào' FROM DUAL
UNION ALL SELECT 'B2', 'sophisticated', 'adjective', '/səˈfɪstɪkeɪtɪd/', 'tinh vi, sành điệu' FROM DUAL
UNION ALL SELECT 'B2', 'spare', 'adjective', '/speə(r)/', 'dự phòng, rảnh rỗi' FROM DUAL
UNION ALL SELECT 'B2', 'specialist', 'noun', '/ˈspeʃəlɪst/', 'chuyên gia' FROM DUAL
UNION ALL SELECT 'B2', 'species', 'noun', '/ˈspiːʃiːz/', 'loài' FROM DUAL
UNION ALL SELECT 'B2', 'specify', 'verb', '/ˈspesɪfaɪ/', 'chỉ rõ' FROM DUAL
UNION ALL SELECT 'B2', 'spectacular', 'adjective', '/spekˈtækjələ(r)/', 'ngoạn mục' FROM DUAL
UNION ALL SELECT 'B2', 'spell', 'noun', '/spel/', 'câu thần chú, khoảng thời gian' FROM DUAL
UNION ALL SELECT 'B2', 'sphere', 'noun', '/sfɪə(r)/', 'hình cầu, lĩnh vực' FROM DUAL
UNION ALL SELECT 'B2', 'spin', 'verb', '/spɪn/', 'quay tròn' FROM DUAL
UNION ALL SELECT 'B2', 'split', 'verb', '/splɪt/', 'chia tách' FROM DUAL
UNION ALL SELECT 'B2', 'sponsor', 'noun', '/ˈspɒnsə(r)/', 'nhà tài trợ' FROM DUAL
UNION ALL SELECT 'B2', 'stable', 'adjective', '/ˈsteɪbl/', 'ổn định' FROM DUAL
UNION ALL SELECT 'B2', 'stake', 'noun', '/steɪk/', 'cổ phần, phần lợi ích' FROM DUAL
UNION ALL SELECT 'B2', 'stance', 'noun', '/stæns/', 'lập trường' FROM DUAL
UNION ALL SELECT 'B2', 'stare', 'verb', '/steə(r)/', 'nhìn chằm chằm' FROM DUAL
UNION ALL SELECT 'B2', 'status', 'noun', '/ˈsteɪtəs/', 'địa vị, tình trạng' FROM DUAL
UNION ALL SELECT 'B2', 'steady', 'adjective', '/ˈstedi/', 'đều đặn, vững vàng' FROM DUAL
UNION ALL SELECT 'B2', 'steel', 'noun', '/stiːl/', 'thép' FROM DUAL
UNION ALL SELECT 'B2', 'steep', 'adjective', '/stiːp/', 'dốc' FROM DUAL
UNION ALL SELECT 'B2', 'stem', 'noun', '/stem/', 'thân cây' FROM DUAL
UNION ALL SELECT 'B2', 'stimulate', 'verb', '/ˈstɪmjuleɪt/', 'kích thích' FROM DUAL
UNION ALL SELECT 'B2', 'stock', 'noun', '/stɒk/', 'hàng tồn kho, cổ phiếu' FROM DUAL
UNION ALL SELECT 'B2', 'storage', 'noun', '/ˈstɔːrɪdʒ/', 'sự lưu trữ' FROM DUAL
UNION ALL SELECT 'B2', 'straightforward', 'adjective', '/ˌstreɪtˈfɔːwəd/', 'đơn giản, thẳng thắn' FROM DUAL
UNION ALL SELECT 'B2', 'strain', 'noun', '/streɪn/', 'sự căng thẳng' FROM DUAL
UNION ALL SELECT 'B2', 'strategic', 'adjective', '/strəˈtiːdʒɪk/', 'mang tính chiến lược' FROM DUAL
UNION ALL SELECT 'B2', 'stream', 'noun', '/striːm/', 'dòng suối, luồng' FROM DUAL
UNION ALL SELECT 'B2', 'strengthen', 'verb', '/ˈstreŋθn/', 'củng cố' FROM DUAL
UNION ALL SELECT 'B2', 'stress', 'verb', '/stres/', 'nhấn mạnh' FROM DUAL
UNION ALL SELECT 'B2', 'stretch', 'verb', '/stretʃ/', 'duỗi, kéo dài' FROM DUAL
UNION ALL SELECT 'B2', 'strike', 'noun', '/straɪk/', 'cuộc đình công, cú đánh' FROM DUAL
UNION ALL SELECT 'B2', 'strike', 'verb', '/straɪk/', 'đánh, tấn công' FROM DUAL
UNION ALL SELECT 'B2', 'striking', 'adjective', '/ˈstraɪkɪŋ/', 'nổi bật' FROM DUAL
UNION ALL SELECT 'B2', 'stroke', 'noun', '/strəʊk/', 'đột quỵ, nét bút' FROM DUAL
UNION ALL SELECT 'B2', 'struggle', 'verb', '/ˈstrʌɡl/', 'vật lộn, đấu tranh' FROM DUAL
UNION ALL SELECT 'B2', 'stuck', 'adjective', '/stʌk/', 'bị mắc kẹt' FROM DUAL
UNION ALL SELECT 'B2', 'submit', 'verb', '/səbˈmɪt/', 'nộp' FROM DUAL
UNION ALL SELECT 'B2', 'subsequent', 'adjective', '/ˈsʌbsɪkwənt/', 'tiếp theo' FROM DUAL
UNION ALL SELECT 'B2', 'subsequently', 'adverb', '/ˈsʌbsɪkwəntli/', 'sau đó' FROM DUAL
UNION ALL SELECT 'B2', 'substantial', 'adjective', '/səbˈstænʃl/', 'đáng kể' FROM DUAL
UNION ALL SELECT 'B2', 'substitute', 'noun', '/ˈsʌbstɪtjuːt/', 'người thay thế, vật thay thế' FROM DUAL
UNION ALL SELECT 'B2', 'subtle', 'adjective', '/ˈsʌtl/', 'tinh tế' FROM DUAL
UNION ALL SELECT 'B2', 'suburb', 'noun', '/ˈsʌbɜːb/', 'ngoại ô' FROM DUAL
UNION ALL SELECT 'B2', 'succession', 'noun', '/səkˈseʃn/', 'sự liên tiếp, sự kế vị' FROM DUAL
UNION ALL SELECT 'B2', 'sue', 'verb', '/suː/', 'kiện' FROM DUAL
UNION ALL SELECT 'B2', 'sufficient', 'adjective', '/səˈfɪʃnt/', 'đủ' FROM DUAL
UNION ALL SELECT 'B2', 'suicide', 'noun', '/ˈsuːɪsaɪd/', 'sự tự tử' FROM DUAL
UNION ALL SELECT 'B2', 'sum', 'noun', '/sʌm/', 'tổng số, khoản tiền' FROM DUAL
UNION ALL SELECT 'B2', 'super', 'adjective', '/ˈsuːpə(r)/', 'siêu, tuyệt' FROM DUAL
UNION ALL SELECT 'B2', 'superb', 'adjective', '/suːˈpɜːb/', 'tuyệt vời' FROM DUAL
UNION ALL SELECT 'B2', 'supportive', 'adjective', '/səˈpɔːtɪv/', 'hỗ trợ, ủng hộ' FROM DUAL
UNION ALL SELECT 'B2', 'supposed', 'adjective', '/səˈpəʊzd/', 'được cho là' FROM DUAL
UNION ALL SELECT 'B2', 'surgery', 'noun', '/ˈsɜːdʒəri/', 'phẫu thuật' FROM DUAL
UNION ALL SELECT 'B2', 'surround', 'verb', '/səˈraʊnd/', 'bao quanh' FROM DUAL
UNION ALL SELECT 'B2', 'surrounding', 'adjective', '/səˈraʊndɪŋ/', 'xung quanh' FROM DUAL
UNION ALL SELECT 'B2', 'surroundings', 'noun', '/səˈraʊndɪŋz/', 'môi trường xung quanh' FROM DUAL
UNION ALL SELECT 'B2', 'survival', 'noun', '/səˈvaɪvl/', 'sự sống sót' FROM DUAL
UNION ALL SELECT 'B2', 'survivor', 'noun', '/səˈvaɪvə(r)/', 'người sống sót' FROM DUAL
UNION ALL SELECT 'B2', 'suspect', 'verb', '/səˈspekt/', 'nghi ngờ' FROM DUAL
UNION ALL SELECT 'B2', 'suspect', 'noun', '/ˈsʌspekt/', 'nghi phạm' FROM DUAL
UNION ALL SELECT 'B2', 'suspend', 'verb', '/səˈspend/', 'đình chỉ, treo' FROM DUAL
UNION ALL SELECT 'B2', 'sustain', 'verb', '/səˈsteɪn/', 'duy trì' FROM DUAL
UNION ALL SELECT 'B2', 'swing', 'verb', '/swɪŋ/', 'đung đưa' FROM DUAL
UNION ALL SELECT 'B2', 'sympathy', 'noun', '/ˈsɪmpəθi/', 'sự đồng cảm' FROM DUAL
UNION ALL SELECT 'B2', 'tackle', 'verb', '/ˈtækl/', 'giải quyết, xử lý' FROM DUAL
UNION ALL SELECT 'B2', 'tag', 'noun', '/tæɡ/', 'nhãn, thẻ' FROM DUAL
UNION ALL SELECT 'B2', 'tale', 'noun', '/teɪl/', 'câu chuyện' FROM DUAL
UNION ALL SELECT 'B2', 'tank', 'noun', '/tæŋk/', 'bể chứa, xe tăng' FROM DUAL
UNION ALL SELECT 'B2', 'tap', 'noun', '/tæp/', 'vòi nước' FROM DUAL
UNION ALL SELECT 'B2', 'target', 'verb', '/ˈtɑːɡɪt/', 'nhắm vào' FROM DUAL
UNION ALL SELECT 'B2', 'taste', 'verb', '/teɪst/', 'nếm, có vị' FROM DUAL
UNION ALL SELECT 'B2', 'tear', 'verb', '/teə(r)/', 'xé' FROM DUAL
UNION ALL SELECT 'B2', 'tear', 'noun', '/tɪə(r)/', 'nước mắt' FROM DUAL
UNION ALL SELECT 'B2', 'technological', 'adjective', '/ˌteknəˈlɒdʒɪkl/', 'thuộc công nghệ' FROM DUAL
UNION ALL SELECT 'B2', 'temple', 'noun', '/ˈtempl/', 'ngôi đền' FROM DUAL
UNION ALL SELECT 'B2', 'temporary', 'adjective', '/ˈtemprəri/', 'tạm thời' FROM DUAL
UNION ALL SELECT 'B2', 'tendency', 'noun', '/ˈtendənsi/', 'khuynh hướng' FROM DUAL
UNION ALL SELECT 'B2', 'tension', 'noun', '/ˈtenʃn/', 'sự căng thẳng' FROM DUAL
UNION ALL SELECT 'B2', 'terms', 'noun', '/tɜːmz/', 'điều khoản' FROM DUAL
UNION ALL SELECT 'B2', 'terrify', 'verb', '/ˈterɪfaɪ/', 'làm khiếp sợ' FROM DUAL
UNION ALL SELECT 'B2', 'territory', 'noun', '/ˈterətri/', 'lãnh thổ' FROM DUAL
UNION ALL SELECT 'B2', 'terror', 'noun', '/ˈterə(r)/', 'sự khiếp sợ' FROM DUAL
UNION ALL SELECT 'B2', 'terrorist', 'noun', '/ˈterərɪst/', 'kẻ khủng bố' FROM DUAL
UNION ALL SELECT 'B2', 'testing', 'noun', '/ˈtestɪŋ/', 'sự kiểm tra' FROM DUAL
UNION ALL SELECT 'B2', 'textbook', 'noun', '/ˈtekstbʊk/', 'sách giáo khoa' FROM DUAL
UNION ALL SELECT 'B2', 'thanks to', 'preposition', '/ˈθæŋks tə/', 'nhờ có' FROM DUAL
UNION ALL SELECT 'B2', 'theft', 'noun', '/θeft/', 'vụ trộm' FROM DUAL
UNION ALL SELECT 'B2', 'thereby', 'adverb', '/ˌðeəˈbaɪ/', 'nhờ đó' FROM DUAL
UNION ALL SELECT 'B2', 'thoroughly', 'adverb', '/ˈθʌrəli/', 'kỹ lưỡng' FROM DUAL
UNION ALL SELECT 'B2', 'thought', 'noun', '/θɔːt/', 'suy nghĩ' FROM DUAL
UNION ALL SELECT 'B2', 'thoughtful', 'adjective', '/ˈθɔːtfl/', 'chu đáo, trầm tư' FROM DUAL
UNION ALL SELECT 'B2', 'thread', 'noun', '/θred/', 'sợi chỉ' FROM DUAL
UNION ALL SELECT 'B2', 'threshold', 'noun', '/ˈθreʃhəʊld/', 'ngưỡng' FROM DUAL
UNION ALL SELECT 'B2', 'thrilled', 'adjective', '/θrɪld/', 'rất vui mừng' FROM DUAL
UNION ALL SELECT 'B2', 'thrilling', 'adjective', '/ˈθrɪlɪŋ/', 'ly kỳ, hồi hộp' FROM DUAL
UNION ALL SELECT 'B2', 'throughout', 'preposition', '/θruːˈaʊt/', 'suốt, khắp' FROM DUAL
UNION ALL SELECT 'B2', 'tide', 'noun', '/taɪd/', 'thủy triều' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B2', 'tidy', 'verb', '/ˈtaɪdi/', 'dọn dẹp' FROM DUAL
UNION ALL SELECT 'B2', 'timing', 'noun', '/ˈtaɪmɪŋ/', 'sự chọn thời điểm' FROM DUAL
UNION ALL SELECT 'B2', 'tissue', 'noun', '/ˈtɪʃuː/', 'mô, khăn giấy' FROM DUAL
UNION ALL SELECT 'B2', 'tone', 'noun', '/təʊn/', 'giọng điệu, tông màu' FROM DUAL
UNION ALL SELECT 'B2', 'tough', 'adjective', '/tʌf/', 'khó khăn, cứng rắn' FROM DUAL
UNION ALL SELECT 'B2', 'tournament', 'noun', '/ˈtʊənəmənt/', 'giải đấu' FROM DUAL
UNION ALL SELECT 'B2', 'trace', 'verb', '/treɪs/', 'truy tìm, lần theo' FROM DUAL
UNION ALL SELECT 'B2', 'trading', 'noun', '/ˈtreɪdɪŋ/', 'việc buôn bán' FROM DUAL
UNION ALL SELECT 'B2', 'tragedy', 'noun', '/ˈtrædʒədi/', 'bi kịch' FROM DUAL
UNION ALL SELECT 'B2', 'tragic', 'adjective', '/ˈtrædʒɪk/', 'bi thảm' FROM DUAL
UNION ALL SELECT 'B2', 'trait', 'noun', '/treɪt/', 'đặc điểm' FROM DUAL
UNION ALL SELECT 'B2', 'transform', 'verb', '/trænsˈfɔːm/', 'biến đổi' FROM DUAL
UNION ALL SELECT 'B2', 'transformation', 'noun', '/ˌtrænsfəˈmeɪʃn/', 'sự biến đổi' FROM DUAL
UNION ALL SELECT 'B2', 'transition', 'noun', '/trænˈzɪʃn/', 'sự chuyển đổi' FROM DUAL
UNION ALL SELECT 'B2', 'translation', 'noun', '/trænsˈleɪʃn/', 'bản dịch' FROM DUAL
UNION ALL SELECT 'B2', 'transmit', 'verb', '/trænzˈmɪt/', 'truyền tải' FROM DUAL
UNION ALL SELECT 'B2', 'transportation', 'noun', '/ˌtrænspɔːˈteɪʃn/', 'sự vận chuyển' FROM DUAL
UNION ALL SELECT 'B2', 'trial', 'noun', '/ˈtraɪəl/', 'phiên tòa, sự thử nghiệm' FROM DUAL
UNION ALL SELECT 'B2', 'tribe', 'noun', '/traɪb/', 'bộ lạc' FROM DUAL
UNION ALL SELECT 'B2', 'trigger', 'verb', '/ˈtrɪɡə(r)/', 'gây ra, kích hoạt' FROM DUAL
UNION ALL SELECT 'B2', 'triumph', 'noun', '/ˈtraɪʌmf/', 'chiến thắng vẻ vang' FROM DUAL
UNION ALL SELECT 'B2', 'troop', 'noun', '/truːp/', 'quân lính' FROM DUAL
UNION ALL SELECT 'B2', 'truly', 'adverb', '/ˈtruːli/', 'thực sự' FROM DUAL
UNION ALL SELECT 'B2', 'trust', 'noun', '/trʌst/', 'lòng tin' FROM DUAL
UNION ALL SELECT 'B2', 'tune', 'noun', '/tjuːn/', 'giai điệu' FROM DUAL
UNION ALL SELECT 'B2', 'tunnel', 'noun', '/ˈtʌnl/', 'đường hầm' FROM DUAL
UNION ALL SELECT 'B2', 'twist', 'verb', '/twɪst/', 'vặn, xoắn' FROM DUAL
UNION ALL SELECT 'B2', 'ultimate', 'adjective', '/ˈʌltɪmət/', 'cuối cùng, tối thượng' FROM DUAL
UNION ALL SELECT 'B2', 'ultimately', 'adverb', '/ˈʌltɪmətli/', 'rốt cuộc' FROM DUAL
UNION ALL SELECT 'B2', 'unclear', 'adjective', '/ˌʌnˈklɪə(r)/', 'không rõ ràng' FROM DUAL
UNION ALL SELECT 'B2', 'undergo', 'verb', '/ˌʌndəˈɡəʊ/', 'trải qua' FROM DUAL
UNION ALL SELECT 'B2', 'undergraduate', 'noun', '/ˌʌndəˈɡrædʒuət/', 'sinh viên đại học' FROM DUAL
UNION ALL SELECT 'B2', 'underlying', 'adjective', '/ˌʌndəˈlaɪɪŋ/', 'cơ bản, tiềm ẩn' FROM DUAL
UNION ALL SELECT 'B2', 'undermine', 'verb', '/ˌʌndəˈmaɪn/', 'làm suy yếu' FROM DUAL
UNION ALL SELECT 'B2', 'understanding', 'noun', '/ˌʌndəˈstændɪŋ/', 'sự hiểu biết' FROM DUAL
UNION ALL SELECT 'B2', 'undertake', 'verb', '/ˌʌndəˈteɪk/', 'đảm nhận' FROM DUAL
UNION ALL SELECT 'B2', 'unexpected', 'adjective', '/ˌʌnɪkˈspektɪd/', 'bất ngờ' FROM DUAL
UNION ALL SELECT 'B2', 'unfortunate', 'adjective', '/ʌnˈfɔːtʃənət/', 'không may' FROM DUAL
UNION ALL SELECT 'B2', 'unique', 'adjective', '/juˈniːk/', 'độc nhất' FROM DUAL
UNION ALL SELECT 'B2', 'unite', 'verb', '/juˈnaɪt/', 'đoàn kết, hợp nhất' FROM DUAL
UNION ALL SELECT 'B2', 'unity', 'noun', '/ˈjuːnəti/', 'sự thống nhất' FROM DUAL
UNION ALL SELECT 'B2', 'universal', 'adjective', '/ˌjuːnɪˈvɜːsl/', 'phổ quát, toàn cầu' FROM DUAL
UNION ALL SELECT 'B2', 'universe', 'noun', '/ˈjuːnɪvɜːs/', 'vũ trụ' FROM DUAL
UNION ALL SELECT 'B2', 'unknown', 'adjective', '/ˌʌnˈnəʊn/', 'không ai biết' FROM DUAL
UNION ALL SELECT 'B2', 'unprecedented', 'adjective', '/ʌnˈpresɪdentɪd/', 'chưa từng có' FROM DUAL
UNION ALL SELECT 'B2', 'upper', 'adjective', '/ˈʌpə(r)/', 'phía trên' FROM DUAL
UNION ALL SELECT 'B2', 'urban', 'adjective', '/ˈɜːbən/', 'thuộc đô thị' FROM DUAL
UNION ALL SELECT 'B2', 'urge', 'verb', '/ɜːdʒ/', 'thúc giục' FROM DUAL
UNION ALL SELECT 'B2', 'urgent', 'adjective', '/ˈɜːdʒənt/', 'khẩn cấp' FROM DUAL
UNION ALL SELECT 'B2', 'usage', 'noun', '/ˈjuːsɪdʒ/', 'cách sử dụng' FROM DUAL
UNION ALL SELECT 'B2', 'utility', 'noun', '/juːˈtɪləti/', 'tiện ích công cộng' FROM DUAL
UNION ALL SELECT 'B2', 'vague', 'adjective', '/veɪɡ/', 'mơ hồ' FROM DUAL
UNION ALL SELECT 'B2', 'valid', 'adjective', '/ˈvælɪd/', 'hợp lệ' FROM DUAL
UNION ALL SELECT 'B2', 'variation', 'noun', '/ˌveəriˈeɪʃn/', 'sự biến đổi' FROM DUAL
UNION ALL SELECT 'B2', 'vary', 'verb', '/ˈveəri/', 'thay đổi, khác nhau' FROM DUAL
UNION ALL SELECT 'B2', 'vast', 'adjective', '/vɑːst/', 'rộng lớn' FROM DUAL
UNION ALL SELECT 'B2', 'venue', 'noun', '/ˈvenjuː/', 'địa điểm tổ chức' FROM DUAL
UNION ALL SELECT 'B2', 'verify', 'verb', '/ˈverɪfaɪ/', 'xác minh' FROM DUAL
UNION ALL SELECT 'B2', 'very', 'adjective', '/ˈveri/', 'chính, đúng là' FROM DUAL
UNION ALL SELECT 'B2', 'via', 'preposition', '/ˈvaɪə/', 'qua, thông qua' FROM DUAL
UNION ALL SELECT 'B2', 'vice', 'noun', '/vaɪs/', 'thói xấu' FROM DUAL
UNION ALL SELECT 'B2', 'victory', 'noun', '/ˈvɪktəri/', 'chiến thắng' FROM DUAL
UNION ALL SELECT 'B2', 'virtual', 'adjective', '/ˈvɜːtʃuəl/', 'ảo' FROM DUAL
UNION ALL SELECT 'B2', 'virtually', 'adverb', '/ˈvɜːtʃuəli/', 'hầu như' FROM DUAL
UNION ALL SELECT 'B2', 'virtue', 'noun', '/ˈvɜːtʃuː/', 'đức tính' FROM DUAL
UNION ALL SELECT 'B2', 'visible', 'adjective', '/ˈvɪzəbl/', 'có thể nhìn thấy' FROM DUAL
UNION ALL SELECT 'B2', 'vision', 'noun', '/ˈvɪʒn/', 'tầm nhìn, thị lực' FROM DUAL
UNION ALL SELECT 'B2', 'visual', 'adjective', '/ˈvɪʒuəl/', 'thuộc thị giác' FROM DUAL
UNION ALL SELECT 'B2', 'vital', 'adjective', '/ˈvaɪtl/', 'thiết yếu' FROM DUAL
UNION ALL SELECT 'B2', 'vitamin', 'noun', '/ˈvɪtəmɪn/', 'vi-ta-min' FROM DUAL
UNION ALL SELECT 'B2', 'vulnerable', 'adjective', '/ˈvʌlnərəbl/', 'dễ bị tổn thương' FROM DUAL
UNION ALL SELECT 'B2', 'wage', 'noun', '/weɪdʒ/', 'tiền công' FROM DUAL
UNION ALL SELECT 'B2', 'wander', 'verb', '/ˈwɒndə(r)/', 'đi lang thang' FROM DUAL
UNION ALL SELECT 'B2', 'warmth', 'noun', '/wɔːmθ/', 'sự ấm áp' FROM DUAL
UNION ALL SELECT 'B2', 'wealth', 'noun', '/welθ/', 'sự giàu có' FROM DUAL
UNION ALL SELECT 'B2', 'wealthy', 'adjective', '/ˈwelθi/', 'giàu có' FROM DUAL
UNION ALL SELECT 'B2', 'weekly', 'adjective', '/ˈwiːkli/', 'hằng tuần' FROM DUAL
UNION ALL SELECT 'B2', 'weird', 'adjective', '/wɪəd/', 'kỳ lạ' FROM DUAL
UNION ALL SELECT 'B2', 'welfare', 'noun', '/ˈwelfeə(r)/', 'phúc lợi' FROM DUAL
UNION ALL SELECT 'B2', 'well-known', 'adjective', '/ˌwel ˈnəʊn/', 'nổi tiếng' FROM DUAL
UNION ALL SELECT 'B2', 'whereas', 'conjunction', '/ˌweərˈæz/', 'trong khi đó' FROM DUAL
UNION ALL SELECT 'B2', 'wherever', 'conjunction', '/weərˈevə(r)/', 'bất cứ nơi nào' FROM DUAL
UNION ALL SELECT 'B2', 'whilst', 'conjunction', '/waɪlst/', 'trong khi' FROM DUAL
UNION ALL SELECT 'B2', 'widely', 'adverb', '/ˈwaɪdli/', 'rộng rãi' FROM DUAL
UNION ALL SELECT 'B2', 'widespread', 'adjective', '/ˈwaɪdspred/', 'lan rộng' FROM DUAL
UNION ALL SELECT 'B2', 'wildlife', 'noun', '/ˈwaɪldlaɪf/', 'động vật hoang dã' FROM DUAL
UNION ALL SELECT 'B2', 'willing', 'adjective', '/ˈwɪlɪŋ/', 'sẵn lòng' FROM DUAL
UNION ALL SELECT 'B2', 'wise', 'adjective', '/waɪz/', 'khôn ngoan' FROM DUAL
UNION ALL SELECT 'B2', 'withdraw', 'verb', '/wɪðˈdrɔː/', 'rút lui, rút tiền' FROM DUAL
UNION ALL SELECT 'B2', 'witness', 'noun', '/ˈwɪtnəs/', 'nhân chứng' FROM DUAL
UNION ALL SELECT 'B2', 'worldwide', 'adverb', '/ˌwɜːldˈwaɪd/', 'trên toàn thế giới' FROM DUAL
UNION ALL SELECT 'B2', 'worship', 'noun', '/ˈwɜːʃɪp/', 'sự thờ cúng' FROM DUAL
UNION ALL SELECT 'B2', 'worthwhile', 'adjective', '/ˌwɜːθˈwaɪl/', 'đáng giá, đáng làm' FROM DUAL
UNION ALL SELECT 'B2', 'wound', 'noun', '/wuːnd/', 'vết thương' FROM DUAL
UNION ALL SELECT 'B2', 'yield', 'verb', '/jiːld/', 'mang lại, nhượng bộ' FROM DUAL
UNION ALL SELECT 'B2', 'youngster', 'noun', '/ˈjʌŋstə(r)/', 'người trẻ tuổi' FROM DUAL
UNION ALL SELECT 'B2', 'zone', 'noun', '/zəʊn/', 'khu vực' FROM DUAL
UNION ALL SELECT 'B2', 'accommodate', 'verb', '/əˈkɒmədeɪt/', 'cung cấp chỗ ở, đáp ứng' FROM DUAL
UNION ALL SELECT 'B2', 'accomplish', 'verb', '/əˈkʌmplɪʃ/', 'hoàn thành' FROM DUAL
UNION ALL SELECT 'B2', 'accountant', 'noun', '/əˈkaʊntənt/', 'kế toán viên' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B2', 'accuracy', 'noun', '/ˈækjərəsi/', 'độ chính xác' FROM DUAL
UNION ALL SELECT 'B2', 'addiction', 'noun', '/əˈdɪkʃn/', 'sự nghiện' FROM DUAL
UNION ALL SELECT 'B2', 'adequate', 'adjective', '/ˈædɪkwət/', 'đầy đủ' FROM DUAL
UNION ALL SELECT 'B2', 'adjust', 'verb', '/əˈdʒʌst/', 'điều chỉnh' FROM DUAL
UNION ALL SELECT 'B2', 'admission', 'noun', '/ədˈmɪʃn/', 'sự nhận vào, sự thừa nhận' FROM DUAL
UNION ALL SELECT 'B2', 'adolescent', 'noun', '/ˌædəˈlesnt/', 'thanh thiếu niên' FROM DUAL
UNION ALL SELECT 'B2', 'advocate', 'verb', '/ˈædvəkeɪt/', 'ủng hộ, bênh vực' FROM DUAL
UNION ALL SELECT 'B2', 'aesthetic', 'adjective', '/iːsˈθetɪk/', 'thuộc thẩm mỹ' FROM DUAL
UNION ALL SELECT 'B2', 'alien', 'noun', '/ˈeɪliən/', 'người ngoài hành tinh' FROM DUAL
UNION ALL SELECT 'B2', 'allegedly', 'adverb', '/əˈledʒɪdli/', 'được cho là' FROM DUAL
UNION ALL SELECT 'B2', 'alliance', 'noun', '/əˈlaɪəns/', 'liên minh' FROM DUAL
UNION ALL SELECT 'B2', 'ally', 'noun', '/ˈælaɪ/', 'đồng minh' FROM DUAL
UNION ALL SELECT 'B2', 'ambassador', 'noun', '/æmˈbæsədə(r)/', 'đại sứ' FROM DUAL
UNION ALL SELECT 'B2', 'amusing', 'adjective', '/əˈmjuːzɪŋ/', 'thú vị, buồn cười' FROM DUAL
UNION ALL SELECT 'B2', 'analyst', 'noun', '/ˈænəlɪst/', 'nhà phân tích' FROM DUAL
UNION ALL SELECT 'B2', 'ancestor', 'noun', '/ˈænsestə(r)/', 'tổ tiên' FROM DUAL
UNION ALL SELECT 'B2', 'anticipate', 'verb', '/ænˈtɪsɪpeɪt/', 'dự đoán, lường trước' FROM DUAL
UNION ALL SELECT 'B2', 'anxiety', 'noun', '/æŋˈzaɪəti/', 'sự lo âu' FROM DUAL
UNION ALL SELECT 'B2', 'apology', 'noun', '/əˈpɒlədʒi/', 'lời xin lỗi' FROM DUAL
UNION ALL SELECT 'B2', 'appetite', 'noun', '/ˈæpɪtaɪt/', 'sự thèm ăn' FROM DUAL
UNION ALL SELECT 'B2', 'applicant', 'noun', '/ˈæplɪkənt/', 'người nộp đơn' FROM DUAL
UNION ALL SELECT 'B2', 'appoint', 'verb', '/əˈpɔɪnt/', 'bổ nhiệm' FROM DUAL
UNION ALL SELECT 'B2', 'arena', 'noun', '/əˈriːnə/', 'đấu trường' FROM DUAL
UNION ALL SELECT 'B2', 'arguably', 'adverb', '/ˈɑːɡjuəbli/', 'có thể cho là' FROM DUAL
UNION ALL SELECT 'B2', 'arrow', 'noun', '/ˈærəʊ/', 'mũi tên' FROM DUAL
UNION ALL SELECT 'B2', 'asset', 'noun', '/ˈæset/', 'tài sản' FROM DUAL
UNION ALL SELECT 'B2', 'assistance', 'noun', '/əˈsɪstəns/', 'sự hỗ trợ' FROM DUAL
UNION ALL SELECT 'B2', 'assumption', 'noun', '/əˈsʌmpʃn/', 'giả định' FROM DUAL
UNION ALL SELECT 'B2', 'assure', 'verb', '/əˈʃʊə(r)/', 'cam đoan' FROM DUAL
UNION ALL SELECT 'B2', 'astonishing', 'adjective', '/əˈstɒnɪʃɪŋ/', 'đáng kinh ngạc' FROM DUAL
UNION ALL SELECT 'B2', 'attachment', 'noun', '/əˈtætʃmənt/', 'tệp đính kèm, sự gắn bó' FROM DUAL
UNION ALL SELECT 'B2', 'attain', 'verb', '/əˈteɪn/', 'đạt được' FROM DUAL
UNION ALL SELECT 'B2', 'autonomy', 'noun', '/ɔːˈtɒnəmi/', 'quyền tự chủ' FROM DUAL
UNION ALL SELECT 'B2', 'backup', 'noun', '/ˈbækʌp/', 'bản sao lưu, sự hỗ trợ' FROM DUAL
UNION ALL SELECT 'B2', 'bias', 'noun', '/ˈbaɪəs/', 'sự thiên vị' FROM DUAL
UNION ALL SELECT 'B2', 'bid', 'noun', '/bɪd/', 'sự đấu thầu, nỗ lực' FROM DUAL
UNION ALL SELECT 'B2', 'bold', 'adjective', '/bəʊld/', 'táo bạo, in đậm' FROM DUAL
UNION ALL SELECT 'B2', 'boost', 'verb', '/buːst/', 'thúc đẩy' FROM DUAL
UNION ALL SELECT 'B2', 'boundary', 'noun', '/ˈbaʊndri/', 'ranh giới' FROM DUAL
UNION ALL SELECT 'B2', 'breakdown', 'noun', '/ˈbreɪkdaʊn/', 'sự hỏng hóc, sự suy sụp' FROM DUAL
UNION ALL SELECT 'B2', 'breakthrough', 'noun', '/ˈbreɪkθruː/', 'bước đột phá' FROM DUAL
UNION ALL SELECT 'B2', 'breed', 'verb', '/briːd/', 'nhân giống, sinh sản' FROM DUAL
UNION ALL SELECT 'B2', 'brutal', 'adjective', '/ˈbruːtl/', 'tàn bạo' FROM DUAL
UNION ALL SELECT 'B2', 'bulk', 'noun', '/bʌlk/', 'phần lớn' FROM DUAL
UNION ALL SELECT 'B2', 'bureaucracy', 'noun', '/bjʊəˈrɒkrəsi/', 'bộ máy quan liêu' FROM DUAL
UNION ALL SELECT 'B2', 'burden', 'noun', '/ˈbɜːdn/', 'gánh nặng' FROM DUAL
UNION ALL SELECT 'B2', 'buyer', 'noun', '/ˈbaɪə(r)/', 'người mua' FROM DUAL
UNION ALL SELECT 'B2', 'calculation', 'noun', '/ˌkælkjuˈleɪʃn/', 'sự tính toán' FROM DUAL
UNION ALL SELECT 'B2', 'campaign', 'verb', '/kæmˈpeɪn/', 'vận động' FROM DUAL
UNION ALL SELECT 'B2', 'cap', 'verb', '/kæp/', 'giới hạn' FROM DUAL
UNION ALL SELECT 'B2', 'carbon', 'noun', '/ˈkɑːbən/', 'các-bon' FROM DUAL
UNION ALL SELECT 'B2', 'cargo', 'noun', '/ˈkɑːɡəʊ/', 'hàng hóa (chở trên tàu)' FROM DUAL
UNION ALL SELECT 'B2', 'cattle', 'noun', '/ˈkætl/', 'gia súc' FROM DUAL
UNION ALL SELECT 'B2', 'cautious', 'adjective', '/ˈkɔːʃəs/', 'thận trọng' FROM DUAL
UNION ALL SELECT 'B2', 'cease', 'verb', '/siːs/', 'ngừng' FROM DUAL
UNION ALL SELECT 'B2', 'certificate', 'noun', '/səˈtɪfɪkət/', 'chứng chỉ' FROM DUAL
UNION ALL SELECT 'B2', 'chaos', 'noun', '/ˈkeɪɒs/', 'sự hỗn loạn' FROM DUAL
UNION ALL SELECT 'B2', 'characterize', 'verb', '/ˈkærəktəraɪz/', 'mô tả đặc điểm' FROM DUAL
UNION ALL SELECT 'B2', 'chronic', 'adjective', '/ˈkrɒnɪk/', 'mãn tính' FROM DUAL
UNION ALL SELECT 'B2', 'circulate', 'verb', '/ˈsɜːkjəleɪt/', 'lưu thông' FROM DUAL
UNION ALL SELECT 'B2', 'cite', 'verb', '/saɪt/', 'trích dẫn' FROM DUAL
UNION ALL SELECT 'B2', 'civilian', 'noun', '/səˈvɪliən/', 'thường dân' FROM DUAL
UNION ALL SELECT 'B2', 'clarify', 'verb', '/ˈklærəfaɪ/', 'làm rõ' FROM DUAL
UNION ALL SELECT 'B2', 'classify', 'verb', '/ˈklæsɪfaɪ/', 'phân loại' FROM DUAL
UNION ALL SELECT 'B2', 'cluster', 'noun', '/ˈklʌstə(r)/', 'cụm, đám' FROM DUAL
UNION ALL SELECT 'B2', 'coalition', 'noun', '/ˌkəʊəˈlɪʃn/', 'liên minh' FROM DUAL
UNION ALL SELECT 'B2', 'cognitive', 'adjective', '/ˈkɒɡnətɪv/', 'thuộc nhận thức' FROM DUAL
UNION ALL SELECT 'B2', 'coincidence', 'noun', '/kəʊˈɪnsɪdəns/', 'sự trùng hợp' FROM DUAL
UNION ALL SELECT 'B2', 'collaborate', 'verb', '/kəˈlæbəreɪt/', 'hợp tác' FROM DUAL
UNION ALL SELECT 'B2', 'collective', 'adjective', '/kəˈlektɪv/', 'tập thể' FROM DUAL
UNION ALL SELECT 'B2', 'colony', 'noun', '/ˈkɒləni/', 'thuộc địa' FROM DUAL
UNION ALL SELECT 'B2', 'columnist', 'noun', '/ˈkɒləmnɪst/', 'người phụ trách chuyên mục' FROM DUAL
UNION ALL SELECT 'B2', 'commentary', 'noun', '/ˈkɒməntri/', 'bài bình luận' FROM DUAL
UNION ALL SELECT 'B2', 'commentator', 'noun', '/ˈkɒmənteɪtə(r)/', 'bình luận viên' FROM DUAL
UNION ALL SELECT 'B2', 'compensation', 'noun', '/ˌkɒmpenˈseɪʃn/', 'sự bồi thường' FROM DUAL
UNION ALL SELECT 'B2', 'compile', 'verb', '/kəmˈpaɪl/', 'biên soạn' FROM DUAL
UNION ALL SELECT 'B2', 'complement', 'verb', '/ˈkɒmplɪment/', 'bổ sung' FROM DUAL
UNION ALL SELECT 'B2', 'comply', 'verb', '/kəmˈplaɪ/', 'tuân thủ' FROM DUAL
UNION ALL SELECT 'B2', 'compose', 'verb', '/kəmˈpəʊz/', 'soạn, sáng tác' FROM DUAL
UNION ALL SELECT 'B2', 'compound', 'noun', '/ˈkɒmpaʊnd/', 'hợp chất' FROM DUAL
UNION ALL SELECT 'B2', 'comprehensive', 'adjective', '/ˌkɒmprɪˈhensɪv/', 'toàn diện' FROM DUAL
UNION ALL SELECT 'B2', 'comprise', 'verb', '/kəmˈpraɪz/', 'bao gồm' FROM DUAL
UNION ALL SELECT 'B2', 'compromise', 'noun', '/ˈkɒmprəmaɪz/', 'sự thỏa hiệp' FROM DUAL
UNION ALL SELECT 'B2', 'compulsory', 'adjective', '/kəmˈpʌlsəri/', 'bắt buộc' FROM DUAL
UNION ALL SELECT 'B2', 'conceive', 'verb', '/kənˈsiːv/', 'hình thành (ý tưởng), thụ thai' FROM DUAL
UNION ALL SELECT 'B2', 'confess', 'verb', '/kənˈfes/', 'thú nhận' FROM DUAL
UNION ALL SELECT 'B2', 'confront', 'verb', '/kənˈfrʌnt/', 'đối mặt' FROM DUAL
UNION ALL SELECT 'B2', 'consent', 'noun', '/kənˈsent/', 'sự đồng ý' FROM DUAL
UNION ALL SELECT 'B2', 'consequently', 'adverb', '/ˈkɒnsɪkwəntli/', 'do đó' FROM DUAL
UNION ALL SELECT 'B2', 'considerable', 'adjective', '/kənˈsɪdərəbl/', 'đáng kể' FROM DUAL
UNION ALL SELECT 'B2', 'constitute', 'verb', '/ˈkɒnstɪtjuːt/', 'cấu thành' FROM DUAL
UNION ALL SELECT 'B2', 'constitution', 'noun', '/ˌkɒnstɪˈtjuːʃn/', 'hiến pháp' FROM DUAL
UNION ALL SELECT 'B2', 'consultant', 'noun', '/kənˈsʌltənt/', 'chuyên gia tư vấn' FROM DUAL
UNION ALL SELECT 'B2', 'consumption', 'noun', '/kənˈsʌmpʃn/', 'sự tiêu thụ' FROM DUAL
UNION ALL SELECT 'B2', 'controversial', 'adjective', '/ˌkɒntrəˈvɜːʃl/', 'gây tranh cãi' FROM DUAL
UNION ALL SELECT 'B2', 'controversy', 'noun', '/ˈkɒntrəvɜːsi/', 'cuộc tranh cãi' FROM DUAL
UNION ALL SELECT 'B2', 'convention', 'noun', '/kənˈvenʃn/', 'quy ước, hội nghị' FROM DUAL
UNION ALL SELECT 'B2', 'conviction', 'noun', '/kənˈvɪkʃn/', 'niềm tin chắc, sự kết án' FROM DUAL
UNION ALL SELECT 'B2', 'cooperation', 'noun', '/kəʊˌɒpəˈreɪʃn/', 'sự hợp tác' FROM DUAL
UNION ALL SELECT 'B2', 'cope', 'verb', '/kəʊp/', 'đối phó' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B2', 'correspond', 'verb', '/ˌkɒrəˈspɒnd/', 'tương ứng, trao đổi thư từ' FROM DUAL
UNION ALL SELECT 'B2', 'corruption', 'noun', '/kəˈrʌpʃn/', 'tham nhũng' FROM DUAL
UNION ALL SELECT 'B2', 'counter', 'noun', '/ˈkaʊntə(r)/', 'quầy' FROM DUAL
UNION ALL SELECT 'B2', 'coverage', 'noun', '/ˈkʌvərɪdʒ/', 'sự đưa tin, phạm vi bảo hiểm' FROM DUAL
UNION ALL SELECT 'B2', 'crack', 'noun', '/kræk/', 'vết nứt' FROM DUAL
UNION ALL SELECT 'B2', 'craft', 'noun', '/krɑːft/', 'nghề thủ công' FROM DUAL
UNION ALL SELECT 'B2', 'creativity', 'noun', '/ˌkriːeɪˈtɪvəti/', 'sự sáng tạo' FROM DUAL
UNION ALL SELECT 'B2', 'credibility', 'noun', '/ˌkredəˈbɪləti/', 'sự đáng tin cậy' FROM DUAL
UNION ALL SELECT 'B2', 'cruise', 'noun', '/kruːz/', 'chuyến du thuyền' FROM DUAL
UNION ALL SELECT 'B2', 'cultivate', 'verb', '/ˈkʌltɪveɪt/', 'canh tác, nuôi dưỡng' FROM DUAL
UNION ALL SELECT 'B2', 'curiosity', 'noun', '/ˌkjʊəriˈɒsəti/', 'sự tò mò' FROM DUAL
UNION ALL SELECT 'B2', 'curious', 'adjective', '/ˈkjʊəriəs/', 'tò mò' FROM DUAL
UNION ALL SELECT 'B2', 'curriculum', 'noun', '/kəˈrɪkjələm/', 'chương trình giảng dạy' FROM DUAL
UNION ALL SELECT 'B2', 'cycle', 'noun', '/ˈsaɪkl/', 'chu kỳ' FROM DUAL
UNION ALL SELECT 'B2', 'damage', 'verb', '/ˈdæmɪdʒ/', 'làm hư hại' FROM DUAL
UNION ALL SELECT 'B2', 'deadline', 'noun', '/ˈdedlaɪn/', 'hạn chót' FROM DUAL
UNION ALL SELECT 'B2', 'dealer', 'noun', '/ˈdiːlə(r)/', 'người buôn bán, đại lý' FROM DUAL
UNION ALL SELECT 'B2', 'dedicated', 'adjective', '/ˈdedɪkeɪtɪd/', 'tận tâm' FROM DUAL
UNION ALL SELECT 'B2', 'defensive', 'adjective', '/dɪˈfensɪv/', 'phòng thủ' FROM DUAL
UNION ALL SELECT 'B2', 'deficit', 'noun', '/ˈdefɪsɪt/', 'sự thâm hụt' FROM DUAL
UNION ALL SELECT 'B2', 'democracy', 'noun', '/dɪˈmɒkrəsi/', 'nền dân chủ' FROM DUAL
UNION ALL SELECT 'B2', 'democratic', 'adjective', '/ˌdeməˈkrætɪk/', 'dân chủ' FROM DUAL
UNION ALL SELECT 'B2', 'dependent', 'adjective', '/dɪˈpendənt/', 'phụ thuộc' FROM DUAL
UNION ALL SELECT 'B2', 'deputy', 'noun', '/ˈdepjuti/', 'phó, người đại diện' FROM DUAL
UNION ALL SELECT 'B2', 'derive', 'verb', '/dɪˈraɪv/', 'bắt nguồn, thu được' FROM DUAL
UNION ALL SELECT 'B2', 'descend', 'verb', '/dɪˈsend/', 'đi xuống' FROM DUAL
UNION ALL SELECT 'B2', 'designate', 'verb', '/ˈdezɪɡneɪt/', 'chỉ định' FROM DUAL
UNION ALL SELECT 'B2', 'destruction', 'noun', '/dɪˈstrʌkʃn/', 'sự phá hủy' FROM DUAL
UNION ALL SELECT 'B2', 'detention', 'noun', '/dɪˈtenʃn/', 'sự giam giữ' FROM DUAL
UNION ALL SELECT 'B2', 'devastating', 'adjective', '/ˈdevəsteɪtɪŋ/', 'tàn phá nặng nề' FROM DUAL
UNION ALL SELECT 'B2', 'devote', 'verb', '/dɪˈvəʊt/', 'cống hiến' FROM DUAL
UNION ALL SELECT 'B2', 'dilemma', 'noun', '/dɪˈlemə/', 'tình thế khó xử' FROM DUAL
UNION ALL SELECT 'B2', 'dimension', 'noun', '/daɪˈmenʃn/', 'kích thước, khía cạnh' FROM DUAL
UNION ALL SELECT 'B2', 'diminish', 'verb', '/dɪˈmɪnɪʃ/', 'giảm bớt' FROM DUAL
UNION ALL SELECT 'B2', 'diplomatic', 'adjective', '/ˌdɪpləˈmætɪk/', 'thuộc ngoại giao' FROM DUAL
UNION ALL SELECT 'B2', 'disability', 'noun', '/ˌdɪsəˈbɪləti/', 'khuyết tật' FROM DUAL
UNION ALL SELECT 'B2', 'disabled', 'adjective', '/dɪsˈeɪbld/', 'khuyết tật' FROM DUAL
UNION ALL SELECT 'B2', 'disappointment', 'noun', '/ˌdɪsəˈpɔɪntmənt/', 'sự thất vọng' FROM DUAL
UNION ALL SELECT 'B2', 'discourage', 'verb', '/dɪsˈkʌrɪdʒ/', 'làm nản lòng' FROM DUAL
UNION ALL SELECT 'B2', 'discrimination', 'noun', '/dɪˌskrɪmɪˈneɪʃn/', 'sự phân biệt đối xử' FROM DUAL
UNION ALL SELECT 'B2', 'dispute', 'noun', '/dɪˈspjuːt/', 'cuộc tranh chấp' FROM DUAL
UNION ALL SELECT 'B2', 'disturb', 'verb', '/dɪˈstɜːb/', 'làm phiền' FROM DUAL
UNION ALL SELECT 'B2', 'diverse', 'adjective', '/daɪˈvɜːs/', 'đa dạng' FROM DUAL
UNION ALL SELECT 'B2', 'diversity', 'noun', '/daɪˈvɜːsəti/', 'sự đa dạng' FROM DUAL
UNION ALL SELECT 'B2', 'donation', 'noun', '/dəʊˈneɪʃn/', 'sự quyên góp' FROM DUAL
UNION ALL SELECT 'B2', 'dose', 'noun', '/dəʊs/', 'liều lượng' FROM DUAL
UNION ALL SELECT 'B2', 'drain', 'verb', '/dreɪn/', 'làm cạn, thoát nước' FROM DUAL
UNION ALL SELECT 'B2', 'drift', 'verb', '/drɪft/', 'trôi dạt' FROM DUAL
UNION ALL SELECT 'B2', 'duration', 'noun', '/djuˈreɪʃn/', 'khoảng thời gian' FROM DUAL
UNION ALL SELECT 'B2', 'dynamic', 'adjective', '/daɪˈnæmɪk/', 'năng động' FROM DUAL
UNION ALL SELECT 'B2', 'eager', 'adjective', '/ˈiːɡə(r)/', 'háo hức' FROM DUAL
UNION ALL SELECT 'B2', 'ecological', 'adjective', '/ˌiːkəˈlɒdʒɪkl/', 'thuộc sinh thái' FROM DUAL
UNION ALL SELECT 'B2', 'economist', 'noun', '/ɪˈkɒnəmɪst/', 'nhà kinh tế học' FROM DUAL
UNION ALL SELECT 'B2', 'edition', 'noun', '/ɪˈdɪʃn/', 'ấn bản' FROM DUAL
UNION ALL SELECT 'B2', 'efficiency', 'noun', '/ɪˈfɪʃnsi/', 'hiệu suất' FROM DUAL
UNION ALL SELECT 'B2', 'elite', 'noun', '/eɪˈliːt/', 'giới tinh hoa' FROM DUAL
UNION ALL SELECT 'B2', 'embrace', 'verb', '/ɪmˈbreɪs/', 'ôm, đón nhận' FROM DUAL
UNION ALL SELECT 'B2', 'emission', 'noun', '/iˈmɪʃn/', 'khí thải' FROM DUAL
UNION ALL SELECT 'B2', 'empire', 'noun', '/ˈempaɪə(r)/', 'đế chế' FROM DUAL
UNION ALL SELECT 'B2', 'enforce', 'verb', '/ɪnˈfɔːs/', 'thi hành, thực thi' FROM DUAL
UNION ALL SELECT 'B2', 'enterprise', 'noun', '/ˈentəpraɪz/', 'doanh nghiệp' FROM DUAL
UNION ALL SELECT 'B2', 'entitle', 'verb', '/ɪnˈtaɪtl/', 'cho quyền' FROM DUAL
UNION ALL SELECT 'B2', 'equation', 'noun', '/ɪˈkweɪʒn/', 'phương trình' FROM DUAL
UNION ALL SELECT 'B2', 'equivalent', 'adjective', '/ɪˈkwɪvələnt/', 'tương đương' FROM DUAL
UNION ALL SELECT 'B2', 'era', 'noun', '/ˈɪərə/', 'kỷ nguyên' FROM DUAL
UNION ALL SELECT 'B2', 'essence', 'noun', '/ˈesns/', 'bản chất' FROM DUAL
UNION ALL SELECT 'B2', 'ethnic', 'adjective', '/ˈeθnɪk/', 'thuộc dân tộc' FROM DUAL
UNION ALL SELECT 'B2', 'evolution', 'noun', '/ˌiːvəˈluːʃn/', 'sự tiến hóa' FROM DUAL
UNION ALL SELECT 'B2', 'evolve', 'verb', '/iˈvɒlv/', 'tiến hóa, phát triển' FROM DUAL
UNION ALL SELECT 'B2', 'exceed', 'verb', '/ɪkˈsiːd/', 'vượt quá' FROM DUAL
UNION ALL SELECT 'B2', 'exception', 'noun', '/ɪkˈsepʃn/', 'ngoại lệ' FROM DUAL
UNION ALL SELECT 'B2', 'exclude', 'verb', '/ɪkˈskluːd/', 'loại trừ' FROM DUAL
UNION ALL SELECT 'B2', 'exhibit', 'verb', '/ɪɡˈzɪbɪt/', 'trưng bày' FROM DUAL
UNION ALL SELECT 'B2', 'expansion', 'noun', '/ɪkˈspænʃn/', 'sự mở rộng' FROM DUAL
UNION ALL SELECT 'B2', 'expertise', 'noun', '/ˌekspɜːˈtiːz/', 'chuyên môn' FROM DUAL
UNION ALL SELECT 'B2', 'explicit', 'adjective', '/ɪkˈsplɪsɪt/', 'rõ ràng' FROM DUAL
UNION ALL SELECT 'B2', 'exploit', 'verb', '/ɪkˈsplɔɪt/', 'khai thác, bóc lột' FROM DUAL
UNION ALL SELECT 'B2', 'extract', 'verb', '/ɪkˈstrækt/', 'chiết xuất, trích' FROM DUAL
UNION ALL SELECT 'B2', 'fabulous', 'adjective', '/ˈfæbjələs/', 'tuyệt vời' FROM DUAL
UNION ALL SELECT 'B2', 'facilitate', 'verb', '/fəˈsɪlɪteɪt/', 'tạo điều kiện thuận lợi' FROM DUAL
UNION ALL SELECT 'B2', 'fade', 'verb', '/feɪd/', 'phai nhạt' FROM DUAL
UNION ALL SELECT 'B2', 'fairness', 'noun', '/ˈfeənəs/', 'sự công bằng' FROM DUAL
UNION ALL SELECT 'B2', 'fame', 'noun', '/feɪm/', 'danh tiếng' FROM DUAL
UNION ALL SELECT 'B2', 'fantasy', 'noun', '/ˈfæntəsi/', 'sự tưởng tượng, giả tưởng' FROM DUAL
UNION ALL SELECT 'B2', 'fatal', 'adjective', '/ˈfeɪtl/', 'gây chết người' FROM DUAL
UNION ALL SELECT 'B2', 'fierce', 'adjective', '/fɪəs/', 'dữ dội, hung dữ' FROM DUAL
UNION ALL SELECT 'B2', 'filter', 'noun', '/ˈfɪltə(r)/', 'bộ lọc' FROM DUAL
UNION ALL SELECT 'B2', 'fiscal', 'adjective', '/ˈfɪskl/', 'thuộc tài khóa' FROM DUAL
UNION ALL SELECT 'B2', 'flaw', 'noun', '/flɔː/', 'khuyết điểm' FROM DUAL
UNION ALL SELECT 'B2', 'flee', 'verb', '/fliː/', 'chạy trốn' FROM DUAL
UNION ALL SELECT 'B2', 'fleet', 'noun', '/fliːt/', 'hạm đội, đội xe' FROM DUAL
UNION ALL SELECT 'B2', 'flourish', 'verb', '/ˈflʌrɪʃ/', 'phát triển mạnh' FROM DUAL
UNION ALL SELECT 'B2', 'format', 'noun', '/ˈfɔːmæt/', 'định dạng' FROM DUAL
UNION ALL SELECT 'B2', 'forthcoming', 'adjective', '/ˌfɔːθˈkʌmɪŋ/', 'sắp tới' FROM DUAL
UNION ALL SELECT 'B2', 'fossil', 'noun', '/ˈfɒsl/', 'hóa thạch' FROM DUAL
UNION ALL SELECT 'B2', 'fragile', 'adjective', '/ˈfrædʒaɪl/', 'dễ vỡ, mong manh' FROM DUAL
UNION ALL SELECT 'B2', 'framework', 'noun', '/ˈfreɪmwɜːk/', 'khuôn khổ' FROM DUAL
UNION ALL SELECT 'B2', 'fraud', 'noun', '/frɔːd/', 'sự gian lận' FROM DUAL
UNION ALL SELECT 'B2', 'frustrated', 'adjective', '/frʌˈstreɪtɪd/', 'bực bội, thất vọng' FROM DUAL
UNION ALL SELECT 'B2', 'frustrating', 'adjective', '/frʌˈstreɪtɪŋ/', 'gây bực bội' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B2', 'fulfil', 'verb', '/fʊlˈfɪl/', 'hoàn thành, thực hiện' FROM DUAL
UNION ALL SELECT 'B2', 'gaming', 'noun', '/ˈɡeɪmɪŋ/', 'việc chơi trò chơi điện tử' FROM DUAL
UNION ALL SELECT 'B2', 'gaze', 'verb', '/ɡeɪz/', 'nhìn chăm chú' FROM DUAL
UNION ALL SELECT 'B2', 'glimpse', 'noun', '/ɡlɪmps/', 'cái nhìn thoáng qua' FROM DUAL
UNION ALL SELECT 'B2', 'grab', 'verb', '/ɡræb/', 'chộp lấy' FROM DUAL
UNION ALL SELECT 'B2', 'grant', 'noun', '/ɡrɑːnt/', 'khoản trợ cấp' FROM DUAL
UNION ALL SELECT 'B2', 'grasp', 'verb', '/ɡrɑːsp/', 'nắm chặt, hiểu' FROM DUAL
UNION ALL SELECT 'B2', 'grief', 'noun', '/ɡriːf/', 'nỗi đau buồn' FROM DUAL
UNION ALL SELECT 'B2', 'guilt', 'noun', '/ɡɪlt/', 'cảm giác tội lỗi' FROM DUAL
UNION ALL SELECT 'B2', 'harassment', 'noun', '/həˈræsmənt/', 'sự quấy rối' FROM DUAL
UNION ALL SELECT 'B2', 'harsh', 'adjective', '/hɑːʃ/', 'khắc nghiệt' FROM DUAL
UNION ALL SELECT 'B2', 'hazard', 'noun', '/ˈhæzəd/', 'mối nguy hiểm' FROM DUAL
UNION ALL SELECT 'B2', 'headline', 'verb', '/ˈhedlaɪn/', 'đặt tiêu đề, đóng vai chính' FROM DUAL
UNION ALL SELECT 'B2', 'hesitate', 'verb', '/ˈhezɪteɪt/', 'do dự' FROM DUAL
UNION ALL SELECT 'B2', 'highway', 'noun', '/ˈhaɪweɪ/', 'đường cao tốc' FROM DUAL
UNION ALL SELECT 'B2', 'homeless', 'adjective', '/ˈhəʊmləs/', 'vô gia cư' FROM DUAL
UNION ALL SELECT 'B2', 'humble', 'adjective', '/ˈhʌmbl/', 'khiêm tốn' FROM DUAL
UNION ALL SELECT 'B2', 'ignorant', 'adjective', '/ˈɪɡnərənt/', 'thiếu hiểu biết' FROM DUAL
UNION ALL SELECT 'B2', 'immune', 'adjective', '/ɪˈmjuːn/', 'miễn dịch' FROM DUAL
UNION ALL SELECT 'B2', 'implement', 'verb', '/ˈɪmplɪment/', 'thực hiện, triển khai' FROM DUAL
UNION ALL SELECT 'B2', 'incentive', 'noun', '/ɪnˈsentɪv/', 'sự khuyến khích' FROM DUAL
UNION ALL SELECT 'B2', 'incorporate', 'verb', '/ɪnˈkɔːpəreɪt/', 'kết hợp, sáp nhập' FROM DUAL
UNION ALL SELECT 'B2', 'indigenous', 'adjective', '/ɪnˈdɪdʒənəs/', 'bản địa' FROM DUAL
UNION ALL SELECT 'B2', 'infrastructure', 'noun', '/ˈɪnfrəstrʌktʃə(r)/', 'cơ sở hạ tầng' FROM DUAL
UNION ALL SELECT 'B2', 'inherit', 'verb', '/ɪnˈherɪt/', 'thừa kế' FROM DUAL
UNION ALL SELECT 'B2', 'innovation', 'noun', '/ˌɪnəˈveɪʃn/', 'sự đổi mới' FROM DUAL
UNION ALL SELECT 'B2', 'innovative', 'adjective', '/ˈɪnəveɪtɪv/', 'đổi mới, sáng tạo' FROM DUAL
UNION ALL SELECT 'B2', 'inquiry', 'noun', '/ɪnˈkwaɪəri/', 'cuộc điều tra' FROM DUAL
UNION ALL SELECT 'B2', 'inspection', 'noun', '/ɪnˈspekʃn/', 'sự kiểm tra' FROM DUAL
UNION ALL SELECT 'B2', 'inspector', 'noun', '/ɪnˈspektə(r)/', 'thanh tra' FROM DUAL
UNION ALL SELECT 'B2', 'installation', 'noun', '/ˌɪnstəˈleɪʃn/', 'sự lắp đặt' FROM DUAL
UNION ALL SELECT 'B2', 'integrate', 'verb', '/ˈɪntɪɡreɪt/', 'tích hợp, hòa nhập' FROM DUAL
UNION ALL SELECT 'B2', 'integrity', 'noun', '/ɪnˈteɡrəti/', 'sự chính trực' FROM DUAL
UNION ALL SELECT 'B2', 'intent', 'noun', '/ɪnˈtent/', 'ý định' FROM DUAL
UNION ALL SELECT 'B2', 'intervention', 'noun', '/ˌɪntəˈvenʃn/', 'sự can thiệp' FROM DUAL
UNION ALL SELECT 'B2', 'intimate', 'adjective', '/ˈɪntɪmət/', 'thân mật' FROM DUAL
UNION ALL SELECT 'B2', 'invasion', 'noun', '/ɪnˈveɪʒn/', 'cuộc xâm lược' FROM DUAL
UNION ALL SELECT 'B2', 'invisible', 'adjective', '/ɪnˈvɪzəbl/', 'vô hình' FROM DUAL
UNION ALL SELECT 'B2', 'irony', 'noun', '/ˈaɪrəni/', 'sự trớ trêu' FROM DUAL
UNION ALL SELECT 'B2', 'jet', 'noun', '/dʒet/', 'máy bay phản lực' FROM DUAL
UNION ALL SELECT 'B2', 'judicial', 'adjective', '/dʒuˈdɪʃl/', 'thuộc tư pháp' FROM DUAL
UNION ALL SELECT 'B2', 'kidnap', 'verb', '/ˈkɪdnæp/', 'bắt cóc' FROM DUAL
UNION ALL SELECT 'B2', 'landing', 'noun', '/ˈlændɪŋ/', 'sự hạ cánh' FROM DUAL
UNION ALL SELECT 'B2', 'landlord', 'noun', '/ˈlændlɔːd/', 'chủ nhà (cho thuê)' FROM DUAL
UNION ALL SELECT 'B2', 'lawsuit', 'noun', '/ˈlɔːsuːt/', 'vụ kiện' FROM DUAL
UNION ALL SELECT 'B2', 'layout', 'noun', '/ˈleɪaʊt/', 'bố cục' FROM DUAL
UNION ALL SELECT 'B2', 'leak', 'verb', '/liːk/', 'rò rỉ' FROM DUAL
UNION ALL SELECT 'B2', 'legacy', 'noun', '/ˈleɡəsi/', 'di sản' FROM DUAL
UNION ALL SELECT 'B2', 'legislation', 'noun', '/ˌledʒɪsˈleɪʃn/', 'pháp luật' FROM DUAL
UNION ALL SELECT 'B2', 'legitimate', 'adjective', '/lɪˈdʒɪtɪmət/', 'hợp pháp, chính đáng' FROM DUAL
UNION ALL SELECT 'B2', 'lens', 'noun', '/lenz/', 'thấu kính, ống kính' FROM DUAL
UNION ALL SELECT 'B2', 'liberal', 'adjective', '/ˈlɪbərəl/', 'tự do, phóng khoáng' FROM DUAL
UNION ALL SELECT 'B2', 'lifetime', 'noun', '/ˈlaɪftaɪm/', 'cả cuộc đời' FROM DUAL
UNION ALL SELECT 'B2', 'likewise', 'adverb', '/ˈlaɪkwaɪz/', 'tương tự như vậy' FROM DUAL
UNION ALL SELECT 'B2', 'literally', 'adverb', '/ˈlɪtərəli/', 'theo nghĩa đen' FROM DUAL
UNION ALL SELECT 'B2', 'literary', 'adjective', '/ˈlɪtərəri/', 'thuộc văn học' FROM DUAL
UNION ALL SELECT 'B2', 'litre', 'noun', '/ˈliːtə(r)/', 'lít' FROM DUAL
UNION ALL SELECT 'B2', 'lobby', 'noun', '/ˈlɒbi/', 'sảnh, nhóm vận động hành lang' FROM DUAL
UNION ALL SELECT 'B2', 'lottery', 'noun', '/ˈlɒtəri/', 'xổ số' FROM DUAL
UNION ALL SELECT 'B2', 'loyal', 'adjective', '/ˈlɔɪəl/', 'trung thành' FROM DUAL
UNION ALL SELECT 'B2', 'loyalty', 'noun', '/ˈlɔɪəlti/', 'lòng trung thành' FROM DUAL
UNION ALL SELECT 'B2', 'magnificent', 'adjective', '/mæɡˈnɪfɪsnt/', 'tráng lệ' FROM DUAL
UNION ALL SELECT 'B2', 'mandate', 'noun', '/ˈmændeɪt/', 'sự ủy nhiệm' FROM DUAL
UNION ALL SELECT 'B2', 'manipulate', 'verb', '/məˈnɪpjuleɪt/', 'thao túng' FROM DUAL
UNION ALL SELECT 'B2', 'marine', 'adjective', '/məˈriːn/', 'thuộc biển' FROM DUAL
UNION ALL SELECT 'B2', 'mask', 'noun', '/mɑːsk/', 'mặt nạ, khẩu trang' FROM DUAL
UNION ALL SELECT 'B2', 'mayor', 'noun', '/meə(r)/', 'thị trưởng' FROM DUAL
UNION ALL SELECT 'B2', 'medal', 'noun', '/ˈmedl/', 'huy chương' FROM DUAL
UNION ALL SELECT 'B2', 'mentor', 'noun', '/ˈmentɔː(r)/', 'người cố vấn' FROM DUAL
UNION ALL SELECT 'B2', 'merchant', 'noun', '/ˈmɜːtʃənt/', 'thương gia' FROM DUAL
UNION ALL SELECT 'B2', 'merit', 'noun', '/ˈmerɪt/', 'giá trị, công lao' FROM DUAL
UNION ALL SELECT 'B2', 'midst', 'noun', '/mɪdst/', 'giữa' FROM DUAL
UNION ALL SELECT 'B2', 'migration', 'noun', '/maɪˈɡreɪʃn/', 'sự di cư' FROM DUAL
UNION ALL SELECT 'B2', 'militia', 'noun', '/məˈlɪʃə/', 'dân quân' FROM DUAL
UNION ALL SELECT 'B2', 'mineral', 'noun', '/ˈmɪnərəl/', 'khoáng chất' FROM DUAL
UNION ALL SELECT 'B2', 'miracle', 'noun', '/ˈmɪrəkl/', 'phép màu' FROM DUAL
UNION ALL SELECT 'B2', 'mode', 'noun', '/məʊd/', 'chế độ, phương thức' FROM DUAL
UNION ALL SELECT 'B2', 'modest', 'adjective', '/ˈmɒdɪst/', 'khiêm tốn' FROM DUAL
UNION ALL SELECT 'B2', 'momentum', 'noun', '/məˈmentəm/', 'đà, động lượng' FROM DUAL
UNION ALL SELECT 'B2', 'monopoly', 'noun', '/məˈnɒpəli/', 'sự độc quyền' FROM DUAL
UNION ALL SELECT 'B2', 'mortgage', 'noun', '/ˈmɔːɡɪdʒ/', 'khoản vay thế chấp' FROM DUAL
UNION ALL SELECT 'B2', 'motivate', 'verb', '/ˈməʊtɪveɪt/', 'tạo động lực' FROM DUAL
UNION ALL SELECT 'B2', 'motive', 'noun', '/ˈməʊtɪv/', 'động cơ' FROM DUAL
UNION ALL SELECT 'B2', 'municipal', 'adjective', '/mjuːˈnɪsɪpl/', 'thuộc thành phố' FROM DUAL
UNION ALL SELECT 'B2', 'mutual', 'adjective', '/ˈmjuːtʃuəl/', 'lẫn nhau' FROM DUAL
UNION ALL SELECT 'B2', 'narrative', 'adjective', '/ˈnærətɪv/', 'thuộc kể chuyện' FROM DUAL
UNION ALL SELECT 'B2', 'neglect', 'verb', '/nɪˈɡlekt/', 'bỏ bê' FROM DUAL
UNION ALL SELECT 'B2', 'negotiation', 'noun', '/nɪˌɡəʊʃiˈeɪʃn/', 'cuộc đàm phán' FROM DUAL
UNION ALL SELECT 'B2', 'nominate', 'verb', '/ˈnɒmɪneɪt/', 'đề cử' FROM DUAL
UNION ALL SELECT 'B2', 'notable', 'adjective', '/ˈnəʊtəbl/', 'đáng chú ý' FROM DUAL
UNION ALL SELECT 'B2', 'nursery', 'noun', '/ˈnɜːsəri/', 'nhà trẻ, vườn ươm' FROM DUAL
UNION ALL SELECT 'B2', 'nutrition', 'noun', '/njuˈtrɪʃn/', 'dinh dưỡng' FROM DUAL
UNION ALL SELECT 'B2', 'objective', 'noun', '/əbˈdʒektɪv/', 'mục tiêu' FROM DUAL
UNION ALL SELECT 'B2', 'obsess', 'verb', '/əbˈses/', 'ám ảnh' FROM DUAL
UNION ALL SELECT 'B2', 'obstacle', 'noun', '/ˈɒbstəkl/', 'trở ngại' FROM DUAL
UNION ALL SELECT 'B2', 'offering', 'noun', '/ˈɒfərɪŋ/', 'sự cung cấp, lễ vật' FROM DUAL
UNION ALL SELECT 'B2', 'operational', 'adjective', '/ˌɒpəˈreɪʃənl/', 'đang hoạt động' FROM DUAL
UNION ALL SELECT 'B2', 'optimistic', 'adjective', '/ˌɒptɪˈmɪstɪk/', 'lạc quan' FROM DUAL
UNION ALL SELECT 'B2', 'orientation', 'noun', '/ˌɔːriənˈteɪʃn/', 'định hướng' FROM DUAL
UNION ALL SELECT 'B2', 'outbreak', 'noun', '/ˈaʊtbreɪk/', 'sự bùng phát' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B2', 'outfit', 'noun', '/ˈaʊtfɪt/', 'bộ trang phục' FROM DUAL
UNION ALL SELECT 'B2', 'outline', 'noun', '/ˈaʊtlaɪn/', 'dàn ý, đường nét' FROM DUAL
UNION ALL SELECT 'B2', 'overlook', 'verb', '/ˌəʊvəˈlʊk/', 'bỏ qua, nhìn ra' FROM DUAL
UNION ALL SELECT 'B2', 'oversee', 'verb', '/ˌəʊvəˈsiː/', 'giám sát' FROM DUAL
UNION ALL SELECT 'B2', 'overwhelming', 'adjective', '/ˌəʊvəˈwelmɪŋ/', 'áp đảo' FROM DUAL
UNION ALL SELECT 'B2', 'pandemic', 'noun', '/pænˈdemɪk/', 'đại dịch' FROM DUAL
UNION ALL SELECT 'B2', 'parade', 'noun', '/pəˈreɪd/', 'cuộc diễu hành' FROM DUAL
UNION ALL SELECT 'B2', 'parliament', 'noun', '/ˈpɑːləmənt/', 'quốc hội' FROM DUAL
UNION ALL SELECT 'B2', 'pathway', 'noun', '/ˈpɑːθweɪ/', 'con đường' FROM DUAL
UNION ALL SELECT 'B2', 'patrol', 'noun', '/pəˈtrəʊl/', 'cuộc tuần tra' FROM DUAL
UNION ALL SELECT 'B2', 'pension', 'noun', '/ˈpenʃn/', 'lương hưu' FROM DUAL
UNION ALL SELECT 'B2', 'persistent', 'adjective', '/pəˈsɪstənt/', 'kiên trì, dai dẳng' FROM DUAL
UNION ALL SELECT 'B2', 'petition', 'noun', '/pəˈtɪʃn/', 'đơn kiến nghị' FROM DUAL
UNION ALL SELECT 'B2', 'pharmacy', 'noun', '/ˈfɑːməsi/', 'hiệu thuốc' FROM DUAL
UNION ALL SELECT 'B2', 'pilot', 'verb', '/ˈpaɪlət/', 'thí điểm, lái' FROM DUAL
UNION ALL SELECT 'B2', 'pioneer', 'noun', '/ˌpaɪəˈnɪə(r)/', 'người tiên phong' FROM DUAL
UNION ALL SELECT 'B2', 'plea', 'noun', '/pliː/', 'lời cầu xin' FROM DUAL
UNION ALL SELECT 'B2', 'plunge', 'verb', '/plʌndʒ/', 'lao xuống, giảm mạnh' FROM DUAL
UNION ALL SELECT 'B2', 'portfolio', 'noun', '/pɔːtˈfəʊliəʊ/', 'hồ sơ năng lực, danh mục đầu tư' FROM DUAL
UNION ALL SELECT 'B2', 'portion', 'noun', '/ˈpɔːʃn/', 'phần, khẩu phần' FROM DUAL
UNION ALL SELECT 'B2', 'practitioner', 'noun', '/prækˈtɪʃənə(r)/', 'người hành nghề' FROM DUAL
UNION ALL SELECT 'B2', 'predecessor', 'noun', '/ˈpriːdɪsesə(r)/', 'người tiền nhiệm' FROM DUAL
UNION ALL SELECT 'B2', 'prejudice', 'noun', '/ˈpredʒudɪs/', 'định kiến' FROM DUAL
UNION ALL SELECT 'B2', 'premium', 'noun', '/ˈpriːmiəm/', 'phí bảo hiểm, cao cấp' FROM DUAL
UNION ALL SELECT 'B2', 'prescription', 'noun', '/prɪˈskrɪpʃn/', 'đơn thuốc' FROM DUAL
UNION ALL SELECT 'B2', 'presidential', 'adjective', '/ˌprezɪˈdenʃl/', 'thuộc tổng thống' FROM DUAL
UNION ALL SELECT 'B2', 'prestigious', 'adjective', '/preˈstɪdʒəs/', 'có uy tín' FROM DUAL
UNION ALL SELECT 'B2', 'presumably', 'adverb', '/prɪˈzjuːməbli/', 'có lẽ' FROM DUAL
UNION ALL SELECT 'B2', 'prevail', 'verb', '/prɪˈveɪl/', 'thắng thế, phổ biến' FROM DUAL
UNION ALL SELECT 'B2', 'privilege', 'noun', '/ˈprɪvəlɪdʒ/', 'đặc quyền' FROM DUAL
UNION ALL SELECT 'B2', 'profound', 'adjective', '/prəˈfaʊnd/', 'sâu sắc' FROM DUAL
UNION ALL SELECT 'B2', 'prohibit', 'verb', '/prəˈhɪbɪt/', 'cấm' FROM DUAL
UNION ALL SELECT 'B2', 'projection', 'noun', '/prəˈdʒekʃn/', 'sự dự báo, sự chiếu' FROM DUAL
UNION ALL SELECT 'B2', 'prosecute', 'verb', '/ˈprɒsɪkjuːt/', 'truy tố' FROM DUAL
UNION ALL SELECT 'B2', 'prosperity', 'noun', '/prɒˈsperəti/', 'sự thịnh vượng' FROM DUAL
UNION ALL SELECT 'B2', 'protocol', 'noun', '/ˈprəʊtəkɒl/', 'giao thức, nghi thức' FROM DUAL
UNION ALL SELECT 'B2', 'provision', 'noun', '/prəˈvɪʒn/', 'sự cung cấp, điều khoản' FROM DUAL
UNION ALL SELECT 'B2', 'provoke', 'verb', '/prəˈvəʊk/', 'khiêu khích, gây ra' FROM DUAL
UNION ALL SELECT 'B2', 'publication', 'noun', '/ˌpʌblɪˈkeɪʃn/', 'sự xuất bản, ấn phẩm' FROM DUAL
UNION ALL SELECT 'B2', 'qualitative', 'adjective', '/ˈkwɒlɪtətɪv/', 'thuộc chất lượng, định tính' FROM DUAL
UNION ALL SELECT 'B2', 'quota', 'noun', '/ˈkwəʊtə/', 'hạn ngạch' FROM DUAL
UNION ALL SELECT 'B2', 'radar', 'noun', '/ˈreɪdɑː(r)/', 'ra-đa' FROM DUAL
UNION ALL SELECT 'B2', 'rally', 'noun', '/ˈræli/', 'cuộc mít tinh' FROM DUAL
UNION ALL SELECT 'B2', 'ratio', 'noun', '/ˈreɪʃiəʊ/', 'tỷ số' FROM DUAL
UNION ALL SELECT 'B2', 'realm', 'noun', '/relm/', 'lĩnh vực, vương quốc' FROM DUAL
UNION ALL SELECT 'B2', 'rebel', 'noun', '/ˈrebl/', 'kẻ nổi loạn' FROM DUAL
UNION ALL SELECT 'B2', 'recession', 'noun', '/rɪˈseʃn/', 'suy thoái kinh tế' FROM DUAL
UNION ALL SELECT 'B2', 'reckon', 'verb', '/ˈrekən/', 'cho rằng, tính toán' FROM DUAL
UNION ALL SELECT 'B2', 'referee', 'noun', '/ˌrefəˈriː/', 'trọng tài' FROM DUAL
UNION ALL SELECT 'B2', 'refugee', 'noun', '/ˌrefjuˈdʒiː/', 'người tị nạn' FROM DUAL
UNION ALL SELECT 'B2', 'regulate', 'verb', '/ˈreɡjuleɪt/', 'điều chỉnh' FROM DUAL
UNION ALL SELECT 'B2', 'rehabilitation', 'noun', '/ˌriːəˌbɪlɪˈteɪʃn/', 'sự phục hồi chức năng' FROM DUAL
UNION ALL SELECT 'B2', 'reliability', 'noun', '/rɪˌlaɪəˈbɪləti/', 'độ tin cậy' FROM DUAL
UNION ALL SELECT 'B2', 'remedy', 'noun', '/ˈremədi/', 'phương thuốc, biện pháp khắc phục' FROM DUAL
UNION ALL SELECT 'B2', 'removal', 'noun', '/rɪˈmuːvl/', 'sự loại bỏ' FROM DUAL
UNION ALL SELECT 'B2', 'renew', 'verb', '/rɪˈnjuː/', 'làm mới, gia hạn' FROM DUAL
UNION ALL SELECT 'B2', 'renewable', 'adjective', '/rɪˈnjuːəbl/', 'có thể tái tạo' FROM DUAL
UNION ALL SELECT 'B2', 'reproduce', 'verb', '/ˌriːprəˈdjuːs/', 'tái tạo, sinh sản' FROM DUAL
UNION ALL SELECT 'B2', 'rescue', 'noun', '/ˈreskjuː/', 'sự giải cứu' FROM DUAL
UNION ALL SELECT 'B2', 'reservoir', 'noun', '/ˈrezəvwɑː(r)/', 'hồ chứa nước' FROM DUAL
UNION ALL SELECT 'B2', 'residence', 'noun', '/ˈrezɪdəns/', 'nơi cư trú' FROM DUAL
UNION ALL SELECT 'B2', 'residential', 'adjective', '/ˌrezɪˈdenʃl/', 'thuộc khu dân cư' FROM DUAL
UNION ALL SELECT 'B2', 'resistance', 'noun', '/rɪˈzɪstəns/', 'sự kháng cự' FROM DUAL
UNION ALL SELECT 'B2', 'respective', 'adjective', '/rɪˈspektɪv/', 'riêng của mỗi người' FROM DUAL
UNION ALL SELECT 'B2', 'retail', 'noun', '/ˈriːteɪl/', 'bán lẻ' FROM DUAL
UNION ALL SELECT 'B2', 'retreat', 'verb', '/rɪˈtriːt/', 'rút lui' FROM DUAL
UNION ALL SELECT 'B2', 'revelation', 'noun', '/ˌrevəˈleɪʃn/', 'sự tiết lộ' FROM DUAL
UNION ALL SELECT 'B2', 'revival', 'noun', '/rɪˈvaɪvl/', 'sự hồi sinh' FROM DUAL
UNION ALL SELECT 'B2', 'rhetoric', 'noun', '/ˈretərɪk/', 'tu từ, lời nói hoa mỹ' FROM DUAL
UNION ALL SELECT 'B2', 'rifle', 'noun', '/ˈraɪfl/', 'súng trường' FROM DUAL
UNION ALL SELECT 'B2', 'riot', 'noun', '/ˈraɪət/', 'cuộc bạo loạn' FROM DUAL
UNION ALL SELECT 'B2', 'ritual', 'noun', '/ˈrɪtʃuəl/', 'nghi lễ' FROM DUAL
UNION ALL SELECT 'B2', 'robust', 'adjective', '/rəʊˈbʌst/', 'mạnh mẽ, vững chắc' FROM DUAL
UNION ALL SELECT 'B2', 'rotation', 'noun', '/rəʊˈteɪʃn/', 'sự xoay vòng' FROM DUAL
UNION ALL SELECT 'B2', 'ruling', 'noun', '/ˈruːlɪŋ/', 'phán quyết' FROM DUAL
UNION ALL SELECT 'B2', 'rural', 'adjective', '/ˈrʊərəl/', 'thuộc nông thôn' FROM DUAL
UNION ALL SELECT 'B2', 'sanction', 'noun', '/ˈsæŋkʃn/', 'lệnh trừng phạt' FROM DUAL
UNION ALL SELECT 'B2', 'scrutiny', 'noun', '/ˈskruːtəni/', 'sự xem xét kỹ lưỡng' FROM DUAL
UNION ALL SELECT 'B2', 'sector', 'noun', '/ˈsektə(r)/', 'lĩnh vực, khu vực' FROM DUAL
UNION ALL SELECT 'B2', 'segment', 'noun', '/ˈseɡmənt/', 'đoạn, phân khúc' FROM DUAL
UNION ALL SELECT 'B2', 'sensation', 'noun', '/senˈseɪʃn/', 'cảm giác, sự náo động' FROM DUAL
UNION ALL SELECT 'B2', 'sentiment', 'noun', '/ˈsentɪmənt/', 'tình cảm, quan điểm' FROM DUAL
UNION ALL SELECT 'B2', 'shareholder', 'noun', '/ˈʃeəhəʊldə(r)/', 'cổ đông' FROM DUAL
UNION ALL SELECT 'B2', 'shortage', 'noun', '/ˈʃɔːtɪdʒ/', 'sự thiếu hụt' FROM DUAL
UNION ALL SELECT 'B2', 'shortly', 'adverb', '/ˈʃɔːtli/', 'ngay sau đó, sớm' FROM DUAL
UNION ALL SELECT 'B2', 'simulation', 'noun', '/ˌsɪmjuˈleɪʃn/', 'sự mô phỏng' FROM DUAL
UNION ALL SELECT 'B2', 'skeptical', 'adjective', '/ˈskeptɪkl/', 'hoài nghi' FROM DUAL
UNION ALL SELECT 'B2', 'slogan', 'noun', '/ˈsləʊɡən/', 'khẩu hiệu' FROM DUAL
UNION ALL SELECT 'B2', 'specialize', 'verb', '/ˈspeʃəlaɪz/', 'chuyên về' FROM DUAL
UNION ALL SELECT 'B2', 'spectrum', 'noun', '/ˈspektrəm/', 'quang phổ, phạm vi' FROM DUAL
UNION ALL SELECT 'B2', 'speculation', 'noun', '/ˌspekjuˈleɪʃn/', 'sự suy đoán' FROM DUAL
UNION ALL SELECT 'B2', 'spokesman', 'noun', '/ˈspəʊksmən/', 'người phát ngôn' FROM DUAL
UNION ALL SELECT 'B2', 'stimulus', 'noun', '/ˈstɪmjələs/', 'tác nhân kích thích' FROM DUAL
UNION ALL SELECT 'B2', 'strand', 'noun', '/strænd/', 'sợi, phần' FROM DUAL
UNION ALL SELECT 'B2', 'strip', 'verb', '/strɪp/', 'lột bỏ' FROM DUAL
UNION ALL SELECT 'B2', 'stunning', 'adjective', '/ˈstʌnɪŋ/', 'tuyệt đẹp' FROM DUAL
UNION ALL SELECT 'B2', 'subsidy', 'noun', '/ˈsʌbsədi/', 'trợ cấp' FROM DUAL
UNION ALL SELECT 'B2', 'successor', 'noun', '/səkˈsesə(r)/', 'người kế nhiệm' FROM DUAL
UNION ALL SELECT 'B2', 'summit', 'noun', '/ˈsʌmɪt/', 'đỉnh, hội nghị thượng đỉnh' FROM DUAL
UNION ALL SELECT 'B2', 'supervisor', 'noun', '/ˈsuːpəvaɪzə(r)/', 'người giám sát' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'B2', 'supplement', 'noun', '/ˈsʌplɪmənt/', 'phần bổ sung, thực phẩm chức năng' FROM DUAL
UNION ALL SELECT 'B2', 'suppress', 'verb', '/səˈpres/', 'đàn áp, kìm nén' FROM DUAL
UNION ALL SELECT 'B2', 'supreme', 'adjective', '/suːˈpriːm/', 'tối cao' FROM DUAL
UNION ALL SELECT 'B2', 'surge', 'noun', '/sɜːdʒ/', 'sự gia tăng đột ngột' FROM DUAL
UNION ALL SELECT 'B2', 'surveillance', 'noun', '/sɜːˈveɪləns/', 'sự giám sát' FROM DUAL
UNION ALL SELECT 'B2', 'suspicion', 'noun', '/səˈspɪʃn/', 'sự nghi ngờ' FROM DUAL
UNION ALL SELECT 'B2', 'suspicious', 'adjective', '/səˈspɪʃəs/', 'đáng ngờ, nghi ngờ' FROM DUAL
UNION ALL SELECT 'B2', 'sustainable', 'adjective', '/səˈsteɪnəbl/', 'bền vững' FROM DUAL
UNION ALL SELECT 'B2', 'symbolic', 'adjective', '/sɪmˈbɒlɪk/', 'mang tính biểu tượng' FROM DUAL
UNION ALL SELECT 'B2', 'syndrome', 'noun', '/ˈsɪndrəʊm/', 'hội chứng' FROM DUAL
UNION ALL SELECT 'B2', 'tactic', 'noun', '/ˈtæktɪk/', 'chiến thuật' FROM DUAL
UNION ALL SELECT 'B2', 'taxpayer', 'noun', '/ˈtækspeɪə(r)/', 'người nộp thuế' FROM DUAL
UNION ALL SELECT 'B2', 'tenant', 'noun', '/ˈtenənt/', 'người thuê nhà' FROM DUAL
UNION ALL SELECT 'B2', 'terminal', 'noun', '/ˈtɜːmɪnl/', 'nhà ga, thiết bị đầu cuối' FROM DUAL
UNION ALL SELECT 'B2', 'testimony', 'noun', '/ˈtestɪməni/', 'lời khai' FROM DUAL
UNION ALL SELECT 'B2', 'theme', 'noun', '/θiːm/', 'chủ đề' FROM DUAL
UNION ALL SELECT 'B2', 'therapy', 'noun', '/ˈθerəpi/', 'liệu pháp' FROM DUAL
UNION ALL SELECT 'B2', 'tolerance', 'noun', '/ˈtɒlərəns/', 'sự khoan dung' FROM DUAL
UNION ALL SELECT 'B2', 'toxic', 'adjective', '/ˈtɒksɪk/', 'độc hại' FROM DUAL
UNION ALL SELECT 'B2', 'transparent', 'adjective', '/trænsˈpærənt/', 'trong suốt, minh bạch' FROM DUAL
UNION ALL SELECT 'B2', 'treaty', 'noun', '/ˈtriːti/', 'hiệp ước' FROM DUAL
UNION ALL SELECT 'B2', 'tremendous', 'adjective', '/trəˈmendəs/', 'to lớn, khủng khiếp' FROM DUAL
UNION ALL SELECT 'B2', 'tribunal', 'noun', '/traɪˈbjuːnl/', 'tòa án đặc biệt' FROM DUAL
UNION ALL SELECT 'B2', 'trophy', 'noun', '/ˈtrəʊfi/', 'cúp, chiến lợi phẩm' FROM DUAL
UNION ALL SELECT 'B2', 'turnover', 'noun', '/ˈtɜːnəʊvə(r)/', 'doanh thu, tỷ lệ thay nhân sự' FROM DUAL
UNION ALL SELECT 'B2', 'unify', 'verb', '/ˈjuːnɪfaɪ/', 'thống nhất' FROM DUAL
UNION ALL SELECT 'B2', 'update', 'noun', '/ˈʌpdeɪt/', 'bản cập nhật' FROM DUAL
UNION ALL SELECT 'B2', 'upgrade', 'verb', '/ˌʌpˈɡreɪd/', 'nâng cấp' FROM DUAL
UNION ALL SELECT 'B2', 'uphold', 'verb', '/ʌpˈhəʊld/', 'duy trì, ủng hộ' FROM DUAL
UNION ALL SELECT 'B2', 'utilize', 'verb', '/ˈjuːtəlaɪz/', 'tận dụng' FROM DUAL
UNION ALL SELECT 'B2', 'validity', 'noun', '/vəˈlɪdəti/', 'tính hợp lệ' FROM DUAL
UNION ALL SELECT 'B2', 'vendor', 'noun', '/ˈvendə(r)/', 'người bán hàng' FROM DUAL
UNION ALL SELECT 'B2', 'venture', 'noun', '/ˈventʃə(r)/', 'dự án kinh doanh mạo hiểm' FROM DUAL
UNION ALL SELECT 'B2', 'verdict', 'noun', '/ˈvɜːdɪkt/', 'phán quyết' FROM DUAL
UNION ALL SELECT 'B2', 'versus', 'preposition', '/ˈvɜːsəs/', 'đấu với' FROM DUAL
UNION ALL SELECT 'B2', 'vessel', 'noun', '/ˈvesl/', 'tàu, mạch máu' FROM DUAL
UNION ALL SELECT 'B2', 'veteran', 'noun', '/ˈvetərən/', 'cựu chiến binh, người kỳ cựu' FROM DUAL
UNION ALL SELECT 'B2', 'viable', 'adjective', '/ˈvaɪəbl/', 'khả thi' FROM DUAL
UNION ALL SELECT 'B2', 'violation', 'noun', '/ˌvaɪəˈleɪʃn/', 'sự vi phạm' FROM DUAL
UNION ALL SELECT 'B2', 'voluntary', 'adjective', '/ˈvɒləntri/', 'tự nguyện' FROM DUAL
UNION ALL SELECT 'B2', 'voting', 'noun', '/ˈvəʊtɪŋ/', 'sự bỏ phiếu' FROM DUAL
UNION ALL SELECT 'B2', 'voucher', 'noun', '/ˈvaʊtʃə(r)/', 'phiếu mua hàng' FROM DUAL
UNION ALL SELECT 'B2', 'warrant', 'noun', '/ˈwɒrənt/', 'lệnh (bắt, khám xét)' FROM DUAL
UNION ALL SELECT 'B2', 'warrior', 'noun', '/ˈwɒriə(r)/', 'chiến binh' FROM DUAL
UNION ALL SELECT 'B2', 'weaken', 'verb', '/ˈwiːkən/', 'làm suy yếu' FROM DUAL
UNION ALL SELECT 'B2', 'whatsoever', 'adverb', '/ˌwɒtsəʊˈevə(r)/', 'bất cứ điều gì' FROM DUAL
UNION ALL SELECT 'B2', 'whereby', 'adverb', '/weəˈbaɪ/', 'nhờ đó, theo đó' FROM DUAL
UNION ALL SELECT 'B2', 'workforce', 'noun', '/ˈwɜːkfɔːs/', 'lực lượng lao động' FROM DUAL
UNION ALL SELECT 'B2', 'workshop', 'noun', '/ˈwɜːkʃɒp/', 'hội thảo, xưởng' FROM DUAL
UNION ALL SELECT 'B2', 'worthy', 'adjective', '/ˈwɜːði/', 'xứng đáng' FROM DUAL
UNION ALL SELECT 'C1', 'abolish', 'verb', '/əˈbɒlɪʃ/', 'bãi bỏ' FROM DUAL
UNION ALL SELECT 'C1', 'abortion', 'noun', '/əˈbɔːʃn/', 'sự phá thai' FROM DUAL
UNION ALL SELECT 'C1', 'absence', 'noun', '/ˈæbsəns/', 'sự vắng mặt' FROM DUAL
UNION ALL SELECT 'C1', 'absent', 'adjective', '/ˈæbsənt/', 'vắng mặt' FROM DUAL
UNION ALL SELECT 'C1', 'abundance', 'noun', '/əˈbʌndəns/', 'sự dồi dào' FROM DUAL
UNION ALL SELECT 'C1', 'abuse', 'noun', '/əˈbjuːs/', 'sự lạm dụng' FROM DUAL
UNION ALL SELECT 'C1', 'academy', 'noun', '/əˈkædəmi/', 'học viện' FROM DUAL
UNION ALL SELECT 'C1', 'accelerate', 'verb', '/əkˈseləreɪt/', 'tăng tốc' FROM DUAL
UNION ALL SELECT 'C1', 'accessible', 'adjective', '/əkˈsesəbl/', 'có thể tiếp cận' FROM DUAL
UNION ALL SELECT 'C1', 'accidentally', 'adverb', '/ˌæksɪˈdentəli/', 'vô tình' FROM DUAL
UNION ALL SELECT 'C1', 'acclaim', 'noun', '/əˈkleɪm/', 'sự ca ngợi' FROM DUAL
UNION ALL SELECT 'C1', 'accountability', 'noun', '/əˌkaʊntəˈbɪləti/', 'trách nhiệm giải trình' FROM DUAL
UNION ALL SELECT 'C1', 'accumulate', 'verb', '/əˈkjuːmjəleɪt/', 'tích lũy' FROM DUAL
UNION ALL SELECT 'C1', 'accusation', 'noun', '/ˌækjuˈzeɪʃn/', 'lời buộc tội' FROM DUAL
UNION ALL SELECT 'C1', 'acid', 'noun', '/ˈæsɪd/', 'axit' FROM DUAL
UNION ALL SELECT 'C1', 'acquisition', 'noun', '/ˌækwɪˈzɪʃn/', 'sự thu được, thương vụ mua lại' FROM DUAL
UNION ALL SELECT 'C1', 'activate', 'verb', '/ˈæktɪveɪt/', 'kích hoạt' FROM DUAL
UNION ALL SELECT 'C1', 'activist', 'noun', '/ˈæktɪvɪst/', 'nhà hoạt động' FROM DUAL
UNION ALL SELECT 'C1', 'acute', 'adjective', '/əˈkjuːt/', 'cấp tính, sắc bén' FROM DUAL
UNION ALL SELECT 'C1', 'adaptation', 'noun', '/ˌædæpˈteɪʃn/', 'sự thích nghi, bản chuyển thể' FROM DUAL
UNION ALL SELECT 'C1', 'adhere', 'verb', '/ədˈhɪə(r)/', 'tuân thủ, dính chặt' FROM DUAL
UNION ALL SELECT 'C1', 'adjacent', 'adjective', '/əˈdʒeɪsnt/', 'liền kề' FROM DUAL
UNION ALL SELECT 'C1', 'adjustment', 'noun', '/əˈdʒʌstmənt/', 'sự điều chỉnh' FROM DUAL
UNION ALL SELECT 'C1', 'administer', 'verb', '/ədˈmɪnɪstə(r)/', 'quản lý, cho dùng (thuốc)' FROM DUAL
UNION ALL SELECT 'C1', 'administrative', 'adjective', '/ədˈmɪnɪstrətɪv/', 'thuộc hành chính' FROM DUAL
UNION ALL SELECT 'C1', 'admiration', 'noun', '/ˌædməˈreɪʃn/', 'sự ngưỡng mộ' FROM DUAL
UNION ALL SELECT 'C1', 'adverse', 'adjective', '/ˈædvɜːs/', 'bất lợi' FROM DUAL
UNION ALL SELECT 'C1', 'advisory', 'adjective', '/ədˈvaɪzəri/', 'tư vấn' FROM DUAL
UNION ALL SELECT 'C1', 'advocate', 'noun', '/ˈædvəkət/', 'người ủng hộ' FROM DUAL
UNION ALL SELECT 'C1', 'affection', 'noun', '/əˈfekʃn/', 'tình cảm' FROM DUAL
UNION ALL SELECT 'C1', 'affordable', 'adjective', '/əˈfɔːdəbl/', 'giá phải chăng' FROM DUAL
UNION ALL SELECT 'C1', 'aftermath', 'noun', '/ˈɑːftəmæθ/', 'hậu quả' FROM DUAL
UNION ALL SELECT 'C1', 'aggression', 'noun', '/əˈɡreʃn/', 'sự gây hấn' FROM DUAL
UNION ALL SELECT 'C1', 'agricultural', 'adjective', '/ˌæɡrɪˈkʌltʃərəl/', 'thuộc nông nghiệp' FROM DUAL
UNION ALL SELECT 'C1', 'agriculture', 'noun', '/ˈæɡrɪkʌltʃə(r)/', 'nông nghiệp' FROM DUAL
UNION ALL SELECT 'C1', 'aide', 'noun', '/eɪd/', 'người trợ lý' FROM DUAL
UNION ALL SELECT 'C1', 'albeit', 'conjunction', '/ˌɔːlˈbiːɪt/', 'mặc dù' FROM DUAL
UNION ALL SELECT 'C1', 'alert', 'adjective', '/əˈlɜːt/', 'cảnh giác' FROM DUAL
UNION ALL SELECT 'C1', 'alignment', 'noun', '/əˈlaɪnmənt/', 'sự sắp thẳng hàng' FROM DUAL
UNION ALL SELECT 'C1', 'allegation', 'noun', '/ˌæləˈɡeɪʃn/', 'lời cáo buộc' FROM DUAL
UNION ALL SELECT 'C1', 'allege', 'verb', '/əˈledʒ/', 'cáo buộc' FROM DUAL
UNION ALL SELECT 'C1', 'allocate', 'verb', '/ˈæləkeɪt/', 'phân bổ' FROM DUAL
UNION ALL SELECT 'C1', 'allocation', 'noun', '/ˌæləˈkeɪʃn/', 'sự phân bổ' FROM DUAL
UNION ALL SELECT 'C1', 'allowance', 'noun', '/əˈlaʊəns/', 'tiền trợ cấp' FROM DUAL
UNION ALL SELECT 'C1', 'altogether', 'adverb', '/ˌɔːltəˈɡeðə(r)/', 'hoàn toàn, tổng cộng' FROM DUAL
UNION ALL SELECT 'C1', 'amateur', 'adjective', '/ˈæmətə(r)/', 'nghiệp dư' FROM DUAL
UNION ALL SELECT 'C1', 'ambiguity', 'noun', '/ˌæmbɪˈɡjuːəti/', 'sự mơ hồ' FROM DUAL
UNION ALL SELECT 'C1', 'ambiguous', 'adjective', '/æmˈbɪɡjuəs/', 'mơ hồ, nước đôi' FROM DUAL
UNION ALL SELECT 'C1', 'amend', 'verb', '/əˈmend/', 'sửa đổi' FROM DUAL
UNION ALL SELECT 'C1', 'amendment', 'noun', '/əˈmendmənt/', 'bản sửa đổi' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C1', 'amid', 'preposition', '/əˈmɪd/', 'giữa (lúc)' FROM DUAL
UNION ALL SELECT 'C1', 'analogy', 'noun', '/əˈnælədʒi/', 'sự tương đồng, phép loại suy' FROM DUAL
UNION ALL SELECT 'C1', 'anchor', 'noun', '/ˈæŋkə(r)/', 'mỏ neo, người dẫn chương trình' FROM DUAL
UNION ALL SELECT 'C1', 'angel', 'noun', '/ˈeɪndʒl/', 'thiên thần' FROM DUAL
UNION ALL SELECT 'C1', 'animation', 'noun', '/ˌænɪˈmeɪʃn/', 'hoạt hình' FROM DUAL
UNION ALL SELECT 'C1', 'apparatus', 'noun', '/ˌæpəˈreɪtəs/', 'bộ máy, thiết bị' FROM DUAL
UNION ALL SELECT 'C1', 'appealing', 'adjective', '/əˈpiːlɪŋ/', 'hấp dẫn' FROM DUAL
UNION ALL SELECT 'C1', 'appreciation', 'noun', '/əˌpriːʃiˈeɪʃn/', 'sự đánh giá cao' FROM DUAL
UNION ALL SELECT 'C1', 'apt', 'adjective', '/æpt/', 'thích hợp' FROM DUAL
UNION ALL SELECT 'C1', 'arbitrary', 'adjective', '/ˈɑːbɪtrəri/', 'tùy tiện' FROM DUAL
UNION ALL SELECT 'C1', 'architectural', 'adjective', '/ˌɑːkɪˈtektʃərəl/', 'thuộc kiến trúc' FROM DUAL
UNION ALL SELECT 'C1', 'archive', 'noun', '/ˈɑːkaɪv/', 'kho lưu trữ' FROM DUAL
UNION ALL SELECT 'C1', 'articulate', 'verb', '/ɑːˈtɪkjuleɪt/', 'diễn đạt rõ ràng' FROM DUAL
UNION ALL SELECT 'C1', 'ascertain', 'verb', '/ˌæsəˈteɪn/', 'xác minh' FROM DUAL
UNION ALL SELECT 'C1', 'aspiration', 'noun', '/ˌæspəˈreɪʃn/', 'khát vọng' FROM DUAL
UNION ALL SELECT 'C1', 'aspire', 'verb', '/əˈspaɪə(r)/', 'khao khát' FROM DUAL
UNION ALL SELECT 'C1', 'assault', 'noun', '/əˈsɔːlt/', 'cuộc tấn công, hành hung' FROM DUAL
UNION ALL SELECT 'C1', 'assemble', 'verb', '/əˈsembl/', 'lắp ráp, tập hợp' FROM DUAL
UNION ALL SELECT 'C1', 'assembly', 'noun', '/əˈsembli/', 'hội đồng, sự lắp ráp' FROM DUAL
UNION ALL SELECT 'C1', 'assert', 'verb', '/əˈsɜːt/', 'khẳng định' FROM DUAL
UNION ALL SELECT 'C1', 'assertion', 'noun', '/əˈsɜːʃn/', 'lời khẳng định' FROM DUAL
UNION ALL SELECT 'C1', 'asylum', 'noun', '/əˈsaɪləm/', 'sự tị nạn' FROM DUAL
UNION ALL SELECT 'C1', 'atrocity', 'noun', '/əˈtrɒsəti/', 'hành động tàn bạo' FROM DUAL
UNION ALL SELECT 'C1', 'attendance', 'noun', '/əˈtendəns/', 'sự có mặt' FROM DUAL
UNION ALL SELECT 'C1', 'attorney', 'noun', '/əˈtɜːni/', 'luật sư' FROM DUAL
UNION ALL SELECT 'C1', 'attribute', 'verb', '/əˈtrɪbjuːt/', 'quy cho' FROM DUAL
UNION ALL SELECT 'C1', 'attribute', 'noun', '/ˈætrɪbjuːt/', 'thuộc tính' FROM DUAL
UNION ALL SELECT 'C1', 'audit', 'noun', '/ˈɔːdɪt/', 'cuộc kiểm toán' FROM DUAL
UNION ALL SELECT 'C1', 'authentic', 'adjective', '/ɔːˈθentɪk/', 'xác thực, chân thật' FROM DUAL
UNION ALL SELECT 'C1', 'authorize', 'verb', '/ˈɔːθəraɪz/', 'ủy quyền' FROM DUAL
UNION ALL SELECT 'C1', 'autobiography', 'noun', '/ˌɔːtəbaɪˈɒɡrəfi/', 'tự truyện' FROM DUAL
UNION ALL SELECT 'C1', 'await', 'verb', '/əˈweɪt/', 'chờ đợi' FROM DUAL
UNION ALL SELECT 'C1', 'ballot', 'noun', '/ˈbælət/', 'lá phiếu' FROM DUAL
UNION ALL SELECT 'C1', 'ban', 'noun', '/bæn/', 'lệnh cấm' FROM DUAL
UNION ALL SELECT 'C1', 'bankruptcy', 'noun', '/ˈbæŋkrʌptsi/', 'sự phá sản' FROM DUAL
UNION ALL SELECT 'C1', 'banner', 'noun', '/ˈbænə(r)/', 'biểu ngữ' FROM DUAL
UNION ALL SELECT 'C1', 'bare', 'adjective', '/beə(r)/', 'trần, trơ trụi' FROM DUAL
UNION ALL SELECT 'C1', 'barrel', 'noun', '/ˈbærəl/', 'thùng tròn' FROM DUAL
UNION ALL SELECT 'C1', 'beam', 'noun', '/biːm/', 'chùm tia, xà nhà' FROM DUAL
UNION ALL SELECT 'C1', 'behalf', 'noun', '/bɪˈhɑːf/', 'thay mặt (on behalf of)' FROM DUAL
UNION ALL SELECT 'C1', 'belly', 'noun', '/ˈbeli/', 'bụng' FROM DUAL
UNION ALL SELECT 'C1', 'beloved', 'adjective', '/bɪˈlʌvɪd/', 'yêu dấu' FROM DUAL
UNION ALL SELECT 'C1', 'bench', 'noun', '/bentʃ/', 'ghế dài' FROM DUAL
UNION ALL SELECT 'C1', 'benchmark', 'noun', '/ˈbentʃmɑːk/', 'tiêu chuẩn so sánh' FROM DUAL
UNION ALL SELECT 'C1', 'beneficial', 'adjective', '/ˌbenɪˈfɪʃl/', 'có lợi' FROM DUAL
UNION ALL SELECT 'C1', 'beneficiary', 'noun', '/ˌbenɪˈfɪʃəri/', 'người thụ hưởng' FROM DUAL
UNION ALL SELECT 'C1', 'betray', 'verb', '/bɪˈtreɪ/', 'phản bội' FROM DUAL
UNION ALL SELECT 'C1', 'beverage', 'noun', '/ˈbevərɪdʒ/', 'đồ uống' FROM DUAL
UNION ALL SELECT 'C1', 'biography', 'noun', '/baɪˈɒɡrəfi/', 'tiểu sử' FROM DUAL
UNION ALL SELECT 'C1', 'bishop', 'noun', '/ˈbɪʃəp/', 'giám mục' FROM DUAL
UNION ALL SELECT 'C1', 'bizarre', 'adjective', '/bɪˈzɑː(r)/', 'kỳ quái' FROM DUAL
UNION ALL SELECT 'C1', 'blade', 'noun', '/bleɪd/', 'lưỡi dao' FROM DUAL
UNION ALL SELECT 'C1', 'blast', 'noun', '/blɑːst/', 'vụ nổ' FROM DUAL
UNION ALL SELECT 'C1', 'bleed', 'verb', '/bliːd/', 'chảy máu' FROM DUAL
UNION ALL SELECT 'C1', 'blessing', 'noun', '/ˈblesɪŋ/', 'phước lành' FROM DUAL
UNION ALL SELECT 'C1', 'blend', 'verb', '/blend/', 'pha trộn' FROM DUAL
UNION ALL SELECT 'C1', 'bless', 'verb', '/bles/', 'ban phước' FROM DUAL
UNION ALL SELECT 'C1', 'blow', 'noun', '/bləʊ/', 'cú đánh, đòn' FROM DUAL
UNION ALL SELECT 'C1', 'blunt', 'adjective', '/blʌnt/', 'cùn, thẳng thừng' FROM DUAL
UNION ALL SELECT 'C1', 'bombing', 'noun', '/ˈbɒmɪŋ/', 'vụ đánh bom' FROM DUAL
UNION ALL SELECT 'C1', 'bonus', 'noun', '/ˈbəʊnəs/', 'tiền thưởng' FROM DUAL
UNION ALL SELECT 'C1', 'boom', 'noun', '/buːm/', 'sự bùng nổ' FROM DUAL
UNION ALL SELECT 'C1', 'bounce', 'verb', '/baʊns/', 'nảy lên' FROM DUAL
UNION ALL SELECT 'C1', 'bow', 'verb', '/baʊ/', 'cúi chào' FROM DUAL
UNION ALL SELECT 'C1', 'bowl', 'verb', '/bəʊl/', 'ném bóng (cricket, bowling)' FROM DUAL
UNION ALL SELECT 'C1', 'brave', 'verb', '/breɪv/', 'đương đầu' FROM DUAL
UNION ALL SELECT 'C1', 'breach', 'noun', '/briːtʃ/', 'sự vi phạm' FROM DUAL
UNION ALL SELECT 'C1', 'breathtaking', 'adjective', '/ˈbreθteɪkɪŋ/', 'ngoạn mục' FROM DUAL
UNION ALL SELECT 'C1', 'brick', 'noun', '/brɪk/', 'viên gạch' FROM DUAL
UNION ALL SELECT 'C1', 'brief', 'adjective', '/briːf/', 'ngắn gọn' FROM DUAL
UNION ALL SELECT 'C1', 'brief', 'verb', '/briːf/', 'tóm tắt cho ai' FROM DUAL
UNION ALL SELECT 'C1', 'broadband', 'noun', '/ˈbrɔːdbænd/', 'băng thông rộng' FROM DUAL
UNION ALL SELECT 'C1', 'browser', 'noun', '/ˈbraʊzə(r)/', 'trình duyệt' FROM DUAL
UNION ALL SELECT 'C1', 'buddy', 'noun', '/ˈbʌdi/', 'bạn thân' FROM DUAL
UNION ALL SELECT 'C1', 'bug', 'noun', '/bʌɡ/', 'con bọ, lỗi phần mềm' FROM DUAL
UNION ALL SELECT 'C1', 'bulletin', 'noun', '/ˈbʊlətɪn/', 'bản tin' FROM DUAL
UNION ALL SELECT 'C1', 'butterfly', 'noun', '/ˈbʌtəflaɪ/', 'con bướm' FROM DUAL
UNION ALL SELECT 'C1', 'cabinet', 'noun', '/ˈkæbɪnət/', 'nội các, tủ' FROM DUAL
UNION ALL SELECT 'C1', 'calm', 'verb', '/kɑːm/', 'làm dịu' FROM DUAL
UNION ALL SELECT 'C1', 'camel', 'noun', '/ˈkæml/', 'con lạc đà' FROM DUAL
UNION ALL SELECT 'C1', 'canal', 'noun', '/kəˈnæl/', 'kênh đào' FROM DUAL
UNION ALL SELECT 'C1', 'candle', 'noun', '/ˈkændl/', 'cây nến' FROM DUAL
UNION ALL SELECT 'C1', 'canvas', 'noun', '/ˈkænvəs/', 'vải bạt, bức tranh sơn dầu' FROM DUAL
UNION ALL SELECT 'C1', 'capitalism', 'noun', '/ˈkæpɪtəlɪzəm/', 'chủ nghĩa tư bản' FROM DUAL
UNION ALL SELECT 'C1', 'capitalist', 'adjective', '/ˈkæpɪtəlɪst/', 'tư bản' FROM DUAL
UNION ALL SELECT 'C1', 'cardinal', 'noun', '/ˈkɑːdɪnl/', 'hồng y' FROM DUAL
UNION ALL SELECT 'C1', 'caring', 'adjective', '/ˈkeərɪŋ/', 'chu đáo, quan tâm' FROM DUAL
UNION ALL SELECT 'C1', 'carriage', 'noun', '/ˈkærɪdʒ/', 'toa xe, xe ngựa' FROM DUAL
UNION ALL SELECT 'C1', 'carve', 'verb', '/kɑːv/', 'chạm khắc' FROM DUAL
UNION ALL SELECT 'C1', 'casino', 'noun', '/kəˈsiːnəʊ/', 'sòng bạc' FROM DUAL
UNION ALL SELECT 'C1', 'casualty', 'noun', '/ˈkæʒuəlti/', 'thương vong' FROM DUAL
UNION ALL SELECT 'C1', 'catalogue', 'noun', '/ˈkætəlɒɡ/', 'danh mục' FROM DUAL
UNION ALL SELECT 'C1', 'catastrophe', 'noun', '/kəˈtæstrəfi/', 'thảm họa' FROM DUAL
UNION ALL SELECT 'C1', 'cater', 'verb', '/ˈkeɪtə(r)/', 'cung cấp đồ ăn, phục vụ' FROM DUAL
UNION ALL SELECT 'C1', 'caution', 'noun', '/ˈkɔːʃn/', 'sự thận trọng' FROM DUAL
UNION ALL SELECT 'C1', 'cave', 'noun', '/keɪv/', 'hang động' FROM DUAL
UNION ALL SELECT 'C1', 'ceasefire', 'noun', '/ˈsiːsfaɪə(r)/', 'lệnh ngừng bắn' FROM DUAL
UNION ALL SELECT 'C1', 'celebrated', 'adjective', '/ˈselɪbreɪtɪd/', 'nổi tiếng' FROM DUAL
UNION ALL SELECT 'C1', 'cemetery', 'noun', '/ˈsemətri/', 'nghĩa trang' FROM DUAL
UNION ALL SELECT 'C1', 'censorship', 'noun', '/ˈsensəʃɪp/', 'sự kiểm duyệt' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C1', 'census', 'noun', '/ˈsensəs/', 'cuộc điều tra dân số' FROM DUAL
UNION ALL SELECT 'C1', 'chamber', 'noun', '/ˈtʃeɪmbə(r)/', 'phòng, viện (quốc hội)' FROM DUAL
UNION ALL SELECT 'C1', 'chancellor', 'noun', '/ˈtʃɑːnsələ(r)/', 'thủ tướng (Đức), hiệu trưởng' FROM DUAL
UNION ALL SELECT 'C1', 'chaotic', 'adjective', '/keɪˈɒtɪk/', 'hỗn loạn' FROM DUAL
UNION ALL SELECT 'C1', 'charm', 'noun', '/tʃɑːm/', 'sự quyến rũ' FROM DUAL
UNION ALL SELECT 'C1', 'charming', 'adjective', '/ˈtʃɑːmɪŋ/', 'duyên dáng' FROM DUAL
UNION ALL SELECT 'C1', 'charter', 'noun', '/ˈtʃɑːtə(r)/', 'hiến chương' FROM DUAL
UNION ALL SELECT 'C1', 'cheek', 'noun', '/tʃiːk/', 'má' FROM DUAL
UNION ALL SELECT 'C1', 'cheer', 'verb', '/tʃɪə(r)/', 'cổ vũ' FROM DUAL
UNION ALL SELECT 'C1', 'chop', 'verb', '/tʃɒp/', 'chặt, thái' FROM DUAL
UNION ALL SELECT 'C1', 'chorus', 'noun', '/ˈkɔːrəs/', 'đoạn điệp khúc, dàn đồng ca' FROM DUAL
UNION ALL SELECT 'C1', 'chunk', 'noun', '/tʃʌŋk/', 'khúc, mảng lớn' FROM DUAL
UNION ALL SELECT 'C1', 'circuit', 'noun', '/ˈsɜːkɪt/', 'mạch điện, vòng đua' FROM DUAL
UNION ALL SELECT 'C1', 'circulation', 'noun', '/ˌsɜːkjəˈleɪʃn/', 'sự lưu thông, tuần hoàn' FROM DUAL
UNION ALL SELECT 'C1', 'civic', 'adjective', '/ˈsɪvɪk/', 'thuộc công dân' FROM DUAL
UNION ALL SELECT 'C1', 'civilization', 'noun', '/ˌsɪvəlaɪˈzeɪʃn/', 'nền văn minh' FROM DUAL
UNION ALL SELECT 'C1', 'clarity', 'noun', '/ˈklærəti/', 'sự rõ ràng' FROM DUAL
UNION ALL SELECT 'C1', 'clash', 'noun', '/klæʃ/', 'cuộc đụng độ' FROM DUAL
UNION ALL SELECT 'C1', 'classification', 'noun', '/ˌklæsɪfɪˈkeɪʃn/', 'sự phân loại' FROM DUAL
UNION ALL SELECT 'C1', 'cleaner', 'noun', '/ˈkliːnə(r)/', 'người dọn dẹp, chất tẩy rửa' FROM DUAL
UNION ALL SELECT 'C1', 'clerk', 'noun', '/klɑːk/', 'thư ký, nhân viên văn phòng' FROM DUAL
UNION ALL SELECT 'C1', 'cliff', 'noun', '/klɪf/', 'vách đá' FROM DUAL
UNION ALL SELECT 'C1', 'clinic', 'noun', '/ˈklɪnɪk/', 'phòng khám' FROM DUAL
UNION ALL SELECT 'C1', 'clinical', 'adjective', '/ˈklɪnɪkl/', 'thuộc lâm sàng' FROM DUAL
UNION ALL SELECT 'C1', 'clip', 'noun', '/klɪp/', 'đoạn phim ngắn, cái kẹp' FROM DUAL
UNION ALL SELECT 'C1', 'closure', 'noun', '/ˈkləʊʒə(r)/', 'sự đóng cửa' FROM DUAL
UNION ALL SELECT 'C1', 'coastal', 'adjective', '/ˈkəʊstl/', 'thuộc ven biển' FROM DUAL
UNION ALL SELECT 'C1', 'cocktail', 'noun', '/ˈkɒkteɪl/', 'cốc-tai' FROM DUAL
UNION ALL SELECT 'C1', 'coherent', 'adjective', '/kəʊˈhɪərənt/', 'mạch lạc' FROM DUAL
UNION ALL SELECT 'C1', 'collaboration', 'noun', '/kəˌlæbəˈreɪʃn/', 'sự cộng tác' FROM DUAL
UNION ALL SELECT 'C1', 'collector', 'noun', '/kəˈlektə(r)/', 'người sưu tầm' FROM DUAL
UNION ALL SELECT 'C1', 'collision', 'noun', '/kəˈlɪʒn/', 'vụ va chạm' FROM DUAL
UNION ALL SELECT 'C1', 'colonial', 'adjective', '/kəˈləʊniəl/', 'thuộc địa' FROM DUAL
UNION ALL SELECT 'C1', 'combat', 'noun', '/ˈkɒmbæt/', 'trận chiến' FROM DUAL
UNION ALL SELECT 'C1', 'comedian', 'noun', '/kəˈmiːdiən/', 'diễn viên hài' FROM DUAL
UNION ALL SELECT 'C1', 'comic', 'adjective', '/ˈkɒmɪk/', 'hài hước' FROM DUAL
UNION ALL SELECT 'C1', 'commander', 'noun', '/kəˈmɑːndə(r)/', 'chỉ huy' FROM DUAL
UNION ALL SELECT 'C1', 'commence', 'verb', '/kəˈmens/', 'bắt đầu' FROM DUAL
UNION ALL SELECT 'C1', 'commissioner', 'noun', '/kəˈmɪʃənə(r)/', 'ủy viên' FROM DUAL
UNION ALL SELECT 'C1', 'commodity', 'noun', '/kəˈmɒdəti/', 'hàng hóa' FROM DUAL
UNION ALL SELECT 'C1', 'communist', 'adjective', '/ˈkɒmjənɪst/', 'cộng sản' FROM DUAL
UNION ALL SELECT 'C1', 'companion', 'noun', '/kəmˈpæniən/', 'bạn đồng hành' FROM DUAL
UNION ALL SELECT 'C1', 'comparable', 'adjective', '/ˈkɒmpərəbl/', 'có thể so sánh' FROM DUAL
UNION ALL SELECT 'C1', 'comparative', 'adjective', '/kəmˈpærətɪv/', 'so sánh, tương đối' FROM DUAL
UNION ALL SELECT 'C1', 'compassion', 'noun', '/kəmˈpæʃn/', 'lòng trắc ẩn' FROM DUAL
UNION ALL SELECT 'C1', 'compel', 'verb', '/kəmˈpel/', 'bắt buộc' FROM DUAL
UNION ALL SELECT 'C1', 'compelling', 'adjective', '/kəmˈpelɪŋ/', 'hấp dẫn, thuyết phục' FROM DUAL
UNION ALL SELECT 'C1', 'compensate', 'verb', '/ˈkɒmpenseɪt/', 'bồi thường' FROM DUAL
UNION ALL SELECT 'C1', 'competence', 'noun', '/ˈkɒmpɪtəns/', 'năng lực' FROM DUAL
UNION ALL SELECT 'C1', 'competent', 'adjective', '/ˈkɒmpɪtənt/', 'có năng lực' FROM DUAL
UNION ALL SELECT 'C1', 'complexity', 'noun', '/kəmˈpleksəti/', 'sự phức tạp' FROM DUAL
UNION ALL SELECT 'C1', 'complication', 'noun', '/ˌkɒmplɪˈkeɪʃn/', 'sự phức tạp, biến chứng' FROM DUAL
UNION ALL SELECT 'C1', 'composer', 'noun', '/kəmˈpəʊzə(r)/', 'nhà soạn nhạc' FROM DUAL
UNION ALL SELECT 'C1', 'composition', 'noun', '/ˌkɒmpəˈzɪʃn/', 'thành phần, bài sáng tác' FROM DUAL
UNION ALL SELECT 'C1', 'comprehension', 'noun', '/ˌkɒmprɪˈhenʃn/', 'sự hiểu' FROM DUAL
UNION ALL SELECT 'C1', 'concede', 'verb', '/kənˈsiːd/', 'thừa nhận, nhượng bộ' FROM DUAL
UNION ALL SELECT 'C1', 'conception', 'noun', '/kənˈsepʃn/', 'quan niệm, sự thụ thai' FROM DUAL
UNION ALL SELECT 'C1', 'concession', 'noun', '/kənˈseʃn/', 'sự nhượng bộ' FROM DUAL
UNION ALL SELECT 'C1', 'condemn', 'verb', '/kənˈdem/', 'lên án' FROM DUAL
UNION ALL SELECT 'C1', 'confer', 'verb', '/kənˈfɜː(r)/', 'trao tặng, bàn bạc' FROM DUAL
UNION ALL SELECT 'C1', 'confession', 'noun', '/kənˈfeʃn/', 'lời thú tội' FROM DUAL
UNION ALL SELECT 'C1', 'configuration', 'noun', '/kənˌfɪɡəˈreɪʃn/', 'cấu hình' FROM DUAL
UNION ALL SELECT 'C1', 'confine', 'verb', '/kənˈfaɪn/', 'giới hạn, giam giữ' FROM DUAL
UNION ALL SELECT 'C1', 'confirmation', 'noun', '/ˌkɒnfəˈmeɪʃn/', 'sự xác nhận' FROM DUAL
UNION ALL SELECT 'C1', 'confrontation', 'noun', '/ˌkɒnfrʌnˈteɪʃn/', 'sự đối đầu' FROM DUAL
UNION ALL SELECT 'C1', 'congratulate', 'verb', '/kənˈɡrætʃuleɪt/', 'chúc mừng' FROM DUAL
UNION ALL SELECT 'C1', 'congregation', 'noun', '/ˌkɒŋɡrɪˈɡeɪʃn/', 'giáo đoàn' FROM DUAL
UNION ALL SELECT 'C1', 'congressional', 'adjective', '/kənˈɡreʃənl/', 'thuộc quốc hội (Mỹ)' FROM DUAL
UNION ALL SELECT 'C1', 'conquer', 'verb', '/ˈkɒŋkə(r)/', 'chinh phục' FROM DUAL
UNION ALL SELECT 'C1', 'conscience', 'noun', '/ˈkɒnʃəns/', 'lương tâm' FROM DUAL
UNION ALL SELECT 'C1', 'consciousness', 'noun', '/ˈkɒnʃəsnəs/', 'ý thức' FROM DUAL
UNION ALL SELECT 'C1', 'consecutive', 'adjective', '/kənˈsekjətɪv/', 'liên tiếp' FROM DUAL
UNION ALL SELECT 'C1', 'consensus', 'noun', '/kənˈsensəs/', 'sự đồng thuận' FROM DUAL
UNION ALL SELECT 'C1', 'conserve', 'verb', '/kənˈsɜːv/', 'bảo tồn' FROM DUAL
UNION ALL SELECT 'C1', 'consistency', 'noun', '/kənˈsɪstənsi/', 'tính nhất quán' FROM DUAL
UNION ALL SELECT 'C1', 'consolidate', 'verb', '/kənˈsɒlɪdeɪt/', 'củng cố' FROM DUAL
UNION ALL SELECT 'C1', 'constituency', 'noun', '/kənˈstɪtjuənsi/', 'khu vực bầu cử' FROM DUAL
UNION ALL SELECT 'C1', 'constitutional', 'adjective', '/ˌkɒnstɪˈtjuːʃənl/', 'thuộc hiến pháp' FROM DUAL
UNION ALL SELECT 'C1', 'constraint', 'noun', '/kənˈstreɪnt/', 'sự ràng buộc' FROM DUAL
UNION ALL SELECT 'C1', 'consult', 'verb', '/kənˈsʌlt/', 'tham khảo ý kiến' FROM DUAL
UNION ALL SELECT 'C1', 'consultation', 'noun', '/ˌkɒnslˈteɪʃn/', 'sự tham vấn' FROM DUAL
UNION ALL SELECT 'C1', 'contemplate', 'verb', '/ˈkɒntəmpleɪt/', 'suy ngẫm' FROM DUAL
UNION ALL SELECT 'C1', 'contempt', 'noun', '/kənˈtempt/', 'sự khinh thường' FROM DUAL
UNION ALL SELECT 'C1', 'contend', 'verb', '/kənˈtend/', 'tranh đấu, cho rằng' FROM DUAL
UNION ALL SELECT 'C1', 'contender', 'noun', '/kənˈtendə(r)/', 'đối thủ cạnh tranh' FROM DUAL
UNION ALL SELECT 'C1', 'content', 'adjective', '/kənˈtent/', 'hài lòng' FROM DUAL
UNION ALL SELECT 'C1', 'contention', 'noun', '/kənˈtenʃn/', 'sự tranh cãi, luận điểm' FROM DUAL
UNION ALL SELECT 'C1', 'continually', 'adverb', '/kənˈtɪnjuəli/', 'liên tục' FROM DUAL
UNION ALL SELECT 'C1', 'contractor', 'noun', '/kənˈtræktə(r)/', 'nhà thầu' FROM DUAL
UNION ALL SELECT 'C1', 'contradiction', 'noun', '/ˌkɒntrəˈdɪkʃn/', 'sự mâu thuẫn' FROM DUAL
UNION ALL SELECT 'C1', 'contrary', 'adjective', '/ˈkɒntrəri/', 'trái ngược' FROM DUAL
UNION ALL SELECT 'C1', 'contributor', 'noun', '/kənˈtrɪbjətə(r)/', 'người đóng góp' FROM DUAL
UNION ALL SELECT 'C1', 'conversion', 'noun', '/kənˈvɜːʃn/', 'sự chuyển đổi' FROM DUAL
UNION ALL SELECT 'C1', 'convict', 'verb', '/kənˈvɪkt/', 'kết án' FROM DUAL
UNION ALL SELECT 'C1', 'correlation', 'noun', '/ˌkɒrəˈleɪʃn/', 'mối tương quan' FROM DUAL
UNION ALL SELECT 'C1', 'correspondent', 'noun', '/ˌkɒrəˈspɒndənt/', 'phóng viên' FROM DUAL
UNION ALL SELECT 'C1', 'corridor', 'noun', '/ˈkɒrɪdɔː(r)/', 'hành lang' FROM DUAL
UNION ALL SELECT 'C1', 'counselling', 'noun', '/ˈkaʊnsəlɪŋ/', 'sự tư vấn' FROM DUAL
UNION ALL SELECT 'C1', 'counsellor', 'noun', '/ˈkaʊnsələ(r)/', 'cố vấn' FROM DUAL
UNION ALL SELECT 'C1', 'counterpart', 'noun', '/ˈkaʊntəpɑːt/', 'người đồng cấp' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C1', 'coup', 'noun', '/kuː/', 'cuộc đảo chính' FROM DUAL
UNION ALL SELECT 'C1', 'courtesy', 'noun', '/ˈkɜːtəsi/', 'sự lịch sự' FROM DUAL
UNION ALL SELECT 'C1', 'craft', 'verb', '/krɑːft/', 'chế tác' FROM DUAL
UNION ALL SELECT 'C1', 'crawl', 'verb', '/krɔːl/', 'bò' FROM DUAL
UNION ALL SELECT 'C1', 'creator', 'noun', '/kriˈeɪtə(r)/', 'người sáng tạo' FROM DUAL
UNION ALL SELECT 'C1', 'credible', 'adjective', '/ˈkredəbl/', 'đáng tin' FROM DUAL
UNION ALL SELECT 'C1', 'creep', 'verb', '/kriːp/', 'rón rén' FROM DUAL
UNION ALL SELECT 'C1', 'critique', 'noun', '/krɪˈtiːk/', 'bài phê bình' FROM DUAL
UNION ALL SELECT 'C1', 'crown', 'noun', '/kraʊn/', 'vương miện' FROM DUAL
UNION ALL SELECT 'C1', 'crude', 'adjective', '/kruːd/', 'thô, thô lỗ' FROM DUAL
UNION ALL SELECT 'C1', 'crush', 'verb', '/krʌʃ/', 'nghiền nát' FROM DUAL
UNION ALL SELECT 'C1', 'crystal', 'noun', '/ˈkrɪstl/', 'pha lê, tinh thể' FROM DUAL
UNION ALL SELECT 'C1', 'cult', 'noun', '/kʌlt/', 'giáo phái, sự sùng bái' FROM DUAL
UNION ALL SELECT 'C1', 'cumulative', 'adjective', '/ˈkjuːmjələtɪv/', 'tích lũy' FROM DUAL
UNION ALL SELECT 'C1', 'custody', 'noun', '/ˈkʌstədi/', 'quyền nuôi con, sự giam giữ' FROM DUAL
UNION ALL SELECT 'C1', 'cutting', 'noun', '/ˈkʌtɪŋ/', 'mẩu cắt' FROM DUAL
UNION ALL SELECT 'C1', 'cynical', 'adjective', '/ˈsɪnɪkl/', 'hoài nghi, yếm thế' FROM DUAL
UNION ALL SELECT 'C1', 'dairy', 'noun', '/ˈdeəri/', 'sản phẩm từ sữa' FROM DUAL
UNION ALL SELECT 'C1', 'damaging', 'adjective', '/ˈdæmɪdʒɪŋ/', 'gây hại' FROM DUAL
UNION ALL SELECT 'C1', 'dare', 'verb', '/deə(r)/', 'dám' FROM DUAL
UNION ALL SELECT 'C1', 'darkness', 'noun', '/ˈdɑːknəs/', 'bóng tối' FROM DUAL
UNION ALL SELECT 'C1', 'database', 'noun', '/ˈdeɪtəbeɪs/', 'cơ sở dữ liệu' FROM DUAL
UNION ALL SELECT 'C1', 'dawn', 'noun', '/dɔːn/', 'bình minh' FROM DUAL
UNION ALL SELECT 'C1', 'deadly', 'adjective', '/ˈdedli/', 'chết người' FROM DUAL
UNION ALL SELECT 'C1', 'debut', 'noun', '/ˈdeɪbjuː/', 'sự ra mắt lần đầu' FROM DUAL
UNION ALL SELECT 'C1', 'decisive', 'adjective', '/dɪˈsaɪsɪv/', 'quyết đoán, quyết định' FROM DUAL
UNION ALL SELECT 'C1', 'declaration', 'noun', '/ˌdekləˈreɪʃn/', 'bản tuyên bố' FROM DUAL
UNION ALL SELECT 'C1', 'decline', 'noun', '/dɪˈklaɪn/', 'sự suy giảm' FROM DUAL
UNION ALL SELECT 'C1', 'dedicate', 'verb', '/ˈdedɪkeɪt/', 'cống hiến' FROM DUAL
UNION ALL SELECT 'C1', 'dedication', 'noun', '/ˌdedɪˈkeɪʃn/', 'sự cống hiến' FROM DUAL
UNION ALL SELECT 'C1', 'deem', 'verb', '/diːm/', 'coi là' FROM DUAL
UNION ALL SELECT 'C1', 'default', 'noun', '/dɪˈfɔːlt/', 'mặc định, sự vỡ nợ' FROM DUAL
UNION ALL SELECT 'C1', 'defect', 'noun', '/ˈdiːfekt/', 'khuyết tật, lỗi' FROM DUAL
UNION ALL SELECT 'C1', 'defendant', 'noun', '/dɪˈfendənt/', 'bị cáo' FROM DUAL
UNION ALL SELECT 'C1', 'defender', 'noun', '/dɪˈfendə(r)/', 'hậu vệ, người bảo vệ' FROM DUAL
UNION ALL SELECT 'C1', 'deficiency', 'noun', '/dɪˈfɪʃnsi/', 'sự thiếu hụt' FROM DUAL
UNION ALL SELECT 'C1', 'definitive', 'adjective', '/dɪˈfɪnətɪv/', 'dứt khoát, chuẩn mực' FROM DUAL
UNION ALL SELECT 'C1', 'delegate', 'noun', '/ˈdelɪɡət/', 'đại biểu' FROM DUAL
UNION ALL SELECT 'C1', 'delegation', 'noun', '/ˌdelɪˈɡeɪʃn/', 'phái đoàn' FROM DUAL
UNION ALL SELECT 'C1', 'delete', 'verb', '/dɪˈliːt/', 'xóa' FROM DUAL
UNION ALL SELECT 'C1', 'delicate', 'adjective', '/ˈdelɪkət/', 'tinh tế, mỏng manh' FROM DUAL
UNION ALL SELECT 'C1', 'demon', 'noun', '/ˈdiːmən/', 'con quỷ' FROM DUAL
UNION ALL SELECT 'C1', 'demonstration', 'noun', '/ˌdemənˈstreɪʃn/', 'cuộc biểu tình, sự trình diễn' FROM DUAL
UNION ALL SELECT 'C1', 'denial', 'noun', '/dɪˈnaɪəl/', 'sự phủ nhận' FROM DUAL
UNION ALL SELECT 'C1', 'denounce', 'verb', '/dɪˈnaʊns/', 'tố cáo' FROM DUAL
UNION ALL SELECT 'C1', 'dense', 'adjective', '/dens/', 'dày đặc' FROM DUAL
UNION ALL SELECT 'C1', 'density', 'noun', '/ˈdensəti/', 'mật độ' FROM DUAL
UNION ALL SELECT 'C1', 'dependence', 'noun', '/dɪˈpendəns/', 'sự phụ thuộc' FROM DUAL
UNION ALL SELECT 'C1', 'depict', 'verb', '/dɪˈpɪkt/', 'miêu tả' FROM DUAL
UNION ALL SELECT 'C1', 'deploy', 'verb', '/dɪˈplɔɪ/', 'triển khai' FROM DUAL
UNION ALL SELECT 'C1', 'deployment', 'noun', '/dɪˈplɔɪmənt/', 'sự triển khai' FROM DUAL
UNION ALL SELECT 'C1', 'deposit', 'noun', '/dɪˈpɒzɪt/', 'tiền đặt cọc' FROM DUAL
UNION ALL SELECT 'C1', 'depression', 'noun', '/dɪˈpreʃn/', 'sự trầm cảm, suy thoái' FROM DUAL
UNION ALL SELECT 'C1', 'deprive', 'verb', '/dɪˈpraɪv/', 'tước đoạt' FROM DUAL
UNION ALL SELECT 'C1', 'descent', 'noun', '/dɪˈsent/', 'dòng dõi, sự đi xuống' FROM DUAL
UNION ALL SELECT 'C1', 'desktop', 'noun', '/ˈdesktɒp/', 'máy tính để bàn' FROM DUAL
UNION ALL SELECT 'C1', 'detain', 'verb', '/dɪˈteɪn/', 'giam giữ' FROM DUAL
UNION ALL SELECT 'C1', 'deteriorate', 'verb', '/dɪˈtɪəriəreɪt/', 'trở nên tồi tệ hơn' FROM DUAL
UNION ALL SELECT 'C1', 'devil', 'noun', '/ˈdevl/', 'ma quỷ' FROM DUAL
UNION ALL SELECT 'C1', 'diagnose', 'verb', '/ˈdaɪəɡnəʊz/', 'chẩn đoán' FROM DUAL
UNION ALL SELECT 'C1', 'diagnosis', 'noun', '/ˌdaɪəɡˈnəʊsɪs/', 'sự chẩn đoán' FROM DUAL
UNION ALL SELECT 'C1', 'dictate', 'verb', '/dɪkˈteɪt/', 'ra lệnh, đọc chính tả' FROM DUAL
UNION ALL SELECT 'C1', 'dictator', 'noun', '/dɪkˈteɪtə(r)/', 'kẻ độc tài' FROM DUAL
UNION ALL SELECT 'C1', 'differ', 'verb', '/ˈdɪfə(r)/', 'khác nhau' FROM DUAL
UNION ALL SELECT 'C1', 'differentiate', 'verb', '/ˌdɪfəˈrenʃieɪt/', 'phân biệt' FROM DUAL
UNION ALL SELECT 'C1', 'dignity', 'noun', '/ˈdɪɡnəti/', 'phẩm giá' FROM DUAL
UNION ALL SELECT 'C1', 'diplomat', 'noun', '/ˈdɪpləmæt/', 'nhà ngoại giao' FROM DUAL
UNION ALL SELECT 'C1', 'diplomacy', 'noun', '/dɪˈpləʊməsi/', 'ngoại giao' FROM DUAL
UNION ALL SELECT 'C1', 'directory', 'noun', '/dəˈrektəri/', 'danh bạ, thư mục' FROM DUAL
UNION ALL SELECT 'C1', 'disastrous', 'adjective', '/dɪˈzɑːstrəs/', 'thảm khốc' FROM DUAL
UNION ALL SELECT 'C1', 'discharge', 'verb', '/dɪsˈtʃɑːdʒ/', 'cho xuất viện, thải ra' FROM DUAL
UNION ALL SELECT 'C1', 'disclose', 'verb', '/dɪsˈkləʊz/', 'tiết lộ' FROM DUAL
UNION ALL SELECT 'C1', 'disclosure', 'noun', '/dɪsˈkləʊʒə(r)/', 'sự tiết lộ' FROM DUAL
UNION ALL SELECT 'C1', 'discourse', 'noun', '/ˈdɪskɔːs/', 'diễn ngôn' FROM DUAL
UNION ALL SELECT 'C1', 'discretion', 'noun', '/dɪˈskreʃn/', 'sự thận trọng, quyền tự quyết' FROM DUAL
UNION ALL SELECT 'C1', 'disorder', 'noun', '/dɪsˈɔːdə(r)/', 'sự rối loạn' FROM DUAL
UNION ALL SELECT 'C1', 'displace', 'verb', '/dɪsˈpleɪs/', 'thay thế, di dời' FROM DUAL
UNION ALL SELECT 'C1', 'disposal', 'noun', '/dɪˈspəʊzl/', 'sự xử lý (rác)' FROM DUAL
UNION ALL SELECT 'C1', 'dispose', 'verb', '/dɪˈspəʊz/', 'vứt bỏ' FROM DUAL
UNION ALL SELECT 'C1', 'dissolve', 'verb', '/dɪˈzɒlv/', 'hòa tan, giải thể' FROM DUAL
UNION ALL SELECT 'C1', 'distinct', 'adjective', '/dɪˈstɪŋkt/', 'riêng biệt, rõ ràng' FROM DUAL
UNION ALL SELECT 'C1', 'distinction', 'noun', '/dɪˈstɪŋkʃn/', 'sự phân biệt, sự xuất sắc' FROM DUAL
UNION ALL SELECT 'C1', 'distinctive', 'adjective', '/dɪˈstɪŋktɪv/', 'đặc trưng' FROM DUAL
UNION ALL SELECT 'C1', 'distort', 'verb', '/dɪˈstɔːt/', 'bóp méo' FROM DUAL
UNION ALL SELECT 'C1', 'distract', 'verb', '/dɪˈstrækt/', 'làm xao nhãng' FROM DUAL
UNION ALL SELECT 'C1', 'distress', 'noun', '/dɪˈstres/', 'sự đau khổ' FROM DUAL
UNION ALL SELECT 'C1', 'divine', 'adjective', '/dɪˈvaɪn/', 'thần thánh' FROM DUAL
UNION ALL SELECT 'C1', 'doctrine', 'noun', '/ˈdɒktrɪn/', 'học thuyết' FROM DUAL
UNION ALL SELECT 'C1', 'documentation', 'noun', '/ˌdɒkjumenˈteɪʃn/', 'tài liệu' FROM DUAL
UNION ALL SELECT 'C1', 'domain', 'noun', '/dəˈmeɪn/', 'lĩnh vực, tên miền' FROM DUAL
UNION ALL SELECT 'C1', 'dominance', 'noun', '/ˈdɒmɪnəns/', 'sự thống trị' FROM DUAL
UNION ALL SELECT 'C1', 'donor', 'noun', '/ˈdəʊnə(r)/', 'nhà tài trợ, người hiến' FROM DUAL
UNION ALL SELECT 'C1', 'dot', 'noun', '/dɒt/', 'dấu chấm' FROM DUAL
UNION ALL SELECT 'C1', 'drain', 'noun', '/dreɪn/', 'ống thoát nước' FROM DUAL
UNION ALL SELECT 'C1', 'drought', 'noun', '/draʊt/', 'hạn hán' FROM DUAL
UNION ALL SELECT 'C1', 'dual', 'adjective', '/ˈdjuːəl/', 'kép, đôi' FROM DUAL
UNION ALL SELECT 'C1', 'dumb', 'adjective', '/dʌm/', 'câm, ngu ngốc' FROM DUAL
UNION ALL SELECT 'C1', 'dump', 'verb', '/dʌmp/', 'vứt bỏ' FROM DUAL
UNION ALL SELECT 'C1', 'durable', 'adjective', '/ˈdjʊərəbl/', 'bền' FROM DUAL
UNION ALL SELECT 'C1', 'dust', 'verb', '/dʌst/', 'phủi bụi' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C1', 'dwelling', 'noun', '/ˈdwelɪŋ/', 'nơi ở' FROM DUAL
UNION ALL SELECT 'C1', 'dynamics', 'noun', '/daɪˈnæmɪks/', 'động lực học' FROM DUAL
UNION ALL SELECT 'C1', 'earnest', 'adjective', '/ˈɜːnɪst/', 'nghiêm chỉnh, tha thiết' FROM DUAL
UNION ALL SELECT 'C1', 'ego', 'noun', '/ˈiːɡəʊ/', 'cái tôi' FROM DUAL
UNION ALL SELECT 'C1', 'eligible', 'adjective', '/ˈelɪdʒəbl/', 'đủ tư cách' FROM DUAL
UNION ALL SELECT 'C1', 'eliminate', 'verb', '/ɪˈlɪmɪneɪt/', 'loại bỏ' FROM DUAL
UNION ALL SELECT 'C1', 'elimination', 'noun', '/ɪˌlɪmɪˈneɪʃn/', 'sự loại bỏ' FROM DUAL
UNION ALL SELECT 'C1', 'embark', 'verb', '/ɪmˈbɑːk/', 'lên tàu, bắt tay vào' FROM DUAL
UNION ALL SELECT 'C1', 'embassy', 'noun', '/ˈembəsi/', 'đại sứ quán' FROM DUAL
UNION ALL SELECT 'C1', 'embody', 'verb', '/ɪmˈbɒdi/', 'hiện thân' FROM DUAL
UNION ALL SELECT 'C1', 'emergence', 'noun', '/iˈmɜːdʒəns/', 'sự xuất hiện' FROM DUAL
UNION ALL SELECT 'C1', 'empirical', 'adjective', '/ɪmˈpɪrɪkl/', 'thực nghiệm' FROM DUAL
UNION ALL SELECT 'C1', 'empower', 'verb', '/ɪmˈpaʊə(r)/', 'trao quyền' FROM DUAL
UNION ALL SELECT 'C1', 'enact', 'verb', '/ɪˈnækt/', 'ban hành' FROM DUAL
UNION ALL SELECT 'C1', 'encompass', 'verb', '/ɪnˈkʌmpəs/', 'bao gồm' FROM DUAL
UNION ALL SELECT 'C1', 'encouragement', 'noun', '/ɪnˈkʌrɪdʒmənt/', 'sự khích lệ' FROM DUAL
UNION ALL SELECT 'C1', 'endless', 'adjective', '/ˈendləs/', 'vô tận' FROM DUAL
UNION ALL SELECT 'C1', 'endorse', 'verb', '/ɪnˈdɔːs/', 'tán thành' FROM DUAL
UNION ALL SELECT 'C1', 'endorsement', 'noun', '/ɪnˈdɔːsmənt/', 'sự tán thành' FROM DUAL
UNION ALL SELECT 'C1', 'endure', 'verb', '/ɪnˈdjʊə(r)/', 'chịu đựng' FROM DUAL
UNION ALL SELECT 'C1', 'enforcement', 'noun', '/ɪnˈfɔːsmənt/', 'sự thi hành' FROM DUAL
UNION ALL SELECT 'C1', 'engagement', 'noun', '/ɪnˈɡeɪdʒmənt/', 'sự đính hôn, sự tham gia' FROM DUAL
UNION ALL SELECT 'C1', 'engaging', 'adjective', '/ɪnˈɡeɪdʒɪŋ/', 'lôi cuốn' FROM DUAL
UNION ALL SELECT 'C1', 'enrich', 'verb', '/ɪnˈrɪtʃ/', 'làm giàu' FROM DUAL
UNION ALL SELECT 'C1', 'enrol', 'verb', '/ɪnˈrəʊl/', 'ghi danh' FROM DUAL
UNION ALL SELECT 'C1', 'entertaining', 'adjective', '/ˌentəˈteɪnɪŋ/', 'thú vị' FROM DUAL
UNION ALL SELECT 'C1', 'entity', 'noun', '/ˈentəti/', 'thực thể' FROM DUAL
UNION ALL SELECT 'C1', 'entrepreneur', 'noun', '/ˌɒntrəprəˈnɜː(r)/', 'doanh nhân khởi nghiệp' FROM DUAL
UNION ALL SELECT 'C1', 'envelope', 'noun', '/ˈenvələʊp/', 'phong bì' FROM DUAL
UNION ALL SELECT 'C1', 'equality', 'noun', '/iˈkwɒləti/', 'sự bình đẳng' FROM DUAL
UNION ALL SELECT 'C1', 'equip', 'verb', '/ɪˈkwɪp/', 'trang bị' FROM DUAL
UNION ALL SELECT 'C1', 'erect', 'verb', '/ɪˈrekt/', 'dựng lên' FROM DUAL
UNION ALL SELECT 'C1', 'erupt', 'verb', '/ɪˈrʌpt/', 'phun trào' FROM DUAL
UNION ALL SELECT 'C1', 'escalate', 'verb', '/ˈeskəleɪt/', 'leo thang' FROM DUAL
UNION ALL SELECT 'C1', 'essentially', 'adverb', '/ɪˈsenʃəli/', 'về bản chất' FROM DUAL
UNION ALL SELECT 'C1', 'establishment', 'noun', '/ɪˈstæblɪʃmənt/', 'sự thành lập, cơ sở' FROM DUAL
UNION ALL SELECT 'C1', 'eternal', 'adjective', '/ɪˈtɜːnl/', 'vĩnh cửu' FROM DUAL
UNION ALL SELECT 'C1', 'evacuate', 'verb', '/ɪˈvækjueɪt/', 'sơ tán' FROM DUAL
UNION ALL SELECT 'C1', 'evident', 'adjective', '/ˈevɪdənt/', 'hiển nhiên' FROM DUAL
UNION ALL SELECT 'C1', 'evoke', 'verb', '/ɪˈvəʊk/', 'gợi lên' FROM DUAL
UNION ALL SELECT 'C1', 'exaggerate', 'verb', '/ɪɡˈzædʒəreɪt/', 'phóng đại' FROM DUAL
UNION ALL SELECT 'C1', 'excess', 'noun', '/ɪkˈses/', 'sự dư thừa' FROM DUAL
UNION ALL SELECT 'C1', 'excessive', 'adjective', '/ɪkˈsesɪv/', 'quá mức' FROM DUAL
UNION ALL SELECT 'C1', 'exclusion', 'noun', '/ɪkˈskluːʒn/', 'sự loại trừ' FROM DUAL
UNION ALL SELECT 'C1', 'exclusive', 'adjective', '/ɪkˈskluːsɪv/', 'độc quyền' FROM DUAL
UNION ALL SELECT 'C1', 'exclusively', 'adverb', '/ɪkˈskluːsɪvli/', 'độc quyền, duy nhất' FROM DUAL
UNION ALL SELECT 'C1', 'execute', 'verb', '/ˈeksɪkjuːt/', 'thực hiện, hành hình' FROM DUAL
UNION ALL SELECT 'C1', 'execution', 'noun', '/ˌeksɪˈkjuːʃn/', 'sự thực hiện, sự hành hình' FROM DUAL
UNION ALL SELECT 'C1', 'exert', 'verb', '/ɪɡˈzɜːt/', 'dùng (sức), gây (áp lực)' FROM DUAL
UNION ALL SELECT 'C1', 'exile', 'noun', '/ˈeksaɪl/', 'sự lưu đày' FROM DUAL
UNION ALL SELECT 'C1', 'exotic', 'adjective', '/ɪɡˈzɒtɪk/', 'kỳ lạ, ngoại lai' FROM DUAL
UNION ALL SELECT 'C1', 'expenditure', 'noun', '/ɪkˈspendɪtʃə(r)/', 'khoản chi tiêu' FROM DUAL
UNION ALL SELECT 'C1', 'experimental', 'adjective', '/ɪkˌsperɪˈmentl/', 'thuộc thực nghiệm' FROM DUAL
UNION ALL SELECT 'C1', 'expire', 'verb', '/ɪkˈspaɪə(r)/', 'hết hạn' FROM DUAL
UNION ALL SELECT 'C1', 'exploitation', 'noun', '/ˌeksplɔɪˈteɪʃn/', 'sự khai thác, bóc lột' FROM DUAL
UNION ALL SELECT 'C1', 'explosive', 'adjective', '/ɪkˈspləʊsɪv/', 'dễ nổ' FROM DUAL
UNION ALL SELECT 'C1', 'exposure', 'noun', '/ɪkˈspəʊʒə(r)/', 'sự phơi nhiễm, sự tiếp xúc' FROM DUAL
UNION ALL SELECT 'C1', 'extension', 'noun', '/ɪkˈstenʃn/', 'sự mở rộng, số máy lẻ' FROM DUAL
UNION ALL SELECT 'C1', 'extensive', 'adjective', '/ɪkˈstensɪv/', 'rộng rãi' FROM DUAL
UNION ALL SELECT 'C1', 'exterior', 'noun', '/ɪkˈstɪəriə(r)/', 'bên ngoài' FROM DUAL
UNION ALL SELECT 'C1', 'extremist', 'noun', '/ɪkˈstriːmɪst/', 'kẻ cực đoan' FROM DUAL
UNION ALL SELECT 'C1', 'eyebrow', 'noun', '/ˈaɪbraʊ/', 'lông mày' FROM DUAL
UNION ALL SELECT 'C1', 'fabric', 'noun', '/ˈfæbrɪk/', 'vải' FROM DUAL
UNION ALL SELECT 'C1', 'facial', 'adjective', '/ˈfeɪʃl/', 'thuộc khuôn mặt' FROM DUAL
UNION ALL SELECT 'C1', 'faction', 'noun', '/ˈfækʃn/', 'phe phái' FROM DUAL
UNION ALL SELECT 'C1', 'faculty', 'noun', '/ˈfæklti/', 'khoa, năng lực' FROM DUAL
UNION ALL SELECT 'C1', 'faithful', 'adjective', '/ˈfeɪθfl/', 'trung thành' FROM DUAL
UNION ALL SELECT 'C1', 'fake', 'adjective', '/feɪk/', 'giả mạo' FROM DUAL
UNION ALL SELECT 'C1', 'famine', 'noun', '/ˈfæmɪn/', 'nạn đói' FROM DUAL
UNION ALL SELECT 'C1', 'fascinating', 'adjective', '/ˈfæsɪneɪtɪŋ/', 'hấp dẫn' FROM DUAL
UNION ALL SELECT 'C1', 'fashion', 'verb', '/ˈfæʃn/', 'tạo hình' FROM DUAL
UNION ALL SELECT 'C1', 'feasible', 'adjective', '/ˈfiːzəbl/', 'khả thi' FROM DUAL
UNION ALL SELECT 'C1', 'feat', 'noun', '/fiːt/', 'kỳ công' FROM DUAL
UNION ALL SELECT 'C1', 'federal', 'adjective', '/ˈfedərəl/', 'thuộc liên bang' FROM DUAL
UNION ALL SELECT 'C1', 'feminist', 'noun', '/ˈfemənɪst/', 'người theo chủ nghĩa nữ quyền' FROM DUAL
UNION ALL SELECT 'C1', 'fence', 'noun', '/fens/', 'hàng rào' FROM DUAL
UNION ALL SELECT 'C1', 'fiber', 'noun', '/ˈfaɪbə(r)/', 'chất xơ, sợi' FROM DUAL
UNION ALL SELECT 'C1', 'finite', 'adjective', '/ˈfaɪnaɪt/', 'có hạn' FROM DUAL
UNION ALL SELECT 'C1', 'firearm', 'noun', '/ˈfaɪərɑːm/', 'súng' FROM DUAL
UNION ALL SELECT 'C1', 'firework', 'noun', '/ˈfaɪəwɜːk/', 'pháo hoa' FROM DUAL
UNION ALL SELECT 'C1', 'fitness', 'noun', '/ˈfɪtnəs/', 'sự khỏe mạnh' FROM DUAL
UNION ALL SELECT 'C1', 'fixture', 'noun', '/ˈfɪkstʃə(r)/', 'lịch thi đấu, đồ cố định' FROM DUAL
UNION ALL SELECT 'C1', 'flag', 'verb', '/flæɡ/', 'đánh dấu, gắn cờ' FROM DUAL
UNION ALL SELECT 'C1', 'flavour', 'noun', '/ˈfleɪvə(r)/', 'hương vị' FROM DUAL
UNION ALL SELECT 'C1', 'flexibility', 'noun', '/ˌfleksəˈbɪləti/', 'sự linh hoạt' FROM DUAL
UNION ALL SELECT 'C1', 'fluid', 'noun', '/ˈfluːɪd/', 'chất lỏng' FROM DUAL
UNION ALL SELECT 'C1', 'footage', 'noun', '/ˈfʊtɪdʒ/', 'đoạn phim' FROM DUAL
UNION ALL SELECT 'C1', 'forecast', 'noun', '/ˈfɔːkɑːst/', 'dự báo' FROM DUAL
UNION ALL SELECT 'C1', 'forensic', 'adjective', '/fəˈrensɪk/', 'thuộc pháp y' FROM DUAL
UNION ALL SELECT 'C1', 'forge', 'verb', '/fɔːdʒ/', 'giả mạo, rèn' FROM DUAL
UNION ALL SELECT 'C1', 'formation', 'noun', '/fɔːˈmeɪʃn/', 'sự hình thành, đội hình' FROM DUAL
UNION ALL SELECT 'C1', 'formula', 'noun', '/ˈfɔːmjələ/', 'công thức' FROM DUAL
UNION ALL SELECT 'C1', 'formulate', 'verb', '/ˈfɔːmjuleɪt/', 'xây dựng, trình bày' FROM DUAL
UNION ALL SELECT 'C1', 'forum', 'noun', '/ˈfɔːrəm/', 'diễn đàn' FROM DUAL
UNION ALL SELECT 'C1', 'foster', 'verb', '/ˈfɒstə(r)/', 'nuôi dưỡng, thúc đẩy' FROM DUAL
UNION ALL SELECT 'C1', 'fragment', 'noun', '/ˈfræɡmənt/', 'mảnh vỡ' FROM DUAL
UNION ALL SELECT 'C1', 'franchise', 'noun', '/ˈfræntʃaɪz/', 'nhượng quyền thương mại' FROM DUAL
UNION ALL SELECT 'C1', 'frankly', 'adverb', '/ˈfræŋkli/', 'thẳng thắn' FROM DUAL
UNION ALL SELECT 'C1', 'freely', 'adverb', '/ˈfriːli/', 'một cách tự do' FROM DUAL
UNION ALL SELECT 'C1', 'frequency', 'noun', '/ˈfriːkwənsi/', 'tần suất, tần số' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C1', 'frustration', 'noun', '/frʌˈstreɪʃn/', 'sự thất vọng' FROM DUAL
UNION ALL SELECT 'C1', 'functional', 'adjective', '/ˈfʌŋkʃənl/', 'thuộc chức năng' FROM DUAL
UNION ALL SELECT 'C1', 'fundraising', 'noun', '/ˈfʌndreɪzɪŋ/', 'việc gây quỹ' FROM DUAL
UNION ALL SELECT 'C1', 'gambling', 'noun', '/ˈɡæmblɪŋ/', 'cờ bạc' FROM DUAL
UNION ALL SELECT 'C1', 'gathering', 'noun', '/ˈɡæðərɪŋ/', 'cuộc tụ họp' FROM DUAL
UNION ALL SELECT 'C1', 'gay', 'adjective', '/ɡeɪ/', 'đồng tính' FROM DUAL
UNION ALL SELECT 'C1', 'generic', 'adjective', '/dʒəˈnerɪk/', 'chung, không nhãn hiệu' FROM DUAL
UNION ALL SELECT 'C1', 'genius', 'noun', '/ˈdʒiːniəs/', 'thiên tài' FROM DUAL
UNION ALL SELECT 'C1', 'genocide', 'noun', '/ˈdʒenəsaɪd/', 'tội diệt chủng' FROM DUAL
UNION ALL SELECT 'C1', 'gig', 'noun', '/ɡɪɡ/', 'buổi biểu diễn, việc làm ngắn hạn' FROM DUAL
UNION ALL SELECT 'C1', 'globalization', 'noun', '/ˌɡləʊbəlaɪˈzeɪʃn/', 'toàn cầu hóa' FROM DUAL
UNION ALL SELECT 'C1', 'glory', 'noun', '/ˈɡlɔːri/', 'vinh quang' FROM DUAL
UNION ALL SELECT 'C1', 'govern', 'verb', '/ˈɡʌvn/', 'cai trị' FROM DUAL
UNION ALL SELECT 'C1', 'governance', 'noun', '/ˈɡʌvənəns/', 'sự quản trị' FROM DUAL
UNION ALL SELECT 'C1', 'grace', 'noun', '/ɡreɪs/', 'sự duyên dáng, ân sủng' FROM DUAL
UNION ALL SELECT 'C1', 'gradually', 'adverb', '/ˈɡrædʒuəli/', 'dần dần' FROM DUAL
UNION ALL SELECT 'C1', 'graduation', 'noun', '/ˌɡrædʒuˈeɪʃn/', 'lễ tốt nghiệp' FROM DUAL
UNION ALL SELECT 'C1', 'grand', 'adjective', '/ɡrænd/', 'hùng vĩ' FROM DUAL
UNION ALL SELECT 'C1', 'grant', 'verb', '/ɡrɑːnt/', 'cấp, ban cho' FROM DUAL
UNION ALL SELECT 'C1', 'graphic', 'noun', '/ˈɡræfɪk/', 'hình đồ họa' FROM DUAL
UNION ALL SELECT 'C1', 'grassroots', 'noun', '/ˈɡrɑːsruːts/', 'tầng lớp cơ sở' FROM DUAL
UNION ALL SELECT 'C1', 'gravity', 'noun', '/ˈɡrævəti/', 'trọng lực, sự nghiêm trọng' FROM DUAL
UNION ALL SELECT 'C1', 'grip', 'noun', '/ɡrɪp/', 'sự nắm chặt' FROM DUAL
UNION ALL SELECT 'C1', 'gross', 'adjective', '/ɡrəʊs/', 'tổng, thô' FROM DUAL
UNION ALL SELECT 'C1', 'guardian', 'noun', '/ˈɡɑːdiən/', 'người giám hộ' FROM DUAL
UNION ALL SELECT 'C1', 'guidance', 'noun', '/ˈɡaɪdns/', 'sự hướng dẫn' FROM DUAL
UNION ALL SELECT 'C1', 'guitarist', 'noun', '/ɡɪˈtɑːrɪst/', 'người chơi ghi-ta' FROM DUAL
UNION ALL SELECT 'C1', 'halt', 'verb', '/hɔːlt/', 'dừng lại' FROM DUAL
UNION ALL SELECT 'C1', 'handful', 'noun', '/ˈhændfʊl/', 'một nắm, số ít' FROM DUAL
UNION ALL SELECT 'C1', 'handy', 'adjective', '/ˈhændi/', 'tiện dụng' FROM DUAL
UNION ALL SELECT 'C1', 'harbour', 'noun', '/ˈhɑːbə(r)/', 'bến cảng' FROM DUAL
UNION ALL SELECT 'C1', 'hardware', 'noun', '/ˈhɑːdweə(r)/', 'phần cứng' FROM DUAL
UNION ALL SELECT 'C1', 'harmony', 'noun', '/ˈhɑːməni/', 'sự hài hòa' FROM DUAL
UNION ALL SELECT 'C1', 'harvest', 'noun', '/ˈhɑːvɪst/', 'vụ thu hoạch' FROM DUAL
UNION ALL SELECT 'C1', 'hatred', 'noun', '/ˈheɪtrɪd/', 'lòng căm thù' FROM DUAL
UNION ALL SELECT 'C1', 'haunt', 'verb', '/hɔːnt/', 'ám ảnh' FROM DUAL
UNION ALL SELECT 'C1', 'heighten', 'verb', '/ˈhaɪtn/', 'nâng cao' FROM DUAL
UNION ALL SELECT 'C1', 'heir', 'noun', '/eə(r)/', 'người thừa kế' FROM DUAL
UNION ALL SELECT 'C1', 'helmet', 'noun', '/ˈhelmɪt/', 'mũ bảo hiểm' FROM DUAL
UNION ALL SELECT 'C1', 'hint', 'noun', '/hɪnt/', 'lời gợi ý' FROM DUAL
UNION ALL SELECT 'C1', 'historian', 'noun', '/hɪˈstɔːriən/', 'nhà sử học' FROM DUAL
UNION ALL SELECT 'C1', 'homeland', 'noun', '/ˈhəʊmlænd/', 'quê hương' FROM DUAL
UNION ALL SELECT 'C1', 'honesty', 'noun', '/ˈɒnəsti/', 'sự trung thực' FROM DUAL
UNION ALL SELECT 'C1', 'hook', 'noun', '/hʊk/', 'cái móc' FROM DUAL
UNION ALL SELECT 'C1', 'hopeful', 'adjective', '/ˈhəʊpfl/', 'đầy hy vọng' FROM DUAL
UNION ALL SELECT 'C1', 'hopefully', 'adverb', '/ˈhəʊpfəli/', 'hy vọng là' FROM DUAL
UNION ALL SELECT 'C1', 'hormone', 'noun', '/ˈhɔːməʊn/', 'hoóc-môn' FROM DUAL
UNION ALL SELECT 'C1', 'hospitality', 'noun', '/ˌhɒspɪˈtæləti/', 'lòng hiếu khách' FROM DUAL
UNION ALL SELECT 'C1', 'hostage', 'noun', '/ˈhɒstɪdʒ/', 'con tin' FROM DUAL
UNION ALL SELECT 'C1', 'humanitarian', 'adjective', '/hjuːˌmænɪˈteəriən/', 'nhân đạo' FROM DUAL
UNION ALL SELECT 'C1', 'humanity', 'noun', '/hjuːˈmænəti/', 'nhân loại, lòng nhân đạo' FROM DUAL
UNION ALL SELECT 'C1', 'hunting', 'noun', '/ˈhʌntɪŋ/', 'sự săn bắn' FROM DUAL
UNION ALL SELECT 'C1', 'hydrogen', 'noun', '/ˈhaɪdrədʒən/', 'hy-đrô' FROM DUAL
UNION ALL SELECT 'C1', 'iconic', 'adjective', '/aɪˈkɒnɪk/', 'mang tính biểu tượng' FROM DUAL
UNION ALL SELECT 'C1', 'ideology', 'noun', '/ˌaɪdiˈɒlədʒi/', 'hệ tư tưởng' FROM DUAL
UNION ALL SELECT 'C1', 'idiot', 'noun', '/ˈɪdiət/', 'kẻ ngốc' FROM DUAL
UNION ALL SELECT 'C1', 'illusion', 'noun', '/ɪˈluːʒn/', 'ảo tưởng, ảo giác' FROM DUAL
UNION ALL SELECT 'C1', 'immense', 'adjective', '/ɪˈmens/', 'bao la, to lớn' FROM DUAL
UNION ALL SELECT 'C1', 'immigration', 'noun', '/ˌɪmɪˈɡreɪʃn/', 'sự nhập cư' FROM DUAL
UNION ALL SELECT 'C1', 'imminent', 'adjective', '/ˈɪmɪnənt/', 'sắp xảy ra' FROM DUAL
UNION ALL SELECT 'C1', 'immunity', 'noun', '/ɪˈmjuːnəti/', 'sự miễn dịch' FROM DUAL
UNION ALL SELECT 'C1', 'implementation', 'noun', '/ˌɪmplɪmenˈteɪʃn/', 'sự thực hiện' FROM DUAL
UNION ALL SELECT 'C1', 'imprisonment', 'noun', '/ɪmˈprɪznmənt/', 'sự bỏ tù' FROM DUAL
UNION ALL SELECT 'C1', 'inability', 'noun', '/ˌɪnəˈbɪləti/', 'sự không có khả năng' FROM DUAL
UNION ALL SELECT 'C1', 'inadequate', 'adjective', '/ɪnˈædɪkwət/', 'không đầy đủ' FROM DUAL
UNION ALL SELECT 'C1', 'inappropriate', 'adjective', '/ˌɪnəˈprəʊpriət/', 'không thích hợp' FROM DUAL
UNION ALL SELECT 'C1', 'incidence', 'noun', '/ˈɪnsɪdəns/', 'tỷ lệ mắc' FROM DUAL
UNION ALL SELECT 'C1', 'inclined', 'adjective', '/ɪnˈklaɪnd/', 'có xu hướng' FROM DUAL
UNION ALL SELECT 'C1', 'inclusion', 'noun', '/ɪnˈkluːʒn/', 'sự bao gồm' FROM DUAL
UNION ALL SELECT 'C1', 'inconsistent', 'adjective', '/ˌɪnkənˈsɪstənt/', 'không nhất quán' FROM DUAL
UNION ALL SELECT 'C1', 'indicator', 'noun', '/ˈɪndɪkeɪtə(r)/', 'chỉ số' FROM DUAL
UNION ALL SELECT 'C1', 'indictment', 'noun', '/ɪnˈdaɪtmənt/', 'bản cáo trạng' FROM DUAL
UNION ALL SELECT 'C1', 'induce', 'verb', '/ɪnˈdjuːs/', 'gây ra, xui khiến' FROM DUAL
UNION ALL SELECT 'C1', 'inequality', 'noun', '/ˌɪnɪˈkwɒləti/', 'sự bất bình đẳng' FROM DUAL
UNION ALL SELECT 'C1', 'infamous', 'adjective', '/ˈɪnfəməs/', 'khét tiếng' FROM DUAL
UNION ALL SELECT 'C1', 'infant', 'noun', '/ˈɪnfənt/', 'trẻ sơ sinh' FROM DUAL
UNION ALL SELECT 'C1', 'infect', 'verb', '/ɪnˈfekt/', 'lây nhiễm' FROM DUAL
UNION ALL SELECT 'C1', 'inflict', 'verb', '/ɪnˈflɪkt/', 'gây ra (đau đớn)' FROM DUAL
UNION ALL SELECT 'C1', 'influential', 'adjective', '/ˌɪnfluˈenʃl/', 'có ảnh hưởng' FROM DUAL
UNION ALL SELECT 'C1', 'inhabitant', 'noun', '/ɪnˈhæbɪtənt/', 'cư dân' FROM DUAL
UNION ALL SELECT 'C1', 'inherent', 'adjective', '/ɪnˈhɪərənt/', 'vốn có' FROM DUAL
UNION ALL SELECT 'C1', 'inhibit', 'verb', '/ɪnˈhɪbɪt/', 'ức chế' FROM DUAL
UNION ALL SELECT 'C1', 'injection', 'noun', '/ɪnˈdʒekʃn/', 'mũi tiêm' FROM DUAL
UNION ALL SELECT 'C1', 'injustice', 'noun', '/ɪnˈdʒʌstɪs/', 'sự bất công' FROM DUAL
UNION ALL SELECT 'C1', 'inmate', 'noun', '/ˈɪnmeɪt/', 'tù nhân' FROM DUAL
UNION ALL SELECT 'C1', 'insert', 'verb', '/ɪnˈsɜːt/', 'chèn vào' FROM DUAL
UNION ALL SELECT 'C1', 'insider', 'noun', '/ɪnˈsaɪdə(r)/', 'người trong cuộc' FROM DUAL
UNION ALL SELECT 'C1', 'inspiration', 'noun', '/ˌɪnspəˈreɪʃn/', 'nguồn cảm hứng' FROM DUAL
UNION ALL SELECT 'C1', 'instinct', 'noun', '/ˈɪnstɪŋkt/', 'bản năng' FROM DUAL
UNION ALL SELECT 'C1', 'institutional', 'adjective', '/ˌɪnstɪˈtjuːʃənl/', 'thuộc thể chế' FROM DUAL
UNION ALL SELECT 'C1', 'instruct', 'verb', '/ɪnˈstrʌkt/', 'chỉ dẫn' FROM DUAL
UNION ALL SELECT 'C1', 'instrumental', 'adjective', '/ˌɪnstrəˈmentl/', 'có vai trò quan trọng' FROM DUAL
UNION ALL SELECT 'C1', 'insufficient', 'adjective', '/ˌɪnsəˈfɪʃnt/', 'không đủ' FROM DUAL
UNION ALL SELECT 'C1', 'insult', 'noun', '/ˈɪnsʌlt/', 'lời lăng mạ' FROM DUAL
UNION ALL SELECT 'C1', 'intact', 'adjective', '/ɪnˈtækt/', 'nguyên vẹn' FROM DUAL
UNION ALL SELECT 'C1', 'intake', 'noun', '/ˈɪnteɪk/', 'lượng tiêu thụ, lượng tuyển' FROM DUAL
UNION ALL SELECT 'C1', 'integral', 'adjective', '/ˈɪntɪɡrəl/', 'không thể thiếu' FROM DUAL
UNION ALL SELECT 'C1', 'integration', 'noun', '/ˌɪntɪˈɡreɪʃn/', 'sự hội nhập' FROM DUAL
UNION ALL SELECT 'C1', 'intellectual', 'noun', '/ˌɪntəˈlektʃuəl/', 'người trí thức' FROM DUAL
UNION ALL SELECT 'C1', 'intensify', 'verb', '/ɪnˈtensɪfaɪ/', 'tăng cường' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C1', 'intensity', 'noun', '/ɪnˈtensəti/', 'cường độ' FROM DUAL
UNION ALL SELECT 'C1', 'intensive', 'adjective', '/ɪnˈtensɪv/', 'chuyên sâu' FROM DUAL
UNION ALL SELECT 'C1', 'interactive', 'adjective', '/ˌɪntərˈæktɪv/', 'tương tác' FROM DUAL
UNION ALL SELECT 'C1', 'interface', 'noun', '/ˈɪntəfeɪs/', 'giao diện' FROM DUAL
UNION ALL SELECT 'C1', 'interference', 'noun', '/ˌɪntəˈfɪərəns/', 'sự can thiệp' FROM DUAL
UNION ALL SELECT 'C1', 'interim', 'adjective', '/ˈɪntərɪm/', 'tạm thời' FROM DUAL
UNION ALL SELECT 'C1', 'intermediate', 'adjective', '/ˌɪntəˈmiːdiət/', 'trung cấp' FROM DUAL
UNION ALL SELECT 'C1', 'intervene', 'verb', '/ˌɪntəˈviːn/', 'can thiệp' FROM DUAL
UNION ALL SELECT 'C1', 'intriguing', 'adjective', '/ɪnˈtriːɡɪŋ/', 'hấp dẫn, kích thích tò mò' FROM DUAL
UNION ALL SELECT 'C1', 'invade', 'verb', '/ɪnˈveɪd/', 'xâm lược' FROM DUAL
UNION ALL SELECT 'C1', 'invaluable', 'adjective', '/ɪnˈvæljuəbl/', 'vô giá' FROM DUAL
UNION ALL SELECT 'C1', 'invariably', 'adverb', '/ɪnˈveəriəbli/', 'luôn luôn' FROM DUAL
UNION ALL SELECT 'C1', 'inventory', 'noun', '/ˈɪnvəntri/', 'hàng tồn kho' FROM DUAL
UNION ALL SELECT 'C1', 'investigator', 'noun', '/ɪnˈvestɪɡeɪtə(r)/', 'điều tra viên' FROM DUAL
UNION ALL SELECT 'C1', 'invoke', 'verb', '/ɪnˈvəʊk/', 'viện dẫn' FROM DUAL
UNION ALL SELECT 'C1', 'involvement', 'noun', '/ɪnˈvɒlvmənt/', 'sự tham gia' FROM DUAL
UNION ALL SELECT 'C1', 'isolation', 'noun', '/ˌaɪsəˈleɪʃn/', 'sự cô lập' FROM DUAL
UNION ALL SELECT 'C1', 'jail', 'verb', '/dʒeɪl/', 'bỏ tù' FROM DUAL
UNION ALL SELECT 'C1', 'jurisdiction', 'noun', '/ˌdʒʊərɪsˈdɪkʃn/', 'quyền tài phán' FROM DUAL
UNION ALL SELECT 'C1', 'kidney', 'noun', '/ˈkɪdni/', 'quả thận' FROM DUAL
UNION ALL SELECT 'C1', 'lad', 'noun', '/læd/', 'chàng trai' FROM DUAL
UNION ALL SELECT 'C1', 'landmark', 'noun', '/ˈlændmɑːk/', 'địa danh, cột mốc' FROM DUAL
UNION ALL SELECT 'C1', 'lane', 'noun', '/leɪn/', 'làn đường, ngõ' FROM DUAL
UNION ALL SELECT 'C1', 'lap', 'noun', '/læp/', 'lòng (đùi), vòng đua' FROM DUAL
UNION ALL SELECT 'C1', 'laser', 'noun', '/ˈleɪzə(r)/', 'tia la-de' FROM DUAL
UNION ALL SELECT 'C1', 'latter', 'adjective', '/ˈlætə(r)/', 'cái sau' FROM DUAL
UNION ALL SELECT 'C1', 'lawn', 'noun', '/lɔːn/', 'bãi cỏ' FROM DUAL
UNION ALL SELECT 'C1', 'lawmaker', 'noun', '/ˈlɔːmeɪkə(r)/', 'nhà lập pháp' FROM DUAL
UNION ALL SELECT 'C1', 'leaflet', 'noun', '/ˈliːflət/', 'tờ rơi' FROM DUAL
UNION ALL SELECT 'C1', 'lean', 'adjective', '/liːn/', 'gầy, nạc' FROM DUAL
UNION ALL SELECT 'C1', 'learner', 'noun', '/ˈlɜːnə(r)/', 'người học' FROM DUAL
UNION ALL SELECT 'C1', 'lecturer', 'noun', '/ˈlektʃərə(r)/', 'giảng viên' FROM DUAL
UNION ALL SELECT 'C1', 'legend', 'noun', '/ˈledʒənd/', 'truyền thuyết, huyền thoại' FROM DUAL
UNION ALL SELECT 'C1', 'legislative', 'adjective', '/ˈledʒɪslətɪv/', 'thuộc lập pháp' FROM DUAL
UNION ALL SELECT 'C1', 'legislature', 'noun', '/ˈledʒɪsleɪtʃə(r)/', 'cơ quan lập pháp' FROM DUAL
UNION ALL SELECT 'C1', 'lethal', 'adjective', '/ˈliːθl/', 'gây chết người' FROM DUAL
UNION ALL SELECT 'C1', 'liability', 'noun', '/ˌlaɪəˈbɪləti/', 'trách nhiệm pháp lý' FROM DUAL
UNION ALL SELECT 'C1', 'liberty', 'noun', '/ˈlɪbəti/', 'sự tự do' FROM DUAL
UNION ALL SELECT 'C1', 'lieutenant', 'noun', '/lefˈtenənt/', 'trung úy' FROM DUAL
UNION ALL SELECT 'C1', 'lifelong', 'adjective', '/ˈlaɪflɒŋ/', 'suốt đời' FROM DUAL
UNION ALL SELECT 'C1', 'likelihood', 'noun', '/ˈlaɪklihʊd/', 'khả năng xảy ra' FROM DUAL
UNION ALL SELECT 'C1', 'limb', 'noun', '/lɪm/', 'chân tay' FROM DUAL
UNION ALL SELECT 'C1', 'linear', 'adjective', '/ˈlɪniə(r)/', 'tuyến tính' FROM DUAL
UNION ALL SELECT 'C1', 'linger', 'verb', '/ˈlɪŋɡə(r)/', 'nán lại' FROM DUAL
UNION ALL SELECT 'C1', 'literacy', 'noun', '/ˈlɪtərəsi/', 'khả năng đọc viết' FROM DUAL
UNION ALL SELECT 'C1', 'litigation', 'noun', '/ˌlɪtɪˈɡeɪʃn/', 'sự kiện tụng' FROM DUAL
UNION ALL SELECT 'C1', 'liver', 'noun', '/ˈlɪvə(r)/', 'gan' FROM DUAL
UNION ALL SELECT 'C1', 'lobby', 'verb', '/ˈlɒbi/', 'vận động hành lang' FROM DUAL
UNION ALL SELECT 'C1', 'logic', 'noun', '/ˈlɒdʒɪk/', 'logic' FROM DUAL
UNION ALL SELECT 'C1', 'longtime', 'adjective', '/ˈlɒŋtaɪm/', 'lâu năm' FROM DUAL
UNION ALL SELECT 'C1', 'loom', 'verb', '/luːm/', 'lờ mờ hiện ra, sắp xảy ra' FROM DUAL
UNION ALL SELECT 'C1', 'loop', 'noun', '/luːp/', 'vòng lặp' FROM DUAL
UNION ALL SELECT 'C1', 'lucrative', 'adjective', '/ˈluːkrətɪv/', 'sinh lợi' FROM DUAL
UNION ALL SELECT 'C1', 'lyrics', 'noun', '/ˈlɪrɪks/', 'lời bài hát' FROM DUAL
UNION ALL SELECT 'C1', 'machinery', 'noun', '/məˈʃiːnəri/', 'máy móc' FROM DUAL
UNION ALL SELECT 'C1', 'magistrate', 'noun', '/ˈmædʒɪstreɪt/', 'quan tòa' FROM DUAL
UNION ALL SELECT 'C1', 'magnetic', 'adjective', '/mæɡˈnetɪk/', 'có từ tính' FROM DUAL
UNION ALL SELECT 'C1', 'magnitude', 'noun', '/ˈmæɡnɪtjuːd/', 'tầm cỡ, cường độ' FROM DUAL
UNION ALL SELECT 'C1', 'mainland', 'noun', '/ˈmeɪnlænd/', 'đất liền' FROM DUAL
UNION ALL SELECT 'C1', 'mainstream', 'adjective', '/ˈmeɪnstriːm/', 'chính thống' FROM DUAL
UNION ALL SELECT 'C1', 'maintenance', 'noun', '/ˈmeɪntənəns/', 'sự bảo trì' FROM DUAL
UNION ALL SELECT 'C1', 'mandatory', 'adjective', '/ˈmændətəri/', 'bắt buộc' FROM DUAL
UNION ALL SELECT 'C1', 'manifest', 'verb', '/ˈmænɪfest/', 'biểu hiện' FROM DUAL
UNION ALL SELECT 'C1', 'manifesto', 'noun', '/ˌmænɪˈfestəʊ/', 'bản tuyên ngôn' FROM DUAL
UNION ALL SELECT 'C1', 'manuscript', 'noun', '/ˈmænjuskrɪpt/', 'bản thảo' FROM DUAL
UNION ALL SELECT 'C1', 'marginal', 'adjective', '/ˈmɑːdʒɪnl/', 'nhỏ, bên lề' FROM DUAL
UNION ALL SELECT 'C1', 'marker', 'noun', '/ˈmɑːkə(r)/', 'bút dạ, dấu hiệu' FROM DUAL
UNION ALL SELECT 'C1', 'martial', 'adjective', '/ˈmɑːʃl/', 'thuộc võ thuật, quân sự' FROM DUAL
UNION ALL SELECT 'C1', 'massacre', 'noun', '/ˈmæsəkə(r)/', 'cuộc thảm sát' FROM DUAL
UNION ALL SELECT 'C1', 'mathematical', 'adjective', '/ˌmæθəˈmætɪkl/', 'thuộc toán học' FROM DUAL
UNION ALL SELECT 'C1', 'mature', 'verb', '/məˈtʃʊə(r)/', 'trưởng thành' FROM DUAL
UNION ALL SELECT 'C1', 'maximize', 'verb', '/ˈmæksɪmaɪz/', 'tối đa hóa' FROM DUAL
UNION ALL SELECT 'C1', 'meantime', 'noun', '/ˈmiːntaɪm/', 'trong lúc đó' FROM DUAL
UNION ALL SELECT 'C1', 'medication', 'noun', '/ˌmedɪˈkeɪʃn/', 'thuốc men' FROM DUAL
UNION ALL SELECT 'C1', 'memo', 'noun', '/ˈmeməʊ/', 'bản ghi nhớ' FROM DUAL
UNION ALL SELECT 'C1', 'memoir', 'noun', '/ˈmemwɑː(r)/', 'hồi ký' FROM DUAL
UNION ALL SELECT 'C1', 'memorable', 'adjective', '/ˈmemərəbl/', 'đáng nhớ' FROM DUAL
UNION ALL SELECT 'C1', 'mentally', 'adverb', '/ˈmentəli/', 'về mặt tinh thần' FROM DUAL
UNION ALL SELECT 'C1', 'merge', 'verb', '/mɜːdʒ/', 'sáp nhập' FROM DUAL
UNION ALL SELECT 'C1', 'merger', 'noun', '/ˈmɜːdʒə(r)/', 'sự sáp nhập' FROM DUAL
UNION ALL SELECT 'C1', 'metaphor', 'noun', '/ˈmetəfə(r)/', 'phép ẩn dụ' FROM DUAL
UNION ALL SELECT 'C1', 'methodology', 'noun', '/ˌmeθəˈdɒlədʒi/', 'phương pháp luận' FROM DUAL
UNION ALL SELECT 'C1', 'migrant', 'noun', '/ˈmaɪɡrənt/', 'người di cư' FROM DUAL
UNION ALL SELECT 'C1', 'militant', 'adjective', '/ˈmɪlɪtənt/', 'hiếu chiến' FROM DUAL
UNION ALL SELECT 'C1', 'minimal', 'adjective', '/ˈmɪnɪməl/', 'tối thiểu' FROM DUAL
UNION ALL SELECT 'C1', 'minimize', 'verb', '/ˈmɪnɪmaɪz/', 'giảm thiểu' FROM DUAL
UNION ALL SELECT 'C1', 'mining', 'noun', '/ˈmaɪnɪŋ/', 'sự khai thác mỏ' FROM DUAL
UNION ALL SELECT 'C1', 'ministry', 'noun', '/ˈmɪnɪstri/', 'bộ (chính phủ)' FROM DUAL
UNION ALL SELECT 'C1', 'miserable', 'adjective', '/ˈmɪzrəbl/', 'khốn khổ' FROM DUAL
UNION ALL SELECT 'C1', 'misery', 'noun', '/ˈmɪzəri/', 'sự khốn khổ' FROM DUAL
UNION ALL SELECT 'C1', 'misleading', 'adjective', '/ˌmɪsˈliːdɪŋ/', 'gây hiểu lầm' FROM DUAL
UNION ALL SELECT 'C1', 'missile', 'noun', '/ˈmɪsaɪl/', 'tên lửa' FROM DUAL
UNION ALL SELECT 'C1', 'mobility', 'noun', '/məʊˈbɪləti/', 'tính di động' FROM DUAL
UNION ALL SELECT 'C1', 'mobilize', 'verb', '/ˈməʊbəlaɪz/', 'huy động' FROM DUAL
UNION ALL SELECT 'C1', 'mock', 'verb', '/mɒk/', 'chế nhạo' FROM DUAL
UNION ALL SELECT 'C1', 'moderate', 'verb', '/ˈmɒdəreɪt/', 'điều tiết' FROM DUAL
UNION ALL SELECT 'C1', 'modification', 'noun', '/ˌmɒdɪfɪˈkeɪʃn/', 'sự sửa đổi' FROM DUAL
UNION ALL SELECT 'C1', 'monk', 'noun', '/mʌŋk/', 'nhà sư' FROM DUAL
UNION ALL SELECT 'C1', 'monster', 'noun', '/ˈmɒnstə(r)/', 'quái vật' FROM DUAL
UNION ALL SELECT 'C1', 'monthly', 'adjective', '/ˈmʌnθli/', 'hằng tháng' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C1', 'morality', 'noun', '/məˈræləti/', 'đạo đức' FROM DUAL
UNION ALL SELECT 'C1', 'motion', 'noun', '/ˈməʊʃn/', 'chuyển động, kiến nghị' FROM DUAL
UNION ALL SELECT 'C1', 'mount', 'noun', '/maʊnt/', 'núi' FROM DUAL
UNION ALL SELECT 'C1', 'mourn', 'verb', '/mɔːn/', 'thương tiếc' FROM DUAL
UNION ALL SELECT 'C1', 'multinational', 'adjective', '/ˌmʌltiˈnæʃnəl/', 'đa quốc gia' FROM DUAL
UNION ALL SELECT 'C1', 'mutation', 'noun', '/mjuːˈteɪʃn/', 'sự đột biến' FROM DUAL
UNION ALL SELECT 'C1', 'naval', 'adjective', '/ˈneɪvl/', 'thuộc hải quân' FROM DUAL
UNION ALL SELECT 'C1', 'navigate', 'verb', '/ˈnævɪɡeɪt/', 'điều hướng' FROM DUAL
UNION ALL SELECT 'C1', 'navigation', 'noun', '/ˌnævɪˈɡeɪʃn/', 'sự điều hướng' FROM DUAL
UNION ALL SELECT 'C1', 'nest', 'noun', '/nest/', 'cái tổ' FROM DUAL
UNION ALL SELECT 'C1', 'newsletter', 'noun', '/ˈnjuːzletə(r)/', 'bản tin' FROM DUAL
UNION ALL SELECT 'C1', 'niche', 'noun', '/niːʃ/', 'thị trường ngách, chỗ đứng' FROM DUAL
UNION ALL SELECT 'C1', 'noble', 'adjective', '/ˈnəʊbl/', 'cao quý' FROM DUAL
UNION ALL SELECT 'C1', 'nod', 'verb', '/nɒd/', 'gật đầu' FROM DUAL
UNION ALL SELECT 'C1', 'nominee', 'noun', '/ˌnɒmɪˈniː/', 'người được đề cử' FROM DUAL
UNION ALL SELECT 'C1', 'nonsense', 'noun', '/ˈnɒnsns/', 'điều vô lý' FROM DUAL
UNION ALL SELECT 'C1', 'notably', 'adverb', '/ˈnəʊtəbli/', 'đáng chú ý là' FROM DUAL
UNION ALL SELECT 'C1', 'notice', 'noun', '/ˈnəʊtɪs/', 'thông báo, sự chú ý' FROM DUAL
UNION ALL SELECT 'C1', 'notorious', 'adjective', '/nəʊˈtɔːriəs/', 'khét tiếng' FROM DUAL
UNION ALL SELECT 'C1', 'novelist', 'noun', '/ˈnɒvəlɪst/', 'tiểu thuyết gia' FROM DUAL
UNION ALL SELECT 'C1', 'nuisance', 'noun', '/ˈnjuːsns/', 'điều phiền toái' FROM DUAL
UNION ALL SELECT 'C1', 'oath', 'noun', '/əʊθ/', 'lời thề' FROM DUAL
UNION ALL SELECT 'C1', 'obesity', 'noun', '/əʊˈbiːsəti/', 'bệnh béo phì' FROM DUAL
UNION ALL SELECT 'C1', 'objection', 'noun', '/əbˈdʒekʃn/', 'sự phản đối' FROM DUAL
UNION ALL SELECT 'C1', 'oblige', 'verb', '/əˈblaɪdʒ/', 'bắt buộc' FROM DUAL
UNION ALL SELECT 'C1', 'observer', 'noun', '/əbˈzɜːvə(r)/', 'người quan sát' FROM DUAL
UNION ALL SELECT 'C1', 'obsession', 'noun', '/əbˈseʃn/', 'nỗi ám ảnh' FROM DUAL
UNION ALL SELECT 'C1', 'occupied', 'adjective', '/ˈɒkjupaɪd/', 'bị chiếm, bận' FROM DUAL
UNION ALL SELECT 'C1', 'occurrence', 'noun', '/əˈkʌrəns/', 'sự xảy ra' FROM DUAL
UNION ALL SELECT 'C1', 'odds', 'noun', '/ɒdz/', 'khả năng, tỷ lệ cược' FROM DUAL
UNION ALL SELECT 'C1', 'offspring', 'noun', '/ˈɒfsprɪŋ/', 'con cái' FROM DUAL
UNION ALL SELECT 'C1', 'operator', 'noun', '/ˈɒpəreɪtə(r)/', 'người vận hành, nhà khai thác' FROM DUAL
UNION ALL SELECT 'C1', 'opt', 'verb', '/ɒpt/', 'chọn' FROM DUAL
UNION ALL SELECT 'C1', 'optical', 'adjective', '/ˈɒptɪkl/', 'thuộc quang học' FROM DUAL
UNION ALL SELECT 'C1', 'optimism', 'noun', '/ˈɒptɪmɪzəm/', 'sự lạc quan' FROM DUAL
UNION ALL SELECT 'C1', 'oral', 'adjective', '/ˈɔːrəl/', 'bằng miệng' FROM DUAL
UNION ALL SELECT 'C1', 'orchestra', 'noun', '/ˈɔːkɪstrə/', 'dàn nhạc' FROM DUAL
UNION ALL SELECT 'C1', 'organic', 'adjective', '/ɔːˈɡænɪk/', 'hữu cơ' FROM DUAL
UNION ALL SELECT 'C1', 'originate', 'verb', '/əˈrɪdʒɪneɪt/', 'bắt nguồn' FROM DUAL
UNION ALL SELECT 'C1', 'outlet', 'noun', '/ˈaʊtlet/', 'cửa hàng bán lẻ, lối thoát' FROM DUAL
UNION ALL SELECT 'C1', 'outlook', 'noun', '/ˈaʊtlʊk/', 'quan điểm, triển vọng' FROM DUAL
UNION ALL SELECT 'C1', 'outrage', 'noun', '/ˈaʊtreɪdʒ/', 'sự phẫn nộ' FROM DUAL
UNION ALL SELECT 'C1', 'outsider', 'noun', '/ˌaʊtˈsaɪdə(r)/', 'người ngoài cuộc' FROM DUAL
UNION ALL SELECT 'C1', 'overly', 'adverb', '/ˈəʊvəli/', 'quá mức' FROM DUAL
UNION ALL SELECT 'C1', 'oversight', 'noun', '/ˈəʊvəsaɪt/', 'sự sơ suất, sự giám sát' FROM DUAL
UNION ALL SELECT 'C1', 'overturn', 'verb', '/ˌəʊvəˈtɜːn/', 'lật đổ, đảo ngược' FROM DUAL
UNION ALL SELECT 'C1', 'overwhelm', 'verb', '/ˌəʊvəˈwelm/', 'áp đảo' FROM DUAL
UNION ALL SELECT 'C1', 'packet', 'noun', '/ˈpækɪt/', 'gói nhỏ' FROM DUAL
UNION ALL SELECT 'C1', 'pad', 'noun', '/pæd/', 'miếng đệm, tập giấy' FROM DUAL
UNION ALL SELECT 'C1', 'pal', 'noun', '/pæl/', 'bạn' FROM DUAL
UNION ALL SELECT 'C1', 'parish', 'noun', '/ˈpærɪʃ/', 'giáo xứ' FROM DUAL
UNION ALL SELECT 'C1', 'parliamentary', 'adjective', '/ˌpɑːləˈmentri/', 'thuộc nghị viện' FROM DUAL
UNION ALL SELECT 'C1', 'partial', 'adjective', '/ˈpɑːʃl/', 'một phần' FROM DUAL
UNION ALL SELECT 'C1', 'partially', 'adverb', '/ˈpɑːʃəli/', 'một phần' FROM DUAL
UNION ALL SELECT 'C1', 'passionate', 'adjective', '/ˈpæʃənət/', 'đam mê' FROM DUAL
UNION ALL SELECT 'C1', 'patent', 'noun', '/ˈpætnt/', 'bằng sáng chế' FROM DUAL
UNION ALL SELECT 'C1', 'patron', 'noun', '/ˈpeɪtrən/', 'người bảo trợ, khách quen' FROM DUAL
UNION ALL SELECT 'C1', 'pause', 'noun', '/pɔːz/', 'sự tạm dừng' FROM DUAL
UNION ALL SELECT 'C1', 'peasant', 'noun', '/ˈpeznt/', 'nông dân' FROM DUAL
UNION ALL SELECT 'C1', 'peculiar', 'adjective', '/pɪˈkjuːliə(r)/', 'kỳ lạ, riêng biệt' FROM DUAL
UNION ALL SELECT 'C1', 'pedestrian', 'noun', '/pəˈdestriən/', 'người đi bộ' FROM DUAL
UNION ALL SELECT 'C1', 'peer', 'verb', '/pɪə(r)/', 'nhìn chăm chú' FROM DUAL
UNION ALL SELECT 'C1', 'perceived', 'adjective', '/pəˈsiːvd/', 'được nhận thức' FROM DUAL
UNION ALL SELECT 'C1', 'periodic', 'adjective', '/ˌpɪəriˈɒdɪk/', 'định kỳ' FROM DUAL
UNION ALL SELECT 'C1', 'persecution', 'noun', '/ˌpɜːsɪˈkjuːʃn/', 'sự ngược đãi' FROM DUAL
UNION ALL SELECT 'C1', 'personnel', 'noun', '/ˌpɜːsəˈnel/', 'nhân sự' FROM DUAL
UNION ALL SELECT 'C1', 'persuasive', 'adjective', '/pəˈsweɪsɪv/', 'có sức thuyết phục' FROM DUAL
UNION ALL SELECT 'C1', 'pest', 'noun', '/pest/', 'sâu bọ có hại' FROM DUAL
UNION ALL SELECT 'C1', 'petty', 'adjective', '/ˈpeti/', 'nhỏ nhặt' FROM DUAL
UNION ALL SELECT 'C1', 'philosopher', 'noun', '/fəˈlɒsəfə(r)/', 'triết gia' FROM DUAL
UNION ALL SELECT 'C1', 'philosophical', 'adjective', '/ˌfɪləˈsɒfɪkl/', 'thuộc triết học' FROM DUAL
UNION ALL SELECT 'C1', 'pill', 'noun', '/pɪl/', 'viên thuốc' FROM DUAL
UNION ALL SELECT 'C1', 'pipeline', 'noun', '/ˈpaɪplaɪn/', 'đường ống' FROM DUAL
UNION ALL SELECT 'C1', 'pit', 'noun', '/pɪt/', 'cái hố' FROM DUAL
UNION ALL SELECT 'C1', 'placement', 'noun', '/ˈpleɪsmənt/', 'sự sắp xếp, kỳ thực tập' FROM DUAL
UNION ALL SELECT 'C1', 'plausible', 'adjective', '/ˈplɔːzəbl/', 'hợp lý, có vẻ đúng' FROM DUAL
UNION ALL SELECT 'C1', 'playground', 'noun', '/ˈpleɪɡraʊnd/', 'sân chơi' FROM DUAL
UNION ALL SELECT 'C1', 'playwright', 'noun', '/ˈpleɪraɪt/', 'nhà viết kịch' FROM DUAL
UNION ALL SELECT 'C1', 'pleasing', 'adjective', '/ˈpliːzɪŋ/', 'dễ chịu' FROM DUAL
UNION ALL SELECT 'C1', 'plot', 'verb', '/plɒt/', 'âm mưu' FROM DUAL
UNION ALL SELECT 'C1', 'plug', 'noun', '/plʌɡ/', 'phích cắm' FROM DUAL
UNION ALL SELECT 'C1', 'pointed', 'adjective', '/ˈpɔɪntɪd/', 'nhọn, châm biếm' FROM DUAL
UNION ALL SELECT 'C1', 'polar', 'adjective', '/ˈpəʊlə(r)/', 'thuộc địa cực' FROM DUAL
UNION ALL SELECT 'C1', 'polish', 'verb', '/ˈpɒlɪʃ/', 'đánh bóng' FROM DUAL
UNION ALL SELECT 'C1', 'pond', 'noun', '/pɒnd/', 'cái ao' FROM DUAL
UNION ALL SELECT 'C1', 'pop', 'verb', '/pɒp/', 'nổ lốp bốp, ghé qua' FROM DUAL
UNION ALL SELECT 'C1', 'popularity', 'noun', '/ˌpɒpjuˈlærəti/', 'sự phổ biến' FROM DUAL
UNION ALL SELECT 'C1', 'portray', 'verb', '/pɔːˈtreɪ/', 'miêu tả' FROM DUAL
UNION ALL SELECT 'C1', 'postpone', 'verb', '/pəˈspəʊn/', 'hoãn lại' FROM DUAL
UNION ALL SELECT 'C1', 'posture', 'noun', '/ˈpɒstʃə(r)/', 'tư thế' FROM DUAL
UNION ALL SELECT 'C1', 'pottery', 'noun', '/ˈpɒtəri/', 'đồ gốm' FROM DUAL
UNION ALL SELECT 'C1', 'practically', 'adverb', '/ˈpræktɪkli/', 'hầu như, thực tế' FROM DUAL
UNION ALL SELECT 'C1', 'preach', 'verb', '/priːtʃ/', 'thuyết giảng' FROM DUAL
UNION ALL SELECT 'C1', 'precedent', 'noun', '/ˈpresɪdənt/', 'tiền lệ' FROM DUAL
UNION ALL SELECT 'C1', 'predator', 'noun', '/ˈpredətə(r)/', 'động vật săn mồi' FROM DUAL
UNION ALL SELECT 'C1', 'predominantly', 'adverb', '/prɪˈdɒmɪnəntli/', 'chủ yếu' FROM DUAL
UNION ALL SELECT 'C1', 'pregnancy', 'noun', '/ˈpreɡnənsi/', 'sự mang thai' FROM DUAL
UNION ALL SELECT 'C1', 'preliminary', 'adjective', '/prɪˈlɪmɪnəri/', 'sơ bộ' FROM DUAL
UNION ALL SELECT 'C1', 'premier', 'adjective', '/ˈpremiə(r)/', 'hàng đầu' FROM DUAL
UNION ALL SELECT 'C1', 'premiere', 'noun', '/ˈpremieə(r)/', 'buổi ra mắt' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C1', 'preservation', 'noun', '/ˌprezəˈveɪʃn/', 'sự bảo tồn' FROM DUAL
UNION ALL SELECT 'C1', 'pressing', 'adjective', '/ˈpresɪŋ/', 'cấp bách' FROM DUAL
UNION ALL SELECT 'C1', 'prevalence', 'noun', '/ˈprevələns/', 'sự phổ biến' FROM DUAL
UNION ALL SELECT 'C1', 'prevalent', 'adjective', '/ˈprevələnt/', 'phổ biến' FROM DUAL
UNION ALL SELECT 'C1', 'prey', 'noun', '/preɪ/', 'con mồi' FROM DUAL
UNION ALL SELECT 'C1', 'primitive', 'adjective', '/ˈprɪmətɪv/', 'nguyên thủy' FROM DUAL
UNION ALL SELECT 'C1', 'principal', 'noun', '/ˈprɪnsəpl/', 'hiệu trưởng' FROM DUAL
UNION ALL SELECT 'C1', 'probe', 'noun', '/prəʊb/', 'cuộc điều tra, tàu thăm dò' FROM DUAL
UNION ALL SELECT 'C1', 'problematic', 'adjective', '/ˌprɒbləˈmætɪk/', 'có vấn đề' FROM DUAL
UNION ALL SELECT 'C1', 'proclaim', 'verb', '/prəˈkleɪm/', 'tuyên bố' FROM DUAL
UNION ALL SELECT 'C1', 'productivity', 'noun', '/ˌprɒdʌkˈtɪvəti/', 'năng suất' FROM DUAL
UNION ALL SELECT 'C1', 'profitable', 'adjective', '/ˈprɒfɪtəbl/', 'có lãi' FROM DUAL
UNION ALL SELECT 'C1', 'progressive', 'adjective', '/prəˈɡresɪv/', 'tiến bộ, tăng dần' FROM DUAL
UNION ALL SELECT 'C1', 'prohibition', 'noun', '/ˌprəʊɪˈbɪʃn/', 'sự cấm đoán' FROM DUAL
UNION ALL SELECT 'C1', 'projected', 'adjective', '/prəˈdʒektɪd/', 'được dự kiến' FROM DUAL
UNION ALL SELECT 'C1', 'prolonged', 'adjective', '/prəˈlɒŋd/', 'kéo dài' FROM DUAL
UNION ALL SELECT 'C1', 'promising', 'adjective', '/ˈprɒmɪsɪŋ/', 'đầy hứa hẹn' FROM DUAL
UNION ALL SELECT 'C1', 'prompt', 'adjective', '/prɒmpt/', 'nhanh chóng' FROM DUAL
UNION ALL SELECT 'C1', 'prone', 'adjective', '/prəʊn/', 'dễ bị' FROM DUAL
UNION ALL SELECT 'C1', 'propaganda', 'noun', '/ˌprɒpəˈɡændə/', 'sự tuyên truyền' FROM DUAL
UNION ALL SELECT 'C1', 'prosecutor', 'noun', '/ˈprɒsɪkjuːtə(r)/', 'công tố viên' FROM DUAL
UNION ALL SELECT 'C1', 'prospective', 'adjective', '/prəˈspektɪv/', 'tương lai, triển vọng' FROM DUAL
UNION ALL SELECT 'C1', 'prosperous', 'adjective', '/ˈprɒspərəs/', 'thịnh vượng' FROM DUAL
UNION ALL SELECT 'C1', 'protective', 'adjective', '/prəˈtektɪv/', 'bảo vệ' FROM DUAL
UNION ALL SELECT 'C1', 'provincial', 'adjective', '/prəˈvɪnʃl/', 'thuộc tỉnh' FROM DUAL
UNION ALL SELECT 'C1', 'provisional', 'adjective', '/prəˈvɪʒənl/', 'tạm thời' FROM DUAL
UNION ALL SELECT 'C1', 'psychiatric', 'adjective', '/ˌsaɪkiˈætrɪk/', 'thuộc tâm thần học' FROM DUAL
UNION ALL SELECT 'C1', 'psychologist', 'noun', '/saɪˈkɒlədʒɪst/', 'nhà tâm lý học' FROM DUAL
UNION ALL SELECT 'C1', 'publicity', 'noun', '/pʌbˈlɪsəti/', 'sự quảng bá' FROM DUAL
UNION ALL SELECT 'C1', 'punch', 'verb', '/pʌntʃ/', 'đấm' FROM DUAL
UNION ALL SELECT 'C1', 'purely', 'adverb', '/ˈpjʊəli/', 'thuần túy' FROM DUAL
UNION ALL SELECT 'C1', 'puzzle', 'verb', '/ˈpʌzl/', 'làm bối rối' FROM DUAL
UNION ALL SELECT 'C1', 'query', 'noun', '/ˈkwɪəri/', 'câu hỏi, truy vấn' FROM DUAL
UNION ALL SELECT 'C1', 'questionnaire', 'noun', '/ˌkwestʃəˈneə(r)/', 'bảng câu hỏi' FROM DUAL
UNION ALL SELECT 'C1', 'racism', 'noun', '/ˈreɪsɪzəm/', 'phân biệt chủng tộc' FROM DUAL
UNION ALL SELECT 'C1', 'rage', 'noun', '/reɪdʒ/', 'cơn thịnh nộ' FROM DUAL
UNION ALL SELECT 'C1', 'raid', 'noun', '/reɪd/', 'cuộc đột kích' FROM DUAL
UNION ALL SELECT 'C1', 'rainbow', 'noun', '/ˈreɪnbəʊ/', 'cầu vồng' FROM DUAL
UNION ALL SELECT 'C1', 'rational', 'adjective', '/ˈræʃnəl/', 'hợp lý, có lý trí' FROM DUAL
UNION ALL SELECT 'C1', 'readily', 'adverb', '/ˈredɪli/', 'sẵn sàng, dễ dàng' FROM DUAL
UNION ALL SELECT 'C1', 'realistic', 'adjective', '/ˌriːəˈlɪstɪk/', 'thực tế' FROM DUAL
UNION ALL SELECT 'C1', 'rear', 'noun', '/rɪə(r)/', 'phía sau' FROM DUAL
UNION ALL SELECT 'C1', 'reassure', 'verb', '/ˌriːəˈʃʊə(r)/', 'trấn an' FROM DUAL
UNION ALL SELECT 'C1', 'rebellion', 'noun', '/rɪˈbeljən/', 'cuộc nổi loạn' FROM DUAL
UNION ALL SELECT 'C1', 'receiver', 'noun', '/rɪˈsiːvə(r)/', 'người nhận, ống nghe' FROM DUAL
UNION ALL SELECT 'C1', 'reconstruction', 'noun', '/ˌriːkənˈstrʌkʃn/', 'sự tái thiết' FROM DUAL
UNION ALL SELECT 'C1', 'recreation', 'noun', '/ˌrekriˈeɪʃn/', 'sự giải trí' FROM DUAL
UNION ALL SELECT 'C1', 'recruitment', 'noun', '/rɪˈkruːtmənt/', 'sự tuyển dụng' FROM DUAL
UNION ALL SELECT 'C1', 'redeem', 'verb', '/rɪˈdiːm/', 'chuộc lại, đổi' FROM DUAL
UNION ALL SELECT 'C1', 'referendum', 'noun', '/ˌrefəˈrendəm/', 'cuộc trưng cầu dân ý' FROM DUAL
UNION ALL SELECT 'C1', 'refine', 'verb', '/rɪˈfaɪn/', 'tinh chế, cải tiến' FROM DUAL
UNION ALL SELECT 'C1', 'refusal', 'noun', '/rɪˈfjuːzl/', 'sự từ chối' FROM DUAL
UNION ALL SELECT 'C1', 'regain', 'verb', '/rɪˈɡeɪn/', 'lấy lại' FROM DUAL
UNION ALL SELECT 'C1', 'regulator', 'noun', '/ˈreɡjuleɪtə(r)/', 'cơ quan quản lý' FROM DUAL
UNION ALL SELECT 'C1', 'regulatory', 'adjective', '/ˈreɡjələtəri/', 'thuộc quản lý' FROM DUAL
UNION ALL SELECT 'C1', 'rehearsal', 'noun', '/rɪˈhɜːsl/', 'buổi diễn tập' FROM DUAL
UNION ALL SELECT 'C1', 'reign', 'noun', '/reɪn/', 'triều đại' FROM DUAL
UNION ALL SELECT 'C1', 'rejection', 'noun', '/rɪˈdʒekʃn/', 'sự từ chối' FROM DUAL
UNION ALL SELECT 'C1', 'relaxation', 'noun', '/ˌriːlækˈseɪʃn/', 'sự thư giãn' FROM DUAL
UNION ALL SELECT 'C1', 'relevance', 'noun', '/ˈreləvəns/', 'sự liên quan' FROM DUAL
UNION ALL SELECT 'C1', 'reliance', 'noun', '/rɪˈlaɪəns/', 'sự phụ thuộc' FROM DUAL
UNION ALL SELECT 'C1', 'relieve', 'verb', '/rɪˈliːv/', 'làm giảm bớt' FROM DUAL
UNION ALL SELECT 'C1', 'reminder', 'noun', '/rɪˈmaɪndə(r)/', 'lời nhắc' FROM DUAL
UNION ALL SELECT 'C1', 'remark', 'verb', '/rɪˈmɑːk/', 'nhận xét' FROM DUAL
UNION ALL SELECT 'C1', 'renowned', 'adjective', '/rɪˈnaʊnd/', 'nổi tiếng' FROM DUAL
UNION ALL SELECT 'C1', 'rental', 'noun', '/ˈrentl/', 'sự cho thuê' FROM DUAL
UNION ALL SELECT 'C1', 'repeated', 'adjective', '/rɪˈpiːtɪd/', 'lặp đi lặp lại' FROM DUAL
UNION ALL SELECT 'C1', 'replacement', 'noun', '/rɪˈpleɪsmənt/', 'sự thay thế' FROM DUAL
UNION ALL SELECT 'C1', 'reportedly', 'adverb', '/rɪˈpɔːtɪdli/', 'theo báo cáo' FROM DUAL
UNION ALL SELECT 'C1', 'republic', 'noun', '/rɪˈpʌblɪk/', 'nước cộng hòa' FROM DUAL
UNION ALL SELECT 'C1', 'resemble', 'verb', '/rɪˈzembl/', 'giống với' FROM DUAL
UNION ALL SELECT 'C1', 'reside', 'verb', '/rɪˈzaɪd/', 'cư trú' FROM DUAL
UNION ALL SELECT 'C1', 'residue', 'noun', '/ˈrezɪdjuː/', 'chất cặn' FROM DUAL
UNION ALL SELECT 'C1', 'resignation', 'noun', '/ˌrezɪɡˈneɪʃn/', 'sự từ chức' FROM DUAL
UNION ALL SELECT 'C1', 'resistant', 'adjective', '/rɪˈzɪstənt/', 'có khả năng chống lại' FROM DUAL
UNION ALL SELECT 'C1', 'respondent', 'noun', '/rɪˈspɒndənt/', 'người trả lời (khảo sát)' FROM DUAL
UNION ALL SELECT 'C1', 'restoration', 'noun', '/ˌrestəˈreɪʃn/', 'sự phục hồi' FROM DUAL
UNION ALL SELECT 'C1', 'resume', 'verb', '/rɪˈzjuːm/', 'tiếp tục lại' FROM DUAL
UNION ALL SELECT 'C1', 'retrieve', 'verb', '/rɪˈtriːv/', 'lấy lại' FROM DUAL
UNION ALL SELECT 'C1', 'revenge', 'noun', '/rɪˈvendʒ/', 'sự trả thù' FROM DUAL
UNION ALL SELECT 'C1', 'reverse', 'noun', '/rɪˈvɜːs/', 'mặt trái, điều ngược lại' FROM DUAL
UNION ALL SELECT 'C1', 'revision', 'noun', '/rɪˈvɪʒn/', 'sự sửa đổi, ôn tập' FROM DUAL
UNION ALL SELECT 'C1', 'revolutionary', 'adjective', '/ˌrevəˈluːʃənəri/', 'mang tính cách mạng' FROM DUAL
UNION ALL SELECT 'C1', 'rid', 'adjective', '/rɪd/', 'thoát khỏi' FROM DUAL
UNION ALL SELECT 'C1', 'ridge', 'noun', '/rɪdʒ/', 'dãy núi, sống lưng' FROM DUAL
UNION ALL SELECT 'C1', 'rightly', 'adverb', '/ˈraɪtli/', 'đúng đắn' FROM DUAL
UNION ALL SELECT 'C1', 'rigid', 'adjective', '/ˈrɪdʒɪd/', 'cứng nhắc' FROM DUAL
UNION ALL SELECT 'C1', 'rip', 'verb', '/rɪp/', 'xé toạc' FROM DUAL
UNION ALL SELECT 'C1', 'rival', 'adjective', '/ˈraɪvl/', 'đối địch' FROM DUAL
UNION ALL SELECT 'C1', 'rob', 'verb', '/rɒb/', 'cướp' FROM DUAL
UNION ALL SELECT 'C1', 'robbery', 'noun', '/ˈrɒbəri/', 'vụ cướp' FROM DUAL
UNION ALL SELECT 'C1', 'rocket', 'noun', '/ˈrɒkɪt/', 'tên lửa' FROM DUAL
UNION ALL SELECT 'C1', 'romance', 'noun', '/rəʊˈmæns/', 'chuyện tình lãng mạn' FROM DUAL
UNION ALL SELECT 'C1', 'rotate', 'verb', '/rəʊˈteɪt/', 'xoay, luân phiên' FROM DUAL
UNION ALL SELECT 'C1', 'ruin', 'verb', '/ˈruːɪn/', 'làm hỏng' FROM DUAL
UNION ALL SELECT 'C1', 'rumour', 'noun', '/ˈruːmə(r)/', 'tin đồn' FROM DUAL
UNION ALL SELECT 'C1', 'sacred', 'adjective', '/ˈseɪkrɪd/', 'thiêng liêng' FROM DUAL
UNION ALL SELECT 'C1', 'safeguard', 'verb', '/ˈseɪfɡɑːd/', 'bảo vệ' FROM DUAL
UNION ALL SELECT 'C1', 'saint', 'noun', '/seɪnt/', 'thánh' FROM DUAL
UNION ALL SELECT 'C1', 'scattered', 'adjective', '/ˈskætəd/', 'rải rác' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C1', 'sceptical', 'adjective', '/ˈskeptɪkl/', 'hoài nghi' FROM DUAL
UNION ALL SELECT 'C1', 'schedule', 'verb', '/ˈʃedjuːl/', 'lên lịch' FROM DUAL
UNION ALL SELECT 'C1', 'scream', 'verb', '/skriːm/', 'la hét' FROM DUAL
UNION ALL SELECT 'C1', 'screw', 'noun', '/skruː/', 'đinh vít' FROM DUAL
UNION ALL SELECT 'C1', 'seasonal', 'adjective', '/ˈsiːzənl/', 'theo mùa' FROM DUAL
UNION ALL SELECT 'C1', 'secondly', 'adverb', '/ˈsekəndli/', 'thứ hai là' FROM DUAL
UNION ALL SELECT 'C1', 'secular', 'adjective', '/ˈsekjələ(r)/', 'thế tục' FROM DUAL
UNION ALL SELECT 'C1', 'seemingly', 'adverb', '/ˈsiːmɪŋli/', 'có vẻ như' FROM DUAL
UNION ALL SELECT 'C1', 'selective', 'adjective', '/sɪˈlektɪv/', 'có chọn lọc' FROM DUAL
UNION ALL SELECT 'C1', 'seminar', 'noun', '/ˈsemɪnɑː(r)/', 'hội thảo chuyên đề' FROM DUAL
UNION ALL SELECT 'C1', 'sensor', 'noun', '/ˈsensə(r)/', 'cảm biến' FROM DUAL
UNION ALL SELECT 'C1', 'sequel', 'noun', '/ˈsiːkwəl/', 'phần tiếp theo' FROM DUAL
UNION ALL SELECT 'C1', 'serial', 'adjective', '/ˈsɪəriəl/', 'nối tiếp' FROM DUAL
UNION ALL SELECT 'C1', 'server', 'noun', '/ˈsɜːvə(r)/', 'máy chủ' FROM DUAL
UNION ALL SELECT 'C1', 'settlement', 'noun', '/ˈsetlmənt/', 'sự dàn xếp, khu định cư' FROM DUAL
UNION ALL SELECT 'C1', 'settler', 'noun', '/ˈsetlə(r)/', 'người định cư' FROM DUAL
UNION ALL SELECT 'C1', 'severely', 'adverb', '/sɪˈvɪəli/', 'nghiêm trọng' FROM DUAL
UNION ALL SELECT 'C1', 'sexuality', 'noun', '/ˌsekʃuˈæləti/', 'tính dục' FROM DUAL
UNION ALL SELECT 'C1', 'shallow', 'adjective', '/ˈʃæləʊ/', 'nông, nông cạn' FROM DUAL
UNION ALL SELECT 'C1', 'sharply', 'adverb', '/ˈʃɑːpli/', 'mạnh, đột ngột' FROM DUAL
UNION ALL SELECT 'C1', 'shield', 'noun', '/ʃiːld/', 'cái khiên' FROM DUAL
UNION ALL SELECT 'C1', 'shrink', 'verb', '/ʃrɪŋk/', 'co lại' FROM DUAL
UNION ALL SELECT 'C1', 'siege', 'noun', '/siːdʒ/', 'cuộc vây hãm' FROM DUAL
UNION ALL SELECT 'C1', 'sigh', 'noun', '/saɪ/', 'tiếng thở dài' FROM DUAL
UNION ALL SELECT 'C1', 'sightseeing', 'noun', '/ˈsaɪtsiːɪŋ/', 'việc tham quan' FROM DUAL
UNION ALL SELECT 'C1', 'simultaneously', 'adverb', '/ˌsɪmlˈteɪniəsli/', 'đồng thời' FROM DUAL
UNION ALL SELECT 'C1', 'skeleton', 'noun', '/ˈskelɪtn/', 'bộ xương' FROM DUAL
UNION ALL SELECT 'C1', 'sketch', 'noun', '/sketʃ/', 'bản phác thảo' FROM DUAL
UNION ALL SELECT 'C1', 'slam', 'verb', '/slæm/', 'đóng sầm' FROM DUAL
UNION ALL SELECT 'C1', 'slash', 'verb', '/slæʃ/', 'cắt giảm mạnh, rạch' FROM DUAL
UNION ALL SELECT 'C1', 'slavery', 'noun', '/ˈsleɪvəri/', 'chế độ nô lệ' FROM DUAL
UNION ALL SELECT 'C1', 'slot', 'noun', '/slɒt/', 'khe, khung giờ' FROM DUAL
UNION ALL SELECT 'C1', 'smash', 'verb', '/smæʃ/', 'đập vỡ' FROM DUAL
UNION ALL SELECT 'C1', 'snap', 'verb', '/snæp/', 'bẻ gãy, chụp nhanh' FROM DUAL
UNION ALL SELECT 'C1', 'soar', 'verb', '/sɔː(r)/', 'tăng vọt, bay vút' FROM DUAL
UNION ALL SELECT 'C1', 'socialist', 'adjective', '/ˈsəʊʃəlɪst/', 'xã hội chủ nghĩa' FROM DUAL
UNION ALL SELECT 'C1', 'sole', 'noun', '/səʊl/', 'đế giày, lòng bàn chân' FROM DUAL
UNION ALL SELECT 'C1', 'solely', 'adverb', '/ˈsəʊlli/', 'duy nhất' FROM DUAL
UNION ALL SELECT 'C1', 'solicitor', 'noun', '/səˈlɪsɪtə(r)/', 'luật sư tư vấn' FROM DUAL
UNION ALL SELECT 'C1', 'solidarity', 'noun', '/ˌsɒlɪˈdærəti/', 'tình đoàn kết' FROM DUAL
UNION ALL SELECT 'C1', 'solo', 'adjective', '/ˈsəʊləʊ/', 'một mình, đơn ca' FROM DUAL
UNION ALL SELECT 'C1', 'sound', 'adjective', '/saʊnd/', 'vững chắc, hợp lý' FROM DUAL
UNION ALL SELECT 'C1', 'sovereignty', 'noun', '/ˈsɒvrənti/', 'chủ quyền' FROM DUAL
UNION ALL SELECT 'C1', 'spam', 'noun', '/spæm/', 'thư rác' FROM DUAL
UNION ALL SELECT 'C1', 'span', 'noun', '/spæn/', 'khoảng thời gian' FROM DUAL
UNION ALL SELECT 'C1', 'spare', 'verb', '/speə(r)/', 'dành ra, tha cho' FROM DUAL
UNION ALL SELECT 'C1', 'spark', 'noun', '/spɑːk/', 'tia lửa' FROM DUAL
UNION ALL SELECT 'C1', 'specification', 'noun', '/ˌspesɪfɪˈkeɪʃn/', 'thông số kỹ thuật' FROM DUAL
UNION ALL SELECT 'C1', 'specimen', 'noun', '/ˈspesɪmən/', 'mẫu vật' FROM DUAL
UNION ALL SELECT 'C1', 'spectacle', 'noun', '/ˈspektəkl/', 'cảnh tượng' FROM DUAL
UNION ALL SELECT 'C1', 'spectator', 'noun', '/spekˈteɪtə(r)/', 'khán giả' FROM DUAL
UNION ALL SELECT 'C1', 'spiritual', 'adjective', '/ˈspɪrɪtʃuəl/', 'thuộc tinh thần, tâm linh' FROM DUAL
UNION ALL SELECT 'C1', 'spite', 'noun', '/spaɪt/', 'sự ác ý (in spite of: mặc dù)' FROM DUAL
UNION ALL SELECT 'C1', 'spokesperson', 'noun', '/ˈspəʊkspɜːsn/', 'người phát ngôn' FROM DUAL
UNION ALL SELECT 'C1', 'sponsorship', 'noun', '/ˈspɒnsəʃɪp/', 'sự tài trợ' FROM DUAL
UNION ALL SELECT 'C1', 'spouse', 'noun', '/spaʊs/', 'vợ/chồng' FROM DUAL
UNION ALL SELECT 'C1', 'squad', 'noun', '/skwɒd/', 'đội, tiểu đội' FROM DUAL
UNION ALL SELECT 'C1', 'squeeze', 'verb', '/skwiːz/', 'vắt, ép' FROM DUAL
UNION ALL SELECT 'C1', 'stab', 'verb', '/stæb/', 'đâm' FROM DUAL
UNION ALL SELECT 'C1', 'stability', 'noun', '/stəˈbɪləti/', 'sự ổn định' FROM DUAL
UNION ALL SELECT 'C1', 'stack', 'noun', '/stæk/', 'chồng, đống' FROM DUAL
UNION ALL SELECT 'C1', 'stall', 'noun', '/stɔːl/', 'quầy hàng' FROM DUAL
UNION ALL SELECT 'C1', 'stamp', 'verb', '/stæmp/', 'đóng dấu, giậm chân' FROM DUAL
UNION ALL SELECT 'C1', 'standpoint', 'noun', '/ˈstændpɔɪnt/', 'quan điểm' FROM DUAL
UNION ALL SELECT 'C1', 'stark', 'adjective', '/stɑːk/', 'rõ rệt, khắc nghiệt' FROM DUAL
UNION ALL SELECT 'C1', 'statistical', 'adjective', '/stəˈtɪstɪkl/', 'thuộc thống kê' FROM DUAL
UNION ALL SELECT 'C1', 'steer', 'verb', '/stɪə(r)/', 'lái, điều khiển' FROM DUAL
UNION ALL SELECT 'C1', 'stereotype', 'noun', '/ˈsteriətaɪp/', 'khuôn mẫu, định kiến' FROM DUAL
UNION ALL SELECT 'C1', 'sticky', 'adjective', '/ˈstɪki/', 'dính' FROM DUAL
UNION ALL SELECT 'C1', 'stir', 'verb', '/stɜː(r)/', 'khuấy, khơi dậy' FROM DUAL
UNION ALL SELECT 'C1', 'strand', 'verb', '/strænd/', 'mắc kẹt' FROM DUAL
UNION ALL SELECT 'C1', 'strategist', 'noun', '/ˈstrætədʒɪst/', 'nhà chiến lược' FROM DUAL
UNION ALL SELECT 'C1', 'stroll', 'verb', '/strəʊl/', 'đi dạo' FROM DUAL
UNION ALL SELECT 'C1', 'structural', 'adjective', '/ˈstrʌktʃərəl/', 'thuộc cấu trúc' FROM DUAL
UNION ALL SELECT 'C1', 'stumble', 'verb', '/ˈstʌmbl/', 'vấp ngã' FROM DUAL
UNION ALL SELECT 'C1', 'stun', 'verb', '/stʌn/', 'làm choáng váng' FROM DUAL
UNION ALL SELECT 'C1', 'subscriber', 'noun', '/səbˈskraɪbə(r)/', 'người đăng ký' FROM DUAL
UNION ALL SELECT 'C1', 'subscription', 'noun', '/səbˈskrɪpʃn/', 'sự đăng ký, phí thuê bao' FROM DUAL
UNION ALL SELECT 'C1', 'substantially', 'adverb', '/səbˈstænʃəli/', 'đáng kể' FROM DUAL
UNION ALL SELECT 'C1', 'suburban', 'adjective', '/səˈbɜːbən/', 'thuộc ngoại ô' FROM DUAL
UNION ALL SELECT 'C1', 'suck', 'verb', '/sʌk/', 'hút' FROM DUAL
UNION ALL SELECT 'C1', 'suite', 'noun', '/swiːt/', 'dãy phòng' FROM DUAL
UNION ALL SELECT 'C1', 'super', 'adverb', '/ˈsuːpə(r)/', 'cực kỳ' FROM DUAL
UNION ALL SELECT 'C1', 'superior', 'adjective', '/suːˈpɪəriə(r)/', 'cao cấp hơn, vượt trội' FROM DUAL
UNION ALL SELECT 'C1', 'superintendent', 'noun', '/ˌsuːpərɪnˈtendənt/', 'người quản lý' FROM DUAL
UNION ALL SELECT 'C1', 'supplier', 'noun', '/səˈplaɪə(r)/', 'nhà cung cấp' FROM DUAL
UNION ALL SELECT 'C1', 'supposedly', 'adverb', '/səˈpəʊzɪdli/', 'được cho là' FROM DUAL
UNION ALL SELECT 'C1', 'surgeon', 'noun', '/ˈsɜːdʒən/', 'bác sĩ phẫu thuật' FROM DUAL
UNION ALL SELECT 'C1', 'surplus', 'noun', '/ˈsɜːpləs/', 'sự thặng dư' FROM DUAL
UNION ALL SELECT 'C1', 'susceptible', 'adjective', '/səˈseptəbl/', 'dễ bị ảnh hưởng' FROM DUAL
UNION ALL SELECT 'C1', 'suspension', 'noun', '/səˈspenʃn/', 'sự đình chỉ' FROM DUAL
UNION ALL SELECT 'C1', 'sustainability', 'noun', '/səˌsteɪnəˈbɪləti/', 'tính bền vững' FROM DUAL
UNION ALL SELECT 'C1', 'swallow', 'verb', '/ˈswɒləʊ/', 'nuốt' FROM DUAL
UNION ALL SELECT 'C1', 'swear', 'verb', '/sweə(r)/', 'thề, chửi thề' FROM DUAL
UNION ALL SELECT 'C1', 'sweep', 'verb', '/swiːp/', 'quét' FROM DUAL
UNION ALL SELECT 'C1', 'swiftly', 'adverb', '/ˈswɪftli/', 'nhanh chóng' FROM DUAL
UNION ALL SELECT 'C1', 'syndicate', 'noun', '/ˈsɪndɪkət/', 'tập đoàn' FROM DUAL
UNION ALL SELECT 'C1', 'synthesis', 'noun', '/ˈsɪnθəsɪs/', 'sự tổng hợp' FROM DUAL
UNION ALL SELECT 'C1', 'systematic', 'adjective', '/ˌsɪstəˈmætɪk/', 'có hệ thống' FROM DUAL
UNION ALL SELECT 'C1', 'tablespoon', 'noun', '/ˈteɪblspuːn/', 'thìa canh' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C1', 'tackle', 'noun', '/ˈtækl/', 'cú tắc bóng' FROM DUAL
UNION ALL SELECT 'C1', 'tactical', 'adjective', '/ˈtæktɪkl/', 'thuộc chiến thuật' FROM DUAL
UNION ALL SELECT 'C1', 'tap', 'verb', '/tæp/', 'gõ nhẹ, khai thác' FROM DUAL
UNION ALL SELECT 'C1', 'taxation', 'noun', '/tækˈseɪʃn/', 'sự đánh thuế' FROM DUAL
UNION ALL SELECT 'C1', 'teaspoon', 'noun', '/ˈtiːspuːn/', 'thìa cà phê' FROM DUAL
UNION ALL SELECT 'C1', 'teammate', 'noun', '/ˈtiːmmeɪt/', 'đồng đội' FROM DUAL
UNION ALL SELECT 'C1', 'teens', 'noun', '/tiːnz/', 'tuổi thiếu niên' FROM DUAL
UNION ALL SELECT 'C1', 'telescope', 'noun', '/ˈtelɪskəʊp/', 'kính thiên văn' FROM DUAL
UNION ALL SELECT 'C1', 'temper', 'noun', '/ˈtempə(r)/', 'tính khí' FROM DUAL
UNION ALL SELECT 'C1', 'tempt', 'verb', '/tempt/', 'cám dỗ' FROM DUAL
UNION ALL SELECT 'C1', 'temptation', 'noun', '/tempˈteɪʃn/', 'sự cám dỗ' FROM DUAL
UNION ALL SELECT 'C1', 'tenure', 'noun', '/ˈtenjə(r)/', 'nhiệm kỳ' FROM DUAL
UNION ALL SELECT 'C1', 'terminate', 'verb', '/ˈtɜːmɪneɪt/', 'chấm dứt' FROM DUAL
UNION ALL SELECT 'C1', 'terrain', 'noun', '/təˈreɪn/', 'địa hình' FROM DUAL
UNION ALL SELECT 'C1', 'terrific', 'adjective', '/təˈrɪfɪk/', 'tuyệt vời' FROM DUAL
UNION ALL SELECT 'C1', 'textile', 'noun', '/ˈtekstaɪl/', 'hàng dệt may' FROM DUAL
UNION ALL SELECT 'C1', 'texture', 'noun', '/ˈtekstʃə(r)/', 'kết cấu' FROM DUAL
UNION ALL SELECT 'C1', 'theatrical', 'adjective', '/θiˈætrɪkl/', 'thuộc sân khấu' FROM DUAL
UNION ALL SELECT 'C1', 'theoretical', 'adjective', '/ˌθɪəˈretɪkl/', 'thuộc lý thuyết' FROM DUAL
UNION ALL SELECT 'C1', 'therapist', 'noun', '/ˈθerəpɪst/', 'nhà trị liệu' FROM DUAL
UNION ALL SELECT 'C1', 'thereafter', 'adverb', '/ˌðeərˈɑːftə(r)/', 'sau đó' FROM DUAL
UNION ALL SELECT 'C1', 'thesis', 'noun', '/ˈθiːsɪs/', 'luận án, luận điểm' FROM DUAL
UNION ALL SELECT 'C1', 'thorough', 'adjective', '/ˈθʌrə/', 'kỹ lưỡng' FROM DUAL
UNION ALL SELECT 'C1', 'thrive', 'verb', '/θraɪv/', 'phát triển mạnh' FROM DUAL
UNION ALL SELECT 'C1', 'throne', 'noun', '/θrəʊn/', 'ngai vàng' FROM DUAL
UNION ALL SELECT 'C1', 'thumb', 'noun', '/θʌm/', 'ngón tay cái' FROM DUAL
UNION ALL SELECT 'C1', 'tighten', 'verb', '/ˈtaɪtn/', 'thắt chặt' FROM DUAL
UNION ALL SELECT 'C1', 'timber', 'noun', '/ˈtɪmbə(r)/', 'gỗ xây dựng' FROM DUAL
UNION ALL SELECT 'C1', 'tobacco', 'noun', '/təˈbækəʊ/', 'thuốc lá' FROM DUAL
UNION ALL SELECT 'C1', 'toll', 'noun', '/təʊl/', 'lệ phí cầu đường, số thương vong' FROM DUAL
UNION ALL SELECT 'C1', 'tone', 'verb', '/təʊn/', 'săn chắc' FROM DUAL
UNION ALL SELECT 'C1', 'torture', 'noun', '/ˈtɔːtʃə(r)/', 'sự tra tấn' FROM DUAL
UNION ALL SELECT 'C1', 'toss', 'verb', '/tɒs/', 'tung, ném' FROM DUAL
UNION ALL SELECT 'C1', 'trademark', 'noun', '/ˈtreɪdmɑːk/', 'nhãn hiệu thương mại' FROM DUAL
UNION ALL SELECT 'C1', 'trafficking', 'noun', '/ˈtræfɪkɪŋ/', 'sự buôn lậu' FROM DUAL
UNION ALL SELECT 'C1', 'trail', 'noun', '/treɪl/', 'đường mòn, dấu vết' FROM DUAL
UNION ALL SELECT 'C1', 'trainee', 'noun', '/ˌtreɪˈniː/', 'thực tập sinh' FROM DUAL
UNION ALL SELECT 'C1', 'transaction', 'noun', '/trænˈzækʃn/', 'giao dịch' FROM DUAL
UNION ALL SELECT 'C1', 'transcript', 'noun', '/ˈtrænskrɪpt/', 'bản ghi, bảng điểm' FROM DUAL
UNION ALL SELECT 'C1', 'transit', 'noun', '/ˈtrænzɪt/', 'sự quá cảnh' FROM DUAL
UNION ALL SELECT 'C1', 'transmission', 'noun', '/trænzˈmɪʃn/', 'sự truyền' FROM DUAL
UNION ALL SELECT 'C1', 'transplant', 'noun', '/ˈtrænsplɑːnt/', 'sự cấy ghép' FROM DUAL
UNION ALL SELECT 'C1', 'trap', 'noun', '/træp/', 'cái bẫy' FROM DUAL
UNION ALL SELECT 'C1', 'trauma', 'noun', '/ˈtrɔːmə/', 'chấn thương tâm lý' FROM DUAL
UNION ALL SELECT 'C1', 'treasure', 'noun', '/ˈtreʒə(r)/', 'kho báu' FROM DUAL
UNION ALL SELECT 'C1', 'tribute', 'noun', '/ˈtrɪbjuːt/', 'sự tôn vinh' FROM DUAL
UNION ALL SELECT 'C1', 'trillion', 'number', '/ˈtrɪljən/', 'nghìn tỷ' FROM DUAL
UNION ALL SELECT 'C1', 'trio', 'noun', '/ˈtriːəʊ/', 'bộ ba' FROM DUAL
UNION ALL SELECT 'C1', 'troubled', 'adjective', '/ˈtrʌbld/', 'gặp rắc rối' FROM DUAL
UNION ALL SELECT 'C1', 'tuition', 'noun', '/tjuˈɪʃn/', 'học phí, sự giảng dạy' FROM DUAL
UNION ALL SELECT 'C1', 'turnout', 'noun', '/ˈtɜːnaʊt/', 'số người tham gia' FROM DUAL
UNION ALL SELECT 'C1', 'tutor', 'noun', '/ˈtjuːtə(r)/', 'gia sư' FROM DUAL
UNION ALL SELECT 'C1', 'twist', 'noun', '/twɪst/', 'tình tiết bất ngờ' FROM DUAL
UNION ALL SELECT 'C1', 'unacceptable', 'adjective', '/ˌʌnəkˈseptəbl/', 'không thể chấp nhận' FROM DUAL
UNION ALL SELECT 'C1', 'uncertainty', 'noun', '/ʌnˈsɜːtnti/', 'sự không chắc chắn' FROM DUAL
UNION ALL SELECT 'C1', 'uncover', 'verb', '/ʌnˈkʌvə(r)/', 'khám phá, phát hiện' FROM DUAL
UNION ALL SELECT 'C1', 'underground', 'adjective', '/ˌʌndəˈɡraʊnd/', 'dưới lòng đất, bí mật' FROM DUAL
UNION ALL SELECT 'C1', 'underneath', 'preposition', '/ˌʌndəˈniːθ/', 'bên dưới' FROM DUAL
UNION ALL SELECT 'C1', 'unfold', 'verb', '/ʌnˈfəʊld/', 'mở ra, diễn ra' FROM DUAL
UNION ALL SELECT 'C1', 'unlawful', 'adjective', '/ʌnˈlɔːfl/', 'bất hợp pháp' FROM DUAL
UNION ALL SELECT 'C1', 'unveil', 'verb', '/ˌʌnˈveɪl/', 'công bố, khánh thành' FROM DUAL
UNION ALL SELECT 'C1', 'upcoming', 'adjective', '/ˈʌpkʌmɪŋ/', 'sắp tới' FROM DUAL
UNION ALL SELECT 'C1', 'upset', 'verb', '/ʌpˈset/', 'làm buồn lòng' FROM DUAL
UNION ALL SELECT 'C1', 'utterly', 'adverb', '/ˈʌtəli/', 'hoàn toàn' FROM DUAL
UNION ALL SELECT 'C1', 'vacuum', 'noun', '/ˈvækjuːm/', 'chân không' FROM DUAL
UNION ALL SELECT 'C1', 'valuation', 'noun', '/ˌvæljuˈeɪʃn/', 'sự định giá' FROM DUAL
UNION ALL SELECT 'C1', 'variable', 'noun', '/ˈveəriəbl/', 'biến số' FROM DUAL
UNION ALL SELECT 'C1', 'vein', 'noun', '/veɪn/', 'tĩnh mạch' FROM DUAL
UNION ALL SELECT 'C1', 'velocity', 'noun', '/vəˈlɒsəti/', 'vận tốc' FROM DUAL
UNION ALL SELECT 'C1', 'verbal', 'adjective', '/ˈvɜːbl/', 'bằng lời nói' FROM DUAL
UNION ALL SELECT 'C1', 'vertical', 'adjective', '/ˈvɜːtɪkl/', 'thẳng đứng' FROM DUAL
UNION ALL SELECT 'C1', 'viewpoint', 'noun', '/ˈvjuːpɔɪnt/', 'quan điểm' FROM DUAL
UNION ALL SELECT 'C1', 'villa', 'noun', '/ˈvɪlə/', 'biệt thự' FROM DUAL
UNION ALL SELECT 'C1', 'villager', 'noun', '/ˈvɪlɪdʒə(r)/', 'dân làng' FROM DUAL
UNION ALL SELECT 'C1', 'violate', 'verb', '/ˈvaɪəleɪt/', 'vi phạm' FROM DUAL
UNION ALL SELECT 'C1', 'visa', 'noun', '/ˈviːzə/', 'thị thực' FROM DUAL
UNION ALL SELECT 'C1', 'vocal', 'adjective', '/ˈvəʊkl/', 'thuộc giọng nói, lên tiếng mạnh mẽ' FROM DUAL
UNION ALL SELECT 'C1', 'volatile', 'adjective', '/ˈvɒlətaɪl/', 'dễ biến động' FROM DUAL
UNION ALL SELECT 'C1', 'volunteer', 'verb', '/ˌvɒlənˈtɪə(r)/', 'tình nguyện' FROM DUAL
UNION ALL SELECT 'C1', 'vow', 'verb', '/vaʊ/', 'thề nguyện' FROM DUAL
UNION ALL SELECT 'C1', 'wardrobe', 'noun', '/ˈwɔːdrəʊb/', 'tủ quần áo' FROM DUAL
UNION ALL SELECT 'C1', 'warehouse', 'noun', '/ˈweəhaʊs/', 'nhà kho' FROM DUAL
UNION ALL SELECT 'C1', 'warfare', 'noun', '/ˈwɔːfeə(r)/', 'chiến tranh' FROM DUAL
UNION ALL SELECT 'C1', 'weaponry', 'noun', '/ˈwepənri/', 'vũ khí' FROM DUAL
UNION ALL SELECT 'C1', 'weed', 'noun', '/wiːd/', 'cỏ dại' FROM DUAL
UNION ALL SELECT 'C1', 'well-being', 'noun', '/ˈwel biːɪŋ/', 'hạnh phúc, sức khỏe' FROM DUAL
UNION ALL SELECT 'C1', 'whip', 'verb', '/wɪp/', 'quất, đánh (kem)' FROM DUAL
UNION ALL SELECT 'C1', 'whisper', 'verb', '/ˈwɪspə(r)/', 'thì thầm' FROM DUAL
UNION ALL SELECT 'C1', 'wholly', 'adverb', '/ˈhəʊlli/', 'hoàn toàn' FROM DUAL
UNION ALL SELECT 'C1', 'widow', 'noun', '/ˈwɪdəʊ/', 'góa phụ' FROM DUAL
UNION ALL SELECT 'C1', 'width', 'noun', '/wɪdθ/', 'chiều rộng' FROM DUAL
UNION ALL SELECT 'C1', 'wipe', 'verb', '/waɪp/', 'lau chùi' FROM DUAL
UNION ALL SELECT 'C1', 'wit', 'noun', '/wɪt/', 'sự hóm hỉnh' FROM DUAL
UNION ALL SELECT 'C1', 'withdrawal', 'noun', '/wɪðˈdrɔːəl/', 'sự rút lui' FROM DUAL
UNION ALL SELECT 'C1', 'workout', 'noun', '/ˈwɜːkaʊt/', 'buổi tập luyện' FROM DUAL
UNION ALL SELECT 'C1', 'worm', 'noun', '/wɜːm/', 'con giun' FROM DUAL
UNION ALL SELECT 'C1', 'wrist', 'noun', '/rɪst/', 'cổ tay' FROM DUAL
UNION ALL SELECT 'C1', 'yell', 'verb', '/jel/', 'la hét' FROM DUAL
UNION ALL SELECT 'C2', 'aberration', 'noun', '/ˌæbəˈreɪʃn/', 'sự lệch lạc, bất thường' FROM DUAL
UNION ALL SELECT 'C2', 'abhor', 'verb', '/əbˈhɔː(r)/', 'ghê tởm' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C2', 'abide', 'verb', '/əˈbaɪd/', 'tuân theo, chịu đựng' FROM DUAL
UNION ALL SELECT 'C2', 'abject', 'adjective', '/ˈæbdʒekt/', 'khốn cùng, hèn hạ' FROM DUAL
UNION ALL SELECT 'C2', 'abrasive', 'adjective', '/əˈbreɪsɪv/', 'thô ráp, cộc cằn' FROM DUAL
UNION ALL SELECT 'C2', 'abrupt', 'adjective', '/əˈbrʌpt/', 'đột ngột, cộc lốc' FROM DUAL
UNION ALL SELECT 'C2', 'abstain', 'verb', '/əbˈsteɪn/', 'kiêng, bỏ phiếu trắng' FROM DUAL
UNION ALL SELECT 'C2', 'absurd', 'adjective', '/əbˈsɜːd/', 'vô lý, lố bịch' FROM DUAL
UNION ALL SELECT 'C2', 'abysmal', 'adjective', '/əˈbɪzməl/', 'cực kỳ tồi tệ' FROM DUAL
UNION ALL SELECT 'C2', 'accede', 'verb', '/əkˈsiːd/', 'đồng ý, lên ngôi' FROM DUAL
UNION ALL SELECT 'C2', 'accentuate', 'verb', '/əkˈsentʃueɪt/', 'làm nổi bật' FROM DUAL
UNION ALL SELECT 'C2', 'acclimatize', 'verb', '/əˈklaɪmətaɪz/', 'làm quen với khí hậu' FROM DUAL
UNION ALL SELECT 'C2', 'accolade', 'noun', '/ˈækəleɪd/', 'lời khen ngợi, giải thưởng' FROM DUAL
UNION ALL SELECT 'C2', 'accrue', 'verb', '/əˈkruː/', 'tích lũy dần' FROM DUAL
UNION ALL SELECT 'C2', 'acquiesce', 'verb', '/ˌækwiˈes/', 'bằng lòng, ưng thuận' FROM DUAL
UNION ALL SELECT 'C2', 'acquittal', 'noun', '/əˈkwɪtl/', 'sự tha bổng' FROM DUAL
UNION ALL SELECT 'C2', 'acrimonious', 'adjective', '/ˌækrɪˈməʊniəs/', 'gay gắt, chua cay' FROM DUAL
UNION ALL SELECT 'C2', 'acumen', 'noun', '/ˈækjəmən/', 'sự nhạy bén' FROM DUAL
UNION ALL SELECT 'C2', 'adamant', 'adjective', '/ˈædəmənt/', 'kiên quyết' FROM DUAL
UNION ALL SELECT 'C2', 'adept', 'adjective', '/əˈdept/', 'thành thạo' FROM DUAL
UNION ALL SELECT 'C2', 'adjourn', 'verb', '/əˈdʒɜːn/', 'hoãn lại' FROM DUAL
UNION ALL SELECT 'C2', 'admonish', 'verb', '/ədˈmɒnɪʃ/', 'khiển trách' FROM DUAL
UNION ALL SELECT 'C2', 'adorn', 'verb', '/əˈdɔːn/', 'tô điểm' FROM DUAL
UNION ALL SELECT 'C2', 'adroit', 'adjective', '/əˈdrɔɪt/', 'khéo léo' FROM DUAL
UNION ALL SELECT 'C2', 'adulation', 'noun', '/ˌædjuˈleɪʃn/', 'sự tâng bốc' FROM DUAL
UNION ALL SELECT 'C2', 'adversary', 'noun', '/ˈædvəsəri/', 'đối thủ, kẻ thù' FROM DUAL
UNION ALL SELECT 'C2', 'adversity', 'noun', '/ədˈvɜːsəti/', 'nghịch cảnh' FROM DUAL
UNION ALL SELECT 'C2', 'affable', 'adjective', '/ˈæfəbl/', 'niềm nở, dễ gần' FROM DUAL
UNION ALL SELECT 'C2', 'affinity', 'noun', '/əˈfɪnəti/', 'sự gần gũi, thiện cảm' FROM DUAL
UNION ALL SELECT 'C2', 'affluent', 'adjective', '/ˈæfluənt/', 'giàu có' FROM DUAL
UNION ALL SELECT 'C2', 'aggravate', 'verb', '/ˈæɡrəveɪt/', 'làm trầm trọng thêm' FROM DUAL
UNION ALL SELECT 'C2', 'agile', 'adjective', '/ˈædʒaɪl/', 'nhanh nhẹn' FROM DUAL
UNION ALL SELECT 'C2', 'agitate', 'verb', '/ˈædʒɪteɪt/', 'khuấy động, kích động' FROM DUAL
UNION ALL SELECT 'C2', 'ailment', 'noun', '/ˈeɪlmənt/', 'bệnh vặt' FROM DUAL
UNION ALL SELECT 'C2', 'alienate', 'verb', '/ˈeɪliəneɪt/', 'làm xa lánh' FROM DUAL
UNION ALL SELECT 'C2', 'allay', 'verb', '/əˈleɪ/', 'làm dịu, xoa dịu' FROM DUAL
UNION ALL SELECT 'C2', 'alleviate', 'verb', '/əˈliːvieɪt/', 'làm giảm nhẹ' FROM DUAL
UNION ALL SELECT 'C2', 'allude', 'verb', '/əˈluːd/', 'ám chỉ' FROM DUAL
UNION ALL SELECT 'C2', 'allure', 'noun', '/əˈlʊə(r)/', 'sức quyến rũ' FROM DUAL
UNION ALL SELECT 'C2', 'aloof', 'adjective', '/əˈluːf/', 'xa cách, lạnh lùng' FROM DUAL
UNION ALL SELECT 'C2', 'altruism', 'noun', '/ˈæltruɪzəm/', 'lòng vị tha' FROM DUAL
UNION ALL SELECT 'C2', 'amass', 'verb', '/əˈmæs/', 'tích lũy, gom góp' FROM DUAL
UNION ALL SELECT 'C2', 'ambivalent', 'adjective', '/æmˈbɪvələnt/', 'mâu thuẫn, lưỡng lự' FROM DUAL
UNION ALL SELECT 'C2', 'ameliorate', 'verb', '/əˈmiːliəreɪt/', 'cải thiện' FROM DUAL
UNION ALL SELECT 'C2', 'amenable', 'adjective', '/əˈmiːnəbl/', 'dễ bảo, chịu nghe theo' FROM DUAL
UNION ALL SELECT 'C2', 'amenity', 'noun', '/əˈmiːnəti/', 'tiện nghi' FROM DUAL
UNION ALL SELECT 'C2', 'amiable', 'adjective', '/ˈeɪmiəbl/', 'hòa nhã' FROM DUAL
UNION ALL SELECT 'C2', 'amicable', 'adjective', '/ˈæmɪkəbl/', 'thân thiện, hòa giải' FROM DUAL
UNION ALL SELECT 'C2', 'amnesty', 'noun', '/ˈæmnəsti/', 'sự ân xá' FROM DUAL
UNION ALL SELECT 'C2', 'anachronism', 'noun', '/əˈnækrənɪzəm/', 'sự lỗi thời' FROM DUAL
UNION ALL SELECT 'C2', 'anecdote', 'noun', '/ˈænɪkdəʊt/', 'giai thoại' FROM DUAL
UNION ALL SELECT 'C2', 'animosity', 'noun', '/ˌænɪˈmɒsəti/', 'sự thù địch' FROM DUAL
UNION ALL SELECT 'C2', 'annihilate', 'verb', '/əˈnaɪəleɪt/', 'tiêu diệt' FROM DUAL
UNION ALL SELECT 'C2', 'anomaly', 'noun', '/əˈnɒməli/', 'sự dị thường' FROM DUAL
UNION ALL SELECT 'C2', 'antagonism', 'noun', '/ænˈtæɡənɪzəm/', 'sự đối kháng' FROM DUAL
UNION ALL SELECT 'C2', 'antagonize', 'verb', '/ænˈtæɡənaɪz/', 'gây thù địch' FROM DUAL
UNION ALL SELECT 'C2', 'antidote', 'noun', '/ˈæntidəʊt/', 'thuốc giải độc' FROM DUAL
UNION ALL SELECT 'C2', 'antiquated', 'adjective', '/ˈæntɪkweɪtɪd/', 'cổ lỗ, lỗi thời' FROM DUAL
UNION ALL SELECT 'C2', 'antiquity', 'noun', '/ænˈtɪkwəti/', 'thời cổ đại' FROM DUAL
UNION ALL SELECT 'C2', 'apathy', 'noun', '/ˈæpəθi/', 'sự thờ ơ' FROM DUAL
UNION ALL SELECT 'C2', 'appease', 'verb', '/əˈpiːz/', 'xoa dịu, nhân nhượng' FROM DUAL
UNION ALL SELECT 'C2', 'appraisal', 'noun', '/əˈpreɪzl/', 'sự đánh giá' FROM DUAL
UNION ALL SELECT 'C2', 'apprehend', 'verb', '/ˌæprɪˈhend/', 'bắt giữ, hiểu' FROM DUAL
UNION ALL SELECT 'C2', 'apprehensive', 'adjective', '/ˌæprɪˈhensɪv/', 'e sợ, lo lắng' FROM DUAL
UNION ALL SELECT 'C2', 'arbitrator', 'noun', '/ˈɑːbɪtreɪtə(r)/', 'trọng tài phân xử' FROM DUAL
UNION ALL SELECT 'C2', 'arcane', 'adjective', '/ɑːˈkeɪn/', 'bí ẩn, khó hiểu' FROM DUAL
UNION ALL SELECT 'C2', 'ardent', 'adjective', '/ˈɑːdnt/', 'nồng nhiệt, hăng hái' FROM DUAL
UNION ALL SELECT 'C2', 'arduous', 'adjective', '/ˈɑːdʒuəs/', 'gian khổ' FROM DUAL
UNION ALL SELECT 'C2', 'aristocracy', 'noun', '/ˌærɪˈstɒkrəsi/', 'tầng lớp quý tộc' FROM DUAL
UNION ALL SELECT 'C2', 'arrogance', 'noun', '/ˈærəɡəns/', 'sự kiêu ngạo' FROM DUAL
UNION ALL SELECT 'C2', 'arrogant', 'adjective', '/ˈærəɡənt/', 'kiêu ngạo' FROM DUAL
UNION ALL SELECT 'C2', 'artefact', 'noun', '/ˈɑːtɪfækt/', 'đồ tạo tác, hiện vật' FROM DUAL
UNION ALL SELECT 'C2', 'ascend', 'verb', '/əˈsend/', 'đi lên, leo lên' FROM DUAL
UNION ALL SELECT 'C2', 'ascendancy', 'noun', '/əˈsendənsi/', 'uy thế' FROM DUAL
UNION ALL SELECT 'C2', 'assiduous', 'adjective', '/əˈsɪdjuəs/', 'cần mẫn' FROM DUAL
UNION ALL SELECT 'C2', 'assimilate', 'verb', '/əˈsɪməleɪt/', 'đồng hóa, tiếp thu' FROM DUAL
UNION ALL SELECT 'C2', 'astute', 'adjective', '/əˈstjuːt/', 'sắc sảo' FROM DUAL
UNION ALL SELECT 'C2', 'atone', 'verb', '/əˈtəʊn/', 'chuộc lỗi' FROM DUAL
UNION ALL SELECT 'C2', 'atrophy', 'verb', '/ˈætrəfi/', 'teo đi' FROM DUAL
UNION ALL SELECT 'C2', 'audacious', 'adjective', '/ɔːˈdeɪʃəs/', 'táo bạo' FROM DUAL
UNION ALL SELECT 'C2', 'augment', 'verb', '/ɔːɡˈment/', 'tăng thêm' FROM DUAL
UNION ALL SELECT 'C2', 'auspicious', 'adjective', '/ɔːˈspɪʃəs/', 'tốt lành, thuận lợi' FROM DUAL
UNION ALL SELECT 'C2', 'austere', 'adjective', '/ɒˈstɪə(r)/', 'khắc khổ, giản dị' FROM DUAL
UNION ALL SELECT 'C2', 'austerity', 'noun', '/ɒˈsterəti/', 'sự thắt lưng buộc bụng' FROM DUAL
UNION ALL SELECT 'C2', 'autocratic', 'adjective', '/ˌɔːtəˈkrætɪk/', 'chuyên quyền' FROM DUAL
UNION ALL SELECT 'C2', 'avarice', 'noun', '/ˈævərɪs/', 'lòng tham' FROM DUAL
UNION ALL SELECT 'C2', 'aversion', 'noun', '/əˈvɜːʃn/', 'sự ác cảm' FROM DUAL
UNION ALL SELECT 'C2', 'avert', 'verb', '/əˈvɜːt/', 'ngăn chặn, quay đi' FROM DUAL
UNION ALL SELECT 'C2', 'avid', 'adjective', '/ˈævɪd/', 'khao khát, say mê' FROM DUAL
UNION ALL SELECT 'C2', 'awe', 'noun', '/ɔː/', 'sự kính sợ' FROM DUAL
UNION ALL SELECT 'C2', 'awry', 'adverb', '/əˈraɪ/', 'hỏng, không như ý' FROM DUAL
UNION ALL SELECT 'C2', 'baffle', 'verb', '/ˈbæfl/', 'làm bối rối' FROM DUAL
UNION ALL SELECT 'C2', 'banal', 'adjective', '/bəˈnɑːl/', 'tầm thường, nhàm' FROM DUAL
UNION ALL SELECT 'C2', 'banish', 'verb', '/ˈbænɪʃ/', 'trục xuất, xua đuổi' FROM DUAL
UNION ALL SELECT 'C2', 'barren', 'adjective', '/ˈbærən/', 'cằn cỗi' FROM DUAL
UNION ALL SELECT 'C2', 'bashful', 'adjective', '/ˈbæʃfl/', 'bẽn lẽn' FROM DUAL
UNION ALL SELECT 'C2', 'beckon', 'verb', '/ˈbekən/', 'vẫy gọi' FROM DUAL
UNION ALL SELECT 'C2', 'befall', 'verb', '/bɪˈfɔːl/', 'xảy đến với' FROM DUAL
UNION ALL SELECT 'C2', 'belated', 'adjective', '/bɪˈleɪtɪd/', 'muộn màng' FROM DUAL
UNION ALL SELECT 'C2', 'belittle', 'verb', '/bɪˈlɪtl/', 'coi thường' FROM DUAL
UNION ALL SELECT 'C2', 'bellicose', 'adjective', '/ˈbelɪkəʊs/', 'hiếu chiến' FROM DUAL
UNION ALL SELECT 'C2', 'belligerent', 'adjective', '/bəˈlɪdʒərənt/', 'hiếu chiến, gây gổ' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C2', 'benevolent', 'adjective', '/bəˈnevələnt/', 'nhân từ' FROM DUAL
UNION ALL SELECT 'C2', 'benign', 'adjective', '/bɪˈnaɪn/', 'lành tính, hiền' FROM DUAL
UNION ALL SELECT 'C2', 'bequeath', 'verb', '/bɪˈkwiːð/', 'để lại (di chúc)' FROM DUAL
UNION ALL SELECT 'C2', 'berate', 'verb', '/bɪˈreɪt/', 'mắng nhiếc' FROM DUAL
UNION ALL SELECT 'C2', 'bereaved', 'adjective', '/bɪˈriːvd/', 'có người thân vừa mất' FROM DUAL
UNION ALL SELECT 'C2', 'besiege', 'verb', '/bɪˈsiːdʒ/', 'bao vây' FROM DUAL
UNION ALL SELECT 'C2', 'bestow', 'verb', '/bɪˈstəʊ/', 'ban tặng' FROM DUAL
UNION ALL SELECT 'C2', 'bewildered', 'adjective', '/bɪˈwɪldəd/', 'hoang mang' FROM DUAL
UNION ALL SELECT 'C2', 'bigotry', 'noun', '/ˈbɪɡətri/', 'sự cố chấp' FROM DUAL
UNION ALL SELECT 'C2', 'blatant', 'adjective', '/ˈbleɪtnt/', 'trắng trợn' FROM DUAL
UNION ALL SELECT 'C2', 'bleak', 'adjective', '/bliːk/', 'ảm đạm' FROM DUAL
UNION ALL SELECT 'C2', 'blemish', 'noun', '/ˈblemɪʃ/', 'vết nhơ, tì vết' FROM DUAL
UNION ALL SELECT 'C2', 'blissful', 'adjective', '/ˈblɪsfl/', 'hạnh phúc tuyệt vời' FROM DUAL
UNION ALL SELECT 'C2', 'blunder', 'noun', '/ˈblʌndə(r)/', 'sai lầm ngớ ngẩn' FROM DUAL
UNION ALL SELECT 'C2', 'bolster', 'verb', '/ˈbəʊlstə(r)/', 'củng cố' FROM DUAL
UNION ALL SELECT 'C2', 'bombard', 'verb', '/bɒmˈbɑːd/', 'ném bom, dồn dập' FROM DUAL
UNION ALL SELECT 'C2', 'boisterous', 'adjective', '/ˈbɔɪstərəs/', 'huyên náo' FROM DUAL
UNION ALL SELECT 'C2', 'bountiful', 'adjective', '/ˈbaʊntɪfl/', 'dồi dào, hào phóng' FROM DUAL
UNION ALL SELECT 'C2', 'brazen', 'adjective', '/ˈbreɪzn/', 'trơ trẽn' FROM DUAL
UNION ALL SELECT 'C2', 'brevity', 'noun', '/ˈbrevəti/', 'sự ngắn gọn' FROM DUAL
UNION ALL SELECT 'C2', 'brink', 'noun', '/brɪŋk/', 'bờ vực' FROM DUAL
UNION ALL SELECT 'C2', 'brisk', 'adjective', '/brɪsk/', 'nhanh nhẹn, lanh lợi' FROM DUAL
UNION ALL SELECT 'C2', 'brittle', 'adjective', '/ˈbrɪtl/', 'giòn, dễ gãy' FROM DUAL
UNION ALL SELECT 'C2', 'bureaucrat', 'noun', '/ˈbjʊərəkræt/', 'quan chức, kẻ quan liêu' FROM DUAL
UNION ALL SELECT 'C2', 'buoyant', 'adjective', '/ˈbɔɪənt/', 'nổi, phấn chấn' FROM DUAL
UNION ALL SELECT 'C2', 'burgeon', 'verb', '/ˈbɜːdʒən/', 'phát triển nhanh' FROM DUAL
UNION ALL SELECT 'C2', 'cacophony', 'noun', '/kəˈkɒfəni/', 'tạp âm chói tai' FROM DUAL
UNION ALL SELECT 'C2', 'cajole', 'verb', '/kəˈdʒəʊl/', 'tán tỉnh, dỗ ngọt' FROM DUAL
UNION ALL SELECT 'C2', 'callous', 'adjective', '/ˈkæləs/', 'nhẫn tâm' FROM DUAL
UNION ALL SELECT 'C2', 'camaraderie', 'noun', '/ˌkæməˈrɑːdəri/', 'tình đồng chí' FROM DUAL
UNION ALL SELECT 'C2', 'candid', 'adjective', '/ˈkændɪd/', 'thẳng thắn' FROM DUAL
UNION ALL SELECT 'C2', 'candour', 'noun', '/ˈkændə(r)/', 'sự thẳng thắn' FROM DUAL
UNION ALL SELECT 'C2', 'capitulate', 'verb', '/kəˈpɪtʃuleɪt/', 'đầu hàng' FROM DUAL
UNION ALL SELECT 'C2', 'capricious', 'adjective', '/kəˈprɪʃəs/', 'thất thường' FROM DUAL
UNION ALL SELECT 'C2', 'captivate', 'verb', '/ˈkæptɪveɪt/', 'quyến rũ, thu hút' FROM DUAL
UNION ALL SELECT 'C2', 'carnage', 'noun', '/ˈkɑːnɪdʒ/', 'cuộc tàn sát' FROM DUAL
UNION ALL SELECT 'C2', 'castigate', 'verb', '/ˈkæstɪɡeɪt/', 'trừng phạt, chỉ trích nghiêm khắc' FROM DUAL
UNION ALL SELECT 'C2', 'cataclysm', 'noun', '/ˈkætəklɪzəm/', 'đại biến cố' FROM DUAL
UNION ALL SELECT 'C2', 'caustic', 'adjective', '/ˈkɔːstɪk/', 'ăn da, châm chọc' FROM DUAL
UNION ALL SELECT 'C2', 'cavalier', 'adjective', '/ˌkævəˈlɪə(r)/', 'ung dung, coi thường' FROM DUAL
UNION ALL SELECT 'C2', 'cede', 'verb', '/siːd/', 'nhượng lại' FROM DUAL
UNION ALL SELECT 'C2', 'censure', 'noun', '/ˈsenʃə(r)/', 'sự chỉ trích' FROM DUAL
UNION ALL SELECT 'C2', 'cerebral', 'adjective', '/səˈriːbrəl/', 'thuộc não, trí óc' FROM DUAL
UNION ALL SELECT 'C2', 'charisma', 'noun', '/kəˈrɪzmə/', 'sức hút cá nhân' FROM DUAL
UNION ALL SELECT 'C2', 'charlatan', 'noun', '/ˈʃɑːlətən/', 'kẻ bịp bợm' FROM DUAL
UNION ALL SELECT 'C2', 'chastise', 'verb', '/tʃæˈstaɪz/', 'trách phạt' FROM DUAL
UNION ALL SELECT 'C2', 'cherish', 'verb', '/ˈtʃerɪʃ/', 'trân trọng' FROM DUAL
UNION ALL SELECT 'C2', 'chivalry', 'noun', '/ˈʃɪvəlri/', 'tinh thần hiệp sĩ' FROM DUAL
UNION ALL SELECT 'C2', 'chronicle', 'noun', '/ˈkrɒnɪkl/', 'biên niên sử' FROM DUAL
UNION ALL SELECT 'C2', 'circumvent', 'verb', '/ˌsɜːkəmˈvent/', 'lách, tránh né' FROM DUAL
UNION ALL SELECT 'C2', 'clairvoyant', 'adjective', '/kleəˈvɔɪənt/', 'có khả năng thấu thị' FROM DUAL
UNION ALL SELECT 'C2', 'clamour', 'noun', '/ˈklæmə(r)/', 'tiếng la ó, đòi hỏi' FROM DUAL
UNION ALL SELECT 'C2', 'clandestine', 'adjective', '/klænˈdestɪn/', 'bí mật, lén lút' FROM DUAL
UNION ALL SELECT 'C2', 'clemency', 'noun', '/ˈklemənsi/', 'lòng khoan dung' FROM DUAL
UNION ALL SELECT 'C2', 'coerce', 'verb', '/kəʊˈɜːs/', 'ép buộc' FROM DUAL
UNION ALL SELECT 'C2', 'cogent', 'adjective', '/ˈkəʊdʒənt/', 'có sức thuyết phục' FROM DUAL
UNION ALL SELECT 'C2', 'cognizant', 'adjective', '/ˈkɒɡnɪzənt/', 'nhận thức được' FROM DUAL
UNION ALL SELECT 'C2', 'coherence', 'noun', '/kəʊˈhɪərəns/', 'sự mạch lạc' FROM DUAL
UNION ALL SELECT 'C2', 'cohesion', 'noun', '/kəʊˈhiːʒn/', 'sự gắn kết' FROM DUAL
UNION ALL SELECT 'C2', 'collateral', 'noun', '/kəˈlætərəl/', 'tài sản thế chấp' FROM DUAL
UNION ALL SELECT 'C2', 'collude', 'verb', '/kəˈluːd/', 'thông đồng' FROM DUAL
UNION ALL SELECT 'C2', 'colloquial', 'adjective', '/kəˈləʊkwiəl/', 'thông tục' FROM DUAL
UNION ALL SELECT 'C2', 'commemorate', 'verb', '/kəˈmeməreɪt/', 'tưởng niệm' FROM DUAL
UNION ALL SELECT 'C2', 'commendable', 'adjective', '/kəˈmendəbl/', 'đáng khen' FROM DUAL
UNION ALL SELECT 'C2', 'commensurate', 'adjective', '/kəˈmenʃərət/', 'tương xứng' FROM DUAL
UNION ALL SELECT 'C2', 'complacent', 'adjective', '/kəmˈpleɪsnt/', 'tự mãn' FROM DUAL
UNION ALL SELECT 'C2', 'compliant', 'adjective', '/kəmˈplaɪənt/', 'tuân thủ, phục tùng' FROM DUAL
UNION ALL SELECT 'C2', 'comprehensible', 'adjective', '/ˌkɒmprɪˈhensəbl/', 'có thể hiểu được' FROM DUAL
UNION ALL SELECT 'C2', 'concise', 'adjective', '/kənˈsaɪs/', 'súc tích' FROM DUAL
UNION ALL SELECT 'C2', 'concoct', 'verb', '/kənˈkɒkt/', 'pha chế, bịa đặt' FROM DUAL
UNION ALL SELECT 'C2', 'concur', 'verb', '/kənˈkɜː(r)/', 'đồng ý' FROM DUAL
UNION ALL SELECT 'C2', 'condescending', 'adjective', '/ˌkɒndɪˈsendɪŋ/', 'kẻ cả, trịch thượng' FROM DUAL
UNION ALL SELECT 'C2', 'condone', 'verb', '/kənˈdəʊn/', 'bỏ qua, dung túng' FROM DUAL
UNION ALL SELECT 'C2', 'conducive', 'adjective', '/kənˈdjuːsɪv/', 'có lợi cho' FROM DUAL
UNION ALL SELECT 'C2', 'confide', 'verb', '/kənˈfaɪd/', 'tâm sự' FROM DUAL
UNION ALL SELECT 'C2', 'conformity', 'noun', '/kənˈfɔːməti/', 'sự tuân thủ' FROM DUAL
UNION ALL SELECT 'C2', 'congenial', 'adjective', '/kənˈdʒiːniəl/', 'hợp tính, dễ chịu' FROM DUAL
UNION ALL SELECT 'C2', 'conjecture', 'noun', '/kənˈdʒektʃə(r)/', 'sự phỏng đoán' FROM DUAL
UNION ALL SELECT 'C2', 'connoisseur', 'noun', '/ˌkɒnəˈsɜː(r)/', 'người sành sỏi' FROM DUAL
UNION ALL SELECT 'C2', 'connotation', 'noun', '/ˌkɒnəˈteɪʃn/', 'hàm ý' FROM DUAL
UNION ALL SELECT 'C2', 'conscientious', 'adjective', '/ˌkɒnʃiˈenʃəs/', 'tận tâm' FROM DUAL
UNION ALL SELECT 'C2', 'consign', 'verb', '/kənˈsaɪn/', 'gửi, giao phó' FROM DUAL
UNION ALL SELECT 'C2', 'conspicuous', 'adjective', '/kənˈspɪkjuəs/', 'dễ thấy, nổi bật' FROM DUAL
UNION ALL SELECT 'C2', 'conspiracy', 'noun', '/kənˈspɪrəsi/', 'âm mưu' FROM DUAL
UNION ALL SELECT 'C2', 'consternation', 'noun', '/ˌkɒnstəˈneɪʃn/', 'sự kinh hoàng' FROM DUAL
UNION ALL SELECT 'C2', 'constituent', 'noun', '/kənˈstɪtjuənt/', 'thành phần, cử tri' FROM DUAL
UNION ALL SELECT 'C2', 'construe', 'verb', '/kənˈstruː/', 'hiểu, giải thích' FROM DUAL
UNION ALL SELECT 'C2', 'contagious', 'adjective', '/kənˈteɪdʒəs/', 'lây nhiễm' FROM DUAL
UNION ALL SELECT 'C2', 'contemptuous', 'adjective', '/kənˈtemptʃuəs/', 'khinh miệt' FROM DUAL
UNION ALL SELECT 'C2', 'contentious', 'adjective', '/kənˈtenʃəs/', 'gây tranh cãi' FROM DUAL
UNION ALL SELECT 'C2', 'contingency', 'noun', '/kənˈtɪndʒənsi/', 'tình huống bất ngờ' FROM DUAL
UNION ALL SELECT 'C2', 'contingent', 'adjective', '/kənˈtɪndʒənt/', 'phụ thuộc vào' FROM DUAL
UNION ALL SELECT 'C2', 'contrite', 'adjective', '/kənˈtraɪt/', 'ăn năn' FROM DUAL
UNION ALL SELECT 'C2', 'conundrum', 'noun', '/kəˈnʌndrəm/', 'câu hỏi hóc búa' FROM DUAL
UNION ALL SELECT 'C2', 'convene', 'verb', '/kənˈviːn/', 'triệu tập' FROM DUAL
UNION ALL SELECT 'C2', 'conversely', 'adverb', '/ˈkɒnvɜːsli/', 'ngược lại' FROM DUAL
UNION ALL SELECT 'C2', 'convoluted', 'adjective', '/ˈkɒnvəluːtɪd/', 'rắc rối, phức tạp' FROM DUAL
UNION ALL SELECT 'C2', 'copious', 'adjective', '/ˈkəʊpiəs/', 'dồi dào' FROM DUAL
UNION ALL SELECT 'C2', 'cordial', 'adjective', '/ˈkɔːdiəl/', 'thân mật, chân thành' FROM DUAL
UNION ALL SELECT 'C2', 'corollary', 'noun', '/kəˈrɒləri/', 'hệ quả' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C2', 'corroborate', 'verb', '/kəˈrɒbəreɪt/', 'chứng thực' FROM DUAL
UNION ALL SELECT 'C2', 'covert', 'adjective', '/ˈkʌvət/', 'bí mật' FROM DUAL
UNION ALL SELECT 'C2', 'covet', 'verb', '/ˈkʌvət/', 'thèm muốn' FROM DUAL
UNION ALL SELECT 'C2', 'credence', 'noun', '/ˈkriːdns/', 'sự tin tưởng' FROM DUAL
UNION ALL SELECT 'C2', 'credulous', 'adjective', '/ˈkredjələs/', 'cả tin' FROM DUAL
UNION ALL SELECT 'C2', 'cryptic', 'adjective', '/ˈkrɪptɪk/', 'khó hiểu, bí ẩn' FROM DUAL
UNION ALL SELECT 'C2', 'culminate', 'verb', '/ˈkʌlmɪneɪt/', 'lên đến đỉnh điểm' FROM DUAL
UNION ALL SELECT 'C2', 'culpable', 'adjective', '/ˈkʌlpəbl/', 'có tội, đáng trách' FROM DUAL
UNION ALL SELECT 'C2', 'culprit', 'noun', '/ˈkʌlprɪt/', 'thủ phạm' FROM DUAL
UNION ALL SELECT 'C2', 'cumbersome', 'adjective', '/ˈkʌmbəsəm/', 'cồng kềnh' FROM DUAL
UNION ALL SELECT 'C2', 'cursory', 'adjective', '/ˈkɜːsəri/', 'qua loa, vội vàng' FROM DUAL
UNION ALL SELECT 'C2', 'curtail', 'verb', '/kɜːˈteɪl/', 'cắt bớt' FROM DUAL
UNION ALL SELECT 'C2', 'dearth', 'noun', '/dɜːθ/', 'sự khan hiếm' FROM DUAL
UNION ALL SELECT 'C2', 'debacle', 'noun', '/deɪˈbɑːkl/', 'thất bại thảm hại' FROM DUAL
UNION ALL SELECT 'C2', 'debilitating', 'adjective', '/dɪˈbɪlɪteɪtɪŋ/', 'làm suy nhược' FROM DUAL
UNION ALL SELECT 'C2', 'decadent', 'adjective', '/ˈdekədənt/', 'suy đồi' FROM DUAL
UNION ALL SELECT 'C2', 'decimate', 'verb', '/ˈdesɪmeɪt/', 'tàn sát, làm giảm mạnh' FROM DUAL
UNION ALL SELECT 'C2', 'decipher', 'verb', '/dɪˈsaɪfə(r)/', 'giải mã' FROM DUAL
UNION ALL SELECT 'C2', 'decorum', 'noun', '/dɪˈkɔːrəm/', 'sự đúng mực' FROM DUAL
UNION ALL SELECT 'C2', 'decree', 'noun', '/dɪˈkriː/', 'sắc lệnh' FROM DUAL
UNION ALL SELECT 'C2', 'deference', 'noun', '/ˈdefərəns/', 'sự tôn trọng' FROM DUAL
UNION ALL SELECT 'C2', 'defiance', 'noun', '/dɪˈfaɪəns/', 'sự thách thức, chống đối' FROM DUAL
UNION ALL SELECT 'C2', 'defiant', 'adjective', '/dɪˈfaɪənt/', 'bất chấp, ngang ngạnh' FROM DUAL
UNION ALL SELECT 'C2', 'deft', 'adjective', '/deft/', 'khéo léo' FROM DUAL
UNION ALL SELECT 'C2', 'defunct', 'adjective', '/dɪˈfʌŋkt/', 'không còn tồn tại' FROM DUAL
UNION ALL SELECT 'C2', 'delineate', 'verb', '/dɪˈlɪnieɪt/', 'vạch ra, mô tả' FROM DUAL
UNION ALL SELECT 'C2', 'delude', 'verb', '/dɪˈluːd/', 'lừa dối' FROM DUAL
UNION ALL SELECT 'C2', 'deluge', 'noun', '/ˈdeljuːdʒ/', 'trận lụt, sự dồn dập' FROM DUAL
UNION ALL SELECT 'C2', 'delusion', 'noun', '/dɪˈluːʒn/', 'ảo tưởng' FROM DUAL
UNION ALL SELECT 'C2', 'demeanour', 'noun', '/dɪˈmiːnə(r)/', 'thái độ, phong thái' FROM DUAL
UNION ALL SELECT 'C2', 'demise', 'noun', '/dɪˈmaɪz/', 'sự sụp đổ, cái chết' FROM DUAL
UNION ALL SELECT 'C2', 'demure', 'adjective', '/dɪˈmjʊə(r)/', 'e lệ' FROM DUAL
UNION ALL SELECT 'C2', 'denigrate', 'verb', '/ˈdenɪɡreɪt/', 'bôi nhọ' FROM DUAL
UNION ALL SELECT 'C2', 'deplete', 'verb', '/dɪˈpliːt/', 'làm cạn kiệt' FROM DUAL
UNION ALL SELECT 'C2', 'deplorable', 'adjective', '/dɪˈplɔːrəbl/', 'đáng trách, tồi tệ' FROM DUAL
UNION ALL SELECT 'C2', 'deplore', 'verb', '/dɪˈplɔː(r)/', 'phản đối, lấy làm tiếc' FROM DUAL
UNION ALL SELECT 'C2', 'deride', 'verb', '/dɪˈraɪd/', 'chế giễu' FROM DUAL
UNION ALL SELECT 'C2', 'derogatory', 'adjective', '/dɪˈrɒɡətri/', 'xúc phạm, miệt thị' FROM DUAL
UNION ALL SELECT 'C2', 'desecrate', 'verb', '/ˈdesɪkreɪt/', 'xúc phạm (nơi thiêng liêng)' FROM DUAL
UNION ALL SELECT 'C2', 'desolate', 'adjective', '/ˈdesələt/', 'hoang vắng' FROM DUAL
UNION ALL SELECT 'C2', 'despondent', 'adjective', '/dɪˈspɒndənt/', 'chán nản' FROM DUAL
UNION ALL SELECT 'C2', 'destitute', 'adjective', '/ˈdestɪtjuːt/', 'nghèo túng' FROM DUAL
UNION ALL SELECT 'C2', 'deter', 'verb', '/dɪˈtɜː(r)/', 'ngăn cản' FROM DUAL
UNION ALL SELECT 'C2', 'deterrent', 'noun', '/dɪˈterənt/', 'biện pháp ngăn chặn' FROM DUAL
UNION ALL SELECT 'C2', 'detrimental', 'adjective', '/ˌdetrɪˈmentl/', 'có hại' FROM DUAL
UNION ALL SELECT 'C2', 'devious', 'adjective', '/ˈdiːviəs/', 'quanh co, xảo trá' FROM DUAL
UNION ALL SELECT 'C2', 'devoid', 'adjective', '/dɪˈvɔɪd/', 'không có, thiếu' FROM DUAL
UNION ALL SELECT 'C2', 'dexterity', 'noun', '/dekˈsterəti/', 'sự khéo tay' FROM DUAL
UNION ALL SELECT 'C2', 'diatribe', 'noun', '/ˈdaɪətraɪb/', 'bài công kích' FROM DUAL
UNION ALL SELECT 'C2', 'dichotomy', 'noun', '/daɪˈkɒtəmi/', 'sự phân đôi' FROM DUAL
UNION ALL SELECT 'C2', 'didactic', 'adjective', '/daɪˈdæktɪk/', 'mang tính giáo huấn' FROM DUAL
UNION ALL SELECT 'C2', 'diffident', 'adjective', '/ˈdɪfɪdənt/', 'rụt rè, thiếu tự tin' FROM DUAL
UNION ALL SELECT 'C2', 'digress', 'verb', '/daɪˈɡres/', 'lạc đề' FROM DUAL
UNION ALL SELECT 'C2', 'dilapidated', 'adjective', '/dɪˈlæpɪdeɪtɪd/', 'đổ nát' FROM DUAL
UNION ALL SELECT 'C2', 'diligent', 'adjective', '/ˈdɪlɪdʒənt/', 'siêng năng' FROM DUAL
UNION ALL SELECT 'C2', 'dire', 'adjective', '/ˈdaɪə(r)/', 'thảm khốc, cấp bách' FROM DUAL
UNION ALL SELECT 'C2', 'discern', 'verb', '/dɪˈsɜːn/', 'nhận thức, phân biệt' FROM DUAL
UNION ALL SELECT 'C2', 'discerning', 'adjective', '/dɪˈsɜːnɪŋ/', 'sáng suốt' FROM DUAL
UNION ALL SELECT 'C2', 'disconcerting', 'adjective', '/ˌdɪskənˈsɜːtɪŋ/', 'gây bối rối' FROM DUAL
UNION ALL SELECT 'C2', 'discord', 'noun', '/ˈdɪskɔːd/', 'sự bất hòa' FROM DUAL
UNION ALL SELECT 'C2', 'discrepancy', 'noun', '/dɪsˈkrepənsi/', 'sự khác biệt, chênh lệch' FROM DUAL
UNION ALL SELECT 'C2', 'disdain', 'noun', '/dɪsˈdeɪn/', 'sự khinh thị' FROM DUAL
UNION ALL SELECT 'C2', 'disgruntled', 'adjective', '/dɪsˈɡrʌntld/', 'bất mãn' FROM DUAL
UNION ALL SELECT 'C2', 'disillusioned', 'adjective', '/ˌdɪsɪˈluːʒnd/', 'vỡ mộng' FROM DUAL
UNION ALL SELECT 'C2', 'disingenuous', 'adjective', '/ˌdɪsɪnˈdʒenjuəs/', 'không thành thật' FROM DUAL
UNION ALL SELECT 'C2', 'disparage', 'verb', '/dɪˈspærɪdʒ/', 'chê bai' FROM DUAL
UNION ALL SELECT 'C2', 'disparate', 'adjective', '/ˈdɪspərət/', 'khác biệt hoàn toàn' FROM DUAL
UNION ALL SELECT 'C2', 'disparity', 'noun', '/dɪˈspærəti/', 'sự chênh lệch' FROM DUAL
UNION ALL SELECT 'C2', 'dispel', 'verb', '/dɪˈspel/', 'xua tan' FROM DUAL
UNION ALL SELECT 'C2', 'disperse', 'verb', '/dɪˈspɜːs/', 'giải tán, phân tán' FROM DUAL
UNION ALL SELECT 'C2', 'disposition', 'noun', '/ˌdɪspəˈzɪʃn/', 'tính khí, khuynh hướng' FROM DUAL
UNION ALL SELECT 'C2', 'disseminate', 'verb', '/dɪˈsemɪneɪt/', 'phổ biến, gieo rắc' FROM DUAL
UNION ALL SELECT 'C2', 'dissent', 'noun', '/dɪˈsent/', 'sự bất đồng' FROM DUAL
UNION ALL SELECT 'C2', 'dissipate', 'verb', '/ˈdɪsɪpeɪt/', 'tiêu tan, phung phí' FROM DUAL
UNION ALL SELECT 'C2', 'dissuade', 'verb', '/dɪˈsweɪd/', 'can ngăn' FROM DUAL
UNION ALL SELECT 'C2', 'distraught', 'adjective', '/dɪˈstrɔːt/', 'quẫn trí' FROM DUAL
UNION ALL SELECT 'C2', 'divergent', 'adjective', '/daɪˈvɜːdʒənt/', 'khác nhau, phân kỳ' FROM DUAL
UNION ALL SELECT 'C2', 'divulge', 'verb', '/daɪˈvʌldʒ/', 'tiết lộ' FROM DUAL
UNION ALL SELECT 'C2', 'docile', 'adjective', '/ˈdəʊsaɪl/', 'ngoan ngoãn, dễ bảo' FROM DUAL
UNION ALL SELECT 'C2', 'dogmatic', 'adjective', '/dɒɡˈmætɪk/', 'giáo điều' FROM DUAL
UNION ALL SELECT 'C2', 'dormant', 'adjective', '/ˈdɔːmənt/', 'ngủ yên, tiềm tàng' FROM DUAL
UNION ALL SELECT 'C2', 'dubious', 'adjective', '/ˈdjuːbiəs/', 'đáng ngờ' FROM DUAL
UNION ALL SELECT 'C2', 'duplicity', 'noun', '/djuːˈplɪsəti/', 'sự lá mặt lá trái' FROM DUAL
UNION ALL SELECT 'C2', 'duress', 'noun', '/djuˈres/', 'sự cưỡng ép' FROM DUAL
UNION ALL SELECT 'C2', 'dwindle', 'verb', '/ˈdwɪndl/', 'thu nhỏ dần' FROM DUAL
UNION ALL SELECT 'C2', 'ebb', 'verb', '/eb/', 'rút xuống, suy giảm' FROM DUAL
UNION ALL SELECT 'C2', 'eccentric', 'adjective', '/ɪkˈsentrɪk/', 'lập dị' FROM DUAL
UNION ALL SELECT 'C2', 'eclectic', 'adjective', '/ɪˈklektɪk/', 'chiết trung, đa dạng' FROM DUAL
UNION ALL SELECT 'C2', 'eclipse', 'verb', '/ɪˈklɪps/', 'làm lu mờ' FROM DUAL
UNION ALL SELECT 'C2', 'edifice', 'noun', '/ˈedɪfɪs/', 'tòa nhà lớn, hệ thống' FROM DUAL
UNION ALL SELECT 'C2', 'efficacy', 'noun', '/ˈefɪkəsi/', 'hiệu quả' FROM DUAL
UNION ALL SELECT 'C2', 'effusive', 'adjective', '/ɪˈfjuːsɪv/', 'dạt dào, thổ lộ' FROM DUAL
UNION ALL SELECT 'C2', 'egalitarian', 'adjective', '/iˌɡælɪˈteəriən/', 'theo chủ nghĩa bình đẳng' FROM DUAL
UNION ALL SELECT 'C2', 'egregious', 'adjective', '/ɪˈɡriːdʒiəs/', 'quá mức, trắng trợn' FROM DUAL
UNION ALL SELECT 'C2', 'elaborate', 'verb', '/ɪˈlæbəreɪt/', 'trình bày chi tiết' FROM DUAL
UNION ALL SELECT 'C2', 'elated', 'adjective', '/iˈleɪtɪd/', 'phấn khởi' FROM DUAL
UNION ALL SELECT 'C2', 'elicit', 'verb', '/iˈlɪsɪt/', 'gợi ra, khai thác' FROM DUAL
UNION ALL SELECT 'C2', 'eloquent', 'adjective', '/ˈeləkwənt/', 'hùng hồn' FROM DUAL
UNION ALL SELECT 'C2', 'elucidate', 'verb', '/iˈluːsɪdeɪt/', 'làm sáng tỏ' FROM DUAL
UNION ALL SELECT 'C2', 'elusive', 'adjective', '/iˈluːsɪv/', 'khó nắm bắt' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C2', 'emaciated', 'adjective', '/ɪˈmeɪsieɪtɪd/', 'gầy gò hốc hác' FROM DUAL
UNION ALL SELECT 'C2', 'emanate', 'verb', '/ˈeməneɪt/', 'tỏa ra' FROM DUAL
UNION ALL SELECT 'C2', 'emancipation', 'noun', '/ɪˌmænsɪˈpeɪʃn/', 'sự giải phóng' FROM DUAL
UNION ALL SELECT 'C2', 'embargo', 'noun', '/ɪmˈbɑːɡəʊ/', 'lệnh cấm vận' FROM DUAL
UNION ALL SELECT 'C2', 'embellish', 'verb', '/ɪmˈbelɪʃ/', 'tô điểm, thêm thắt' FROM DUAL
UNION ALL SELECT 'C2', 'embezzle', 'verb', '/ɪmˈbezl/', 'biển thủ' FROM DUAL
UNION ALL SELECT 'C2', 'embroil', 'verb', '/ɪmˈbrɔɪl/', 'lôi kéo vào' FROM DUAL
UNION ALL SELECT 'C2', 'eminent', 'adjective', '/ˈemɪnənt/', 'xuất chúng' FROM DUAL
UNION ALL SELECT 'C2', 'empathy', 'noun', '/ˈempəθi/', 'sự thấu cảm' FROM DUAL
UNION ALL SELECT 'C2', 'emulate', 'verb', '/ˈemjuleɪt/', 'noi gương, mô phỏng' FROM DUAL
UNION ALL SELECT 'C2', 'encroach', 'verb', '/ɪnˈkrəʊtʃ/', 'xâm lấn' FROM DUAL
UNION ALL SELECT 'C2', 'endemic', 'adjective', '/enˈdemɪk/', 'đặc hữu, phổ biến ở vùng' FROM DUAL
UNION ALL SELECT 'C2', 'enigma', 'noun', '/ɪˈnɪɡmə/', 'điều bí ẩn' FROM DUAL
UNION ALL SELECT 'C2', 'enigmatic', 'adjective', '/ˌenɪɡˈmætɪk/', 'bí ẩn' FROM DUAL
UNION ALL SELECT 'C2', 'enmity', 'noun', '/ˈenməti/', 'sự thù hận' FROM DUAL
UNION ALL SELECT 'C2', 'ensue', 'verb', '/ɪnˈsjuː/', 'xảy ra sau đó' FROM DUAL
UNION ALL SELECT 'C2', 'entail', 'verb', '/ɪnˈteɪl/', 'đòi hỏi, kéo theo' FROM DUAL
UNION ALL SELECT 'C2', 'entice', 'verb', '/ɪnˈtaɪs/', 'dụ dỗ' FROM DUAL
UNION ALL SELECT 'C2', 'entrenched', 'adjective', '/ɪnˈtrentʃt/', 'cố thủ, ăn sâu' FROM DUAL
UNION ALL SELECT 'C2', 'enumerate', 'verb', '/ɪˈnjuːməreɪt/', 'liệt kê' FROM DUAL
UNION ALL SELECT 'C2', 'ephemeral', 'adjective', '/ɪˈfemərəl/', 'phù du, ngắn ngủi' FROM DUAL
UNION ALL SELECT 'C2', 'epitome', 'noun', '/ɪˈpɪtəmi/', 'hình mẫu thu nhỏ' FROM DUAL
UNION ALL SELECT 'C2', 'equanimity', 'noun', '/ˌekwəˈnɪməti/', 'sự điềm tĩnh' FROM DUAL
UNION ALL SELECT 'C2', 'equitable', 'adjective', '/ˈekwɪtəbl/', 'công bằng' FROM DUAL
UNION ALL SELECT 'C2', 'eradicate', 'verb', '/ɪˈrædɪkeɪt/', 'xóa bỏ, diệt trừ' FROM DUAL
UNION ALL SELECT 'C2', 'erode', 'verb', '/ɪˈrəʊd/', 'xói mòn' FROM DUAL
UNION ALL SELECT 'C2', 'erratic', 'adjective', '/ɪˈrætɪk/', 'thất thường' FROM DUAL
UNION ALL SELECT 'C2', 'erroneous', 'adjective', '/ɪˈrəʊniəs/', 'sai lầm' FROM DUAL
UNION ALL SELECT 'C2', 'erudite', 'adjective', '/ˈerudaɪt/', 'uyên bác' FROM DUAL
UNION ALL SELECT 'C2', 'esoteric', 'adjective', '/ˌesəˈterɪk/', 'bí truyền, khó hiểu' FROM DUAL
UNION ALL SELECT 'C2', 'espouse', 'verb', '/ɪˈspaʊz/', 'tán thành, theo' FROM DUAL
UNION ALL SELECT 'C2', 'estrange', 'verb', '/ɪˈstreɪndʒ/', 'làm xa lánh' FROM DUAL
UNION ALL SELECT 'C2', 'euphemism', 'noun', '/ˈjuːfəmɪzəm/', 'uyển ngữ' FROM DUAL
UNION ALL SELECT 'C2', 'euphoria', 'noun', '/juːˈfɔːriə/', 'sự hưng phấn' FROM DUAL
UNION ALL SELECT 'C2', 'evade', 'verb', '/ɪˈveɪd/', 'lẩn tránh' FROM DUAL
UNION ALL SELECT 'C2', 'evasive', 'adjective', '/ɪˈveɪsɪv/', 'lảng tránh' FROM DUAL
UNION ALL SELECT 'C2', 'exacerbate', 'verb', '/ɪɡˈzæsəbeɪt/', 'làm trầm trọng thêm' FROM DUAL
UNION ALL SELECT 'C2', 'exasperate', 'verb', '/ɪɡˈzæspəreɪt/', 'làm bực tức' FROM DUAL
UNION ALL SELECT 'C2', 'exemplary', 'adjective', '/ɪɡˈzempləri/', 'gương mẫu' FROM DUAL
UNION ALL SELECT 'C2', 'exemplify', 'verb', '/ɪɡˈzemplɪfaɪ/', 'minh họa, làm ví dụ' FROM DUAL
UNION ALL SELECT 'C2', 'exempt', 'adjective', '/ɪɡˈzempt/', 'được miễn' FROM DUAL
UNION ALL SELECT 'C2', 'exhaustive', 'adjective', '/ɪɡˈzɔːstɪv/', 'toàn diện, đầy đủ' FROM DUAL
UNION ALL SELECT 'C2', 'exhilarating', 'adjective', '/ɪɡˈzɪləreɪtɪŋ/', 'làm phấn chấn' FROM DUAL
UNION ALL SELECT 'C2', 'exonerate', 'verb', '/ɪɡˈzɒnəreɪt/', 'minh oan' FROM DUAL
UNION ALL SELECT 'C2', 'exorbitant', 'adjective', '/ɪɡˈzɔːbɪtənt/', 'cắt cổ (giá)' FROM DUAL
UNION ALL SELECT 'C2', 'expedient', 'adjective', '/ɪkˈspiːdiənt/', 'có lợi, thiết thực' FROM DUAL
UNION ALL SELECT 'C2', 'expedite', 'verb', '/ˈekspədaɪt/', 'xúc tiến' FROM DUAL
UNION ALL SELECT 'C2', 'explicate', 'verb', '/ˈeksplɪkeɪt/', 'giải thích chi tiết' FROM DUAL
UNION ALL SELECT 'C2', 'expound', 'verb', '/ɪkˈspaʊnd/', 'trình bày, giải thích' FROM DUAL
UNION ALL SELECT 'C2', 'expunge', 'verb', '/ɪkˈspʌndʒ/', 'xóa bỏ' FROM DUAL
UNION ALL SELECT 'C2', 'extol', 'verb', '/ɪkˈstəʊl/', 'tán dương' FROM DUAL
UNION ALL SELECT 'C2', 'extort', 'verb', '/ɪkˈstɔːt/', 'tống tiền' FROM DUAL
UNION ALL SELECT 'C2', 'extraneous', 'adjective', '/ɪkˈstreɪniəs/', 'không liên quan' FROM DUAL
UNION ALL SELECT 'C2', 'extrapolate', 'verb', '/ɪkˈstræpəleɪt/', 'ngoại suy' FROM DUAL
UNION ALL SELECT 'C2', 'exuberant', 'adjective', '/ɪɡˈzjuːbərənt/', 'hồ hởi, sum suê' FROM DUAL
UNION ALL SELECT 'C2', 'fabricate', 'verb', '/ˈfæbrɪkeɪt/', 'bịa đặt, chế tạo' FROM DUAL
UNION ALL SELECT 'C2', 'facade', 'noun', '/fəˈsɑːd/', 'mặt tiền, vẻ bề ngoài' FROM DUAL
UNION ALL SELECT 'C2', 'facetious', 'adjective', '/fəˈsiːʃəs/', 'bông đùa không đúng lúc' FROM DUAL
UNION ALL SELECT 'C2', 'fallacy', 'noun', '/ˈfæləsi/', 'ngụy biện, quan niệm sai' FROM DUAL
UNION ALL SELECT 'C2', 'fallible', 'adjective', '/ˈfæləbl/', 'có thể sai' FROM DUAL
UNION ALL SELECT 'C2', 'falter', 'verb', '/ˈfɔːltə(r)/', 'chùn bước, ấp úng' FROM DUAL
UNION ALL SELECT 'C2', 'fanatic', 'noun', '/fəˈnætɪk/', 'người cuồng tín' FROM DUAL
UNION ALL SELECT 'C2', 'fastidious', 'adjective', '/fæˈstɪdiəs/', 'khó tính, kỹ lưỡng' FROM DUAL
UNION ALL SELECT 'C2', 'fathom', 'verb', '/ˈfæðəm/', 'hiểu thấu' FROM DUAL
UNION ALL SELECT 'C2', 'fatigue', 'noun', '/fəˈtiːɡ/', 'sự mệt mỏi' FROM DUAL
UNION ALL SELECT 'C2', 'feasibility', 'noun', '/ˌfiːzəˈbɪləti/', 'tính khả thi' FROM DUAL
UNION ALL SELECT 'C2', 'fecund', 'adjective', '/ˈfekənd/', 'màu mỡ, phong phú' FROM DUAL
UNION ALL SELECT 'C2', 'feign', 'verb', '/feɪn/', 'giả vờ' FROM DUAL
UNION ALL SELECT 'C2', 'fervent', 'adjective', '/ˈfɜːvənt/', 'nhiệt thành' FROM DUAL
UNION ALL SELECT 'C2', 'fickle', 'adjective', '/ˈfɪkl/', 'hay thay đổi' FROM DUAL
UNION ALL SELECT 'C2', 'figurative', 'adjective', '/ˈfɪɡərətɪv/', 'theo nghĩa bóng' FROM DUAL
UNION ALL SELECT 'C2', 'finesse', 'noun', '/fɪˈnes/', 'sự khéo léo' FROM DUAL
UNION ALL SELECT 'C2', 'flagrant', 'adjective', '/ˈfleɪɡrənt/', 'trắng trợn' FROM DUAL
UNION ALL SELECT 'C2', 'flamboyant', 'adjective', '/flæmˈbɔɪənt/', 'lòe loẹt, phô trương' FROM DUAL
UNION ALL SELECT 'C2', 'flaunt', 'verb', '/flɔːnt/', 'khoe khoang' FROM DUAL
UNION ALL SELECT 'C2', 'fledgling', 'adjective', '/ˈfledʒlɪŋ/', 'non trẻ, mới thành lập' FROM DUAL
UNION ALL SELECT 'C2', 'flippant', 'adjective', '/ˈflɪpənt/', 'xấc xược, khinh suất' FROM DUAL
UNION ALL SELECT 'C2', 'flounder', 'verb', '/ˈflaʊndə(r)/', 'lúng túng' FROM DUAL
UNION ALL SELECT 'C2', 'fluctuate', 'verb', '/ˈflʌktʃueɪt/', 'dao động' FROM DUAL
UNION ALL SELECT 'C2', 'foment', 'verb', '/fəʊˈment/', 'xúi giục' FROM DUAL
UNION ALL SELECT 'C2', 'forbearance', 'noun', '/fɔːˈbeərəns/', 'sự nhẫn nại' FROM DUAL
UNION ALL SELECT 'C2', 'foresee', 'verb', '/fɔːˈsiː/', 'thấy trước' FROM DUAL
UNION ALL SELECT 'C2', 'forfeit', 'verb', '/ˈfɔːfɪt/', 'mất quyền, bị tước' FROM DUAL
UNION ALL SELECT 'C2', 'forgo', 'verb', '/fɔːˈɡəʊ/', 'bỏ qua, từ bỏ' FROM DUAL
UNION ALL SELECT 'C2', 'formidable', 'adjective', '/ˈfɔːmɪdəbl/', 'ghê gớm, đáng gờm' FROM DUAL
UNION ALL SELECT 'C2', 'forthright', 'adjective', '/ˈfɔːθraɪt/', 'thẳng thắn' FROM DUAL
UNION ALL SELECT 'C2', 'fortitude', 'noun', '/ˈfɔːtɪtjuːd/', 'sự kiên cường' FROM DUAL
UNION ALL SELECT 'C2', 'fortuitous', 'adjective', '/fɔːˈtjuːɪtəs/', 'tình cờ, may mắn' FROM DUAL
UNION ALL SELECT 'C2', 'foster', 'adjective', '/ˈfɒstə(r)/', 'nuôi (con nuôi)' FROM DUAL
UNION ALL SELECT 'C2', 'fraught', 'adjective', '/frɔːt/', 'đầy (nguy hiểm), căng thẳng' FROM DUAL
UNION ALL SELECT 'C2', 'frenzy', 'noun', '/ˈfrenzi/', 'sự điên cuồng' FROM DUAL
UNION ALL SELECT 'C2', 'frivolous', 'adjective', '/ˈfrɪvələs/', 'phù phiếm' FROM DUAL
UNION ALL SELECT 'C2', 'frugal', 'adjective', '/ˈfruːɡl/', 'tiết kiệm' FROM DUAL
UNION ALL SELECT 'C2', 'futile', 'adjective', '/ˈfjuːtaɪl/', 'vô ích' FROM DUAL
UNION ALL SELECT 'C2', 'gallant', 'adjective', '/ˈɡælənt/', 'dũng cảm, hào hiệp' FROM DUAL
UNION ALL SELECT 'C2', 'galvanize', 'verb', '/ˈɡælvənaɪz/', 'kích thích, thúc đẩy' FROM DUAL
UNION ALL SELECT 'C2', 'garish', 'adjective', '/ˈɡeərɪʃ/', 'lòe loẹt' FROM DUAL
UNION ALL SELECT 'C2', 'garner', 'verb', '/ˈɡɑːnə(r)/', 'thu thập, giành được' FROM DUAL
UNION ALL SELECT 'C2', 'garrulous', 'adjective', '/ˈɡærələs/', 'lắm lời' FROM DUAL
UNION ALL SELECT 'C2', 'gauge', 'verb', '/ɡeɪdʒ/', 'đánh giá, đo' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C2', 'genial', 'adjective', '/ˈdʒiːniəl/', 'vui vẻ, ân cần' FROM DUAL
UNION ALL SELECT 'C2', 'gist', 'noun', '/dʒɪst/', 'ý chính' FROM DUAL
UNION ALL SELECT 'C2', 'glean', 'verb', '/ɡliːn/', 'thu lượm' FROM DUAL
UNION ALL SELECT 'C2', 'gloat', 'verb', '/ɡləʊt/', 'hả hê' FROM DUAL
UNION ALL SELECT 'C2', 'glutton', 'noun', '/ˈɡlʌtn/', 'kẻ tham ăn' FROM DUAL
UNION ALL SELECT 'C2', 'grandiose', 'adjective', '/ˈɡrændiəʊs/', 'khoa trương' FROM DUAL
UNION ALL SELECT 'C2', 'gratify', 'verb', '/ˈɡrætɪfaɪ/', 'làm hài lòng' FROM DUAL
UNION ALL SELECT 'C2', 'gratuitous', 'adjective', '/ɡrəˈtjuːɪtəs/', 'vô cớ' FROM DUAL
UNION ALL SELECT 'C2', 'gregarious', 'adjective', '/ɡrɪˈɡeəriəs/', 'thích giao du' FROM DUAL
UNION ALL SELECT 'C2', 'grievance', 'noun', '/ˈɡriːvəns/', 'sự bất bình' FROM DUAL
UNION ALL SELECT 'C2', 'grim', 'adjective', '/ɡrɪm/', 'nghiệt ngã, ảm đạm' FROM DUAL
UNION ALL SELECT 'C2', 'grotesque', 'adjective', '/ɡrəʊˈtesk/', 'kỳ cục, quái dị' FROM DUAL
UNION ALL SELECT 'C2', 'grudge', 'noun', '/ɡrʌdʒ/', 'mối hận thù' FROM DUAL
UNION ALL SELECT 'C2', 'gruelling', 'adjective', '/ˈɡruːəlɪŋ/', 'mệt nhoài' FROM DUAL
UNION ALL SELECT 'C2', 'gullible', 'adjective', '/ˈɡʌləbl/', 'cả tin' FROM DUAL
UNION ALL SELECT 'C2', 'hackneyed', 'adjective', '/ˈhæknid/', 'nhàm, sáo rỗng' FROM DUAL
UNION ALL SELECT 'C2', 'haggle', 'verb', '/ˈhæɡl/', 'mặc cả' FROM DUAL
UNION ALL SELECT 'C2', 'hamper', 'verb', '/ˈhæmpə(r)/', 'cản trở' FROM DUAL
UNION ALL SELECT 'C2', 'haphazard', 'adjective', '/hæpˈhæzəd/', 'bừa bãi, ngẫu nhiên' FROM DUAL
UNION ALL SELECT 'C2', 'harangue', 'verb', '/həˈræŋ/', 'diễn thuyết dài dòng' FROM DUAL
UNION ALL SELECT 'C2', 'harbinger', 'noun', '/ˈhɑːbɪndʒə(r)/', 'điềm báo' FROM DUAL
UNION ALL SELECT 'C2', 'harrowing', 'adjective', '/ˈhærəʊɪŋ/', 'đau lòng, kinh hoàng' FROM DUAL
UNION ALL SELECT 'C2', 'haughty', 'adjective', '/ˈhɔːti/', 'kiêu kỳ' FROM DUAL
UNION ALL SELECT 'C2', 'hedonism', 'noun', '/ˈhiːdənɪzəm/', 'chủ nghĩa khoái lạc' FROM DUAL
UNION ALL SELECT 'C2', 'heed', 'verb', '/hiːd/', 'chú ý, lưu tâm' FROM DUAL
UNION ALL SELECT 'C2', 'hegemony', 'noun', '/hɪˈdʒeməni/', 'bá quyền' FROM DUAL
UNION ALL SELECT 'C2', 'heinous', 'adjective', '/ˈheɪnəs/', 'tàn ác, ghê tởm' FROM DUAL
UNION ALL SELECT 'C2', 'heresy', 'noun', '/ˈherəsi/', 'dị giáo' FROM DUAL
UNION ALL SELECT 'C2', 'hiatus', 'noun', '/haɪˈeɪtəs/', 'sự gián đoạn' FROM DUAL
UNION ALL SELECT 'C2', 'hinder', 'verb', '/ˈhɪndə(r)/', 'cản trở' FROM DUAL
UNION ALL SELECT 'C2', 'hindrance', 'noun', '/ˈhɪndrəns/', 'sự cản trở' FROM DUAL
UNION ALL SELECT 'C2', 'hindsight', 'noun', '/ˈhaɪndsaɪt/', 'sự nhận thức muộn' FROM DUAL
UNION ALL SELECT 'C2', 'holistic', 'adjective', '/həʊˈlɪstɪk/', 'toàn diện' FROM DUAL
UNION ALL SELECT 'C2', 'homage', 'noun', '/ˈhɒmɪdʒ/', 'sự tôn kính' FROM DUAL
UNION ALL SELECT 'C2', 'homogeneous', 'adjective', '/ˌhɒməˈdʒiːniəs/', 'đồng nhất' FROM DUAL
UNION ALL SELECT 'C2', 'hostility', 'noun', '/hɒˈstɪləti/', 'sự thù địch' FROM DUAL
UNION ALL SELECT 'C2', 'hubris', 'noun', '/ˈhjuːbrɪs/', 'sự ngạo mạn' FROM DUAL
UNION ALL SELECT 'C2', 'humility', 'noun', '/hjuːˈmɪləti/', 'sự khiêm nhường' FROM DUAL
UNION ALL SELECT 'C2', 'hypocrisy', 'noun', '/hɪˈpɒkrəsi/', 'sự đạo đức giả' FROM DUAL
UNION ALL SELECT 'C2', 'hypocritical', 'adjective', '/ˌhɪpəˈkrɪtɪkl/', 'đạo đức giả' FROM DUAL
UNION ALL SELECT 'C2', 'hysteria', 'noun', '/hɪˈstɪəriə/', 'sự cuồng loạn' FROM DUAL
UNION ALL SELECT 'C2', 'iconoclast', 'noun', '/aɪˈkɒnəklæst/', 'người bài trừ tín ngưỡng, người chống truyền thống' FROM DUAL
UNION ALL SELECT 'C2', 'idiosyncrasy', 'noun', '/ˌɪdiəˈsɪŋkrəsi/', 'tính khí riêng, đặc tính' FROM DUAL
UNION ALL SELECT 'C2', 'idyllic', 'adjective', '/ɪˈdɪlɪk/', 'bình dị, thơ mộng' FROM DUAL
UNION ALL SELECT 'C2', 'ignominious', 'adjective', '/ˌɪɡnəˈmɪniəs/', 'nhục nhã' FROM DUAL
UNION ALL SELECT 'C2', 'illicit', 'adjective', '/ɪˈlɪsɪt/', 'bất hợp pháp, lén lút' FROM DUAL
UNION ALL SELECT 'C2', 'illustrious', 'adjective', '/ɪˈlʌstriəs/', 'lừng lẫy' FROM DUAL
UNION ALL SELECT 'C2', 'immaculate', 'adjective', '/ɪˈmækjələt/', 'tinh tươm, hoàn hảo' FROM DUAL
UNION ALL SELECT 'C2', 'imminence', 'noun', '/ˈɪmɪnəns/', 'sự sắp xảy ra' FROM DUAL
UNION ALL SELECT 'C2', 'impair', 'verb', '/ɪmˈpeə(r)/', 'làm suy yếu' FROM DUAL
UNION ALL SELECT 'C2', 'impartial', 'adjective', '/ɪmˈpɑːʃl/', 'công bằng, vô tư' FROM DUAL
UNION ALL SELECT 'C2', 'impasse', 'noun', '/ˈæmpɑːs/', 'thế bế tắc' FROM DUAL
UNION ALL SELECT 'C2', 'impeccable', 'adjective', '/ɪmˈpekəbl/', 'hoàn hảo' FROM DUAL
UNION ALL SELECT 'C2', 'impede', 'verb', '/ɪmˈpiːd/', 'cản trở' FROM DUAL
UNION ALL SELECT 'C2', 'impediment', 'noun', '/ɪmˈpedɪmənt/', 'trở ngại' FROM DUAL
UNION ALL SELECT 'C2', 'imperative', 'adjective', '/ɪmˈperətɪv/', 'cấp bách, bắt buộc' FROM DUAL
UNION ALL SELECT 'C2', 'imperceptible', 'adjective', '/ˌɪmpəˈseptəbl/', 'không thể nhận thấy' FROM DUAL
UNION ALL SELECT 'C2', 'imperious', 'adjective', '/ɪmˈpɪəriəs/', 'hống hách' FROM DUAL
UNION ALL SELECT 'C2', 'impervious', 'adjective', '/ɪmˈpɜːviəs/', 'không thấm, không bị ảnh hưởng' FROM DUAL
UNION ALL SELECT 'C2', 'impetuous', 'adjective', '/ɪmˈpetʃuəs/', 'hấp tấp' FROM DUAL
UNION ALL SELECT 'C2', 'impetus', 'noun', '/ˈɪmpɪtəs/', 'động lực' FROM DUAL
UNION ALL SELECT 'C2', 'implausible', 'adjective', '/ɪmˈplɔːzəbl/', 'khó tin' FROM DUAL
UNION ALL SELECT 'C2', 'implicit', 'adjective', '/ɪmˈplɪsɪt/', 'ngầm, ẩn ý' FROM DUAL
UNION ALL SELECT 'C2', 'impoverished', 'adjective', '/ɪmˈpɒvərɪʃt/', 'nghèo khó' FROM DUAL
UNION ALL SELECT 'C2', 'impromptu', 'adjective', '/ɪmˈprɒmptjuː/', 'ứng khẩu, ngẫu hứng' FROM DUAL
UNION ALL SELECT 'C2', 'impudent', 'adjective', '/ˈɪmpjədənt/', 'hỗn xược' FROM DUAL
UNION ALL SELECT 'C2', 'impulsive', 'adjective', '/ɪmˈpʌlsɪv/', 'bốc đồng' FROM DUAL
UNION ALL SELECT 'C2', 'inadvertent', 'adjective', '/ˌɪnədˈvɜːtənt/', 'vô ý' FROM DUAL
UNION ALL SELECT 'C2', 'inane', 'adjective', '/ɪˈneɪn/', 'ngớ ngẩn' FROM DUAL
UNION ALL SELECT 'C2', 'incessant', 'adjective', '/ɪnˈsesnt/', 'không ngừng' FROM DUAL
UNION ALL SELECT 'C2', 'incisive', 'adjective', '/ɪnˈsaɪsɪv/', 'sắc bén' FROM DUAL
UNION ALL SELECT 'C2', 'incite', 'verb', '/ɪnˈsaɪt/', 'kích động' FROM DUAL
UNION ALL SELECT 'C2', 'inclination', 'noun', '/ˌɪnklɪˈneɪʃn/', 'khuynh hướng' FROM DUAL
UNION ALL SELECT 'C2', 'incoherent', 'adjective', '/ˌɪnkəʊˈhɪərənt/', 'không mạch lạc' FROM DUAL
UNION ALL SELECT 'C2', 'incongruous', 'adjective', '/ɪnˈkɒŋɡruəs/', 'không hợp' FROM DUAL
UNION ALL SELECT 'C2', 'incorrigible', 'adjective', '/ɪnˈkɒrɪdʒəbl/', 'không thể sửa' FROM DUAL
UNION ALL SELECT 'C2', 'incumbent', 'noun', '/ɪnˈkʌmbənt/', 'người đương nhiệm' FROM DUAL
UNION ALL SELECT 'C2', 'indefatigable', 'adjective', '/ˌɪndɪˈfætɪɡəbl/', 'không biết mệt' FROM DUAL
UNION ALL SELECT 'C2', 'indelible', 'adjective', '/ɪnˈdeləbl/', 'không thể xóa' FROM DUAL
UNION ALL SELECT 'C2', 'indifference', 'noun', '/ɪnˈdɪfrəns/', 'sự thờ ơ' FROM DUAL
UNION ALL SELECT 'C2', 'indifferent', 'adjective', '/ɪnˈdɪfrənt/', 'thờ ơ' FROM DUAL
UNION ALL SELECT 'C2', 'indigent', 'adjective', '/ˈɪndɪdʒənt/', 'nghèo khổ' FROM DUAL
UNION ALL SELECT 'C2', 'indignant', 'adjective', '/ɪnˈdɪɡnənt/', 'phẫn nộ' FROM DUAL
UNION ALL SELECT 'C2', 'indiscriminate', 'adjective', '/ˌɪndɪˈskrɪmɪnət/', 'bừa bãi' FROM DUAL
UNION ALL SELECT 'C2', 'indispensable', 'adjective', '/ˌɪndɪˈspensəbl/', 'không thể thiếu' FROM DUAL
UNION ALL SELECT 'C2', 'indolent', 'adjective', '/ˈɪndələnt/', 'lười biếng' FROM DUAL
UNION ALL SELECT 'C2', 'indulge', 'verb', '/ɪnˈdʌldʒ/', 'nuông chiều, thỏa mãn' FROM DUAL
UNION ALL SELECT 'C2', 'ineffable', 'adjective', '/ɪnˈefəbl/', 'không tả xiết' FROM DUAL
UNION ALL SELECT 'C2', 'inept', 'adjective', '/ɪˈnept/', 'vụng về' FROM DUAL
UNION ALL SELECT 'C2', 'inertia', 'noun', '/ɪˈnɜːʃə/', 'quán tính, sự trì trệ' FROM DUAL
UNION ALL SELECT 'C2', 'inexorable', 'adjective', '/ɪnˈeksərəbl/', 'không lay chuyển được' FROM DUAL
UNION ALL SELECT 'C2', 'infallible', 'adjective', '/ɪnˈfæləbl/', 'không thể sai' FROM DUAL
UNION ALL SELECT 'C2', 'infer', 'verb', '/ɪnˈfɜː(r)/', 'suy ra' FROM DUAL
UNION ALL SELECT 'C2', 'infinitesimal', 'adjective', '/ˌɪnfɪnɪˈtesɪml/', 'vô cùng nhỏ' FROM DUAL
UNION ALL SELECT 'C2', 'infringe', 'verb', '/ɪnˈfrɪndʒ/', 'vi phạm' FROM DUAL
UNION ALL SELECT 'C2', 'infuriate', 'verb', '/ɪnˈfjʊərieɪt/', 'làm tức giận' FROM DUAL
UNION ALL SELECT 'C2', 'ingenious', 'adjective', '/ɪnˈdʒiːniəs/', 'khéo léo, tài tình' FROM DUAL
UNION ALL SELECT 'C2', 'ingenuity', 'noun', '/ˌɪndʒəˈnjuːəti/', 'sự khéo léo' FROM DUAL
UNION ALL SELECT 'C2', 'inhibition', 'noun', '/ˌɪnhɪˈbɪʃn/', 'sự e ngại, ức chế' FROM DUAL
UNION ALL SELECT 'C2', 'innate', 'adjective', '/ɪˈneɪt/', 'bẩm sinh' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C2', 'innocuous', 'adjective', '/ɪˈnɒkjuəs/', 'vô hại' FROM DUAL
UNION ALL SELECT 'C2', 'innuendo', 'noun', '/ˌɪnjuˈendəʊ/', 'lời bóng gió' FROM DUAL
UNION ALL SELECT 'C2', 'insatiable', 'adjective', '/ɪnˈseɪʃəbl/', 'không thể thỏa mãn' FROM DUAL
UNION ALL SELECT 'C2', 'insidious', 'adjective', '/ɪnˈsɪdiəs/', 'ngấm ngầm' FROM DUAL
UNION ALL SELECT 'C2', 'insinuate', 'verb', '/ɪnˈsɪnjueɪt/', 'nói bóng gió' FROM DUAL
UNION ALL SELECT 'C2', 'insipid', 'adjective', '/ɪnˈsɪpɪd/', 'nhạt nhẽo' FROM DUAL
UNION ALL SELECT 'C2', 'insolent', 'adjective', '/ˈɪnsələnt/', 'láo xược' FROM DUAL
UNION ALL SELECT 'C2', 'instigate', 'verb', '/ˈɪnstɪɡeɪt/', 'xúi giục, khởi xướng' FROM DUAL
UNION ALL SELECT 'C2', 'insular', 'adjective', '/ˈɪnsjələ(r)/', 'hẹp hòi, biệt lập' FROM DUAL
UNION ALL SELECT 'C2', 'insurgent', 'noun', '/ɪnˈsɜːdʒənt/', 'quân nổi dậy' FROM DUAL
UNION ALL SELECT 'C2', 'intangible', 'adjective', '/ɪnˈtændʒəbl/', 'vô hình' FROM DUAL
UNION ALL SELECT 'C2', 'interminable', 'adjective', '/ɪnˈtɜːmɪnəbl/', 'dài lê thê' FROM DUAL
UNION ALL SELECT 'C2', 'intermittent', 'adjective', '/ˌɪntəˈmɪtənt/', 'gián đoạn, không liên tục' FROM DUAL
UNION ALL SELECT 'C2', 'intransigent', 'adjective', '/ɪnˈtrænzɪdʒənt/', 'không khoan nhượng' FROM DUAL
UNION ALL SELECT 'C2', 'intrepid', 'adjective', '/ɪnˈtrepɪd/', 'gan dạ' FROM DUAL
UNION ALL SELECT 'C2', 'intricate', 'adjective', '/ˈɪntrɪkət/', 'phức tạp, rắc rối' FROM DUAL
UNION ALL SELECT 'C2', 'intrinsic', 'adjective', '/ɪnˈtrɪnzɪk/', 'thực chất, nội tại' FROM DUAL
UNION ALL SELECT 'C2', 'introspection', 'noun', '/ˌɪntrəˈspekʃn/', 'sự tự xét mình' FROM DUAL
UNION ALL SELECT 'C2', 'intrude', 'verb', '/ɪnˈtruːd/', 'xâm phạm' FROM DUAL
UNION ALL SELECT 'C2', 'intuitive', 'adjective', '/ɪnˈtjuːɪtɪv/', 'trực giác' FROM DUAL
UNION ALL SELECT 'C2', 'inundate', 'verb', '/ˈɪnʌndeɪt/', 'tràn ngập' FROM DUAL
UNION ALL SELECT 'C2', 'invigorate', 'verb', '/ɪnˈvɪɡəreɪt/', 'tiếp thêm sinh lực' FROM DUAL
UNION ALL SELECT 'C2', 'irascible', 'adjective', '/ɪˈræsəbl/', 'nóng tính' FROM DUAL
UNION ALL SELECT 'C2', 'irate', 'adjective', '/aɪˈreɪt/', 'giận dữ' FROM DUAL
UNION ALL SELECT 'C2', 'irrefutable', 'adjective', '/ˌɪrɪˈfjuːtəbl/', 'không thể bác bỏ' FROM DUAL
UNION ALL SELECT 'C2', 'irreverent', 'adjective', '/ɪˈrevərənt/', 'bất kính' FROM DUAL
UNION ALL SELECT 'C2', 'irrevocable', 'adjective', '/ɪˈrevəkəbl/', 'không thể hủy bỏ' FROM DUAL
UNION ALL SELECT 'C2', 'jeopardize', 'verb', '/ˈdʒepədaɪz/', 'gây nguy hiểm' FROM DUAL
UNION ALL SELECT 'C2', 'jovial', 'adjective', '/ˈdʒəʊviəl/', 'vui vẻ' FROM DUAL
UNION ALL SELECT 'C2', 'jubilant', 'adjective', '/ˈdʒuːbɪlənt/', 'hân hoan' FROM DUAL
UNION ALL SELECT 'C2', 'judicious', 'adjective', '/dʒuˈdɪʃəs/', 'sáng suốt' FROM DUAL
UNION ALL SELECT 'C2', 'juxtapose', 'verb', '/ˌdʒʌkstəˈpəʊz/', 'đặt cạnh nhau' FROM DUAL
UNION ALL SELECT 'C2', 'juxtaposition', 'noun', '/ˌdʒʌkstəpəˈzɪʃn/', 'sự đặt cạnh nhau' FROM DUAL
UNION ALL SELECT 'C2', 'kindle', 'verb', '/ˈkɪndl/', 'nhóm lửa, khơi dậy' FROM DUAL
UNION ALL SELECT 'C2', 'kinship', 'noun', '/ˈkɪnʃɪp/', 'quan hệ họ hàng' FROM DUAL
UNION ALL SELECT 'C2', 'laborious', 'adjective', '/ləˈbɔːriəs/', 'vất vả' FROM DUAL
UNION ALL SELECT 'C2', 'lacklustre', 'adjective', '/ˈlæklʌstə(r)/', 'kém hấp dẫn, mờ nhạt' FROM DUAL
UNION ALL SELECT 'C2', 'laconic', 'adjective', '/ləˈkɒnɪk/', 'vắn tắt, kiệm lời' FROM DUAL
UNION ALL SELECT 'C2', 'lament', 'verb', '/ləˈment/', 'than khóc' FROM DUAL
UNION ALL SELECT 'C2', 'languish', 'verb', '/ˈlæŋɡwɪʃ/', 'mòn mỏi, suy yếu' FROM DUAL
UNION ALL SELECT 'C2', 'latent', 'adjective', '/ˈleɪtnt/', 'tiềm ẩn' FROM DUAL
UNION ALL SELECT 'C2', 'laudable', 'adjective', '/ˈlɔːdəbl/', 'đáng khen' FROM DUAL
UNION ALL SELECT 'C2', 'lavish', 'adjective', '/ˈlævɪʃ/', 'xa hoa, hào phóng' FROM DUAL
UNION ALL SELECT 'C2', 'lax', 'adjective', '/læks/', 'lỏng lẻo' FROM DUAL
UNION ALL SELECT 'C2', 'lenient', 'adjective', '/ˈliːniənt/', 'khoan dung' FROM DUAL
UNION ALL SELECT 'C2', 'lethargic', 'adjective', '/ləˈθɑːdʒɪk/', 'uể oải' FROM DUAL
UNION ALL SELECT 'C2', 'levity', 'noun', '/ˈlevəti/', 'sự khinh suất' FROM DUAL
UNION ALL SELECT 'C2', 'liaison', 'noun', '/liˈeɪzn/', 'sự liên lạc' FROM DUAL
UNION ALL SELECT 'C2', 'libel', 'noun', '/ˈlaɪbl/', 'tội phỉ báng' FROM DUAL
UNION ALL SELECT 'C2', 'linchpin', 'noun', '/ˈlɪntʃpɪn/', 'nhân tố then chốt' FROM DUAL
UNION ALL SELECT 'C2', 'listless', 'adjective', '/ˈlɪstləs/', 'lờ đờ, bơ phờ' FROM DUAL
UNION ALL SELECT 'C2', 'litany', 'noun', '/ˈlɪtəni/', 'một tràng dài (than phiền)' FROM DUAL
UNION ALL SELECT 'C2', 'lofty', 'adjective', '/ˈlɒfti/', 'cao cả, cao ngất' FROM DUAL
UNION ALL SELECT 'C2', 'loquacious', 'adjective', '/ləˈkweɪʃəs/', 'nói nhiều' FROM DUAL
UNION ALL SELECT 'C2', 'lucid', 'adjective', '/ˈluːsɪd/', 'minh bạch, sáng suốt' FROM DUAL
UNION ALL SELECT 'C2', 'ludicrous', 'adjective', '/ˈluːdɪkrəs/', 'lố bịch' FROM DUAL
UNION ALL SELECT 'C2', 'lurid', 'adjective', '/ˈlʊərɪd/', 'ghê rợn, sặc sỡ' FROM DUAL
UNION ALL SELECT 'C2', 'lurk', 'verb', '/lɜːk/', 'ẩn nấp, rình rập' FROM DUAL
UNION ALL SELECT 'C2', 'magnanimous', 'adjective', '/mæɡˈnænɪməs/', 'cao thượng' FROM DUAL
UNION ALL SELECT 'C2', 'maim', 'verb', '/meɪm/', 'làm tàn tật' FROM DUAL
UNION ALL SELECT 'C2', 'malevolent', 'adjective', '/məˈlevələnt/', 'ác độc' FROM DUAL
UNION ALL SELECT 'C2', 'malice', 'noun', '/ˈmælɪs/', 'ác ý' FROM DUAL
UNION ALL SELECT 'C2', 'malicious', 'adjective', '/məˈlɪʃəs/', 'hiểm độc' FROM DUAL
UNION ALL SELECT 'C2', 'malign', 'verb', '/məˈlaɪn/', 'nói xấu' FROM DUAL
UNION ALL SELECT 'C2', 'malleable', 'adjective', '/ˈmæliəbl/', 'dễ uốn, dễ bảo' FROM DUAL
UNION ALL SELECT 'C2', 'mar', 'verb', '/mɑː(r)/', 'làm hỏng' FROM DUAL
UNION ALL SELECT 'C2', 'mayhem', 'noun', '/ˈmeɪhem/', 'tình trạng hỗn loạn' FROM DUAL
UNION ALL SELECT 'C2', 'meagre', 'adjective', '/ˈmiːɡə(r)/', 'ít ỏi' FROM DUAL
UNION ALL SELECT 'C2', 'meander', 'verb', '/miˈændə(r)/', 'uốn khúc, lang thang' FROM DUAL
UNION ALL SELECT 'C2', 'mediocre', 'adjective', '/ˌmiːdiˈəʊkə(r)/', 'tầm thường' FROM DUAL
UNION ALL SELECT 'C2', 'melancholy', 'noun', '/ˈmelənkɒli/', 'sự u sầu' FROM DUAL
UNION ALL SELECT 'C2', 'mellow', 'adjective', '/ˈmeləʊ/', 'êm dịu, chín muồi' FROM DUAL
UNION ALL SELECT 'C2', 'menace', 'noun', '/ˈmenəs/', 'mối đe dọa' FROM DUAL
UNION ALL SELECT 'C2', 'mercenary', 'noun', '/ˈmɜːsənəri/', 'lính đánh thuê' FROM DUAL
UNION ALL SELECT 'C2', 'meticulous', 'adjective', '/məˈtɪkjələs/', 'tỉ mỉ' FROM DUAL
UNION ALL SELECT 'C2', 'milestone', 'noun', '/ˈmaɪlstəʊn/', 'cột mốc' FROM DUAL
UNION ALL SELECT 'C2', 'mimic', 'verb', '/ˈmɪmɪk/', 'bắt chước' FROM DUAL
UNION ALL SELECT 'C2', 'misconception', 'noun', '/ˌmɪskənˈsepʃn/', 'quan niệm sai lầm' FROM DUAL
UNION ALL SELECT 'C2', 'misgiving', 'noun', '/ˌmɪsˈɡɪvɪŋ/', 'sự nghi ngại' FROM DUAL
UNION ALL SELECT 'C2', 'mitigate', 'verb', '/ˈmɪtɪɡeɪt/', 'giảm nhẹ' FROM DUAL
UNION ALL SELECT 'C2', 'momentous', 'adjective', '/məˈmentəs/', 'trọng đại' FROM DUAL
UNION ALL SELECT 'C2', 'monotonous', 'adjective', '/məˈnɒtənəs/', 'đơn điệu' FROM DUAL
UNION ALL SELECT 'C2', 'moribund', 'adjective', '/ˈmɒrɪbʌnd/', 'sắp chết, suy tàn' FROM DUAL
UNION ALL SELECT 'C2', 'morose', 'adjective', '/məˈrəʊs/', 'ủ rũ' FROM DUAL
UNION ALL SELECT 'C2', 'mundane', 'adjective', '/mʌnˈdeɪn/', 'trần tục, tẻ nhạt' FROM DUAL
UNION ALL SELECT 'C2', 'munificent', 'adjective', '/mjuːˈnɪfɪsnt/', 'rộng lượng' FROM DUAL
UNION ALL SELECT 'C2', 'myriad', 'noun', '/ˈmɪriəd/', 'vô số' FROM DUAL
UNION ALL SELECT 'C2', 'naive', 'adjective', '/naɪˈiːv/', 'ngây thơ' FROM DUAL
UNION ALL SELECT 'C2', 'nascent', 'adjective', '/ˈnæsnt/', 'mới chớm, non trẻ' FROM DUAL
UNION ALL SELECT 'C2', 'nebulous', 'adjective', '/ˈnebjələs/', 'mơ hồ' FROM DUAL
UNION ALL SELECT 'C2', 'nefarious', 'adjective', '/nɪˈfeəriəs/', 'bất chính, độc ác' FROM DUAL
UNION ALL SELECT 'C2', 'negligent', 'adjective', '/ˈneɡlɪdʒənt/', 'cẩu thả' FROM DUAL
UNION ALL SELECT 'C2', 'negligible', 'adjective', '/ˈneɡlɪdʒəbl/', 'không đáng kể' FROM DUAL
UNION ALL SELECT 'C2', 'nemesis', 'noun', '/ˈneməsɪs/', 'kẻ thù không đội trời chung' FROM DUAL
UNION ALL SELECT 'C2', 'neophyte', 'noun', '/ˈniːəfaɪt/', 'người mới vào nghề' FROM DUAL
UNION ALL SELECT 'C2', 'nonchalant', 'adjective', '/ˈnɒnʃələnt/', 'thờ ơ, lãnh đạm' FROM DUAL
UNION ALL SELECT 'C2', 'nostalgia', 'noun', '/nɒˈstældʒə/', 'nỗi nhớ quá khứ' FROM DUAL
UNION ALL SELECT 'C2', 'notoriety', 'noun', '/ˌnəʊtəˈraɪəti/', 'tai tiếng' FROM DUAL
UNION ALL SELECT 'C2', 'novice', 'noun', '/ˈnɒvɪs/', 'người mới học' FROM DUAL
UNION ALL SELECT 'C2', 'noxious', 'adjective', '/ˈnɒkʃəs/', 'độc hại' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C2', 'nuance', 'noun', '/ˈnjuːɑːns/', 'sắc thái' FROM DUAL
UNION ALL SELECT 'C2', 'nullify', 'verb', '/ˈnʌlɪfaɪ/', 'vô hiệu hóa' FROM DUAL
UNION ALL SELECT 'C2', 'nurture', 'verb', '/ˈnɜːtʃə(r)/', 'nuôi dưỡng' FROM DUAL
UNION ALL SELECT 'C2', 'obdurate', 'adjective', '/ˈɒbdjərət/', 'ngoan cố' FROM DUAL
UNION ALL SELECT 'C2', 'obfuscate', 'verb', '/ˈɒbfʌskeɪt/', 'làm rối, làm mờ' FROM DUAL
UNION ALL SELECT 'C2', 'oblique', 'adjective', '/əˈbliːk/', 'xiên, gián tiếp' FROM DUAL
UNION ALL SELECT 'C2', 'obliterate', 'verb', '/əˈblɪtəreɪt/', 'xóa sạch' FROM DUAL
UNION ALL SELECT 'C2', 'oblivion', 'noun', '/əˈblɪviən/', 'sự lãng quên' FROM DUAL
UNION ALL SELECT 'C2', 'oblivious', 'adjective', '/əˈblɪviəs/', 'không để ý, quên' FROM DUAL
UNION ALL SELECT 'C2', 'obnoxious', 'adjective', '/əbˈnɒkʃəs/', 'đáng ghét' FROM DUAL
UNION ALL SELECT 'C2', 'obscure', 'adjective', '/əbˈskjʊə(r)/', 'tối nghĩa, ít người biết' FROM DUAL
UNION ALL SELECT 'C2', 'obsolete', 'adjective', '/ˈɒbsəliːt/', 'lỗi thời' FROM DUAL
UNION ALL SELECT 'C2', 'obstinate', 'adjective', '/ˈɒbstɪnət/', 'bướng bỉnh' FROM DUAL
UNION ALL SELECT 'C2', 'obtrusive', 'adjective', '/əbˈtruːsɪv/', 'chướng mắt, xâm phạm' FROM DUAL
UNION ALL SELECT 'C2', 'ominous', 'adjective', '/ˈɒmɪnəs/', 'đáng ngại, điềm gở' FROM DUAL
UNION ALL SELECT 'C2', 'omnipotent', 'adjective', '/ɒmˈnɪpətənt/', 'toàn năng' FROM DUAL
UNION ALL SELECT 'C2', 'omniscient', 'adjective', '/ɒmˈnɪsiənt/', 'thông suốt mọi điều' FROM DUAL
UNION ALL SELECT 'C2', 'onerous', 'adjective', '/ˈəʊnərəs/', 'nặng nề' FROM DUAL
UNION ALL SELECT 'C2', 'onset', 'noun', '/ˈɒnset/', 'sự khởi đầu' FROM DUAL
UNION ALL SELECT 'C2', 'opaque', 'adjective', '/əʊˈpeɪk/', 'mờ đục, khó hiểu' FROM DUAL
UNION ALL SELECT 'C2', 'opportune', 'adjective', '/ˈɒpətjuːn/', 'đúng lúc' FROM DUAL
UNION ALL SELECT 'C2', 'opulent', 'adjective', '/ˈɒpjələnt/', 'sang trọng, giàu có' FROM DUAL
UNION ALL SELECT 'C2', 'ostensibly', 'adverb', '/ɒˈstensəbli/', 'bề ngoài là' FROM DUAL
UNION ALL SELECT 'C2', 'ostentatious', 'adjective', '/ˌɒstenˈteɪʃəs/', 'phô trương' FROM DUAL
UNION ALL SELECT 'C2', 'ostracize', 'verb', '/ˈɒstrəsaɪz/', 'tẩy chay' FROM DUAL
UNION ALL SELECT 'C2', 'oust', 'verb', '/aʊst/', 'hất cẳng' FROM DUAL
UNION ALL SELECT 'C2', 'outlandish', 'adjective', '/aʊtˈlændɪʃ/', 'kỳ quặc' FROM DUAL
UNION ALL SELECT 'C2', 'outspoken', 'adjective', '/aʊtˈspəʊkən/', 'thẳng thắn, bộc trực' FROM DUAL
UNION ALL SELECT 'C2', 'overt', 'adjective', '/əʊˈvɜːt/', 'công khai' FROM DUAL
UNION ALL SELECT 'C2', 'painstaking', 'adjective', '/ˈpeɪnzteɪkɪŋ/', 'cẩn thận, chịu khó' FROM DUAL
UNION ALL SELECT 'C2', 'palatable', 'adjective', '/ˈpælətəbl/', 'ngon, dễ chấp nhận' FROM DUAL
UNION ALL SELECT 'C2', 'palpable', 'adjective', '/ˈpælpəbl/', 'rõ ràng, sờ thấy được' FROM DUAL
UNION ALL SELECT 'C2', 'paltry', 'adjective', '/ˈpɔːltri/', 'nhỏ mọn' FROM DUAL
UNION ALL SELECT 'C2', 'panacea', 'noun', '/ˌpænəˈsiːə/', 'thuốc chữa bách bệnh' FROM DUAL
UNION ALL SELECT 'C2', 'paradigm', 'noun', '/ˈpærədaɪm/', 'mô hình, hệ hình' FROM DUAL
UNION ALL SELECT 'C2', 'paradox', 'noun', '/ˈpærədɒks/', 'nghịch lý' FROM DUAL
UNION ALL SELECT 'C2', 'paramount', 'adjective', '/ˈpærəmaʊnt/', 'tối quan trọng' FROM DUAL
UNION ALL SELECT 'C2', 'pariah', 'noun', '/pəˈraɪə/', 'kẻ bị ruồng bỏ' FROM DUAL
UNION ALL SELECT 'C2', 'parity', 'noun', '/ˈpærəti/', 'sự ngang bằng' FROM DUAL
UNION ALL SELECT 'C2', 'parochial', 'adjective', '/pəˈrəʊkiəl/', 'hẹp hòi, thuộc giáo xứ' FROM DUAL
UNION ALL SELECT 'C2', 'partisan', 'adjective', '/ˌpɑːtɪˈzæn/', 'thiên vị, đảng phái' FROM DUAL
UNION ALL SELECT 'C2', 'pathetic', 'adjective', '/pəˈθetɪk/', 'thảm hại' FROM DUAL
UNION ALL SELECT 'C2', 'patronize', 'verb', '/ˈpætrənaɪz/', 'ra vẻ kẻ cả, bảo trợ' FROM DUAL
UNION ALL SELECT 'C2', 'paucity', 'noun', '/ˈpɔːsəti/', 'sự thiếu thốn' FROM DUAL
UNION ALL SELECT 'C2', 'pedantic', 'adjective', '/pɪˈdæntɪk/', 'thông thái rởm' FROM DUAL
UNION ALL SELECT 'C2', 'penchant', 'noun', '/ˈpɒ̃ʃɒ̃/', 'sở thích' FROM DUAL
UNION ALL SELECT 'C2', 'pensive', 'adjective', '/ˈpensɪv/', 'trầm ngâm' FROM DUAL
UNION ALL SELECT 'C2', 'perennial', 'adjective', '/pəˈreniəl/', 'lâu năm, thường xuyên' FROM DUAL
UNION ALL SELECT 'C2', 'perfunctory', 'adjective', '/pəˈfʌŋktəri/', 'chiếu lệ' FROM DUAL
UNION ALL SELECT 'C2', 'peripheral', 'adjective', '/pəˈrɪfərəl/', 'ngoại vi, thứ yếu' FROM DUAL
UNION ALL SELECT 'C2', 'perjury', 'noun', '/ˈpɜːdʒəri/', 'tội khai man' FROM DUAL
UNION ALL SELECT 'C2', 'permeate', 'verb', '/ˈpɜːmieɪt/', 'thấm qua, lan tỏa' FROM DUAL
UNION ALL SELECT 'C2', 'pernicious', 'adjective', '/pəˈnɪʃəs/', 'độc hại, nguy hiểm' FROM DUAL
UNION ALL SELECT 'C2', 'perpetrate', 'verb', '/ˈpɜːpətreɪt/', 'phạm (tội)' FROM DUAL
UNION ALL SELECT 'C2', 'perpetrator', 'noun', '/ˈpɜːpətreɪtə(r)/', 'thủ phạm' FROM DUAL
UNION ALL SELECT 'C2', 'perpetual', 'adjective', '/pəˈpetʃuəl/', 'vĩnh viễn, liên miên' FROM DUAL
UNION ALL SELECT 'C2', 'perpetuate', 'verb', '/pəˈpetʃueɪt/', 'duy trì mãi' FROM DUAL
UNION ALL SELECT 'C2', 'perplexed', 'adjective', '/pəˈplekst/', 'bối rối' FROM DUAL
UNION ALL SELECT 'C2', 'perseverance', 'noun', '/ˌpɜːsɪˈvɪərəns/', 'sự kiên trì' FROM DUAL
UNION ALL SELECT 'C2', 'persevere', 'verb', '/ˌpɜːsɪˈvɪə(r)/', 'kiên trì' FROM DUAL
UNION ALL SELECT 'C2', 'pertinent', 'adjective', '/ˈpɜːtɪnənt/', 'thích đáng' FROM DUAL
UNION ALL SELECT 'C2', 'pervasive', 'adjective', '/pəˈveɪsɪv/', 'lan tỏa khắp' FROM DUAL
UNION ALL SELECT 'C2', 'petulant', 'adjective', '/ˈpetʃələnt/', 'hay hờn dỗi' FROM DUAL
UNION ALL SELECT 'C2', 'philanthropist', 'noun', '/fɪˈlænθrəpɪst/', 'nhà từ thiện' FROM DUAL
UNION ALL SELECT 'C2', 'pious', 'adjective', '/ˈpaɪəs/', 'ngoan đạo' FROM DUAL
UNION ALL SELECT 'C2', 'pinnacle', 'noun', '/ˈpɪnəkl/', 'đỉnh cao' FROM DUAL
UNION ALL SELECT 'C2', 'pithy', 'adjective', '/ˈpɪθi/', 'súc tích' FROM DUAL
UNION ALL SELECT 'C2', 'placate', 'verb', '/pləˈkeɪt/', 'xoa dịu' FROM DUAL
UNION ALL SELECT 'C2', 'placid', 'adjective', '/ˈplæsɪd/', 'điềm tĩnh' FROM DUAL
UNION ALL SELECT 'C2', 'plagiarism', 'noun', '/ˈpleɪdʒərɪzəm/', 'đạo văn' FROM DUAL
UNION ALL SELECT 'C2', 'plethora', 'noun', '/ˈpleθərə/', 'sự thừa thãi' FROM DUAL
UNION ALL SELECT 'C2', 'pliable', 'adjective', '/ˈplaɪəbl/', 'dễ uốn' FROM DUAL
UNION ALL SELECT 'C2', 'plight', 'noun', '/plaɪt/', 'cảnh ngộ khó khăn' FROM DUAL
UNION ALL SELECT 'C2', 'poignant', 'adjective', '/ˈpɔɪnjənt/', 'thấm thía, cảm động' FROM DUAL
UNION ALL SELECT 'C2', 'polarize', 'verb', '/ˈpəʊləraɪz/', 'phân cực' FROM DUAL
UNION ALL SELECT 'C2', 'polemic', 'noun', '/pəˈlemɪk/', 'cuộc bút chiến' FROM DUAL
UNION ALL SELECT 'C2', 'ponder', 'verb', '/ˈpɒndə(r)/', 'cân nhắc, suy ngẫm' FROM DUAL
UNION ALL SELECT 'C2', 'portent', 'noun', '/ˈpɔːtent/', 'điềm báo' FROM DUAL
UNION ALL SELECT 'C2', 'posthumous', 'adjective', '/ˈpɒstʃʊməs/', 'sau khi chết' FROM DUAL
UNION ALL SELECT 'C2', 'pragmatic', 'adjective', '/præɡˈmætɪk/', 'thực dụng' FROM DUAL
UNION ALL SELECT 'C2', 'precarious', 'adjective', '/prɪˈkeəriəs/', 'bấp bênh' FROM DUAL
UNION ALL SELECT 'C2', 'precipitate', 'verb', '/prɪˈsɪpɪteɪt/', 'gây ra đột ngột' FROM DUAL
UNION ALL SELECT 'C2', 'preclude', 'verb', '/prɪˈkluːd/', 'ngăn chặn, loại trừ' FROM DUAL
UNION ALL SELECT 'C2', 'precocious', 'adjective', '/prɪˈkəʊʃəs/', 'sớm phát triển' FROM DUAL
UNION ALL SELECT 'C2', 'predicament', 'noun', '/prɪˈdɪkəmənt/', 'tình thế khó khăn' FROM DUAL
UNION ALL SELECT 'C2', 'predilection', 'noun', '/ˌpriːdɪˈlekʃn/', 'sự ưa thích' FROM DUAL
UNION ALL SELECT 'C2', 'predisposed', 'adjective', '/ˌpriːdɪˈspəʊzd/', 'có thiên hướng' FROM DUAL
UNION ALL SELECT 'C2', 'preeminent', 'adjective', '/priˈemɪnənt/', 'xuất sắc nhất' FROM DUAL
UNION ALL SELECT 'C2', 'premeditated', 'adjective', '/ˌpriːˈmedɪteɪtɪd/', 'có tính toán trước' FROM DUAL
UNION ALL SELECT 'C2', 'premonition', 'noun', '/ˌpriːməˈnɪʃn/', 'linh cảm' FROM DUAL
UNION ALL SELECT 'C2', 'preposterous', 'adjective', '/prɪˈpɒstərəs/', 'phi lý' FROM DUAL
UNION ALL SELECT 'C2', 'prerequisite', 'noun', '/ˌpriːˈrekwəzɪt/', 'điều kiện tiên quyết' FROM DUAL
UNION ALL SELECT 'C2', 'prerogative', 'noun', '/prɪˈrɒɡətɪv/', 'đặc quyền' FROM DUAL
UNION ALL SELECT 'C2', 'prescient', 'adjective', '/ˈpresiənt/', 'biết trước' FROM DUAL
UNION ALL SELECT 'C2', 'presumptuous', 'adjective', '/prɪˈzʌmptʃuəs/', 'tự phụ' FROM DUAL
UNION ALL SELECT 'C2', 'pretext', 'noun', '/ˈpriːtekst/', 'cái cớ' FROM DUAL
UNION ALL SELECT 'C2', 'prevaricate', 'verb', '/prɪˈværɪkeɪt/', 'nói thoái thác' FROM DUAL
UNION ALL SELECT 'C2', 'pristine', 'adjective', '/ˈprɪstiːn/', 'nguyên sơ' FROM DUAL
UNION ALL SELECT 'C2', 'proclivity', 'noun', '/prəˈklɪvəti/', 'thiên hướng' FROM DUAL
UNION ALL SELECT 'C2', 'procrastinate', 'verb', '/prəʊˈkræstɪneɪt/', 'trì hoãn' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C2', 'prodigious', 'adjective', '/prəˈdɪdʒəs/', 'phi thường, to lớn' FROM DUAL
UNION ALL SELECT 'C2', 'prodigy', 'noun', '/ˈprɒdədʒi/', 'thần đồng' FROM DUAL
UNION ALL SELECT 'C2', 'profane', 'adjective', '/prəˈfeɪn/', 'báng bổ, trần tục' FROM DUAL
UNION ALL SELECT 'C2', 'proficient', 'adjective', '/prəˈfɪʃnt/', 'thành thạo' FROM DUAL
UNION ALL SELECT 'C2', 'profligate', 'adjective', '/ˈprɒflɪɡət/', 'hoang phí' FROM DUAL
UNION ALL SELECT 'C2', 'profusion', 'noun', '/prəˈfjuːʒn/', 'sự dồi dào' FROM DUAL
UNION ALL SELECT 'C2', 'proliferate', 'verb', '/prəˈlɪfəreɪt/', 'sinh sôi nảy nở' FROM DUAL
UNION ALL SELECT 'C2', 'prolific', 'adjective', '/prəˈlɪfɪk/', 'sung mãn, viết nhiều' FROM DUAL
UNION ALL SELECT 'C2', 'propensity', 'noun', '/prəˈpensəti/', 'xu hướng' FROM DUAL
UNION ALL SELECT 'C2', 'propitious', 'adjective', '/prəˈpɪʃəs/', 'thuận lợi' FROM DUAL
UNION ALL SELECT 'C2', 'prosaic', 'adjective', '/prəˈzeɪɪk/', 'tầm thường, tẻ nhạt' FROM DUAL
UNION ALL SELECT 'C2', 'proscribe', 'verb', '/prəˈskraɪb/', 'cấm đoán' FROM DUAL
UNION ALL SELECT 'C2', 'protagonist', 'noun', '/prəˈtæɡənɪst/', 'nhân vật chính' FROM DUAL
UNION ALL SELECT 'C2', 'protracted', 'adjective', '/prəˈtræktɪd/', 'kéo dài' FROM DUAL
UNION ALL SELECT 'C2', 'provocative', 'adjective', '/prəˈvɒkətɪv/', 'khiêu khích' FROM DUAL
UNION ALL SELECT 'C2', 'prowess', 'noun', '/ˈpraʊəs/', 'năng lực xuất sắc' FROM DUAL
UNION ALL SELECT 'C2', 'prudent', 'adjective', '/ˈpruːdnt/', 'thận trọng' FROM DUAL
UNION ALL SELECT 'C2', 'pugnacious', 'adjective', '/pʌɡˈneɪʃəs/', 'thích gây gổ' FROM DUAL
UNION ALL SELECT 'C2', 'punctilious', 'adjective', '/pʌŋkˈtɪliəs/', 'câu nệ, cẩn trọng' FROM DUAL
UNION ALL SELECT 'C2', 'pungent', 'adjective', '/ˈpʌndʒənt/', 'hăng, cay' FROM DUAL
UNION ALL SELECT 'C2', 'purport', 'verb', '/pəˈpɔːt/', 'tự cho là' FROM DUAL
UNION ALL SELECT 'C2', 'quaint', 'adjective', '/kweɪnt/', 'kỳ lạ, cổ kính' FROM DUAL
UNION ALL SELECT 'C2', 'qualm', 'noun', '/kwɑːm/', 'sự e ngại, cắn rứt' FROM DUAL
UNION ALL SELECT 'C2', 'quandary', 'noun', '/ˈkwɒndəri/', 'tình thế khó xử' FROM DUAL
UNION ALL SELECT 'C2', 'quarantine', 'noun', '/ˈkwɒrəntiːn/', 'sự cách ly' FROM DUAL
UNION ALL SELECT 'C2', 'quell', 'verb', '/kwel/', 'dập tắt' FROM DUAL
UNION ALL SELECT 'C2', 'querulous', 'adjective', '/ˈkwerələs/', 'hay càu nhàu' FROM DUAL
UNION ALL SELECT 'C2', 'quintessential', 'adjective', '/ˌkwɪntɪˈsenʃl/', 'tinh túy, điển hình' FROM DUAL
UNION ALL SELECT 'C2', 'quirk', 'noun', '/kwɜːk/', 'tính cách kỳ quặc' FROM DUAL
UNION ALL SELECT 'C2', 'rampant', 'adjective', '/ˈræmpənt/', 'lan tràn, hoành hành' FROM DUAL
UNION ALL SELECT 'C2', 'rancour', 'noun', '/ˈræŋkə(r)/', 'sự thù oán' FROM DUAL
UNION ALL SELECT 'C2', 'rapport', 'noun', '/ræˈpɔː(r)/', 'mối quan hệ hòa hợp' FROM DUAL
UNION ALL SELECT 'C2', 'rapture', 'noun', '/ˈræptʃə(r)/', 'sự sung sướng tột độ' FROM DUAL
UNION ALL SELECT 'C2', 'ratify', 'verb', '/ˈrætɪfaɪ/', 'phê chuẩn' FROM DUAL
UNION ALL SELECT 'C2', 'raucous', 'adjective', '/ˈrɔːkəs/', 'khàn khàn, ồn ào' FROM DUAL
UNION ALL SELECT 'C2', 'ravage', 'verb', '/ˈrævɪdʒ/', 'tàn phá' FROM DUAL
UNION ALL SELECT 'C2', 'rebuke', 'verb', '/rɪˈbjuːk/', 'khiển trách' FROM DUAL
UNION ALL SELECT 'C2', 'rebuttal', 'noun', '/rɪˈbʌtl/', 'sự bác bỏ' FROM DUAL
UNION ALL SELECT 'C2', 'recalcitrant', 'adjective', '/rɪˈkælsɪtrənt/', 'ngoan cố, cứng đầu' FROM DUAL
UNION ALL SELECT 'C2', 'recant', 'verb', '/rɪˈkænt/', 'rút lại (lời nói)' FROM DUAL
UNION ALL SELECT 'C2', 'reciprocal', 'adjective', '/rɪˈsɪprəkl/', 'qua lại, tương hỗ' FROM DUAL
UNION ALL SELECT 'C2', 'reciprocate', 'verb', '/rɪˈsɪprəkeɪt/', 'đáp lại' FROM DUAL
UNION ALL SELECT 'C2', 'reckless', 'adjective', '/ˈrekləs/', 'liều lĩnh' FROM DUAL
UNION ALL SELECT 'C2', 'reclusive', 'adjective', '/rɪˈkluːsɪv/', 'sống ẩn dật' FROM DUAL
UNION ALL SELECT 'C2', 'reconcile', 'verb', '/ˈrekənsaɪl/', 'hòa giải' FROM DUAL
UNION ALL SELECT 'C2', 'rectify', 'verb', '/ˈrektɪfaɪ/', 'sửa chữa' FROM DUAL
UNION ALL SELECT 'C2', 'redolent', 'adjective', '/ˈredələnt/', 'gợi nhớ, thơm ngát' FROM DUAL
UNION ALL SELECT 'C2', 'redundant', 'adjective', '/rɪˈdʌndənt/', 'thừa, bị sa thải' FROM DUAL
UNION ALL SELECT 'C2', 'refute', 'verb', '/rɪˈfjuːt/', 'bác bỏ' FROM DUAL
UNION ALL SELECT 'C2', 'rejuvenate', 'verb', '/rɪˈdʒuːvəneɪt/', 'làm trẻ lại' FROM DUAL
UNION ALL SELECT 'C2', 'relegate', 'verb', '/ˈrelɪɡeɪt/', 'giáng chức, xuống hạng' FROM DUAL
UNION ALL SELECT 'C2', 'relentless', 'adjective', '/rɪˈlentləs/', 'không ngừng, tàn nhẫn' FROM DUAL
UNION ALL SELECT 'C2', 'relinquish', 'verb', '/rɪˈlɪŋkwɪʃ/', 'từ bỏ' FROM DUAL
UNION ALL SELECT 'C2', 'remiss', 'adjective', '/rɪˈmɪs/', 'chểnh mảng' FROM DUAL
UNION ALL SELECT 'C2', 'remorse', 'noun', '/rɪˈmɔːs/', 'sự hối hận' FROM DUAL
UNION ALL SELECT 'C2', 'renounce', 'verb', '/rɪˈnaʊns/', 'từ bỏ' FROM DUAL
UNION ALL SELECT 'C2', 'repercussion', 'noun', '/ˌriːpəˈkʌʃn/', 'hậu quả' FROM DUAL
UNION ALL SELECT 'C2', 'replenish', 'verb', '/rɪˈplenɪʃ/', 'bổ sung, làm đầy lại' FROM DUAL
UNION ALL SELECT 'C2', 'reprehensible', 'adjective', '/ˌreprɪˈhensəbl/', 'đáng khiển trách' FROM DUAL
UNION ALL SELECT 'C2', 'repress', 'verb', '/rɪˈpres/', 'kìm nén, đàn áp' FROM DUAL
UNION ALL SELECT 'C2', 'reprimand', 'verb', '/ˈreprɪmɑːnd/', 'khiển trách' FROM DUAL
UNION ALL SELECT 'C2', 'reproach', 'noun', '/rɪˈprəʊtʃ/', 'sự trách móc' FROM DUAL
UNION ALL SELECT 'C2', 'repudiate', 'verb', '/rɪˈpjuːdieɪt/', 'bác bỏ, từ chối' FROM DUAL
UNION ALL SELECT 'C2', 'repugnant', 'adjective', '/rɪˈpʌɡnənt/', 'ghê tởm' FROM DUAL
UNION ALL SELECT 'C2', 'requisite', 'adjective', '/ˈrekwɪzɪt/', 'cần thiết' FROM DUAL
UNION ALL SELECT 'C2', 'rescind', 'verb', '/rɪˈsɪnd/', 'hủy bỏ' FROM DUAL
UNION ALL SELECT 'C2', 'resentment', 'noun', '/rɪˈzentmənt/', 'sự oán giận' FROM DUAL
UNION ALL SELECT 'C2', 'resilience', 'noun', '/rɪˈzɪliəns/', 'khả năng phục hồi' FROM DUAL
UNION ALL SELECT 'C2', 'resilient', 'adjective', '/rɪˈzɪliənt/', 'kiên cường' FROM DUAL
UNION ALL SELECT 'C2', 'resolute', 'adjective', '/ˈrezəluːt/', 'kiên quyết' FROM DUAL
UNION ALL SELECT 'C2', 'respite', 'noun', '/ˈrespaɪt/', 'thời gian nghỉ ngơi' FROM DUAL
UNION ALL SELECT 'C2', 'resplendent', 'adjective', '/rɪˈsplendənt/', 'lộng lẫy' FROM DUAL
UNION ALL SELECT 'C2', 'resurgence', 'noun', '/rɪˈsɜːdʒəns/', 'sự hồi sinh' FROM DUAL
UNION ALL SELECT 'C2', 'reticent', 'adjective', '/ˈretɪsnt/', 'kín đáo, ít nói' FROM DUAL
UNION ALL SELECT 'C2', 'retribution', 'noun', '/ˌretrɪˈbjuːʃn/', 'sự báo thù' FROM DUAL
UNION ALL SELECT 'C2', 'retrospect', 'noun', '/ˈretrəspekt/', 'sự hồi tưởng' FROM DUAL
UNION ALL SELECT 'C2', 'revere', 'verb', '/rɪˈvɪə(r)/', 'tôn kính' FROM DUAL
UNION ALL SELECT 'C2', 'revoke', 'verb', '/rɪˈvəʊk/', 'thu hồi, hủy bỏ' FROM DUAL
UNION ALL SELECT 'C2', 'rhetorical', 'adjective', '/rɪˈtɒrɪkl/', 'tu từ' FROM DUAL
UNION ALL SELECT 'C2', 'rife', 'adjective', '/raɪf/', 'đầy rẫy' FROM DUAL
UNION ALL SELECT 'C2', 'rigorous', 'adjective', '/ˈrɪɡərəs/', 'nghiêm ngặt' FROM DUAL
UNION ALL SELECT 'C2', 'rudimentary', 'adjective', '/ˌruːdɪˈmentri/', 'sơ đẳng' FROM DUAL
UNION ALL SELECT 'C2', 'ruminate', 'verb', '/ˈruːmɪneɪt/', 'nghiền ngẫm' FROM DUAL
UNION ALL SELECT 'C2', 'ruthless', 'adjective', '/ˈruːθləs/', 'tàn nhẫn' FROM DUAL
UNION ALL SELECT 'C2', 'sabotage', 'verb', '/ˈsæbətɑːʒ/', 'phá hoại' FROM DUAL
UNION ALL SELECT 'C2', 'sagacious', 'adjective', '/səˈɡeɪʃəs/', 'khôn ngoan' FROM DUAL
UNION ALL SELECT 'C2', 'salient', 'adjective', '/ˈseɪliənt/', 'nổi bật, chính yếu' FROM DUAL
UNION ALL SELECT 'C2', 'sanctimonious', 'adjective', '/ˌsæŋktɪˈməʊniəs/', 'giả đạo đức' FROM DUAL
UNION ALL SELECT 'C2', 'sanctuary', 'noun', '/ˈsæŋktʃuəri/', 'nơi tôn nghiêm, khu bảo tồn' FROM DUAL
UNION ALL SELECT 'C2', 'sanguine', 'adjective', '/ˈsæŋɡwɪn/', 'lạc quan' FROM DUAL
UNION ALL SELECT 'C2', 'sardonic', 'adjective', '/sɑːˈdɒnɪk/', 'nhạo báng' FROM DUAL
UNION ALL SELECT 'C2', 'satire', 'noun', '/ˈsætaɪə(r)/', 'lối văn châm biếm' FROM DUAL
UNION ALL SELECT 'C2', 'saturate', 'verb', '/ˈsætʃəreɪt/', 'làm bão hòa' FROM DUAL
UNION ALL SELECT 'C2', 'scathing', 'adjective', '/ˈskeɪðɪŋ/', 'gay gắt' FROM DUAL
UNION ALL SELECT 'C2', 'scrupulous', 'adjective', '/ˈskruːpjələs/', 'tỉ mỉ, chu đáo' FROM DUAL
UNION ALL SELECT 'C2', 'scrutinize', 'verb', '/ˈskruːtənaɪz/', 'xem xét kỹ lưỡng' FROM DUAL
UNION ALL SELECT 'C2', 'secluded', 'adjective', '/sɪˈkluːdɪd/', 'hẻo lánh' FROM DUAL
UNION ALL SELECT 'C2', 'sedentary', 'adjective', '/ˈsedntri/', 'ít vận động' FROM DUAL
UNION ALL SELECT 'C2', 'seethe', 'verb', '/siːð/', 'sôi sục' FROM DUAL
UNION ALL SELECT 'C2', 'semblance', 'noun', '/ˈsembləns/', 'vẻ bề ngoài' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C2', 'serendipity', 'noun', '/ˌserənˈdɪpəti/', 'sự tình cờ may mắn' FROM DUAL
UNION ALL SELECT 'C2', 'serene', 'adjective', '/səˈriːn/', 'thanh bình' FROM DUAL
UNION ALL SELECT 'C2', 'servile', 'adjective', '/ˈsɜːvaɪl/', 'khúm núm' FROM DUAL
UNION ALL SELECT 'C2', 'shrewd', 'adjective', '/ʃruːd/', 'sắc sảo, khôn ngoan' FROM DUAL
UNION ALL SELECT 'C2', 'skirmish', 'noun', '/ˈskɜːmɪʃ/', 'cuộc giao tranh nhỏ' FROM DUAL
UNION ALL SELECT 'C2', 'slander', 'noun', '/ˈslɑːndə(r)/', 'sự vu khống' FROM DUAL
UNION ALL SELECT 'C2', 'sluggish', 'adjective', '/ˈslʌɡɪʃ/', 'chậm chạp' FROM DUAL
UNION ALL SELECT 'C2', 'solace', 'noun', '/ˈsɒləs/', 'niềm an ủi' FROM DUAL
UNION ALL SELECT 'C2', 'solemn', 'adjective', '/ˈsɒləm/', 'trang nghiêm' FROM DUAL
UNION ALL SELECT 'C2', 'solicit', 'verb', '/səˈlɪsɪt/', 'nài xin, chào mời' FROM DUAL
UNION ALL SELECT 'C2', 'sombre', 'adjective', '/ˈsɒmbə(r)/', 'u ám' FROM DUAL
UNION ALL SELECT 'C2', 'soothe', 'verb', '/suːð/', 'làm dịu' FROM DUAL
UNION ALL SELECT 'C2', 'sordid', 'adjective', '/ˈsɔːdɪd/', 'bẩn thỉu, đê tiện' FROM DUAL
UNION ALL SELECT 'C2', 'sparse', 'adjective', '/spɑːs/', 'thưa thớt' FROM DUAL
UNION ALL SELECT 'C2', 'spontaneous', 'adjective', '/spɒnˈteɪniəs/', 'tự phát' FROM DUAL
UNION ALL SELECT 'C2', 'sporadic', 'adjective', '/spəˈrædɪk/', 'lác đác' FROM DUAL
UNION ALL SELECT 'C2', 'spurious', 'adjective', '/ˈspjʊəriəs/', 'giả mạo, sai' FROM DUAL
UNION ALL SELECT 'C2', 'squalid', 'adjective', '/ˈskwɒlɪd/', 'bẩn thỉu' FROM DUAL
UNION ALL SELECT 'C2', 'squander', 'verb', '/ˈskwɒndə(r)/', 'phung phí' FROM DUAL
UNION ALL SELECT 'C2', 'staunch', 'adjective', '/stɔːntʃ/', 'trung thành, kiên định' FROM DUAL
UNION ALL SELECT 'C2', 'stagnant', 'adjective', '/ˈstæɡnənt/', 'tù đọng, trì trệ' FROM DUAL
UNION ALL SELECT 'C2', 'steadfast', 'adjective', '/ˈstedfɑːst/', 'kiên định' FROM DUAL
UNION ALL SELECT 'C2', 'stifle', 'verb', '/ˈstaɪfl/', 'bóp nghẹt, kìm nén' FROM DUAL
UNION ALL SELECT 'C2', 'stigma', 'noun', '/ˈstɪɡmə/', 'sự kỳ thị' FROM DUAL
UNION ALL SELECT 'C2', 'stoic', 'adjective', '/ˈstəʊɪk/', 'khắc kỷ, nhẫn nại' FROM DUAL
UNION ALL SELECT 'C2', 'stringent', 'adjective', '/ˈstrɪndʒənt/', 'nghiêm ngặt' FROM DUAL
UNION ALL SELECT 'C2', 'strenuous', 'adjective', '/ˈstrenjuəs/', 'vất vả, hăng hái' FROM DUAL
UNION ALL SELECT 'C2', 'stupendous', 'adjective', '/stjuːˈpendəs/', 'kỳ diệu, to lớn' FROM DUAL
UNION ALL SELECT 'C2', 'subjugate', 'verb', '/ˈsʌbdʒuɡeɪt/', 'chinh phục, khuất phục' FROM DUAL
UNION ALL SELECT 'C2', 'sublime', 'adjective', '/səˈblaɪm/', 'siêu phàm' FROM DUAL
UNION ALL SELECT 'C2', 'subordinate', 'noun', '/səˈbɔːdɪnət/', 'cấp dưới' FROM DUAL
UNION ALL SELECT 'C2', 'subservient', 'adjective', '/səbˈsɜːviənt/', 'phục tùng' FROM DUAL
UNION ALL SELECT 'C2', 'subside', 'verb', '/səbˈsaɪd/', 'lắng xuống' FROM DUAL
UNION ALL SELECT 'C2', 'substantiate', 'verb', '/səbˈstænʃieɪt/', 'chứng minh' FROM DUAL
UNION ALL SELECT 'C2', 'subversive', 'adjective', '/səbˈvɜːsɪv/', 'có tính lật đổ' FROM DUAL
UNION ALL SELECT 'C2', 'succinct', 'adjective', '/səkˈsɪŋkt/', 'ngắn gọn, súc tích' FROM DUAL
UNION ALL SELECT 'C2', 'succumb', 'verb', '/səˈkʌm/', 'không chịu nổi, khuất phục' FROM DUAL
UNION ALL SELECT 'C2', 'superficial', 'adjective', '/ˌsuːpəˈfɪʃl/', 'hời hợt, bề ngoài' FROM DUAL
UNION ALL SELECT 'C2', 'superfluous', 'adjective', '/suːˈpɜːfluəs/', 'thừa thãi' FROM DUAL
UNION ALL SELECT 'C2', 'supersede', 'verb', '/ˌsuːpəˈsiːd/', 'thay thế' FROM DUAL
UNION ALL SELECT 'C2', 'supplant', 'verb', '/səˈplɑːnt/', 'thay thế, hất cẳng' FROM DUAL
UNION ALL SELECT 'C2', 'surmise', 'verb', '/səˈmaɪz/', 'phỏng đoán' FROM DUAL
UNION ALL SELECT 'C2', 'surmount', 'verb', '/səˈmaʊnt/', 'vượt qua' FROM DUAL
UNION ALL SELECT 'C2', 'surreptitious', 'adjective', '/ˌsʌrəpˈtɪʃəs/', 'lén lút' FROM DUAL
UNION ALL SELECT 'C2', 'sycophant', 'noun', '/ˈsɪkəfænt/', 'kẻ xu nịnh' FROM DUAL
UNION ALL SELECT 'C2', 'synergy', 'noun', '/ˈsɪnədʒi/', 'sức mạnh tổng hợp' FROM DUAL
UNION ALL SELECT 'C2', 'taciturn', 'adjective', '/ˈtæsɪtɜːn/', 'ít nói' FROM DUAL
UNION ALL SELECT 'C2', 'tangible', 'adjective', '/ˈtændʒəbl/', 'hữu hình, cụ thể' FROM DUAL
UNION ALL SELECT 'C2', 'tantamount', 'adjective', '/ˈtæntəmaʊnt/', 'tương đương với' FROM DUAL
UNION ALL SELECT 'C2', 'tedious', 'adjective', '/ˈtiːdiəs/', 'tẻ nhạt' FROM DUAL
UNION ALL SELECT 'C2', 'temerity', 'noun', '/təˈmerəti/', 'sự liều lĩnh' FROM DUAL
UNION ALL SELECT 'C2', 'tenacious', 'adjective', '/təˈneɪʃəs/', 'ngoan cường' FROM DUAL
UNION ALL SELECT 'C2', 'tenet', 'noun', '/ˈtenɪt/', 'nguyên lý, giáo lý' FROM DUAL
UNION ALL SELECT 'C2', 'tentative', 'adjective', '/ˈtentətɪv/', 'tạm thời, ngập ngừng' FROM DUAL
UNION ALL SELECT 'C2', 'tenuous', 'adjective', '/ˈtenjuəs/', 'mỏng manh, yếu ớt' FROM DUAL
UNION ALL SELECT 'C2', 'terse', 'adjective', '/tɜːs/', 'cộc lốc, ngắn gọn' FROM DUAL
UNION ALL SELECT 'C2', 'thwart', 'verb', '/θwɔːt/', 'cản trở, phá hỏng' FROM DUAL
UNION ALL SELECT 'C2', 'timid', 'adjective', '/ˈtɪmɪd/', 'nhút nhát' FROM DUAL
UNION ALL SELECT 'C2', 'tirade', 'noun', '/taɪˈreɪd/', 'tràng đả kích' FROM DUAL
UNION ALL SELECT 'C2', 'torrent', 'noun', '/ˈtɒrənt/', 'dòng nước lũ, tràng' FROM DUAL
UNION ALL SELECT 'C2', 'tranquil', 'adjective', '/ˈtræŋkwɪl/', 'yên tĩnh' FROM DUAL
UNION ALL SELECT 'C2', 'transcend', 'verb', '/trænˈsend/', 'vượt qua, siêu việt' FROM DUAL
UNION ALL SELECT 'C2', 'transgression', 'noun', '/trænzˈɡreʃn/', 'sự vi phạm' FROM DUAL
UNION ALL SELECT 'C2', 'transient', 'adjective', '/ˈtrænziənt/', 'tạm thời, thoáng qua' FROM DUAL
UNION ALL SELECT 'C2', 'trepidation', 'noun', '/ˌtrepɪˈdeɪʃn/', 'sự lo sợ' FROM DUAL
UNION ALL SELECT 'C2', 'trite', 'adjective', '/traɪt/', 'sáo rỗng' FROM DUAL
UNION ALL SELECT 'C2', 'trivial', 'adjective', '/ˈtrɪviəl/', 'tầm thường, vặt vãnh' FROM DUAL
UNION ALL SELECT 'C2', 'truculent', 'adjective', '/ˈtrʌkjələnt/', 'hung hăng' FROM DUAL
UNION ALL SELECT 'C2', 'tumultuous', 'adjective', '/tjuːˈmʌltʃuəs/', 'náo động' FROM DUAL
UNION ALL SELECT 'C2', 'turbulent', 'adjective', '/ˈtɜːbjələnt/', 'hỗn loạn, sóng gió' FROM DUAL
UNION ALL SELECT 'C2', 'ubiquitous', 'adjective', '/juːˈbɪkwɪtəs/', 'có mặt khắp nơi' FROM DUAL
UNION ALL SELECT 'C2', 'unanimous', 'adjective', '/juˈnænɪməs/', 'nhất trí' FROM DUAL
UNION ALL SELECT 'C2', 'unbridled', 'adjective', '/ʌnˈbraɪdld/', 'không kiềm chế' FROM DUAL
UNION ALL SELECT 'C2', 'uncanny', 'adjective', '/ʌnˈkæni/', 'kỳ lạ, huyền bí' FROM DUAL
UNION ALL SELECT 'C2', 'unconditional', 'adjective', '/ˌʌnkənˈdɪʃənl/', 'vô điều kiện' FROM DUAL
UNION ALL SELECT 'C2', 'undaunted', 'adjective', '/ˌʌnˈdɔːntɪd/', 'không nản lòng' FROM DUAL
UNION ALL SELECT 'C2', 'underpin', 'verb', '/ˌʌndəˈpɪn/', 'làm nền tảng' FROM DUAL
UNION ALL SELECT 'C2', 'understated', 'adjective', '/ˌʌndəˈsteɪtɪd/', 'giản dị, tinh tế' FROM DUAL
UNION ALL SELECT 'C2', 'unequivocal', 'adjective', '/ˌʌnɪˈkwɪvəkl/', 'rõ ràng, dứt khoát' FROM DUAL
UNION ALL SELECT 'C2', 'unfathomable', 'adjective', '/ʌnˈfæðəməbl/', 'không thể hiểu thấu' FROM DUAL
UNION ALL SELECT 'C2', 'unruly', 'adjective', '/ʌnˈruːli/', 'ngỗ ngược' FROM DUAL
UNION ALL SELECT 'C2', 'unscrupulous', 'adjective', '/ʌnˈskruːpjələs/', 'vô đạo đức' FROM DUAL
UNION ALL SELECT 'C2', 'unwarranted', 'adjective', '/ʌnˈwɒrəntɪd/', 'không có cơ sở' FROM DUAL
UNION ALL SELECT 'C2', 'unwavering', 'adjective', '/ʌnˈweɪvərɪŋ/', 'kiên định' FROM DUAL
UNION ALL SELECT 'C2', 'upheaval', 'noun', '/ʌpˈhiːvl/', 'sự biến động' FROM DUAL
UNION ALL SELECT 'C2', 'usurp', 'verb', '/juːˈzɜːp/', 'chiếm đoạt' FROM DUAL
UNION ALL SELECT 'C2', 'utilitarian', 'adjective', '/ˌjuːtɪlɪˈteəriən/', 'thực dụng' FROM DUAL
UNION ALL SELECT 'C2', 'utopia', 'noun', '/juːˈtəʊpiə/', 'thế giới lý tưởng' FROM DUAL
UNION ALL SELECT 'C2', 'vacillate', 'verb', '/ˈvæsəleɪt/', 'do dự' FROM DUAL
UNION ALL SELECT 'C2', 'vehement', 'adjective', '/ˈviːəmənt/', 'kịch liệt' FROM DUAL
UNION ALL SELECT 'C2', 'venerable', 'adjective', '/ˈvenərəbl/', 'đáng kính' FROM DUAL
UNION ALL SELECT 'C2', 'vengeance', 'noun', '/ˈvendʒəns/', 'sự báo thù' FROM DUAL
UNION ALL SELECT 'C2', 'veracity', 'noun', '/vəˈræsəti/', 'tính xác thực' FROM DUAL
UNION ALL SELECT 'C2', 'verbose', 'adjective', '/vɜːˈbəʊs/', 'dài dòng' FROM DUAL
UNION ALL SELECT 'C2', 'verge', 'noun', '/vɜːdʒ/', 'bờ, ven' FROM DUAL
UNION ALL SELECT 'C2', 'vestige', 'noun', '/ˈvestɪdʒ/', 'dấu vết' FROM DUAL
UNION ALL SELECT 'C2', 'vex', 'verb', '/veks/', 'làm phật ý' FROM DUAL
UNION ALL SELECT 'C2', 'vicarious', 'adjective', '/vɪˈkeəriəs/', 'gián tiếp, thay thế' FROM DUAL
UNION ALL SELECT 'C2', 'vicinity', 'noun', '/vəˈsɪnəti/', 'vùng lân cận' FROM DUAL
UNION ALL SELECT 'C2', 'vigilant', 'adjective', '/ˈvɪdʒɪlənt/', 'cảnh giác' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'C2', 'vigorous', 'adjective', '/ˈvɪɡərəs/', 'mạnh mẽ' FROM DUAL
UNION ALL SELECT 'C2', 'vilify', 'verb', '/ˈvɪlɪfaɪ/', 'phỉ báng' FROM DUAL
UNION ALL SELECT 'C2', 'vindicate', 'verb', '/ˈvɪndɪkeɪt/', 'minh oan, chứng minh đúng' FROM DUAL
UNION ALL SELECT 'C2', 'vindictive', 'adjective', '/vɪnˈdɪktɪv/', 'thù dai' FROM DUAL
UNION ALL SELECT 'C2', 'virulent', 'adjective', '/ˈvɪrələnt/', 'độc hại, gay gắt' FROM DUAL
UNION ALL SELECT 'C2', 'visceral', 'adjective', '/ˈvɪsərəl/', 'bản năng, thuộc nội tạng' FROM DUAL
UNION ALL SELECT 'C2', 'vivacious', 'adjective', '/vɪˈveɪʃəs/', 'hoạt bát' FROM DUAL
UNION ALL SELECT 'C2', 'vociferous', 'adjective', '/vəˈsɪfərəs/', 'om sòm, to tiếng' FROM DUAL
UNION ALL SELECT 'C2', 'volition', 'noun', '/vəˈlɪʃn/', 'ý chí' FROM DUAL
UNION ALL SELECT 'C2', 'voracious', 'adjective', '/vəˈreɪʃəs/', 'tham lam, phàm ăn' FROM DUAL
UNION ALL SELECT 'C2', 'vulnerability', 'noun', '/ˌvʌlnərəˈbɪləti/', 'tính dễ bị tổn thương' FROM DUAL
UNION ALL SELECT 'C2', 'wane', 'verb', '/weɪn/', 'suy yếu dần' FROM DUAL
UNION ALL SELECT 'C2', 'wary', 'adjective', '/ˈweəri/', 'thận trọng, cảnh giác' FROM DUAL
UNION ALL SELECT 'C2', 'whimsical', 'adjective', '/ˈwɪmzɪkl/', 'kỳ quặc, bất chợt' FROM DUAL
UNION ALL SELECT 'C2', 'wistful', 'adjective', '/ˈwɪstfl/', 'bâng khuâng, đăm chiêu' FROM DUAL
UNION ALL SELECT 'C2', 'wrath', 'noun', '/rɒθ/', 'cơn thịnh nộ' FROM DUAL
UNION ALL SELECT 'C2', 'wrangle', 'verb', '/ˈræŋɡl/', 'cãi cọ' FROM DUAL
UNION ALL SELECT 'C2', 'yearn', 'verb', '/jɜːn/', 'khao khát' FROM DUAL
UNION ALL SELECT 'C2', 'zeal', 'noun', '/ziːl/', 'lòng nhiệt thành' FROM DUAL
UNION ALL SELECT 'C2', 'zealous', 'adjective', '/ˈzeləs/', 'hăng hái, sốt sắng' FROM DUAL
UNION ALL SELECT 'C2', 'zenith', 'noun', '/ˈzenɪθ/', 'thiên đỉnh, đỉnh cao' FROM DUAL;

