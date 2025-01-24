#!/bin/bash

apt-get update  

apt-get install -y curl

# Update the password for the kibana_system user in Elasticsearch
curl -X POST "http://elasticsearch:9200/_security/user/kibana_system/_password" \
    -u elastic:pass123 \
    -H "Content-Type: application/json" \
    -d '{"password": "pass1234"}'

echo "Bootstrap script executed successfully!"
