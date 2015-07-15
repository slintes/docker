#!/bin/bash
docker run -d --name etcd2 -p 2379:2379 -p 2380:2380 -p 4001:4001 -p 7001:7001 slintes/etcd2