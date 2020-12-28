#!/bin/bash

# Create and run griddb server with clustername is "myCluster"
docker run -d --name griddb_sample -e GRIDDB_CLUSTER_NAME=myCluster griddb/griddb
