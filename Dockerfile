FROM tomcat:latest

ADD /root/.jenkins/workspace/Jenkins-maven-docker-end-end/project/target/LoginWebApp.war /usr/local/tomcat/webapps

EXPOSE 9090

CMD ["catalina.sh","run"]
