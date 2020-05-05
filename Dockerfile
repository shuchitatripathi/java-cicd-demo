# Get Tomcat v8 from Docker Hub
FROM tomcat:9.0-alpine

# Copy Local War File to Container Tomcat Webapps Path
ADD ./webapp/target/webapp.war /usr/local/tomcat/webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]