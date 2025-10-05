FROM maven:3.9.11-eclipse-temurin-21

WORKDIR /app

RUN mvn clean package -DskipTests

COPY . .

CMD ["java","-jar","target/myjar.jar"]