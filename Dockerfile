FROM openjdk:17.0.2-slim
ARG profil
ENV LANG=fr_FR.UTF-8
ENV LANGUAGE=fr_FR:fr
ENV LC_ALL=fr_FR.UTF-8
ENV TZ=Europe/Paris
ARG JAR_FILE=target/library-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} library.jar
ENTRYPOINT java -Duser.language=fr -Duser.country=FR -jar library.jar