# File: Dockerfile
# Simple Dockerfile for the inventory management system

# Use OpenJDK 11 as base image
FROM openjdk:11-jre-slim

# Set working directory inside container
WORKDIR /app

# Copy the JAR file from target directory
COPY target/simple-inventory-1.0.0.jar app.jar

# Expose port (not really needed for command-line app, but good practice)
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]