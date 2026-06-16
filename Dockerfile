# Java 21 환경에서 실행
FROM eclipse-temurin:21-jre

LABEL authors="kosa"

# Gradle 빌드 결과 jar 파일 경로
ARG JAR_FILE_PATH=build/libs/*.jar

# jar 파일을 컨테이너 안에 app.jar로 복사
COPY ${JAR_FILE_PATH} app.jar

# 컨테이너 실행 시 Spring Boot 앱 실행
ENTRYPOINT ["java", "-jar", "app.jar"]