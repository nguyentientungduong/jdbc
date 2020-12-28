#!/bin/bash

docker pull griddb/griddb
export CLASSPATH=${CLASSPATH}:target/
cp sample/en/jdbc/JDBCSelect.java .
javac JDBCSelect.java
docker run --network="host" --name griddb_sample -e GRIDDB_CLUSTER_NAME=myCluster griddb/griddb & java JDBCSelect
docker kill griddb_sample
