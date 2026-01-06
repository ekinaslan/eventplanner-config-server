FROM eclipse-temurin:21-jdk-jammy
WORKDIR /app
COPY . .
RUN chmod +x mvnw && ./mvnw clean install -DskipTests
EXPOSE 8888
ENTRYPOINT ["sh", "-c", "java -jar target/config-server-0.0.1-SNAPSHOT.jar"]