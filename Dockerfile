# Use a lightweight Java 21 runtime (or match your project's Java version)
FROM eclipse-temurin:17-jre

# Set the working directory
WORKDIR /app

# Copy the application JAR
COPY target/*.jar app.jar

# Expose the application port
EXPOSE 3333

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]