#!/bin/bash
docker run --volumes-from sharedData -p 5050:8080 --name ace -it slintes/ace