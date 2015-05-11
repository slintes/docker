#!/bin/bash
docker run -d --name etcd -p 4001:4001 -p 7001:7001 slintes/etcd