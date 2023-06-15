FROM gradle:7.6.1-jdk17 AS build
WORKDIR /app
COPY build.gradle .
COPY src ./src
RUN gradle build -x test --no-daemon

FROM openjdk:17
COPY --from=build /app/build/libs/*.jar /app/
CMD ["java", "-jar", "/app/app-0.0.1-SNAPSHOT.jar"]
