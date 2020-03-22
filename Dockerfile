FROM maven:3.5.2-jdk-8-alpine
COPY pom.xml /maven-build/
COPY src /maven-build/src/
WORKDIR /maven-build/
RUN mvn package

FROM openjdk:8-jdk
WORKDIR /app/
COPY --from=builder /maven-build/target/configuration.jar .
ADD target/configuration.jar configuration.jar
EXPOSE 8084
ENTRYPOINT ["java", "-jar", "configuration.jar"]