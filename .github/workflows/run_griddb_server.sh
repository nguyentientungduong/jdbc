#!/bin/bash

# Create and run griddb server with clustername is "myCluster"

timeout -k 5 10 docker run --network="host" --name griddb_sample -e GRIDDB_CLUSTER_NAME=myCluster griddb/griddb
