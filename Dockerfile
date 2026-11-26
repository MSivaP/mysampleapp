FROM tomcat:latest
MAINTAINER Siva-Tech
COPY target/sampleapp.war /usr/local/tomcat/webapps
RUN mkdir /usr/local/siva
ENV TOMCAT_HOME /usr/local/tomcat
RUN mkdir $TOMCAT_HOME/mysampleapp
RUN apt update
RUN apt install telnet -y
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
