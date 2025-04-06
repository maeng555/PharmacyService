FROM eclipse-temurin:17-jdk
ARG JAR_FLIE=/build/libs/app.jar
COPY ${JAR_FLIE} ./app.jar
ENV TZ=Asia/Seoul
ENTRYPOINT ["java","-jar","./app.jar"]