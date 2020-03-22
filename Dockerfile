FROM maven:3.5.2-jdk-8-alpine AS MAVEN_TOOL_CHAIN
#COPY pom.xml /tmp/
#COPY src /tmp/src/
#WORKDIR /tmp/
RUN mvn package

FROM openjdk:8-jdk
ADD target/configuration.jar configuration.jar
EXPOSE 8084
ENTRYPOINT ["java", "-jar", "configuration.jar"]
