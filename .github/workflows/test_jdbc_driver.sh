#!/bin/bash

# Build maven with pom.xml file
mvn package

# Create and run griddb server with clustername is "myCluster"
docker run -d --network="host" --name griddb_sample -e GRIDDB_CLUSTER_NAME=myCluster griddb/griddb:4.5.2-bionic

# Turn off firewall
sudo ufw disable

# Export PATH and run JDBC sample
export CLASSPATH=${CLASSPATH}:target/
cp sample/en/jdbc/JDBCSelect.java .
javac JDBCSelect.java
java JDBCSelect
