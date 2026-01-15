# Use a lightweight OpenJDK image as the base
FROM eclipse-temurin:25-jdk

# Set the working directory inside the container
WORKDIR /SpringBoot


# Copy the built JAR file from the host machine into the container as app.jar
COPY target/HelloWorld-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that the Spring Boot application runs on (default is 8080)
EXPOSE 8080

# Define the command to run the application when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]
