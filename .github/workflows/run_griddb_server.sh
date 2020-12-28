#!/bin/bash

# Create and run griddb server with clustername is "myCluster"

docker run --network="host" -e GRIDDB_CLUSTER_NAME=myCluster griddb/griddb
