FROM openjdk:14-alpine
RUN mkdir -p /opt/myapp-1.0/lib
# Setting application source code working directory
WORKDIR /opt/myapp-1.0/
COPY target/myapp-1.0-SNAPSHOT.jar /opt/myapp-1.0/lib/myapp-1.0-SNAPSHOT.jar
# ADD target/myapp-1.0-SNAPSHOT.jar /opt/myapp-1.0/lib/

RUN sh -c 'touch myapp-1.0-SNAPSHOT.jar'
ENTRYPOINT ["java"]
CMD ["-jar", "/opt/myapp-1.0/lib/myapp-1.0-SNAPSHOT.jar"]
