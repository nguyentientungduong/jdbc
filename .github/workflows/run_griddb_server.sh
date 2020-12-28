#!/bin/bash

# Create and run griddb server with clustername is "myCluster"
docker run -d --network="host" --name griddb_sample -e GRIDDB_CLUSTER_NAME=myCluster griddb/griddb:4.5.2-bionic
