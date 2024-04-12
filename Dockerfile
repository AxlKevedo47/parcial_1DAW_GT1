FROM maven:3.9.6-eclipse-temurin-17-focal

WORKDIR /app

COPY pom.xml .

RUN mvn dependency:go-offline

COPY src ./src

RUN mvn package

CMD ["java", "-jar", "target/your-app.jar"]
