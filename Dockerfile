# Use OpenJDK 17 (or the version your Spring Boot app requires)
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the Spring Boot JAR file (Ensure your JAR is named correctly)
COPY target/spring-boot-app.jar app.jar

# Expose application port (matching Kubernetes Service)
EXPOSE 8080

# Define environment variables (these will be overridden by Kubernetes)
ENV MONGO_DB_HOSTNAME=mongodbsvc
ENV MONGO_DB_USERNAME=devdb
ENV MONGO_DB_PASSWORD=devdb@123

# Run the Spring Boot application
CMD ["java", "-jar", "app.jar"]
