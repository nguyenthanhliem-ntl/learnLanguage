# Triển khai VocabMaster lên Oracle Cloud Free Tier

Mô hình: 1 máy ảo Ubuntu chạy Docker Compose gồm 3 container:

```
Trình duyệt ──HTTP :80──▶ web (Nginx: frontend + chuyển /api)  ──▶ backend (Spring Boot :8080) ──▶ db (Oracle Free 23ai :1521)
```

Chỉ cổng 80 mở ra Internet. Backend và database chỉ nói chuyện với nhau trong mạng Docker.

---

## 1. Tạo máy ảo trên Oracle Cloud

1. Đăng ký tại <https://cloud.oracle.com> (cần thẻ để xác minh, gói Always Free không bị trừ tiền).
2. **Compute → Instances → Create instance**:
   - Image: **Canonical Ubuntu 22.04** (hoặc 24.04).
   - Shape: **Ampere (VM.Standard.A1.Flex)**, chọn **2 OCPU, 12 GB RAM** (vẫn trong mức miễn phí; Oracle DB cần ≥ 4 GB).
   - Networking: để mặc định (tạo VCN mới, có **public IPv4**).
   - SSH keys: chọn *Generate a key pair* và **tải private key về** (vd `vocab.key`).
3. Ghi lại **Public IP** của máy (vd `203.0.113.10`).

> Hết dung lượng Ampere ở vùng của bạn ("Out of capacity") thì thử lại sau vài giờ hoặc đổi Availability Domain.

## 2. Mở cổng 80

**a) Trên Oracle Cloud** — Instance → Subnet → Security List mặc định → *Add Ingress Rules*:

| Source CIDR | IP Protocol | Destination Port |
|---|---|---|
| `0.0.0.0/0` | TCP | `80` |

**b) Trên máy ảo** (ảnh Ubuntu của Oracle chặn sẵn bằng iptables). SSH vào máy:

```bash
ssh -i vocab.key ubuntu@203.0.113.10
sudo iptables -I INPUT 6 -m state --state NEW -p tcp --dport 80 -j ACCEPT
sudo netfilter-persistent save
```

## 3. Cài Docker

```bash
curl -fsSL https://get.docker.com | sudo sh
sudo usermod -aG docker ubuntu
exit        # đăng xuất rồi SSH lại để quyền docker có hiệu lực
docker compose version
```

## 4. Đưa mã nguồn lên máy chủ

Cách khuyên dùng là đẩy code lên một **Git repo riêng tư** (GitHub/GitLab) rồi `git clone` trên server.
Dự án hiện chưa có commit nào; nếu chưa muốn dùng Git thì nén và copy bằng `scp` từ máy Windows (PowerShell, ở thư mục `D:\PJ\en_vo`):

```powershell
tar -czf vocab.tgz --exclude=node_modules --exclude=target --exclude=dist --exclude=.env --exclude=deploy/backups backend frontend deploy docker-compose.yml
scp -i vocab.key vocab.tgz ubuntu@203.0.113.10:~
```

Trên server:

```bash
mkdir -p ~/vocab && tar -xzf ~/vocab.tgz -C ~/vocab && cd ~/vocab
```

> Không copy file `backend/.env` của máy dev lên server.

## 5. Tạo file cấu hình `.env`

```bash
cd ~/vocab
cp deploy/env.example .env
openssl rand -base64 48      # chạy 3 lần, lấy 3 chuỗi khác nhau cho 2 mật khẩu + JWT_SECRET
nano .env
```

Điền:

- `PUBLIC_URL=http://<Public IP>` (vd `http://203.0.113.10`)
- `ORACLE_ADMIN_PASSWORD`, `DB_PASSWORD`: mật khẩu mạnh, **chỉ dùng chữ và số** (tránh ký tự `@ / " $`).
- `JWT_SECRET`: chuỗi ngẫu nhiên ≥ 32 ký tự, **khác** máy dev.

```bash
chmod 600 .env
```

## 6. Chạy

