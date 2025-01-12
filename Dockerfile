# Build stage
FROM maven:3.8.1-openjdk-11 as build

# Set the working directory for the build stage
WORKDIR /app

# Copy the pom.xml and source code
COPY pom.xml /app/
COPY src /app/src

# Run Maven to build the project
RUN mvn clean package

# Production stage
FROM openjdk:11-jre-slim

# Set the working directory for the production image
WORKDIR /app

# Copy the JAR file from the build stage into the production image
COPY --from=build /app/target/*.jar /app/app.jar

# Expose the port the application will run on
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
