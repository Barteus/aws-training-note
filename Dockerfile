FROM openjdk:8-jdk-alpine
COPY build/libs/*.jar /app.jar
RUN sh -c 'touch /tmp/app.jar'
CMD ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]