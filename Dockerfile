# Use an official AdoptOpenJDK base image with Java 17
FROM amazoncorretto:17.0.7-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot application JAR file into the container
COPY target/app-1.0.jar /app/app.jar

# Expose the port that the Spring Boot application will run on (default is 8080)
EXPOSE 8080

# Define the command to run your Spring Boot application
CMD ["java", "-jar", "app.jar"]

