FROM openjdk:8-jdk
ADD target/configuration.jar configuration.jar
EXPOSE 8084
ENTRYPOINT ["java", "-jar", "configuration.jar"]