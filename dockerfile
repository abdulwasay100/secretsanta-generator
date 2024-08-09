# Use the OpenJDK 8 base image
FROM openjdk:8u151-jdk-alpine3.7

# Set environment variable for application home
ENV APP_HOME /app

# Create the application directory
RUN mkdir -p $APP_HOME

# Set the working directory
WORKDIR $APP_HOME

# Copy the JAR file into the container
COPY target/secretsanta-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8009
EXPOSE 8009

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
