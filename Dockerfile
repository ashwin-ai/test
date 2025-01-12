# Use a base image with Tomcat or a similar servlet container
FROM tomcat:9.0-jdk11-openjdk

# Remove the default web apps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file to the Tomcat webapps directory
COPY target/varnika.war /usr/local/tomcat/webapps/varnika.war

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
