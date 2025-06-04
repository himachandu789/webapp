# Stage 1: Build the JAR using Maven
FROM maven:3.9.4-eclipse-temurin-17 AS build

WORKDIR /app

# Copy all files into the image
COPY . .

# Build the application
RUN mvn clean package -DskipTests

# Stage 2: Run the app using a lighter image
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy only the built JAR from the previous stage
COPY --from=build /app/target/webapp-0.0.1-SNAPSHOT.jar app.jar

# Expose the port
EXPOSE 8080

# Command to run the app
CMD ["java", "-jar", "app.jar"]
