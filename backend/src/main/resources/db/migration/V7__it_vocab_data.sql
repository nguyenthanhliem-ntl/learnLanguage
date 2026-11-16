-- V7: English vocabulary for IT (specialized bank, 9 topics), with Vietnamese meanings and short explanations.
-- Generated, do not edit by hand. LEVEL_CODE holds the topic code (IT_BASIC, IT_PROG, ...).

INSERT INTO VOCAB_LIBRARY (LANGUAGE_CODE, LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'en', 'IT_BASIC', 'hardware', 'noun', '/ˈhɑːdweə(r)/', 'phần cứng: các bộ phận vật lý của máy tính' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'software', 'noun', '/ˈsɒftweə(r)/', 'phần mềm: chương trình và dữ liệu chạy trên máy tính' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'operating system', 'noun', '/ˈɒpəreɪtɪŋ ˌsɪstəm/', 'hệ điều hành: phần mềm quản lý phần cứng và chạy các ứng dụng (Windows, Linux, macOS)' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'processor', 'noun', '/ˈprəʊsesə(r)/', 'bộ xử lý (CPU): bộ phận thực hiện các phép tính và lệnh' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'memory', 'noun', '/ˈmeməri/', 'bộ nhớ (RAM): nơi lưu dữ liệu tạm thời khi chương trình đang chạy' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'storage', 'noun', '/ˈstɔːrɪdʒ/', 'bộ lưu trữ: nơi giữ dữ liệu lâu dài như ổ cứng, SSD' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'hard drive', 'noun', '/ˌhɑːd ˈdraɪv/', 'ổ cứng: thiết bị lưu trữ dữ liệu lâu dài' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'solid-state drive', 'noun', '/ˌsɒlɪd steɪt ˈdraɪv/', 'ổ SSD: ổ lưu trữ dùng chip nhớ, nhanh hơn ổ cứng cơ' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'motherboard', 'noun', '/ˈmʌðəbɔːd/', 'bo mạch chủ: bảng mạch chính kết nối mọi linh kiện' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'graphics card', 'noun', '/ˈɡræfɪks kɑːd/', 'card đồ họa: linh kiện xử lý hình ảnh (GPU)' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'peripheral', 'noun', '/pəˈrɪfərəl/', 'thiết bị ngoại vi: chuột, bàn phím, máy in... gắn ngoài máy tính' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'device', 'noun', '/dɪˈvaɪs/', 'thiết bị' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'keyboard', 'noun', '/ˈkiːbɔːd/', 'bàn phím' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'monitor', 'noun', '/ˈmɒnɪtə(r)/', 'màn hình máy tính' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'laptop', 'noun', '/ˈlæptɒp/', 'máy tính xách tay' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'desktop', 'noun', '/ˈdesktɒp/', 'máy tính để bàn; màn hình nền' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'server', 'noun', '/ˈsɜːvə(r)/', 'máy chủ: máy tính cung cấp dịch vụ cho các máy khác' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'driver', 'noun', '/ˈdraɪvə(r)/', 'trình điều khiển: phần mềm giúp hệ điều hành làm việc với phần cứng' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'firmware', 'noun', '/ˈfɜːmweə(r)/', 'phần mềm nhúng: phần mềm cài sẵn trong thiết bị phần cứng' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'kernel', 'noun', '/ˈkɜːnl/', 'nhân hệ điều hành: phần lõi quản lý CPU, bộ nhớ và thiết bị' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'boot', 'verb', '/buːt/', 'khởi động máy tính' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'reboot', 'verb', '/ˌriːˈbuːt/', 'khởi động lại' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'shut down', 'verb', '/ˌʃʌt ˈdaʊn/', 'tắt máy' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'install', 'verb', '/ɪnˈstɔːl/', 'cài đặt phần mềm' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'uninstall', 'verb', '/ˌʌnɪnˈstɔːl/', 'gỡ cài đặt' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'update', 'verb', '/ˌʌpˈdeɪt/', 'cập nhật lên phiên bản mới' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'upgrade', 'verb', '/ˌʌpˈɡreɪd/', 'nâng cấp phần cứng hoặc phần mềm' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'file', 'noun', '/faɪl/', 'tệp tin' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'folder', 'noun', '/ˈfəʊldə(r)/', 'thư mục' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'directory', 'noun', '/dəˈrektəri/', 'thư mục (cách gọi trong dòng lệnh và lập trình)' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'path', 'noun', '/pɑːθ/', 'đường dẫn tới tệp hoặc thư mục' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'extension', 'noun', '/ɪkˈstenʃn/', 'phần mở rộng của tệp (.txt, .jpg); tiện ích mở rộng' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'shortcut', 'noun', '/ˈʃɔːtkʌt/', 'phím tắt; lối tắt' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'clipboard', 'noun', '/ˈklɪpbɔːd/', 'bộ nhớ tạm dùng khi sao chép, dán' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'command line', 'noun', '/kəˈmɑːnd laɪn/', 'dòng lệnh: giao diện gõ lệnh bằng chữ' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'terminal', 'noun', '/ˈtɜːmɪnl/', 'cửa sổ dòng lệnh' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'shell', 'noun', '/ʃel/', 'trình thông dịch lệnh (bash, PowerShell)' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'process', 'noun', '/ˈprəʊses/', 'tiến trình: một chương trình đang chạy' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'thread', 'noun', '/θred/', 'luồng: đơn vị thực thi nhỏ bên trong một tiến trình' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'task', 'noun', '/tɑːsk/', 'tác vụ' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'user interface', 'noun', '/ˌjuːzər ˈɪntəfeɪs/', 'giao diện người dùng (UI)' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'window', 'noun', '/ˈwɪndəʊ/', 'cửa sổ ứng dụng' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'icon', 'noun', '/ˈaɪkɒn/', 'biểu tượng' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'cursor', 'noun', '/ˈkɜːsə(r)/', 'con trỏ' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'screenshot', 'noun', '/ˈskriːnʃɒt/', 'ảnh chụp màn hình' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'backup', 'noun', '/ˈbækʌp/', 'bản sao lưu dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'restore', 'verb', '/rɪˈstɔː(r)/', 'khôi phục dữ liệu từ bản sao lưu' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'compress', 'verb', '/kəmˈpres/', 'nén tệp cho nhỏ lại' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'extract', 'verb', '/ɪkˈstrækt/', 'giải nén; trích xuất' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'format', 'verb', '/ˈfɔːmæt/', 'định dạng (ổ đĩa, văn bản)' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'bit', 'noun', '/bɪt/', 'bit: đơn vị thông tin nhỏ nhất, 0 hoặc 1' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'byte', 'noun', '/baɪt/', 'byte: 8 bit' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'binary', 'adjective', '/ˈbaɪnəri/', 'nhị phân: hệ đếm chỉ gồm 0 và 1' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'resolution', 'noun', '/ˌrezəˈluːʃn/', 'độ phân giải màn hình hoặc hình ảnh' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'performance', 'noun', '/pəˈfɔːməns/', 'hiệu năng: tốc độ và mức hiệu quả của hệ thống' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'compatible', 'adjective', '/kəmˈpætəbl/', 'tương thích: dùng được cùng nhau' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'virtual machine', 'noun', '/ˌvɜːtʃuəl məˈʃiːn/', 'máy ảo: máy tính giả lập chạy bên trong máy thật' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'crash', 'verb', '/kræʃ/', 'bị sập, dừng đột ngột' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'freeze', 'verb', '/friːz/', 'bị treo, không phản hồi' FROM DUAL
UNION ALL SELECT 'en', 'IT_BASIC', 'troubleshoot', 'verb', '/ˈtrʌblʃuːt/', 'dò tìm và xử lý sự cố' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'algorithm', 'noun', '/ˈælɡərɪðəm/', 'thuật toán: dãy bước xác định để giải một bài toán' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'variable', 'noun', '/ˈveəriəbl/', 'biến: tên gắn với một giá trị có thể thay đổi' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'constant', 'noun', '/ˈkɒnstənt/', 'hằng số: giá trị không đổi trong chương trình' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'data type', 'noun', '/ˈdeɪtə taɪp/', 'kiểu dữ liệu: số, chuỗi, boolean...' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'string', 'noun', '/strɪŋ/', 'chuỗi ký tự' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'integer', 'noun', '/ˈɪntɪdʒə(r)/', 'số nguyên' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'boolean', 'noun', '/ˈbuːliən/', 'kiểu logic chỉ có hai giá trị true / false' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'array', 'noun', '/əˈreɪ/', 'mảng: dãy phần tử được đánh chỉ số' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'list', 'noun', '/lɪst/', 'danh sách các phần tử' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'object', 'noun', '/ˈɒbdʒɪkt/', 'đối tượng: gom dữ liệu và hành vi lại với nhau' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'class', 'noun', '/klɑːs/', 'lớp: khuôn mẫu để tạo ra đối tượng' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'instance', 'noun', '/ˈɪnstəns/', 'thể hiện: một đối tượng cụ thể tạo từ lớp' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'method', 'noun', '/ˈmeθəd/', 'phương thức: hàm thuộc về một lớp hoặc đối tượng' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'function', 'noun', '/ˈfʌŋkʃn/', 'hàm: khối mã có tên, nhận đầu vào và trả kết quả' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'parameter', 'noun', '/pəˈræmɪtə(r)/', 'tham số: biến khai báo trong định nghĩa hàm' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'argument', 'noun', '/ˈɑːɡjumənt/', 'đối số: giá trị thật truyền vào khi gọi hàm' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'return', 'verb', '/rɪˈtɜːn/', 'trả về kết quả từ hàm' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'loop', 'noun', '/luːp/', 'vòng lặp: đoạn mã chạy lặp lại nhiều lần' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'iteration', 'noun', '/ˌɪtəˈreɪʃn/', 'một lần lặp; quá trình lặp' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'condition', 'noun', '/kənˈdɪʃn/', 'điều kiện (dùng trong if, while)' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'statement', 'noun', '/ˈsteɪtmənt/', 'câu lệnh' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'expression', 'noun', '/ɪkˈspreʃn/', 'biểu thức: đoạn mã tính ra một giá trị' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'operator', 'noun', '/ˈɒpəreɪtə(r)/', 'toán tử: +, -, ==, &&...' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'syntax', 'noun', '/ˈsɪntæks/', 'cú pháp: quy tắc viết của một ngôn ngữ lập trình' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'compile', 'verb', '/kəmˈpaɪl/', 'biên dịch mã nguồn thành mã máy' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'compiler', 'noun', '/kəmˈpaɪlə(r)/', 'trình biên dịch' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'interpreter', 'noun', '/ɪnˈtɜːprətə(r)/', 'trình thông dịch: chạy mã từng dòng mà không biên dịch trước' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'runtime', 'noun', '/ˈrʌntaɪm/', 'thời điểm chương trình chạy; môi trường chạy chương trình' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'source code', 'noun', '/ˈsɔːs kəʊd/', 'mã nguồn' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'bug', 'noun', '/bʌɡ/', 'lỗi trong chương trình' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'debug', 'verb', '/ˌdiːˈbʌɡ/', 'gỡ lỗi: tìm và sửa lỗi' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'exception', 'noun', '/ɪkˈsepʃn/', 'ngoại lệ: lỗi phát sinh khi chương trình đang chạy' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'error handling', 'noun', '/ˈerə ˌhændlɪŋ/', 'xử lý lỗi' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'stack trace', 'noun', '/ˈstæk treɪs/', 'vết ngăn xếp: danh sách lời gọi hàm dẫn tới lỗi' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'library', 'noun', '/ˈlaɪbrəri/', 'thư viện: mã viết sẵn để tái sử dụng' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'framework', 'noun', '/ˈfreɪmwɜːk/', 'khung phát triển: bộ khung sẵn có để xây ứng dụng' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'package', 'noun', '/ˈpækɪdʒ/', 'gói phần mềm, gói thư viện' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'dependency', 'noun', '/dɪˈpendənsi/', 'phần phụ thuộc: thư viện mà dự án cần để chạy' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'module', 'noun', '/ˈmɒdjuːl/', 'mô-đun: một phần độc lập của chương trình' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'import', 'verb', '/ɪmˈpɔːt/', 'nạp mô-đun hoặc thư viện vào để dùng' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'inheritance', 'noun', '/ɪnˈherɪtəns/', 'kế thừa: lớp con nhận thuộc tính và phương thức của lớp cha' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'interface', 'noun', '/ˈɪntəfeɪs/', 'giao diện: bản mô tả các phương thức mà lớp phải cài đặt' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'abstraction', 'noun', '/æbˈstrækʃn/', 'trừu tượng hóa: che chi tiết, chỉ lộ phần cần dùng' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'encapsulation', 'noun', '/ɪnˌkæpsjuˈleɪʃn/', 'đóng gói: giấu dữ liệu bên trong đối tượng' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'polymorphism', 'noun', '/ˌpɒliˈmɔːfɪzəm/', 'đa hình: cùng một lời gọi nhưng hành vi khác nhau theo kiểu đối tượng' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'recursion', 'noun', '/rɪˈkɜːʃn/', 'đệ quy: hàm tự gọi lại chính nó' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'data structure', 'noun', '/ˈdeɪtə ˌstrʌktʃə(r)/', 'cấu trúc dữ liệu: cách tổ chức dữ liệu (mảng, cây, đồ thị...)' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'stack', 'noun', '/stæk/', 'ngăn xếp: vào sau ra trước (LIFO)' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'queue', 'noun', '/kjuː/', 'hàng đợi: vào trước ra trước (FIFO)' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'hash table', 'noun', '/ˈhæʃ ˌteɪbl/', 'bảng băm: tra cứu giá trị theo khóa rất nhanh' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'tree', 'noun', '/triː/', 'cây: cấu trúc dữ liệu phân cấp' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'graph', 'noun', '/ɡrɑːf/', 'đồ thị: các đỉnh nối với nhau bằng cạnh' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'pointer', 'noun', '/ˈpɔɪntə(r)/', 'con trỏ: biến lưu địa chỉ bộ nhớ' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'reference', 'noun', '/ˈrefrəns/', 'tham chiếu: tên trỏ tới một đối tượng' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'null', 'noun', '/nʌl/', 'giá trị rỗng, không trỏ tới đâu' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'scope', 'noun', '/skəʊp/', 'phạm vi mà một biến có hiệu lực' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'callback', 'noun', '/ˈkɔːlbæk/', 'hàm gọi lại: hàm truyền vào để được gọi sau' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'asynchronous', 'adjective', '/eɪˈsɪŋkrənəs/', 'bất đồng bộ: không chờ tác vụ xong mới làm việc tiếp' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'concurrency', 'noun', '/kənˈkʌrənsi/', 'đồng thời: nhiều tác vụ tiến triển trong cùng khoảng thời gian' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'refactor', 'verb', '/ˌriːˈfæktə(r)/', 'tái cấu trúc mã mà không đổi hành vi' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'legacy code', 'noun', '/ˈleɡəsi kəʊd/', 'mã cũ, mã kế thừa khó bảo trì' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'comment', 'noun', '/ˈkɒment/', 'chú thích trong mã' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'indentation', 'noun', '/ˌɪndenˈteɪʃn/', 'thụt lề' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'snippet', 'noun', '/ˈsnɪpɪt/', 'đoạn mã ngắn' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'boilerplate', 'noun', '/ˈbɔɪləpleɪt/', 'mã khuôn mẫu phải lặp lại ở nhiều nơi' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'pseudocode', 'noun', '/ˈsjuːdəʊkəʊd/', 'mã giả: mô tả thuật toán bằng ngôn ngữ gần tự nhiên' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'initialize', 'verb', '/ɪˈnɪʃəlaɪz/', 'khởi tạo giá trị ban đầu' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'declare', 'verb', '/dɪˈkleə(r)/', 'khai báo biến, hàm' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'assign', 'verb', '/əˈsaɪn/', 'gán giá trị cho biến' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'execute', 'verb', '/ˈeksɪkjuːt/', 'thực thi, chạy lệnh' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'implement', 'verb', '/ˈɪmplɪment/', 'cài đặt, hiện thực hóa một tính năng hay giao diện' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'override', 'verb', '/ˌəʊvəˈraɪd/', 'ghi đè phương thức của lớp cha' FROM DUAL
UNION ALL SELECT 'en', 'IT_PROG', 'deprecated', 'adjective', '/ˈdeprəkeɪtɪd/', 'lỗi thời: không khuyến khích dùng, sắp bị loại bỏ' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'frontend', 'noun', '/ˌfrʌntˈend/', 'phần giao diện chạy trên trình duyệt mà người dùng nhìn thấy' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'backend', 'noun', '/ˌbækˈend/', 'phần máy chủ xử lý nghiệp vụ và dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'full-stack', 'adjective', '/ˌfʊl ˈstæk/', 'làm được cả frontend lẫn backend' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'browser', 'noun', '/ˈbraʊzə(r)/', 'trình duyệt web' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'web page', 'noun', '/ˈweb peɪdʒ/', 'trang web' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'website', 'noun', '/ˈwebsaɪt/', 'trang mạng gồm nhiều trang web' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'domain', 'noun', '/dəˈmeɪn/', 'tên miền (vd. example.com)' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'hosting', 'noun', '/ˈhəʊstɪŋ/', 'dịch vụ lưu trữ website trên máy chủ' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'request', 'noun', '/rɪˈkwest/', 'yêu cầu gửi từ máy khách lên máy chủ' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'response', 'noun', '/rɪˈspɒns/', 'phản hồi máy chủ trả về' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'client', 'noun', '/ˈklaɪənt/', 'máy khách: phía gửi yêu cầu (trình duyệt, ứng dụng)' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'endpoint', 'noun', '/ˈendpɔɪnt/', 'điểm cuối: một địa chỉ URL của API' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'header', 'noun', '/ˈhedə(r)/', 'phần đầu của yêu cầu / phản hồi HTTP; phần đầu trang' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'payload', 'noun', '/ˈpeɪləʊd/', 'phần dữ liệu chính trong yêu cầu hoặc phản hồi' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'status code', 'noun', '/ˈsteɪtəs kəʊd/', 'mã trạng thái HTTP (200, 404, 500...)' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'query string', 'noun', '/ˈkwɪəri strɪŋ/', 'chuỗi truy vấn sau dấu ? trong URL' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'cookie', 'noun', '/ˈkʊki/', 'cookie: mẩu dữ liệu nhỏ trang web lưu trên trình duyệt' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'session', 'noun', '/ˈseʃn/', 'phiên làm việc của người dùng' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'token', 'noun', '/ˈtəʊkən/', 'mã thông báo dùng để xác thực (vd. JWT)' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'cache', 'noun', '/kæʃ/', 'bộ nhớ đệm: lưu tạm để lần sau truy cập nhanh hơn' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'render', 'verb', '/ˈrendə(r)/', 'kết xuất: dựng giao diện ra màn hình' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'component', 'noun', '/kəmˈpəʊnənt/', 'thành phần giao diện có thể tái sử dụng' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'state', 'noun', '/steɪt/', 'trạng thái: dữ liệu hiện tại của ứng dụng hoặc thành phần' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'props', 'noun', '/prɒps/', 'thuộc tính truyền từ thành phần cha xuống thành phần con' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'event', 'noun', '/ɪˈvent/', 'sự kiện (nhấp chuột, gõ phím...)' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'event listener', 'noun', '/ɪˈvent ˌlɪsnə(r)/', 'trình lắng nghe sự kiện' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'form', 'noun', '/fɔːm/', 'biểu mẫu nhập liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'validation', 'noun', '/ˌvælɪˈdeɪʃn/', 'kiểm tra tính hợp lệ của dữ liệu nhập' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'responsive', 'adjective', '/rɪˈspɒnsɪv/', 'giao diện tự co giãn theo kích thước màn hình' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'layout', 'noun', '/ˈleɪaʊt/', 'bố cục trang' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'stylesheet', 'noun', '/ˈstaɪlʃiːt/', 'tệp định kiểu (CSS)' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'markup', 'noun', '/ˈmɑːkʌp/', 'ngôn ngữ đánh dấu (HTML)' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'tag', 'noun', '/tæɡ/', 'thẻ HTML; nhãn' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'attribute', 'noun', '/ˈætrɪbjuːt/', 'thuộc tính của thẻ HTML hoặc đối tượng' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'selector', 'noun', '/sɪˈlektə(r)/', 'bộ chọn CSS' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'routing', 'noun', '/ˈruːtɪŋ/', 'định tuyến: ánh xạ URL tới trang hoặc hàm xử lý' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'redirect', 'verb', '/ˌriːdəˈrekt/', 'chuyển hướng sang địa chỉ khác' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'middleware', 'noun', '/ˈmɪdlweə(r)/', 'phần mềm trung gian xử lý yêu cầu trước khi tới đích' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'authentication', 'noun', '/ɔːˌθentɪˈkeɪʃn/', 'xác thực: kiểm tra bạn là ai' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'authorization', 'noun', '/ˌɔːθəraɪˈzeɪʃn/', 'phân quyền: kiểm tra bạn được làm gì' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'sign in', 'verb', '/ˌsaɪn ˈɪn/', 'đăng nhập' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'sign up', 'verb', '/ˌsaɪn ˈʌp/', 'đăng ký tài khoản' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'upload', 'verb', '/ˌʌpˈləʊd/', 'tải lên máy chủ' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'download', 'verb', '/ˌdaʊnˈləʊd/', 'tải xuống' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'pagination', 'noun', '/ˌpædʒɪˈneɪʃn/', 'phân trang' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'web socket', 'noun', '/ˈweb ˌsɒkɪt/', 'kết nối hai chiều liên tục giữa trình duyệt và máy chủ' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'rate limit', 'noun', '/ˈreɪt ˌlɪmɪt/', 'giới hạn số yêu cầu trong một khoảng thời gian' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'cross-origin', 'adjective', '/ˌkrɒs ˈɒrɪdʒɪn/', 'khác nguồn gốc (khác tên miền, cổng), liên quan tới CORS' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'serialization', 'noun', '/ˌsɪəriəlaɪˈzeɪʃn/', 'tuần tự hóa: chuyển đối tượng thành chuỗi (vd. JSON) để truyền đi' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'parse', 'verb', '/pɑːz/', 'phân tích cú pháp: đọc chuỗi thành cấu trúc dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'fetch', 'verb', '/fetʃ/', 'lấy dữ liệu từ máy chủ' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'webhook', 'noun', '/ˈwebhʊk/', 'cơ chế hệ thống khác gọi tới URL của bạn khi có sự kiện' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'accessibility', 'noun', '/əkˌsesəˈbɪləti/', 'khả năng tiếp cận: dùng được cho cả người khuyết tật' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'single-page application', 'noun', '/ˌsɪŋɡl peɪdʒ ˌæplɪˈkeɪʃn/', 'ứng dụng một trang (SPA): đổi nội dung mà không tải lại trang' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'server-side rendering', 'noun', '/ˌsɜːvə saɪd ˈrendərɪŋ/', 'dựng trang ở phía máy chủ (SSR)' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'bundle', 'noun', '/ˈbʌndl/', 'gói mã đã được gom và nén để gửi tới trình duyệt' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'minify', 'verb', '/ˈmɪnɪfaɪ/', 'rút gọn mã cho nhẹ hơn' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'plugin', 'noun', '/ˈplʌɡɪn/', 'phần bổ trợ mở rộng tính năng' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'template', 'noun', '/ˈtempleɪt/', 'khuôn mẫu giao diện' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'breakpoint', 'noun', '/ˈbreɪkpɔɪnt/', 'điểm dừng khi gỡ lỗi; mốc kích thước màn hình trong CSS' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'user experience', 'noun', '/ˌjuːzər ɪkˈspɪəriəns/', 'trải nghiệm người dùng (UX)' FROM DUAL
UNION ALL SELECT 'en', 'IT_WEB', 'search engine optimization', 'noun', '/ˈsɜːtʃ ˌendʒɪn ˌɒptɪmaɪˈzeɪʃn/', 'tối ưu hóa công cụ tìm kiếm (SEO)' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'database', 'noun', '/ˈdeɪtəbeɪs/', 'cơ sở dữ liệu: nơi lưu trữ dữ liệu có tổ chức' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'table', 'noun', '/ˈteɪbl/', 'bảng dữ liệu gồm hàng và cột' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'row', 'noun', '/rəʊ/', 'hàng, bản ghi trong bảng' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'column', 'noun', '/ˈkɒləm/', 'cột trong bảng' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'record', 'noun', '/ˈrekɔːd/', 'bản ghi: một dòng dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'field', 'noun', '/fiːld/', 'trường dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'schema', 'noun', '/ˈskiːmə/', 'lược đồ: cấu trúc bảng, cột, quan hệ của cơ sở dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'query', 'noun', '/ˈkwɪəri/', 'truy vấn: câu lệnh lấy hoặc thay đổi dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'primary key', 'noun', '/ˌpraɪməri ˈkiː/', 'khóa chính: cột định danh duy nhất mỗi hàng' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'foreign key', 'noun', '/ˌfɒrən ˈkiː/', 'khóa ngoại: cột tham chiếu tới khóa chính của bảng khác' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'index', 'noun', '/ˈɪndeks/', 'chỉ mục: cấu trúc giúp tìm kiếm nhanh hơn' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'constraint', 'noun', '/kənˈstreɪnt/', 'ràng buộc dữ liệu (không trùng, không rỗng...)' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'relationship', 'noun', '/rɪˈleɪʃnʃɪp/', 'quan hệ giữa các bảng' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'join', 'verb', '/dʒɔɪn/', 'kết nối dữ liệu từ nhiều bảng' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'transaction', 'noun', '/trænˈzækʃn/', 'giao dịch: nhóm thao tác thành công hoặc thất bại cùng nhau' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'commit', 'verb', '/kəˈmɪt/', 'xác nhận lưu thay đổi của giao dịch' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'rollback', 'noun', '/ˈrəʊlbæk/', 'hoàn tác: hủy các thay đổi của giao dịch' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'stored procedure', 'noun', '/ˌstɔːd prəˈsiːdʒə(r)/', 'thủ tục lưu sẵn trong cơ sở dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'trigger', 'noun', '/ˈtrɪɡə(r)/', 'trình kích hoạt: mã tự chạy khi dữ liệu thay đổi' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'view', 'noun', '/vjuː/', 'khung nhìn: bảng ảo tạo từ một truy vấn' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'migration', 'noun', '/maɪˈɡreɪʃn/', 'di trú: thay đổi cấu trúc cơ sở dữ liệu có kiểm soát theo phiên bản' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'normalization', 'noun', '/ˌnɔːməlaɪˈzeɪʃn/', 'chuẩn hóa: tổ chức bảng để tránh dư thừa dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'relational', 'adjective', '/rɪˈleɪʃənl/', '(cơ sở dữ liệu) quan hệ: dữ liệu lưu theo bảng có liên kết' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'insert', 'verb', '/ɪnˈsɜːt/', 'chèn thêm bản ghi' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'delete', 'verb', '/dɪˈliːt/', 'xóa' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'select', 'verb', '/sɪˈlekt/', 'chọn, truy vấn lấy dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'filter', 'verb', '/ˈfɪltə(r)/', 'lọc dữ liệu theo điều kiện' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'sort', 'verb', '/sɔːt/', 'sắp xếp' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'aggregate', 'verb', '/ˈæɡrɪɡeɪt/', 'tổng hợp dữ liệu (đếm, tính tổng, trung bình)' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'duplicate', 'noun', '/ˈdjuːplɪkət/', 'bản trùng lặp' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'unique', 'adjective', '/juˈniːk/', 'duy nhất, không trùng' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'nullable', 'adjective', '/ˈnʌləbl/', 'cho phép để trống (null)' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'default value', 'noun', '/dɪˈfɔːlt ˌvæljuː/', 'giá trị mặc định' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'replication', 'noun', '/ˌreplɪˈkeɪʃn/', 'nhân bản dữ liệu sang máy chủ khác' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'sharding', 'noun', '/ˈʃɑːdɪŋ/', 'phân mảnh: chia dữ liệu ra nhiều máy chủ' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'partition', 'noun', '/pɑːˈtɪʃn/', 'phân vùng dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'deadlock', 'noun', '/ˈdedlɒk/', 'khóa chết: hai giao dịch chờ nhau mãi mãi' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'lock', 'noun', '/lɒk/', 'khóa dữ liệu để tránh xung đột khi ghi' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'consistency', 'noun', '/kənˈsɪstənsi/', 'tính nhất quán của dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'integrity', 'noun', '/ɪnˈteɡrəti/', 'tính toàn vẹn của dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'connection pool', 'noun', '/kəˈnekʃn puːl/', 'bể kết nối: nhóm kết nối cơ sở dữ liệu dùng lại' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'key-value store', 'noun', '/ˌkiː ˈvæljuː stɔː(r)/', 'kho lưu trữ dạng khóa – giá trị' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'document', 'noun', '/ˈdɒkjumənt/', 'tài liệu: một bản ghi trong cơ sở dữ liệu dạng tài liệu (vd. MongoDB)' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'data warehouse', 'noun', '/ˈdeɪtə ˌweəhaʊs/', 'kho dữ liệu phục vụ phân tích, báo cáo' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'dump', 'noun', '/dʌmp/', 'bản kết xuất toàn bộ dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'seed', 'verb', '/siːd/', 'nạp dữ liệu mẫu ban đầu' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'persist', 'verb', '/pəˈsɪst/', 'lưu bền vững xuống bộ lưu trữ' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'retrieve', 'verb', '/rɪˈtriːv/', 'truy xuất, lấy dữ liệu ra' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'execution plan', 'noun', '/ˌeksɪˈkjuːʃn plæn/', 'kế hoạch thực thi của một truy vấn' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'latency', 'noun', '/ˈleɪtənsi/', 'độ trễ' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'throughput', 'noun', '/ˈθruːpʊt/', 'thông lượng: lượng công việc xử lý được trong một đơn vị thời gian' FROM DUAL
UNION ALL SELECT 'en', 'IT_DATA', 'scalability', 'noun', '/ˌskeɪləˈbɪləti/', 'khả năng mở rộng khi tải tăng' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'network', 'noun', '/ˈnetwɜːk/', 'mạng máy tính' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'protocol', 'noun', '/ˈprəʊtəkɒl/', 'giao thức: bộ quy tắc để các máy trao đổi dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'packet', 'noun', '/ˈpækɪt/', 'gói tin: đơn vị dữ liệu truyền trên mạng' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'router', 'noun', '/ˈruːtə(r)/', 'bộ định tuyến: chuyển gói tin giữa các mạng' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'switch', 'noun', '/swɪtʃ/', 'bộ chuyển mạch: nối các thiết bị trong cùng một mạng' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'gateway', 'noun', '/ˈɡeɪtweɪ/', 'cổng nối: điểm trung gian giữa hai mạng' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'firewall', 'noun', '/ˈfaɪəwɔːl/', 'tường lửa: lọc lưu lượng mạng theo quy tắc' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'IP address', 'noun', '/ˌaɪ ˈpiː əˌdres/', 'địa chỉ IP: số định danh của thiết bị trên mạng' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'port', 'noun', '/pɔːt/', 'cổng: số phân biệt các dịch vụ trên cùng một máy' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'subnet', 'noun', '/ˈsʌbnet/', 'mạng con' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'bandwidth', 'noun', '/ˈbændwɪdθ/', 'băng thông: lượng dữ liệu tối đa truyền được mỗi giây' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'wireless', 'adjective', '/ˈwaɪələs/', 'không dây' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'ethernet', 'noun', '/ˈiːθənet/', 'chuẩn mạng có dây phổ biến' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'local area network', 'noun', '/ˌləʊkl ˌeəriə ˈnetwɜːk/', 'mạng cục bộ (LAN)' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'domain name system', 'noun', '/dəˌmeɪn neɪm ˈsɪstəm/', 'hệ thống phân giải tên miền (DNS): đổi tên miền thành địa chỉ IP' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'host', 'noun', '/həʊst/', 'máy chủ lưu trữ; máy trạm trên mạng' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'hostname', 'noun', '/ˈhəʊstneɪm/', 'tên máy trên mạng' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'proxy', 'noun', '/ˈprɒksi/', 'máy chủ trung gian đứng giữa máy khách và máy chủ đích' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'reverse proxy', 'noun', '/rɪˌvɜːs ˈprɒksi/', 'proxy ngược: đứng trước máy chủ, nhận yêu cầu thay cho nó' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'load balancer', 'noun', '/ˈləʊd ˌbælənsə(r)/', 'bộ cân bằng tải: chia yêu cầu cho nhiều máy chủ' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'traffic', 'noun', '/ˈtræfɪk/', 'lưu lượng truy cập mạng' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'connection', 'noun', '/kəˈnekʃn/', 'kết nối' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'timeout', 'noun', '/ˈtaɪmaʊt/', 'hết thời gian chờ' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'handshake', 'noun', '/ˈhændʃeɪk/', 'bắt tay: bước thiết lập kết nối giữa hai bên' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'socket', 'noun', '/ˈsɒkɪt/', 'điểm cuối của một kết nối mạng' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'transmit', 'verb', '/trænzˈmɪt/', 'truyền dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'receive', 'verb', '/rɪˈsiːv/', 'nhận dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'broadcast', 'verb', '/ˈbrɔːdkɑːst/', 'phát tới mọi thiết bị trong mạng' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'ping', 'verb', '/pɪŋ/', 'gửi gói tin thử để kiểm tra máy khác có phản hồi không' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'downtime', 'noun', '/ˈdaʊntaɪm/', 'thời gian hệ thống ngừng hoạt động' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'uptime', 'noun', '/ˈʌptaɪm/', 'thời gian hệ thống hoạt động liên tục' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'outage', 'noun', '/ˈaʊtɪdʒ/', 'sự cố ngừng dịch vụ' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'peer-to-peer', 'adjective', '/ˌpɪə tə ˈpɪə(r)/', 'ngang hàng: các máy kết nối trực tiếp với nhau' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'virtual private network', 'noun', '/ˌvɜːtʃuəl ˌpraɪvət ˈnetwɜːk/', 'mạng riêng ảo (VPN)' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'content delivery network', 'noun', '/ˌkɒntent dɪˈlɪvəri ˌnetwɜːk/', 'mạng phân phối nội dung (CDN): máy chủ đặt gần người dùng để tải nhanh' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'data center', 'noun', '/ˈdeɪtə ˌsentə(r)/', 'trung tâm dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'topology', 'noun', '/təˈpɒlədʒi/', 'sơ đồ cách các thiết bị mạng nối với nhau' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'hop', 'noun', '/hɒp/', 'bước nhảy: một chặng gói tin đi qua giữa hai thiết bị' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'route', 'noun', '/ruːt/', 'tuyến đường của gói tin' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'interface', 'noun', '/ˈɪntəfeɪs/', 'cổng giao tiếp mạng của thiết bị' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'signal', 'noun', '/ˈsɪɡnəl/', 'tín hiệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'interference', 'noun', '/ˌɪntəˈfɪərəns/', 'nhiễu sóng' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'bottleneck', 'noun', '/ˈbɒtlnek/', 'điểm nghẽn làm chậm cả hệ thống' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'congestion', 'noun', '/kənˈdʒestʃən/', 'tắc nghẽn mạng' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'encapsulate', 'verb', '/ɪnˈkæpsjuleɪt/', 'đóng gói dữ liệu vào trong một gói tin khác' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'forward', 'verb', '/ˈfɔːwəd/', 'chuyển tiếp gói tin' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'resolve', 'verb', '/rɪˈzɒlv/', 'phân giải (tên miền thành địa chỉ IP)' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'configure', 'verb', '/kənˈfɪɡə(r)/', 'cấu hình' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'streaming', 'noun', '/ˈstriːmɪŋ/', 'truyền phát dữ liệu liên tục (video, âm thanh)' FROM DUAL
UNION ALL SELECT 'en', 'IT_NET', 'remote', 'adjective', '/rɪˈməʊt/', 'từ xa' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'security', 'noun', '/sɪˈkjʊərəti/', 'bảo mật, an ninh' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'vulnerability', 'noun', '/ˌvʌlnərəˈbɪləti/', 'lỗ hổng bảo mật' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'threat', 'noun', '/θret/', 'mối đe dọa' FROM DUAL;

INSERT INTO VOCAB_LIBRARY (LANGUAGE_CODE, LEVEL_CODE, WORD, PART_OF_SPEECH, PHONETIC, MEANING)
SELECT 'en', 'IT_SEC', 'attack', 'noun', '/əˈtæk/', 'cuộc tấn công' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'exploit', 'noun', '/ˈeksplɔɪt/', 'mã hoặc cách khai thác một lỗ hổng' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'malware', 'noun', '/ˈmælweə(r)/', 'phần mềm độc hại' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'virus', 'noun', '/ˈvaɪrəs/', 'vi-rút máy tính' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'ransomware', 'noun', '/ˈrænsəmweə(r)/', 'mã độc tống tiền: mã hóa dữ liệu rồi đòi tiền chuộc' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'spyware', 'noun', '/ˈspaɪweə(r)/', 'phần mềm gián điệp' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'phishing', 'noun', '/ˈfɪʃɪŋ/', 'lừa đảo giả mạo để lấy mật khẩu, thông tin' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'encryption', 'noun', '/ɪnˈkrɪpʃn/', 'mã hóa: biến dữ liệu thành dạng không đọc được nếu thiếu khóa' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'decryption', 'noun', '/diːˈkrɪpʃn/', 'giải mã' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'hash', 'noun', '/hæʃ/', 'giá trị băm: chuỗi cố định sinh từ dữ liệu, không đảo ngược được' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'salt', 'noun', '/sɔːlt/', 'chuỗi ngẫu nhiên thêm vào mật khẩu trước khi băm' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'password', 'noun', '/ˈpɑːswɜːd/', 'mật khẩu' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'credential', 'noun', '/krəˈdenʃl/', 'thông tin đăng nhập (tên, mật khẩu, khóa)' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'two-factor authentication', 'noun', '/ˌtuː ˌfæktər ɔːˌθentɪˈkeɪʃn/', 'xác thực hai yếu tố' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'permission', 'noun', '/pəˈmɪʃn/', 'quyền được phép làm gì' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'privilege', 'noun', '/ˈprɪvəlɪdʒ/', 'đặc quyền' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'access control', 'noun', '/ˈækses kənˌtrəʊl/', 'kiểm soát truy cập' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'certificate', 'noun', '/səˈtɪfɪkət/', 'chứng chỉ số xác nhận danh tính máy chủ' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'digital signature', 'noun', '/ˌdɪdʒɪtl ˈsɪɡnətʃə(r)/', 'chữ ký số' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'public key', 'noun', '/ˌpʌblɪk ˈkiː/', 'khóa công khai' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'private key', 'noun', '/ˌpraɪvət ˈkiː/', 'khóa bí mật' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'breach', 'noun', '/briːtʃ/', 'vụ xâm phạm, rò rỉ dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'leak', 'noun', '/liːk/', 'rò rỉ thông tin' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'patch', 'noun', '/pætʃ/', 'bản vá lỗi' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'injection', 'noun', '/ɪnˈdʒekʃn/', 'tấn công chèn mã (vd. SQL injection)' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'brute force', 'noun', '/ˌbruːt ˈfɔːs/', 'tấn công dò mật khẩu bằng cách thử mọi khả năng' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'denial of service', 'noun', '/dɪˌnaɪəl əv ˈsɜːvɪs/', 'tấn công từ chối dịch vụ (DoS): làm quá tải hệ thống' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'backdoor', 'noun', '/ˈbækdɔː(r)/', 'cửa hậu: lối truy cập bí mật vào hệ thống' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'sandbox', 'noun', '/ˈsændbɒks/', 'môi trường cách ly để chạy mã không tin cậy' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'penetration testing', 'noun', '/ˌpenəˈtreɪʃn ˌtestɪŋ/', 'kiểm thử xâm nhập: tấn công thử để tìm lỗ hổng' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'audit', 'noun', '/ˈɔːdɪt/', 'kiểm toán, rà soát' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'compliance', 'noun', '/kəmˈplaɪəns/', 'tuân thủ quy định, tiêu chuẩn' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'privacy', 'noun', '/ˈprɪvəsi/', 'quyền riêng tư' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'anonymous', 'adjective', '/əˈnɒnɪməs/', 'ẩn danh' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'sensitive data', 'noun', '/ˌsensətɪv ˈdeɪtə/', 'dữ liệu nhạy cảm' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'intrusion', 'noun', '/ɪnˈtruːʒn/', 'sự xâm nhập trái phép' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'suspicious', 'adjective', '/səˈspɪʃəs/', 'đáng ngờ' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'whitelist', 'noun', '/ˈwaɪtlɪst/', 'danh sách được phép' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'blacklist', 'noun', '/ˈblæklɪst/', 'danh sách chặn' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'sanitize', 'verb', '/ˈsænɪtaɪz/', 'làm sạch dữ liệu đầu vào để loại bỏ mã nguy hiểm' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'escape', 'verb', '/ɪˈskeɪp/', 'thoát ký tự đặc biệt để không bị hiểu thành mã' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'verify', 'verb', '/ˈverɪfaɪ/', 'xác minh' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'revoke', 'verb', '/rɪˈvəʊk/', 'thu hồi quyền, chứng chỉ, token' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'expire', 'verb', '/ɪkˈspaɪə(r)/', 'hết hạn' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'impersonate', 'verb', '/ɪmˈpɜːsəneɪt/', 'mạo danh' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'compromise', 'verb', '/ˈkɒmprəmaɪz/', 'làm lộ, làm mất an toàn hệ thống' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'mitigate', 'verb', '/ˈmɪtɪɡeɪt/', 'giảm thiểu rủi ro' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'zero-day', 'adjective', '/ˌzɪərəʊ ˈdeɪ/', '(lỗ hổng) chưa có bản vá khi bị khai thác' FROM DUAL
UNION ALL SELECT 'en', 'IT_SEC', 'social engineering', 'noun', '/ˌsəʊʃl ˌendʒɪˈnɪərɪŋ/', 'tấn công phi kỹ thuật: lừa con người để lấy thông tin' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'cloud computing', 'noun', '/ˈklaʊd kəmˌpjuːtɪŋ/', 'điện toán đám mây: thuê tài nguyên máy tính qua Internet' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'deployment', 'noun', '/dɪˈplɔɪmənt/', 'triển khai: đưa phần mềm lên môi trường chạy' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'deploy', 'verb', '/dɪˈplɔɪ/', 'triển khai phần mềm' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'release', 'noun', '/rɪˈliːs/', 'bản phát hành' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'environment', 'noun', '/ɪnˈvaɪrənmənt/', 'môi trường chạy (dev, staging, production)' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'production', 'noun', '/prəˈdʌkʃn/', 'môi trường thật mà người dùng sử dụng' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'staging', 'noun', '/ˈsteɪdʒɪŋ/', 'môi trường chạy thử giống production trước khi phát hành' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'container', 'noun', '/kənˈteɪnə(r)/', 'container: gói ứng dụng cùng mọi thứ nó cần để chạy (vd. Docker)' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'image', 'noun', '/ˈɪmɪdʒ/', 'ảnh đóng gói dùng để tạo container hoặc máy ảo' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'orchestration', 'noun', '/ˌɔːkɪˈstreɪʃn/', 'điều phối: tự động quản lý nhiều container (vd. Kubernetes)' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'cluster', 'noun', '/ˈklʌstə(r)/', 'cụm máy chủ cùng làm việc như một hệ thống' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'node', 'noun', '/nəʊd/', 'nút: một máy trong cụm' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'instance', 'noun', '/ˈɪnstəns/', 'máy ảo hoặc bản chạy của một dịch vụ trên cloud' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'pipeline', 'noun', '/ˈpaɪplaɪn/', 'chuỗi bước tự động: build, test, deploy' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'continuous integration', 'noun', '/kənˌtɪnjuəs ˌɪntɪˈɡreɪʃn/', 'tích hợp liên tục (CI): tự build và test mỗi lần đẩy mã' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'continuous delivery', 'noun', '/kənˌtɪnjuəs dɪˈlɪvəri/', 'chuyển giao liên tục (CD): luôn sẵn sàng phát hành' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'build', 'noun', '/bɪld/', 'bản dựng: sản phẩm sau khi biên dịch, đóng gói' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'artifact', 'noun', '/ˈɑːtɪfækt/', 'sản phẩm đầu ra của quá trình build (file jar, image...)' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'repository', 'noun', '/rɪˈpɒzətri/', 'kho mã nguồn' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'branch', 'noun', '/brɑːntʃ/', 'nhánh mã trong Git' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'merge', 'verb', '/mɜːdʒ/', 'gộp nhánh' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'pull request', 'noun', '/ˈpʊl rɪˌkwest/', 'yêu cầu gộp mã, để người khác xem xét trước khi gộp' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'conflict', 'noun', '/ˈkɒnflɪkt/', 'xung đột khi gộp mã' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'version control', 'noun', '/ˈvɜːʃn kənˌtrəʊl/', 'quản lý phiên bản mã nguồn' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'rollback', 'verb', '/ˈrəʊlbæk/', 'quay về phiên bản trước' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'monitoring', 'noun', '/ˈmɒnɪtərɪŋ/', 'giám sát hệ thống' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'logging', 'noun', '/ˈlɒɡɪŋ/', 'ghi nhật ký hoạt động' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'alert', 'noun', '/əˈlɜːt/', 'cảnh báo' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'metric', 'noun', '/ˈmetrɪk/', 'chỉ số đo lường (CPU, số yêu cầu, độ trễ...)' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'dashboard', 'noun', '/ˈdæʃbɔːd/', 'bảng điều khiển hiển thị các chỉ số' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'scaling', 'noun', '/ˈskeɪlɪŋ/', 'mở rộng tài nguyên theo tải' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'autoscaling', 'noun', '/ˈɔːtəʊskeɪlɪŋ/', 'tự động tăng giảm số máy chủ theo tải' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'availability', 'noun', '/əˌveɪləˈbɪləti/', 'tính sẵn sàng: hệ thống luôn dùng được' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'fault tolerance', 'noun', '/ˈfɔːlt ˌtɒlərəns/', 'khả năng chịu lỗi: vẫn chạy khi một phần hỏng' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'failover', 'noun', '/ˈfeɪləʊvə(r)/', 'tự chuyển sang máy dự phòng khi máy chính hỏng' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'redundancy', 'noun', '/rɪˈdʌndənsi/', 'dự phòng: có sẵn thành phần thay thế' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'serverless', 'adjective', '/ˈsɜːvələs/', 'chạy mã mà không cần tự quản lý máy chủ' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'microservice', 'noun', '/ˈmaɪkrəʊsɜːvɪs/', 'vi dịch vụ: dịch vụ nhỏ, độc lập trong một hệ thống lớn' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'monolith', 'noun', '/ˈmɒnəlɪθ/', 'ứng dụng nguyên khối: mọi thứ nằm trong một khối duy nhất' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'infrastructure', 'noun', '/ˈɪnfrəstrʌktʃə(r)/', 'hạ tầng: máy chủ, mạng, lưu trữ' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'provision', 'verb', '/prəˈvɪʒn/', 'cấp phát tài nguyên' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'configuration', 'noun', '/kənˌfɪɡəˈreɪʃn/', 'cấu hình' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'environment variable', 'noun', '/ɪnˈvaɪrənmənt ˌveəriəbl/', 'biến môi trường: giá trị cấu hình đặt bên ngoài mã' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'secret', 'noun', '/ˈsiːkrət/', 'thông tin bí mật như mật khẩu, khóa API' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'automation', 'noun', '/ˌɔːtəˈmeɪʃn/', 'tự động hóa' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'script', 'noun', '/skrɪpt/', 'kịch bản lệnh chạy tự động' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'scheduled job', 'noun', '/ˌʃedjuːld ˈdʒɒb/', 'tác vụ chạy theo lịch (cron job)' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'health check', 'noun', '/ˈhelθ tʃek/', 'kiểm tra dịch vụ còn hoạt động không' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'load testing', 'noun', '/ˈləʊd ˌtestɪŋ/', 'kiểm thử tải' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'region', 'noun', '/ˈriːdʒən/', 'vùng địa lý đặt trung tâm dữ liệu của cloud' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'on-premises', 'adjective', '/ˌɒn ˈpremɪsɪz/', 'đặt tại chỗ: chạy trên máy chủ của chính công ty' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'vendor', 'noun', '/ˈvendə(r)/', 'nhà cung cấp' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'subscription', 'noun', '/səbˈskrɪpʃn/', 'gói thuê bao trả theo kỳ' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'quota', 'noun', '/ˈkwəʊtə/', 'hạn mức sử dụng' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'incident', 'noun', '/ˈɪnsɪdənt/', 'sự cố' FROM DUAL
UNION ALL SELECT 'en', 'IT_CLOUD', 'postmortem', 'noun', '/ˌpəʊstˈmɔːtəm/', 'bản phân tích nguyên nhân sau sự cố' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'artificial intelligence', 'noun', '/ˌɑːtɪfɪʃl ɪnˈtelɪdʒəns/', 'trí tuệ nhân tạo (AI)' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'machine learning', 'noun', '/məˌʃiːn ˈlɜːnɪŋ/', 'học máy: máy tự học quy luật từ dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'deep learning', 'noun', '/ˌdiːp ˈlɜːnɪŋ/', 'học sâu: học máy dùng mạng nơ-ron nhiều lớp' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'neural network', 'noun', '/ˌnjʊərəl ˈnetwɜːk/', 'mạng nơ-ron nhân tạo' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'model', 'noun', '/ˈmɒdl/', 'mô hình: kết quả sau khi huấn luyện, dùng để dự đoán' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'training', 'noun', '/ˈtreɪnɪŋ/', 'huấn luyện mô hình bằng dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'inference', 'noun', '/ˈɪnfərəns/', 'suy luận: dùng mô hình đã huấn luyện để cho ra kết quả' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'dataset', 'noun', '/ˈdeɪtəset/', 'tập dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'feature', 'noun', '/ˈfiːtʃə(r)/', 'đặc trưng: thuộc tính đầu vào của mô hình; tính năng phần mềm' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'label', 'noun', '/ˈleɪbl/', 'nhãn: đáp án đúng gắn với dữ liệu huấn luyện' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'prediction', 'noun', '/prɪˈdɪkʃn/', 'dự đoán của mô hình' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'accuracy', 'noun', '/ˈækjərəsi/', 'độ chính xác' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'classification', 'noun', '/ˌklæsɪfɪˈkeɪʃn/', 'phân loại: dự đoán dữ liệu thuộc nhóm nào' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'regression', 'noun', '/rɪˈɡreʃn/', 'hồi quy: dự đoán một giá trị số' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'clustering', 'noun', '/ˈklʌstərɪŋ/', 'phân cụm: tự gom dữ liệu giống nhau thành nhóm' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'supervised learning', 'noun', '/ˌsuːpəvaɪzd ˈlɜːnɪŋ/', 'học có giám sát: học từ dữ liệu đã gắn nhãn' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'unsupervised learning', 'noun', '/ˌʌnsuːpəvaɪzd ˈlɜːnɪŋ/', 'học không giám sát: học từ dữ liệu chưa gắn nhãn' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'reinforcement learning', 'noun', '/ˌriːɪnˈfɔːsmənt ˌlɜːnɪŋ/', 'học tăng cường: học qua thưởng và phạt' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'overfitting', 'noun', '/ˌəʊvəˈfɪtɪŋ/', 'quá khớp: mô hình thuộc lòng dữ liệu huấn luyện, dự đoán kém với dữ liệu mới' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'bias', 'noun', '/ˈbaɪəs/', 'thiên lệch trong dữ liệu hoặc mô hình' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'weight', 'noun', '/weɪt/', 'trọng số: tham số mô hình học được' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'layer', 'noun', '/ˈleɪə(r)/', 'lớp trong mạng nơ-ron' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'parameter', 'noun', '/pəˈræmɪtə(r)/', 'tham số của mô hình' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'hyperparameter', 'noun', '/ˈhaɪpəpəˌræmɪtə(r)/', 'siêu tham số: thiết lập chọn trước khi huấn luyện' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'gradient', 'noun', '/ˈɡreɪdiənt/', 'độ dốc dùng để điều chỉnh trọng số khi huấn luyện' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'loss function', 'noun', '/ˈlɒs ˌfʌŋkʃn/', 'hàm mất mát: đo mức sai của mô hình' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'epoch', 'noun', '/ˈiːpɒk/', 'một lượt duyệt hết tập dữ liệu khi huấn luyện' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'benchmark', 'noun', '/ˈbentʃmɑːk/', 'bài đo chuẩn để so sánh hiệu năng' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'natural language processing', 'noun', '/ˌnætʃrəl ˈlæŋɡwɪdʒ ˌprəʊsesɪŋ/', 'xử lý ngôn ngữ tự nhiên (NLP)' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'computer vision', 'noun', '/kəmˌpjuːtə ˈvɪʒn/', 'thị giác máy tính: máy hiểu hình ảnh, video' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'large language model', 'noun', '/ˌlɑːdʒ ˈlæŋɡwɪdʒ ˌmɒdl/', 'mô hình ngôn ngữ lớn (LLM)' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'prompt', 'noun', '/prɒmpt/', 'câu lệnh, lời nhắc đưa cho mô hình AI' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'token', 'noun', '/ˈtəʊkən/', 'đơn vị văn bản (mảnh từ) mà mô hình ngôn ngữ xử lý' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'embedding', 'noun', '/ɪmˈbedɪŋ/', 'véc-tơ số biểu diễn ý nghĩa của văn bản, hình ảnh' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'fine-tuning', 'noun', '/ˌfaɪn ˈtjuːnɪŋ/', 'tinh chỉnh: huấn luyện thêm mô hình có sẵn cho một việc cụ thể' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'hallucination', 'noun', '/həˌluːsɪˈneɪʃn/', 'ảo giác: AI tạo ra thông tin sai nhưng nghe có vẻ đúng' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'generative', 'adjective', '/ˈdʒenərətɪv/', 'tạo sinh: có khả năng tạo nội dung mới' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'chatbot', 'noun', '/ˈtʃætbɒt/', 'trợ lý trò chuyện tự động' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'agent', 'noun', '/ˈeɪdʒənt/', 'tác tử: chương trình AI tự thực hiện chuỗi hành động để đạt mục tiêu' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'recommendation system', 'noun', '/ˌrekəmenˈdeɪʃn ˌsɪstəm/', 'hệ thống gợi ý' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'speech recognition', 'noun', '/ˈspiːtʃ rekəɡˌnɪʃn/', 'nhận dạng giọng nói' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'big data', 'noun', '/ˌbɪɡ ˈdeɪtə/', 'dữ liệu lớn' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'data science', 'noun', '/ˌdeɪtə ˈsaɪəns/', 'khoa học dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'data mining', 'noun', '/ˈdeɪtə ˌmaɪnɪŋ/', 'khai phá dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'data pipeline', 'noun', '/ˈdeɪtə ˌpaɪplaɪn/', 'đường ống dữ liệu: chuỗi bước thu thập, xử lý, lưu dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'analytics', 'noun', '/ˌænəˈlɪtɪks/', 'phân tích dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'visualization', 'noun', '/ˌvɪʒuəlaɪˈzeɪʃn/', 'trực quan hóa dữ liệu bằng biểu đồ' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'statistics', 'noun', '/stəˈtɪstɪks/', 'thống kê' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'probability', 'noun', '/ˌprɒbəˈbɪləti/', 'xác suất' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'correlation', 'noun', '/ˌkɒrəˈleɪʃn/', 'tương quan giữa hai đại lượng' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'outlier', 'noun', '/ˈaʊtlaɪə(r)/', 'điểm ngoại lai, khác hẳn phần còn lại' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'sample', 'noun', '/ˈsɑːmpl/', 'mẫu dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'annotate', 'verb', '/ˈænəteɪt/', 'gán nhãn, chú thích dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'preprocess', 'verb', '/ˌpriːˈprəʊses/', 'tiền xử lý dữ liệu' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'evaluate', 'verb', '/ɪˈvæljueɪt/', 'đánh giá mô hình' FROM DUAL
UNION ALL SELECT 'en', 'IT_AI', 'optimize', 'verb', '/ˈɒptɪmaɪz/', 'tối ưu hóa' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'requirement', 'noun', '/rɪˈkwaɪəmənt/', 'yêu cầu của phần mềm' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'specification', 'noun', '/ˌspesɪfɪˈkeɪʃn/', 'đặc tả: tài liệu mô tả chi tiết phần mềm phải làm gì' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'user story', 'noun', '/ˈjuːzə ˌstɔːri/', 'câu chuyện người dùng: mô tả ngắn một nhu cầu từ góc nhìn người dùng' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'acceptance criteria', 'noun', '/əkˈseptəns kraɪˌtɪəriə/', 'tiêu chí chấp nhận: điều kiện để một tính năng được coi là xong' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'backlog', 'noun', '/ˈbæklɒɡ/', 'danh sách việc tồn cần làm' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'sprint', 'noun', '/sprɪnt/', 'chặng nước rút: chu kỳ làm việc ngắn (1–4 tuần) trong Scrum' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'agile', 'adjective', '/ˈædʒaɪl/', 'linh hoạt: phương pháp phát triển theo các vòng lặp ngắn' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'stand-up meeting', 'noun', '/ˈstænd ʌp ˌmiːtɪŋ/', 'họp đứng ngắn hằng ngày để cập nhật tiến độ' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'retrospective', 'noun', '/ˌretrəˈspektɪv/', 'buổi họp nhìn lại sau mỗi sprint' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'milestone', 'noun', '/ˈmaɪlstəʊn/', 'cột mốc của dự án' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'deadline', 'noun', '/ˈdedlaɪn/', 'hạn chót' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'estimate', 'verb', '/ˈestɪmeɪt/', 'ước lượng thời gian, công sức' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'priority', 'noun', '/praɪˈɒrəti/', 'mức ưu tiên' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'scope', 'noun', '/skəʊp/', 'phạm vi công việc của dự án' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'stakeholder', 'noun', '/ˈsteɪkhəʊldə(r)/', 'bên liên quan tới dự án' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'roadmap', 'noun', '/ˈrəʊdmæp/', 'lộ trình phát triển sản phẩm' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'prototype', 'noun', '/ˈprəʊtətaɪp/', 'bản mẫu thử' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'proof of concept', 'noun', '/ˌpruːf əv ˈkɒnsept/', 'bản chứng minh ý tưởng khả thi (PoC)' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'minimum viable product', 'noun', '/ˌmɪnɪməm ˌvaɪəbl ˈprɒdʌkt/', 'sản phẩm khả dụng tối thiểu (MVP)' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'code review', 'noun', '/ˈkəʊd rɪˌvjuː/', 'xem xét mã của đồng nghiệp trước khi gộp' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'unit test', 'noun', '/ˈjuːnɪt test/', 'kiểm thử đơn vị: kiểm tra từng hàm, lớp riêng lẻ' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'integration test', 'noun', '/ˌɪntɪˈɡreɪʃn test/', 'kiểm thử tích hợp: kiểm tra các phần phối hợp với nhau' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'test case', 'noun', '/ˈtest keɪs/', 'ca kiểm thử: một tình huống cần kiểm tra' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'test coverage', 'noun', '/ˈtest ˌkʌvərɪdʒ/', 'độ phủ kiểm thử: tỷ lệ mã được test chạy qua' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'quality assurance', 'noun', '/ˈkwɒləti əˌʃʊərəns/', 'đảm bảo chất lượng (QA)' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'regression', 'noun', '/rɪˈɡreʃn/', 'lỗi hồi quy: tính năng cũ bị hỏng sau khi sửa đổi' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'mock', 'noun', '/mɒk/', 'đối tượng giả dùng thay thành phần thật khi test' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'reproduce', 'verb', '/ˌriːprəˈdjuːs/', 'tái hiện lại lỗi' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'workaround', 'noun', '/ˈwɜːkəraʊnd/', 'cách xử lý tạm thời' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'hotfix', 'noun', '/ˈhɒtfɪks/', 'bản sửa lỗi khẩn cấp' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'issue', 'noun', '/ˈɪʃuː/', 'vấn đề, lỗi được ghi nhận' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'ticket', 'noun', '/ˈtɪkɪt/', 'phiếu công việc hoặc yêu cầu hỗ trợ' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'bug report', 'noun', '/ˈbʌɡ rɪˌpɔːt/', 'báo cáo lỗi' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'feature request', 'noun', '/ˈfiːtʃə rɪˌkwest/', 'đề xuất tính năng mới' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'documentation', 'noun', '/ˌdɒkjumenˈteɪʃn/', 'tài liệu hướng dẫn' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'changelog', 'noun', '/ˈtʃeɪndʒlɒɡ/', 'nhật ký thay đổi giữa các phiên bản' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'technical debt', 'noun', '/ˌteknɪkl ˈdet/', 'nợ kỹ thuật: hậu quả của giải pháp tạm, phải trả sau' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'maintenance', 'noun', '/ˈmeɪntənəns/', 'bảo trì' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'best practice', 'noun', '/ˌbest ˈpræktɪs/', 'cách làm tốt nhất được công nhận' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'trade-off', 'noun', '/ˈtreɪd ɒf/', 'sự đánh đổi giữa các lựa chọn' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'use case', 'noun', '/ˈjuːs keɪs/', 'tình huống sử dụng' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'edge case', 'noun', '/ˈedʒ keɪs/', 'trường hợp biên, hiếm gặp' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'design pattern', 'noun', '/dɪˈzaɪn ˌpætn/', 'mẫu thiết kế: giải pháp chung cho vấn đề hay gặp' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'architecture', 'noun', '/ˈɑːkɪtektʃə(r)/', 'kiến trúc hệ thống' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'open source', 'adjective', '/ˌəʊpən ˈsɔːs/', 'mã nguồn mở' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'license', 'noun', '/ˈlaɪsns/', 'giấy phép sử dụng phần mềm' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'developer', 'noun', '/dɪˈveləpə(r)/', 'lập trình viên' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'tester', 'noun', '/ˈtestə(r)/', 'người kiểm thử' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'product owner', 'noun', '/ˈprɒdʌkt ˌəʊnə(r)/', 'người chịu trách nhiệm về sản phẩm trong Scrum' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'tech lead', 'noun', '/ˈtek liːd/', 'trưởng nhóm kỹ thuật' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'intern', 'noun', '/ˈɪntɜːn/', 'thực tập sinh' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'onboarding', 'noun', '/ˈɒnbɔːdɪŋ/', 'quá trình hướng dẫn người mới vào dự án' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'handover', 'noun', '/ˈhændəʊvə(r)/', 'bàn giao công việc' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'collaborate', 'verb', '/kəˈlæbəreɪt/', 'cộng tác' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'assign', 'verb', '/əˈsaɪn/', 'giao việc cho ai' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'approve', 'verb', '/əˈpruːv/', 'phê duyệt' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'submit', 'verb', '/səbˈmɪt/', 'nộp, gửi lên' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'resolve', 'verb', '/rɪˈzɒlv/', 'giải quyết xong (lỗi, vấn đề)' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'remote work', 'noun', '/rɪˌməʊt ˈwɜːk/', 'làm việc từ xa' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'freelancer', 'noun', '/ˈfriːlɑːnsə(r)/', 'người làm tự do' FROM DUAL
UNION ALL SELECT 'en', 'IT_WORK', 'outsourcing', 'noun', '/ˈaʊtsɔːsɪŋ/', 'thuê ngoài, gia công phần mềm' FROM DUAL;
