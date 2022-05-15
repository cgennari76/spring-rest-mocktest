FROM openjdk:11 
COPY /target/spring-boot-api-example-0.1.0-SNAPSHOT.jar /home/spring-boot-api-example-0.1.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/home/spring-boot-api-example-0.1.0-SNAPSHOT.jar"]
