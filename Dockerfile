FROM tomcat:9.0 

ADD **/*.war /usr/local/tomcat/webapps

EXPOSE 9090

CMD ["catalina.sh","run"]
