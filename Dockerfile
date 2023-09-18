# Use an official OpenJDK 17 runtime as a parent image
FROM adoptopenjdk/openjdk17:alpine-jre

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/MySpringBootApp.jar /app/

# Expose the port your application runs on (default is 8080)
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "MySpringBootApp.jar"]
