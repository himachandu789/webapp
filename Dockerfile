# Stage 1: Build the JAR using Maven
FROM maven:3.9.4-eclipse-temurin-17 AS build

WORKDIR /app

# Copy all project files
COPY . .

# Build the project (skipping tests for faster builds)
RUN mvn clean package -DskipTests

# Stage 2: Use a slim Java image to run the JAR
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy the JAR built in the first stage
COPY --from=build /app/target/webapp-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your app listens on
EXPOSE 8080

# Start the application
CMD ["java", "-jar", "app.jar"]
