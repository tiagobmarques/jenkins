FROM openjdk:latest

MAINTAINER Tiago Marques

ADD hello-world/build/libs/hello-world-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]

EXPOSE 9090