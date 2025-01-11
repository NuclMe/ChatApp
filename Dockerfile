FROM  openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
WORKDIR /app
COPY ./build/libs/websocket-0.0.1-SNAPSHOT.jar app.jar
LABEL authors="SERGEY"

CMD ["java", "-jar", "app.jar"]

EXPOSE 8080