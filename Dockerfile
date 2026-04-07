# Use Java 17
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the jar
COPY target/jettz-0.0.1-SNAPSHOT.jar app.jar

# Expose port (Render will provide $PORT)
ENV PORT 8080

# Run the Spring Boot app
ENTRYPOINT ["java","-jar","/app.jar"]