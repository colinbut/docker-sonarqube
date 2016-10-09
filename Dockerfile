FROM ubuntu:latest

MAINTAINER Colin But colin.but@outlook.com

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y unzip

RUN echo "Downloading Sonar"
RUN wget https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-5.5.zip
RUN unzip sonarqube-5.5.zip
RUN mv -v sonarqube-5.5 /opt/sonar
RUN /opt/sonar/bin/linux-x86-64/sonar.sh start
