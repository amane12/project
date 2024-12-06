FROM tomcat:9.0 

COPY /opt/tomcat/webapps/LoginWebApp.war /usr/local/tomcat/webapps

EXPOSE 9090

CMD ["catalina.sh","run"]
