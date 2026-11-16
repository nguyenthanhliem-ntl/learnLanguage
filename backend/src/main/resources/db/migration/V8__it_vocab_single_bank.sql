-- V8: the IT vocabulary becomes a single bank (LEVEL_CODE = 'IT') instead of 9 topics, plus more words.
-- Learned words keep their progress: they point to the same VOCAB_LIBRARY rows, only the code changes.
-- Generated, do not edit by hand.

UPDATE VOCAB_LIBRARY SET LEVEL_CODE = 'IT' WHERE LANGUAGE_CODE = 'en' AND LEVEL_CODE IN ('IT_BASIC', 'IT_PROG', 'IT_WEB', 'IT_DATA', 'IT_NET', 'IT_SEC', 'IT_CLOUD', 'IT_AI', 'IT_WORK');
UPDATE USER_LANGUAGE_SETTINGS SET STUDY_LEVEL = 'IT' WHERE LANGUAGE_CODE = 'en' AND STUDY_LEVEL IN ('IT_BASIC', 'IT_PROG', 'IT_WEB', 'IT_DATA', 'IT_NET', 'IT_SEC', 'IT_CLOUD', 'IT_AI', 'IT_WORK');

INSERT INTO VOCAB_LIBRARY (LANGUAGE_CODE, LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'en', 'IT', 'mobile app', 'noun', '/ˌməʊbaɪl ˈæp/', 'ứng dụng di động' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'native app', 'noun', '/ˌneɪtɪv ˈæp/', 'ứng dụng gốc: viết riêng cho một nền tảng (Android, iOS)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'cross-platform', 'adjective', '/ˌkrɒs ˈplætfɔːm/', 'đa nền tảng: một mã nguồn chạy được trên nhiều hệ điều hành' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'emulator', 'noun', '/ˈemjuleɪtə(r)/', 'trình giả lập thiết bị để chạy thử ứng dụng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'push notification', 'noun', '/ˈpʊʃ nəʊtɪfɪˌkeɪʃn/', 'thông báo đẩy gửi tới điện thoại' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'app store', 'noun', '/ˈæp stɔː(r)/', 'kho ứng dụng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'screen size', 'noun', '/ˈskriːn saɪz/', 'kích thước màn hình' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'touchscreen', 'noun', '/ˈtʌtʃskriːn/', 'màn hình cảm ứng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'gesture', 'noun', '/ˈdʒestʃə(r)/', 'cử chỉ (vuốt, chạm, kéo) trên màn hình cảm ứng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'offline mode', 'noun', '/ˈɒflaɪn məʊd/', 'chế độ ngoại tuyến: dùng được khi không có mạng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'sync', 'verb', '/sɪŋk/', 'đồng bộ dữ liệu giữa các thiết bị' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'battery consumption', 'noun', '/ˈbætri kənˌsʌmpʃn/', 'mức tiêu thụ pin' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'location service', 'noun', '/ləʊˈkeɪʃn ˌsɜːvɪs/', 'dịch vụ định vị' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'in-app purchase', 'noun', '/ˌɪn æp ˈpɜːtʃəs/', 'mua hàng trong ứng dụng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'splash screen', 'noun', '/ˈsplæʃ skriːn/', 'màn hình chờ khi mở ứng dụng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'navigation bar', 'noun', '/ˌnævɪˈɡeɪʃn bɑː(r)/', 'thanh điều hướng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'dark mode', 'noun', '/ˈdɑːk məʊd/', 'chế độ nền tối' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'wireframe', 'noun', '/ˈwaɪəfreɪm/', 'bản phác khung giao diện' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'mockup', 'noun', '/ˈmɒkʌp/', 'bản mô phỏng giao diện chi tiết' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'design system', 'noun', '/dɪˈzaɪn ˌsɪstəm/', 'hệ thống thiết kế: bộ quy chuẩn màu, chữ, thành phần giao diện' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'scalable', 'adjective', '/ˈskeɪləbl/', 'có thể mở rộng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'distributed system', 'noun', '/dɪˌstrɪbjuːtɪd ˈsɪstəm/', 'hệ thống phân tán: nhiều máy cùng phối hợp như một hệ thống' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'message queue', 'noun', '/ˈmesɪdʒ kjuː/', 'hàng đợi thông điệp: trung gian chuyển tin giữa các dịch vụ (vd. Kafka, RabbitMQ)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'publish-subscribe', 'noun', '/ˌpʌblɪʃ səbˈskraɪb/', 'mô hình phát – đăng ký: bên gửi phát tin, nhiều bên đăng ký nhận' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'event-driven', 'adjective', '/ɪˈvent ˌdrɪvn/', 'hướng sự kiện: hệ thống phản ứng theo các sự kiện phát sinh' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'API gateway', 'noun', '/ˌeɪ piː ˈaɪ ˌɡeɪtweɪ/', 'cổng API: điểm vào chung chuyển yêu cầu tới các dịch vụ phía sau' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'service discovery', 'noun', '/ˈsɜːvɪs dɪˌskʌvəri/', 'tự tìm địa chỉ của các dịch vụ trong hệ thống' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'idempotent', 'adjective', '/ˌaɪdemˈpəʊtənt/', 'lũy đẳng: gọi nhiều lần cho kết quả như gọi một lần' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'eventual consistency', 'noun', '/ɪˌventʃuəl kənˈsɪstənsi/', 'nhất quán cuối cùng: dữ liệu sẽ đồng bộ sau một khoảng thời gian' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'single point of failure', 'noun', '/ˌsɪŋɡl pɔɪnt əv ˈfeɪljə(r)/', 'điểm lỗi duy nhất: hỏng một chỗ là cả hệ thống ngừng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'horizontal scaling', 'noun', '/ˌhɒrɪˈzɒntl ˈskeɪlɪŋ/', 'mở rộng ngang: thêm máy chủ' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'vertical scaling', 'noun', '/ˌvɜːtɪkl ˈskeɪlɪŋ/', 'mở rộng dọc: nâng cấp cấu hình một máy' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'caching layer', 'noun', '/ˈkæʃɪŋ ˌleɪə(r)/', 'tầng bộ nhớ đệm (vd. Redis)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'dependency injection', 'noun', '/dɪˈpendənsi ɪnˌdʒekʃn/', 'tiêm phụ thuộc: đối tượng nhận thành phần nó cần từ bên ngoài' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'separation of concerns', 'noun', '/ˌsepəˌreɪʃn əv kənˈsɜːnz/', 'tách biệt mối quan tâm: mỗi phần chỉ lo một việc' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'loose coupling', 'noun', '/ˌluːs ˈkʌplɪŋ/', 'liên kết lỏng: các phần ít phụ thuộc vào nhau' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'layered architecture', 'noun', '/ˌleɪəd ˈɑːkɪtektʃə(r)/', 'kiến trúc phân lớp (controller, service, repository)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'domain model', 'noun', '/dəˈmeɪn ˌmɒdl/', 'mô hình nghiệp vụ' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'data flow', 'noun', '/ˈdeɪtə fləʊ/', 'luồng dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'sequence diagram', 'noun', '/ˈsiːkwəns ˌdaɪəɡræm/', 'biểu đồ tuần tự' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'use case diagram', 'noun', '/ˈjuːs keɪs ˌdaɪəɡræm/', 'biểu đồ ca sử dụng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'entity', 'noun', '/ˈentəti/', 'thực thể: đối tượng nghiệp vụ được lưu trong cơ sở dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'repository pattern', 'noun', '/rɪˈpɒzətri ˌpætn/', 'mẫu repository: lớp trung gian truy cập dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'singleton', 'noun', '/ˈsɪŋɡltən/', 'mẫu singleton: lớp chỉ có duy nhất một đối tượng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'factory', 'noun', '/ˈfæktri/', 'mẫu factory: lớp chuyên tạo đối tượng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'observer', 'noun', '/əbˈzɜːvə(r)/', 'mẫu observer: đối tượng tự nhận thông báo khi đối tượng khác thay đổi' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'immutable', 'adjective', '/ɪˈmjuːtəbl/', 'bất biến: không thể thay đổi sau khi tạo' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'stateless', 'adjective', '/ˈsteɪtləs/', 'phi trạng thái: không lưu trạng thái giữa các yêu cầu' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'stateful', 'adjective', '/ˈsteɪtfl/', 'có lưu trạng thái' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'synchronous', 'adjective', '/ˈsɪŋkrənəs/', 'đồng bộ: chờ việc trước xong mới làm việc sau' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'blocking', 'adjective', '/ˈblɒkɪŋ/', 'chặn: bắt chương trình chờ cho tới khi xong' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'race condition', 'noun', '/ˈreɪs kənˌdɪʃn/', 'tranh chấp: kết quả sai do nhiều luồng chạy cùng lúc' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'memory leak', 'noun', '/ˈmeməri liːk/', 'rò rỉ bộ nhớ: bộ nhớ không được giải phóng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'garbage collection', 'noun', '/ˈɡɑːbɪdʒ kəˌlekʃn/', 'thu gom rác: tự giải phóng bộ nhớ không còn dùng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'overflow', 'noun', '/ˈəʊvəfləʊ/', 'tràn (bộ nhớ, giá trị số vượt giới hạn)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'infinite loop', 'noun', '/ˌɪnfɪnət ˈluːp/', 'vòng lặp vô hạn' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'edge', 'noun', '/edʒ/', 'cạnh nối hai đỉnh trong đồ thị; biên' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'complexity', 'noun', '/kəmˈpleksəti/', 'độ phức tạp (thời gian, bộ nhớ) của thuật toán' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'big O notation', 'noun', '/ˌbɪɡ ˈəʊ nəʊˌteɪʃn/', 'ký hiệu O lớn: cách mô tả độ phức tạp thuật toán' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'binary search', 'noun', '/ˌbaɪnəri ˈsɜːtʃ/', 'tìm kiếm nhị phân: chia đôi dần để tìm trong dãy đã sắp xếp' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'linked list', 'noun', '/ˌlɪŋkt ˈlɪst/', 'danh sách liên kết' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'dictionary', 'noun', '/ˈdɪkʃənri/', 'từ điển: cấu trúc lưu cặp khóa – giá trị' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'tuple', 'noun', '/ˈtjuːpl/', 'bộ giá trị cố định' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'enum', 'noun', '/ˈiːnʌm/', 'kiểu liệt kê: tập giá trị có tên cố định' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'generic', 'adjective', '/dʒəˈnerɪk/', 'tổng quát: dùng được cho nhiều kiểu dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'lambda', 'noun', '/ˈlæmdə/', 'hàm ẩn danh viết gọn' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'closure', 'noun', '/ˈkləʊʒə(r)/', 'bao đóng: hàm nhớ được biến ở phạm vi bên ngoài nó' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'promise', 'noun', '/ˈprɒmɪs/', 'lời hứa: đối tượng đại diện cho kết quả sẽ có trong tương lai' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'await', 'verb', '/əˈweɪt/', 'chờ một tác vụ bất đồng bộ hoàn tất' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'type casting', 'noun', '/ˈtaɪp ˌkɑːstɪŋ/', 'ép kiểu dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'nested', 'adjective', '/ˈnestɪd/', 'lồng nhau (vòng lặp lồng, hàm lồng)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'increment', 'verb', '/ˈɪŋkrəmənt/', 'tăng giá trị (thường thêm 1)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'decrement', 'verb', '/ˈdekrɪmənt/', 'giảm giá trị (thường bớt 1)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'concatenate', 'verb', '/kənˈkætəneɪt/', 'nối chuỗi' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'invoke', 'verb', '/ɪnˈvəʊk/', 'gọi (hàm, phương thức)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'instantiate', 'verb', '/ɪnˈstænʃieɪt/', 'tạo một đối tượng từ lớp' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'throw', 'verb', '/θrəʊ/', 'ném ra một ngoại lệ' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'catch', 'verb', '/kætʃ/', 'bắt và xử lý ngoại lệ' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'log', 'verb', '/lɒɡ/', 'ghi nhật ký' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'trace', 'verb', '/treɪs/', 'lần theo, truy vết' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'benchmark', 'verb', '/ˈbentʃmɑːk/', 'đo hiệu năng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'profile', 'verb', '/ˈprəʊfaɪl/', 'phân tích hiệu năng xem đoạn mã nào chậm' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'lint', 'verb', '/lɪnt/', 'chạy công cụ kiểm tra lỗi và quy chuẩn viết mã' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'transpile', 'verb', '/trænsˈpaɪl/', 'chuyển mã từ ngôn ngữ này sang ngôn ngữ khác cùng cấp' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'open-source contribution', 'noun', '/ˌəʊpən sɔːs ˌkɒntrɪˈbjuːʃn/', 'đóng góp cho dự án mã nguồn mở' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'clone', 'verb', '/kləʊn/', 'sao chép một kho mã về máy' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'fork', 'verb', '/fɔːk/', 'tách một bản sao riêng của kho mã để phát triển' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'push', 'verb', '/pʊʃ/', 'đẩy mã từ máy lên kho chung' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'pull', 'verb', '/pʊl/', 'kéo mã mới từ kho chung về máy' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'rebase', 'verb', '/ˌriːˈbeɪs/', 'đặt lại các commit lên trên nhánh mới nhất' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'cherry-pick', 'verb', '/ˈtʃeri pɪk/', 'lấy riêng một commit sang nhánh khác' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'stash', 'verb', '/stæʃ/', 'cất tạm các thay đổi chưa commit' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'tag', 'verb', '/tæɡ/', 'đánh nhãn phiên bản cho một commit' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'diff', 'noun', '/dɪf/', 'phần khác biệt giữa hai phiên bản mã' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'semantic versioning', 'noun', '/sɪˌmæntɪk ˈvɜːʃənɪŋ/', 'đánh số phiên bản theo dạng MAJOR.MINOR.PATCH' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'breaking change', 'noun', '/ˌbreɪkɪŋ ˈtʃeɪndʒ/', 'thay đổi làm hỏng tính tương thích với bản cũ' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'backward compatible', 'adjective', '/ˌbækwəd kəmˈpætəbl/', 'tương thích ngược: bản mới vẫn chạy được với cái cũ' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'feature flag', 'noun', '/ˈfiːtʃə flæɡ/', 'cờ tính năng: bật tắt tính năng mà không cần triển khai lại' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'canary release', 'noun', '/kəˈneəri rɪˌliːs/', 'phát hành thử cho một nhóm nhỏ người dùng trước' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'blue-green deployment', 'noun', '/ˌbluː ɡriːn dɪˈplɔɪmənt/', 'triển khai xanh – lam: chạy song song hai môi trường để chuyển đổi không gián đoạn' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'zero downtime', 'noun', '/ˌzɪərəʊ ˈdaʊntaɪm/', 'không gián đoạn dịch vụ' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'uptime SLA', 'noun', '/ˈʌptaɪm ˌes el ˈeɪ/', 'cam kết mức độ sẵn sàng của dịch vụ' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'observability', 'noun', '/əbˌzɜːvəˈbɪləti/', 'khả năng quan sát: hiểu được trạng thái hệ thống qua log, chỉ số, vết' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'root cause', 'noun', '/ˌruːt ˈkɔːz/', 'nguyên nhân gốc rễ' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'on-call', 'adjective', '/ˌɒn ˈkɔːl/', 'trực sự cố ngoài giờ' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'escalate', 'verb', '/ˈeskəleɪt/', 'chuyển vấn đề lên cấp cao hơn để xử lý' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'SSH key', 'noun', '/ˌes es ˈeɪtʃ kiː/', 'khóa SSH dùng để đăng nhập máy chủ từ xa an toàn' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'access token', 'noun', '/ˈækses ˌtəʊkən/', 'mã truy cập dùng khi gọi API' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'refresh token', 'noun', '/rɪˈfreʃ ˌtəʊkən/', 'mã làm mới: dùng để xin access token mới khi hết hạn' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'single sign-on', 'noun', '/ˌsɪŋɡl ˈsaɪn ɒn/', 'đăng nhập một lần dùng cho nhiều hệ thống (SSO)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'role-based access control', 'noun', '/ˌrəʊl beɪst ˈækses kənˌtrəʊl/', 'phân quyền theo vai trò (RBAC)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'least privilege', 'noun', '/ˌliːst ˈprɪvəlɪdʒ/', 'đặc quyền tối thiểu: chỉ cấp đúng quyền cần thiết' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'cross-site scripting', 'noun', '/ˌkrɒs saɪt ˈskrɪptɪŋ/', 'tấn công chèn mã script vào trang web (XSS)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'man-in-the-middle', 'noun', '/ˌmæn ɪn ðə ˈmɪdl/', 'tấn công xen giữa: kẻ gian chặn và đọc trộm dữ liệu trên đường truyền' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'end-to-end encryption', 'noun', '/ˌend tu ˌend ɪnˈkrɪpʃn/', 'mã hóa đầu cuối: chỉ người gửi và người nhận đọc được' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'security patch', 'noun', '/sɪˈkjʊərəti pætʃ/', 'bản vá bảo mật' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'antivirus', 'noun', '/ˈæntivaɪrəs/', 'phần mềm diệt vi-rút' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'spam', 'noun', '/spæm/', 'thư rác' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'data loss', 'noun', '/ˈdeɪtə lɒs/', 'mất dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'disaster recovery', 'noun', '/dɪˈzɑːstə rɪˌkʌvəri/', 'khôi phục sau thảm họa' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'retention policy', 'noun', '/rɪˈtenʃn ˌpɒləsi/', 'chính sách lưu giữ dữ liệu trong bao lâu' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'raw data', 'noun', '/ˌrɔː ˈdeɪtə/', 'dữ liệu thô, chưa xử lý' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'structured data', 'noun', '/ˌstrʌktʃəd ˈdeɪtə/', 'dữ liệu có cấu trúc (bảng, cột rõ ràng)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'unstructured data', 'noun', '/ʌnˌstrʌktʃəd ˈdeɪtə/', 'dữ liệu phi cấu trúc (văn bản, ảnh, video)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'data cleaning', 'noun', '/ˈdeɪtə ˌkliːnɪŋ/', 'làm sạch dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'data lake', 'noun', '/ˈdeɪtə leɪk/', 'hồ dữ liệu: nơi lưu mọi dữ liệu thô với số lượng lớn' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'ETL', 'noun', '/ˌiː tiː ˈel/', 'trích xuất – biến đổi – nạp dữ liệu (Extract, Transform, Load)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'spreadsheet', 'noun', '/ˈspredʃiːt/', 'bảng tính (Excel, Google Sheets)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'CSV file', 'noun', '/ˌsiː es ˈviː faɪl/', 'tệp CSV: dữ liệu dạng bảng, các giá trị cách nhau bằng dấu phẩy' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'JSON', 'noun', '/ˈdʒeɪsn/', 'định dạng dữ liệu văn bản dạng khóa – giá trị, phổ biến trong API' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'XML', 'noun', '/ˌeks em ˈel/', 'ngôn ngữ đánh dấu mở rộng dùng để mô tả dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'YAML', 'noun', '/ˈjæml/', 'định dạng cấu hình dễ đọc, dùng thụt lề' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'regular expression', 'noun', '/ˌreɡjələr ɪkˈspreʃn/', 'biểu thức chính quy: mẫu dùng để tìm và kiểm tra chuỗi' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'encoding', 'noun', '/ɪnˈkəʊdɪŋ/', 'mã hóa ký tự (vd. UTF-8)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'timestamp', 'noun', '/ˈtaɪmstæmp/', 'dấu thời gian' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'time zone', 'noun', '/ˈtaɪm zəʊn/', 'múi giờ' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'UUID', 'noun', '/ˌjuː juː aɪ ˈdiː/', 'mã định danh duy nhất toàn cầu' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'open API', 'noun', '/ˌəʊpən ˌeɪ piː ˈaɪ/', 'API công khai cho bên ngoài sử dụng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'SDK', 'noun', '/ˌes diː ˈkeɪ/', 'bộ công cụ phát triển phần mềm (Software Development Kit)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'IDE', 'noun', '/ˌaɪ diː ˈiː/', 'môi trường phát triển tích hợp (vd. VS Code, IntelliJ)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'code editor', 'noun', '/ˈkəʊd ˌedɪtə(r)/', 'trình soạn thảo mã' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'syntax highlighting', 'noun', '/ˈsɪntæks ˌhaɪlaɪtɪŋ/', 'tô màu cú pháp' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'autocomplete', 'noun', '/ˈɔːtəʊkəmpliːt/', 'tự động gợi ý hoàn thành mã' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'extension marketplace', 'noun', '/ɪkˈstenʃn ˌmɑːkɪtpleɪs/', 'chợ tiện ích mở rộng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'package manager', 'noun', '/ˈpækɪdʒ ˌmænɪdʒə(r)/', 'trình quản lý gói (npm, Maven, pip)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'build tool', 'noun', '/ˈbɪld tuːl/', 'công cụ build (Maven, Gradle, Vite)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'linter', 'noun', '/ˈlɪntə(r)/', 'công cụ kiểm tra lỗi và quy chuẩn viết mã' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'formatter', 'noun', '/ˈfɔːmætə(r)/', 'công cụ tự định dạng mã cho đẹp và thống nhất' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'code smell', 'noun', '/ˈkəʊd smel/', 'dấu hiệu mã có vấn đề, nên được viết lại' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'clean code', 'noun', '/ˌkliːn ˈkəʊd/', 'mã sạch: dễ đọc, dễ hiểu, dễ bảo trì' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'naming convention', 'noun', '/ˈneɪmɪŋ kənˌvenʃn/', 'quy ước đặt tên' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'camel case', 'noun', '/ˈkæml keɪs/', 'kiểu đặt tên viết hoa chữ đầu mỗi từ (myVariableName)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'snake case', 'noun', '/ˈsneɪk keɪs/', 'kiểu đặt tên nối bằng dấu gạch dưới (my_variable_name)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'readability', 'noun', '/ˌriːdəˈbɪləti/', 'tính dễ đọc' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'maintainability', 'noun', '/meɪnˌteɪnəˈbɪləti/', 'tính dễ bảo trì' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'reusable', 'adjective', '/ˌriːˈjuːzəbl/', 'có thể tái sử dụng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'robust', 'adjective', '/rəʊˈbʌst/', 'vững chắc, chịu được lỗi và đầu vào bất thường' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'efficient', 'adjective', '/ɪˈfɪʃnt/', 'hiệu quả, ít tốn tài nguyên' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'lightweight', 'adjective', '/ˈlaɪtweɪt/', 'nhẹ, gọn' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'hard-coded', 'adjective', '/ˌhɑːd ˈkəʊdɪd/', 'viết cứng giá trị trong mã thay vì đọc từ cấu hình' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'configurable', 'adjective', '/kənˈfɪɡərəbl/', 'có thể cấu hình' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'user-friendly', 'adjective', '/ˌjuːzə ˈfrendli/', 'thân thiện với người dùng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'intuitive', 'adjective', '/ɪnˈtjuːɪtɪv/', 'trực quan, dễ hiểu ngay' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'seamless', 'adjective', '/ˈsiːmləs/', 'liền mạch, không gián đoạn' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'real-time', 'adjective', '/ˌrɪəl ˈtaɪm/', 'thời gian thực' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'high-traffic', 'adjective', '/ˌhaɪ ˈtræfɪk/', 'có lượng truy cập lớn' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'mission-critical', 'adjective', '/ˌmɪʃn ˈkrɪtɪkl/', 'cực kỳ quan trọng, không được phép ngừng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'stand-up', 'noun', '/ˈstænd ʌp/', 'buổi họp đứng ngắn hằng ngày' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'one-on-one', 'noun', '/ˌwʌn ɒn ˈwʌn/', 'buổi trao đổi riêng giữa quản lý và nhân viên' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'kick-off meeting', 'noun', '/ˈkɪk ɒf ˌmiːtɪŋ/', 'buổi họp khởi động dự án' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'demo', 'noun', '/ˈdeməʊ/', 'buổi trình diễn sản phẩm' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'feedback', 'noun', '/ˈfiːdbæk/', 'phản hồi, góp ý' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'blocker', 'noun', '/ˈblɒkə(r)/', 'vấn đề đang chặn, khiến công việc không tiến được' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'update', 'noun', '/ˈʌpdeɪt/', 'thông tin cập nhật tiến độ' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'ETA', 'noun', '/ˌiː tiː ˈeɪ/', 'thời điểm dự kiến hoàn thành (Estimated Time of Arrival)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'work item', 'noun', '/ˈwɜːk ˌaɪtəm/', 'đầu việc' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'follow up', 'verb', '/ˌfɒləʊ ˈʌp/', 'theo dõi tiếp, nhắc lại sau' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'sync up', 'verb', '/ˌsɪŋk ˈʌp/', 'trao đổi nhanh để thống nhất thông tin' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'clarify', 'verb', '/ˈklærəfaɪ/', 'làm rõ' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'align', 'verb', '/əˈlaɪn/', 'thống nhất (mục tiêu, cách làm)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'prioritize', 'verb', '/praɪˈɒrətaɪz/', 'sắp xếp mức ưu tiên' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'delegate', 'verb', '/ˈdelɪɡeɪt/', 'giao việc cho người khác' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'brainstorm', 'verb', '/ˈbreɪnstɔːm/', 'động não, cùng đưa ra ý tưởng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'ship', 'verb', '/ʃɪp/', 'phát hành, đưa sản phẩm tới người dùng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'roll out', 'verb', '/ˌrəʊl ˈaʊt/', 'triển khai dần dần tới người dùng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'wrap up', 'verb', '/ˌræp ˈʌp/', 'kết thúc, tổng kết' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'take ownership', 'verb', '/ˌteɪk ˈəʊnəʃɪp/', 'nhận trách nhiệm chính về một việc' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'heads-up', 'noun', '/ˈhedz ʌp/', 'lời báo trước, nhắc trước' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'action item', 'noun', '/ˈækʃn ˌaɪtəm/', 'việc cần làm sau cuộc họp' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'minutes', 'noun', '/ˈmɪnɪts/', 'biên bản cuộc họp' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'agenda', 'noun', '/əˈdʒendə/', 'chương trình họp' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'workload', 'noun', '/ˈwɜːkləʊd/', 'khối lượng công việc' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'burnout', 'noun', '/ˈbɜːnaʊt/', 'kiệt sức vì làm việc quá nhiều' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'resume', 'noun', '/ˈrezjumeɪ/', 'sơ yếu lý lịch, CV' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'portfolio', 'noun', '/pɔːtˈfəʊliəʊ/', 'hồ sơ dự án đã làm' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'job description', 'noun', '/ˈdʒɒb dɪˌskrɪpʃn/', 'bản mô tả công việc (JD)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'interview', 'noun', '/ˈɪntəvjuː/', 'buổi phỏng vấn' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'technical interview', 'noun', '/ˌteknɪkl ˈɪntəvjuː/', 'phỏng vấn kỹ thuật' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'coding challenge', 'noun', '/ˈkəʊdɪŋ ˌtʃælɪndʒ/', 'bài thử thách lập trình' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'whiteboard', 'noun', '/ˈwaɪtbɔːd/', 'bảng trắng; phỏng vấn viết thuật toán lên bảng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'system design interview', 'noun', '/ˌsɪstəm dɪˈzaɪn ˌɪntəvjuː/', 'phỏng vấn thiết kế hệ thống' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'soft skills', 'noun', '/ˈsɒft skɪlz/', 'kỹ năng mềm' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'hard skills', 'noun', '/ˈhɑːd skɪlz/', 'kỹ năng chuyên môn' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'probation period', 'noun', '/prəˈbeɪʃn ˌpɪəriəd/', 'thời gian thử việc' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'salary negotiation', 'noun', '/ˈsæləri nɪˌɡəʊʃieɪʃn/', 'thương lượng lương' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'job offer', 'noun', '/ˈdʒɒb ˌɒfə(r)/', 'lời mời làm việc' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'junior', 'adjective', '/ˈdʒuːniə(r)/', 'cấp thấp, ít kinh nghiệm (lập trình viên mới)' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'senior', 'adjective', '/ˈsiːniə(r)/', 'cấp cao, nhiều kinh nghiệm' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'mentor', 'noun', '/ˈmentɔː(r)/', 'người hướng dẫn, kèm cặp' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'career path', 'noun', '/kəˈrɪə pɑːθ/', 'lộ trình sự nghiệp' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'promotion', 'noun', '/prəˈməʊʃn/', 'thăng chức' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'team player', 'noun', '/ˈtiːm ˌpleɪə(r)/', 'người làm việc nhóm tốt' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'problem-solving', 'noun', '/ˈprɒbləm ˌsɒlvɪŋ/', 'kỹ năng giải quyết vấn đề' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'self-taught', 'adjective', '/ˌself ˈtɔːt/', 'tự học' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'hands-on experience', 'noun', '/ˌhændz ɒn ɪkˈspɪəriəns/', 'kinh nghiệm thực tế' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'tech stack', 'noun', '/ˈtek stæk/', 'bộ công nghệ sử dụng trong dự án' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'side project', 'noun', '/ˈsaɪd ˌprɒdʒekt/', 'dự án cá nhân làm thêm' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'startup', 'noun', '/ˈstɑːtʌp/', 'công ty khởi nghiệp' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'product company', 'noun', '/ˈprɒdʌkt ˌkʌmpəni/', 'công ty làm sản phẩm riêng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'client project', 'noun', '/ˈklaɪənt ˌprɒdʒekt/', 'dự án làm cho khách hàng' FROM DUAL
UNION ALL SELECT 'en', 'IT', 'time-to-market', 'noun', '/ˌtaɪm tə ˈmɑːkɪt/', 'thời gian đưa sản phẩm ra thị trường' FROM DUAL;