```bash
docker compose up -d --build
docker compose ps                 # db phải "healthy", backend và web "running"
docker compose logs -f backend    # chờ dòng "Started VocabApplication"
```

- Lần đầu mất khoảng **5–10 phút**: tải image Oracle, khởi tạo database, rồi backend chạy Flyway tạo bảng và nạp ~5.800 từ của kho A1–C2.
- Mở `http://<Public IP>` → trang giới thiệu → **Đăng ký** tài khoản mới (dữ liệu ở máy dev không tự chuyển lên).

Kiểm tra nhanh: `curl http://localhost/api/health` trên server phải trả về trạng thái OK.

## 7. Cập nhật phiên bản mới

```bash
cd ~/vocab
bash deploy/backup.sh             # luôn sao lưu trước khi cập nhật
# lấy code mới: git pull   (hoặc copy lại vocab.tgz và giải nén đè, giữ nguyên .env)
docker compose up -d --build
docker compose logs -f backend
```

Flyway tự chạy migration mới khi backend khởi động. **Không sửa** các file migration đã chạy (`V1`…`V4`), thay đổi schema luôn thêm file mới.

## 8. Sao lưu và khôi phục

**Sao lưu** (file `.dmp` lưu ở `deploy/backups/`, giữ 14 ngày):

```bash
bash deploy/backup.sh
```

Đặt lịch hằng ngày lúc 2 giờ sáng: `crontab -e` rồi thêm dòng

```
0 2 * * * cd /home/ubuntu/vocab && bash deploy/backup.sh >> deploy/backups/backup.log 2>&1
```

Nên định kỳ tải bản sao lưu về máy khác: `scp -i vocab.key ubuntu@<IP>:~/vocab/deploy/backups/vocab_*.dmp .`

**Khôi phục** (ghi đè dữ liệu hiện tại — dừng backend trước):

```bash
docker compose stop backend
docker compose cp deploy/backups/vocab_YYYYMMDD_HHMMSS.dmp db:/opt/oracle/oradata/backup/
source .env
docker compose exec db bash -c "impdp $DB_USERNAME/$DB_PASSWORD@//localhost/FREEPDB1 \
  directory=VOCAB_BACKUP dumpfile=vocab_YYYYMMDD_HHMMSS.dmp schemas=$DB_USERNAME table_exists_action=replace"
docker compose start backend
```

## 9. Lệnh hay dùng

| Việc | Lệnh |
|---|---|
| Xem trạng thái | `docker compose ps` |
| Xem log | `docker compose logs -f backend` (hoặc `web`, `db`) |
| Khởi động lại | `docker compose restart backend` |
| Dừng tất cả | `docker compose down` (dữ liệu vẫn giữ trong volume `oracle-data`) |
| **Xóa sạch dữ liệu** | `docker compose down -v` — mất toàn bộ database, cẩn thận! |

Các container có `restart: unless-stopped` nên tự chạy lại khi máy chủ khởi động lại.

## 10. Khi có tên miền (làm sau)

1. Trỏ bản ghi **A** của tên miền về Public IP.
2. Mở thêm cổng **443** (Security List + iptables như bước 2).
3. Cấp chứng chỉ HTTPS miễn phí (Let's Encrypt) và đổi `PUBLIC_URL=https://ten-mien-cua-ban`.

Bước 3 cần sửa cấu hình Nginx; khi có tên miền, nhờ Claude làm tiếp phần này.

## Bảo mật đã có sẵn

- Database và backend không mở cổng ra Internet.
- Swagger UI tắt trên môi trường thật (`application-prod.yml`).
- Đăng nhập / đăng ký giới hạn 10 lần mỗi phút cho mỗi IP (Nginx trả 429 nếu vượt).
- Header bảo mật cơ bản: `X-Content-Type-Options`, `X-Frame-Options`, `Referrer-Policy`.
- Chưa có HTTPS: mật khẩu đi qua mạng dạng không mã hóa cho tới khi có tên miền + chứng chỉ.
