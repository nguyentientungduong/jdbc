#!/bin/bash

# Create and run griddb server with clustername is "myCluster"

docker run --network="host" --name griddb_sample -e GRIDDB_CLUSTER_NAME=myCluster griddb/griddb
