FROM azul/zulu-openjdk:11
RUN mkdir -p /forwarder
COPY forwarder/forwarder.jar /forwarder
EXPOSE 443
CMD [ "java", "-DforwarderSettings=/config/forwarder-settings.properties", "-jar", "/forwarder/forwarder.jar" ]