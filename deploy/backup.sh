#!/usr/bin/env bash
# Sao lưu schema của ứng dụng bằng Oracle Data Pump (expdp), lưu file .dmp vào deploy/backups/.
# Chạy từ thư mục gốc dự án trên server:  bash deploy/backup.sh
# Đặt lịch hằng ngày lúc 2h sáng:  crontab -e  ->  0 2 * * * cd /home/ubuntu/vocab && bash deploy/backup.sh >> deploy/backups/backup.log 2>&1
set -euo pipefail

cd "$(dirname "$0")/.."
# ENV_FILE / COMPOSE cho phép chạy với file env hoặc project khác (mặc định: .env và docker compose)
ENV_FILE="${ENV_FILE:-.env}"
COMPOSE="${COMPOSE:-docker compose}"
set -a; source "$ENV_FILE"; set +a

KEEP_DAYS="${KEEP_DAYS:-14}"
STAMP="$(date +%Y%m%d_%H%M%S)"
DUMP="vocab_${STAMP}.dmp"
IN_CONTAINER_DIR=/opt/oracle/oradata/backup
OUT_DIR=deploy/backups
mkdir -p "$OUT_DIR"

# Thư mục trong container (thuộc volume oracle-data) + directory object cho Data Pump
$COMPOSE exec -T db bash -c "mkdir -p $IN_CONTAINER_DIR"
$COMPOSE exec -T db bash -c "sqlplus -s -L system/\"$ORACLE_ADMIN_PASSWORD\"@//localhost/FREEPDB1" <<SQL
WHENEVER SQLERROR EXIT FAILURE
CREATE OR REPLACE DIRECTORY VOCAB_BACKUP AS '$IN_CONTAINER_DIR';
GRANT READ, WRITE ON DIRECTORY VOCAB_BACKUP TO $DB_USERNAME;
EXIT
SQL

$COMPOSE exec -T db bash -c "expdp \"$DB_USERNAME\"/\"$DB_PASSWORD\"@//localhost/FREEPDB1 \
  schemas=$DB_USERNAME directory=VOCAB_BACKUP dumpfile=$DUMP logfile=${DUMP%.dmp}.log"

$COMPOSE cp "db:$IN_CONTAINER_DIR/$DUMP" "$OUT_DIR/$DUMP"
$COMPOSE exec -T db bash -c "rm -f $IN_CONTAINER_DIR/$DUMP $IN_CONTAINER_DIR/${DUMP%.dmp}.log"

# Xóa bản sao lưu cũ hơn KEEP_DAYS ngày
find "$OUT_DIR" -name 'vocab_*.dmp' -mtime +"$KEEP_DAYS" -delete

echo "Đã sao lưu: $OUT_DIR/$DUMP"
