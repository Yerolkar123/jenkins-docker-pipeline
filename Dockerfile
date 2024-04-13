FROM openjdk
COPY target/*.jar / /opt/demo-0.0.1/lib/my-app-1.0-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/my-app-1.0-SNAPSHOT.jar"]
