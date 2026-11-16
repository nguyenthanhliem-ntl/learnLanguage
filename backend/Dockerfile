# Backend VocabMaster: build bằng Maven, chạy bằng JRE 21 (đa kiến trúc: chạy được trên amd64 và arm64/Ampere)
FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app
# Tải dependency trước để tận dụng cache khi chỉ sửa code
COPY pom.xml .
RUN mvn -B -q dependency:go-offline
COPY src src
RUN mvn -B -q -DskipTests package

FROM eclipse-temurin:21-jre
WORKDIR /app
RUN useradd --system --uid 1001 app
COPY --from=build /app/target/*.jar app.jar
USER app
ENV SPRING_PROFILES_ACTIVE=prod \
    TZ=Asia/Ho_Chi_Minh \
    JAVA_OPTS="-XX:MaxRAMPercentage=75"
EXPOSE 8080
ENTRYPOINT ["sh", "-c", "exec java $JAVA_OPTS -jar app.jar"]
