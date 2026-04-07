# Stage 1: Build the project
FROM maven:3.9.3-eclipse-temurin-17 AS build

WORKDIR /app

# Copy pom.xml and source code
COPY pom.xml .
COPY src ./src

# Build the JAR without tests
RUN mvn clean package -DskipTests

# Stage 2: Run the JAR
FROM eclipse-temurin:17-jdk-focal

WORKDIR /app

# Copy the JAR from the build stage
COPY --from=build /app/target/jettz-0.0.1-SNAPSHOT.jar app.jar

# Expose the port
ENV PORT 8080

# Run Spring Boot app
ENTRYPOINT ["java","-jar","app.jar"]