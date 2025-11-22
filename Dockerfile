FROM eclipse-temurin:21-jre

WORKDIR /opt/Lavalink

RUN apt-get update && apt-get install -y curl unzip && \
    curl -o Lavalink.jar -L "https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar"

COPY application.yml .

EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
