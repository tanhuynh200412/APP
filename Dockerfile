# Dockerfile (Đặt tại thư mục gốc)
FROM alpine:latest

# Tạo thư mục đích trong Docker Image để lưu file APK/AAB
WORKDIR /app/release

# Sao chép file APK/AAB đã được build (từ môi trường GitHub Actions) vào Image
COPY app/build/outputs/apk/release/*.apk /app/release/

# Định nghĩa lệnh chạy khi container được khởi động
CMD ["ls", "-l", "/app/release"]

# Metadata
LABEL maintainer="giakiet147"
