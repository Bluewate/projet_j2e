FROM tomcat:latest

LABEL maintainer="Nidhi Gupta"

COPY /var/lib/jenkins/workspace/pipeline_maven_docker/webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
