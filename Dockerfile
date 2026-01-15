FROM openjdk:25

COPY target/HelloWorld-0.0.1-SNAPSHOT app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app.jar"]