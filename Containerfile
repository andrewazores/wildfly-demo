# podman build -f Containerfile --tag=quay.io/andrewazores/wildfly-demo:latest

FROM docker.io/jboss/wildfly:23.0.1.Final

RUN /opt/jboss/wildfly/bin/add-user.sh admin password --silent

EXPOSE 8082

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0", "-Djboss.http.port=8082"]
