# Use OpenJDK base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the JAR file from target folder
COPY target/*.jar app.jar

# Expose the port your app runs on
EXPOSE 8080

# Run the app
CMD ["java", "-jar", "app.jar"]



