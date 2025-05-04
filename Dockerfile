# Gunakan image resmi OpenJDK sebagai base image
FROM openjdk:8-jdk-alpine

# Set working directory di dalam container
WORKDIR /app

# Salin source code Java ke dalam container
COPY halo.java /app

# Kompilasi aplikasi Java
RUN javac halo.java

# Jalankan aplikasi setelah container dijalankan
CMD ["java", "halo"]
