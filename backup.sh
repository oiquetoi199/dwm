#!/bin/bash

# Đường dẫn tới thư mục mã nguồn
SOURCE_DIR=~/src/dwm

# Tên thư mục sao lưu
BACKUP_DIR="$SOURCE_DIR/backup"

# Tạo thư mục backup nếu chưa tồn tại
mkdir -p "$BACKUP_DIR"

# Tạo thư mục sao lưu với timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_SUBDIR="$BACKUP_DIR/dwm_backup_$TIMESTAMP"

# Sao chép mã nguồn (loại trừ thư mục backup)
rsync -av --exclude="backup" "$SOURCE_DIR/" "$BACKUP_SUBDIR"

# Thông báo hoàn thành
echo "Sao lưu hoàn tất: $BACKUP_SUBDIR"

