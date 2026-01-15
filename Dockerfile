# Use a lightweight OpenJDK image as the base
FROM openjdk:8-jdk-slim

# Set the working directory inside the container
WORKDIR /SpringBoot

# Define an argument to pass the JAR file name during the build process
ARG JAR_FILE=target/*.jar

# Copy the built JAR file from the host machine into the container as app.jar
COPY ${JAR_FILE} app.jar

# Expose the port that the Spring Boot application runs on (default is 8080)
EXPOSE 8080

# Define the command to run the application when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
