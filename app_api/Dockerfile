# --- Build stage ---
FROM maven:3.6.3-jdk-11-slim AS build
COPY src /app/src
COPY pom.xml /app
RUN mvn -f /app/pom.xml clean package

# --- Package stage ---#
FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/target/app_api-0.1.0.jar /app/app_api.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app/app_api.jar"]
