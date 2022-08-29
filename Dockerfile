FROM openjdk:11-jdk-slim

RUN apt-get update && apt-get install -y wget

WORKDIR /app

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

CMD ["java","-jar","app.jar"]  
