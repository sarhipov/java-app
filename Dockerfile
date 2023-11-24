# Stage 1: Build Stage
FROM gradle:7.3.3-jdk11 AS build
WORKDIR /hello-world
COPY hello-world .
RUN gradle build

# Stage 2: Run Stage
FROM openjdk:11-jre
WORKDIR /hello-world
COPY --from=build /hello-world/build/libs/hello-world.jar .
CMD ["java", "-jar", "hello-world.jar"]
