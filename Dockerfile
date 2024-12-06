FROM tomcat:latest

ADD LoginWebApp.war /usr/local/tomcat/webapps

EXPOSE 9090

CMD ["catalina.sh","run"]
