#Dockerfile

FROM tomcat:8.5.88-jdk11-temurin-focal
RUN rm -rf /usr/local/tomcat/webapps/*

WORKDIR /usr/local/tomcat/webapps

COPY target/ISTEA-Parcial-2.war ./ROOT.war

CMD ["catalina.sh","run"]

