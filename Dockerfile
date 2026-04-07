# Stage 1: Build
FROM maven:3.9.3-eclipse-temurin-21 AS build

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

# Stage 2: Run
FROM eclipse-temurin:21-jdk-focal

WORKDIR /app
COPY --from=build /app/target/jettz-0.0.1-SNAPSHOT.jar app.jar

ENV PORT 8080

ENTRYPOINT ["java","-jar","app.jar"]