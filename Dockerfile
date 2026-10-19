#FROM openjdk:11
FROM eclipse-temurin:11-jdk

COPY ./target/spring-boot-docker-app.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch spring-boot-docker-app.jar'

ENTRYPOINT ["java","-jar","spring-boot-docker-app.jar"]