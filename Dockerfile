# Use Java 17 base image
FROM eclipse-temurin:17-jdk-jammy

# Set working directory
WORKDIR /app

# Copy jar from target folder
COPY back-end/Ride_It/target/Ride_It-0.0.1-SNAPSHOT.jar app.jar

# Expose port (change if needed)
EXPOSE 8080

# Run jar
ENTRYPOINT ["java","-jar","app.jar"]
