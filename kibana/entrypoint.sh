#!/bin/bash

# Wait for the Elasticsearch container to be ready before starting Kibana.
echo "waiting for elasticsearch"
while true; do
    nc -q 1 localhost 9200 2>/dev/null && break
done

echo "starting kibana"
kibana