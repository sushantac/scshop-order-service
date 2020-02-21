FROM java:8
VOLUME /tmp
EXPOSE 8005
COPY ./target/order-service-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
RUN sh -c 'touch order-service-0.0.1-SNAPSHOT.jar'
ENTRYPOINT ["java","-jar","order-service-0.0.1-SNAPSHOT.jar"]