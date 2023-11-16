#FROM openjdk:11
#EXPOSE 8080
#ARG JAR_FILE=target/spring-test-0.0.1-SNAPSHOT.jar
#ADD ${JAR_FILE} app-test.jar
#ENTRYPOINT ["java","-jar","/app-test.jar"]


# Use an official OpenJDK runtime as a parent image
FROM openjdk:11

# Set the working directory in the container
#WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/spring-test-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that your application will run on
EXPOSE 8080

# Specify the command to run on container start
ENTRYPOINT ["java", "-jar", "app.jar"]
