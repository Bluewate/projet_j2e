FROM tomcat:latest

LABEL maintainer="Nidhi Gupta"

RUN cp /var/lib/jenkins/workspace/pipeline_maven_docker/webapp/target/webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
