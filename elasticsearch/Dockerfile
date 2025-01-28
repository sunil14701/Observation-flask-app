FROM docker.elastic.co/elasticsearch/elasticsearch:8.17.1

USER root

RUN apt-get update && apt-get install -y curl && apt-get clean

USER elasticsearch
