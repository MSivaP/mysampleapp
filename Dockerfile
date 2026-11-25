FROM tomcat:latest
COPY target/sampleapp.war /usr/local/tomcat/webapps
RUN mkdir /usr/local/siva
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
