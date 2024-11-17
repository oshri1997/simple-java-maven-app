FROM maven:3.9.5-eclipse-temurin-17 AS builder
WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jre
WORKDIR /app

<<<<<<< HEAD
COPY --from=builder /app/target/my-app-1.0.26.jar app.jar
=======
COPY --from=builder /app/target/my-app-*.jar app.jar
>>>>>>> 04b1b84 (deploy V4)

CMD ["java", "-jar", "app.jar"]
