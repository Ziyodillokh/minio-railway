
# Railway uchun Dockerfile (agar kerak bo'lsa)
FROM minio/minio:latest

# Default environment variables
ENV MINIO_ROOT_USER=admin
ENV MINIO_ROOT_PASSWORD=password123

# Data directory yaratish
RUN mkdir -p /data

# Port expose
EXPOSE 9000 9001

# MinIO serverni ishga tushirish
CMD ["server", "/data", "--console-address", ":9001"]