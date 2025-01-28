FROM docker.elastic.co/apm/apm-server:8.17.1

USER root

RUN apt-get update && apt-get install -y curl && apt-get clean

USER apm-server