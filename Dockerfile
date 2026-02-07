# 1. Берем базовый образ с Java
FROM eclipse-temurin:21-jre-alpine
# 2. Указываем рабочую директорию
WORKDIR /app
# 3. Копируем скомпилированный jar-файл в контейнер
COPY target/config-server-0.0.1-SNAPSHOT.jar config-server.jar
# 4. Команда для запуска приложения
ENTRYPOINT ["java", "-jar", "config-server.jar"]