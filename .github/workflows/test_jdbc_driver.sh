#!/bin/bash

# Build maven with pom.xml file
mvn package

# Create and run griddb server with clustername is "myCluster"
docker run -d --network="host" --name griddb_sample -e GRIDDB_CLUSTER_NAME=myCluster griddb/griddb:4.5.2-bionic

# Turn off firewall
sudo ufw disable

# Get version jdbc driver
JAVA_VERSION=$(cat pom.xml | grep "version" |  head -n 1 | cut -d ">" -f 2 | cut -d "<" -f 1)
PACKAGE_NAME=$(cat pom.xml | grep "artifactId" |  head -n 1 | cut -d ">" -f 2 | cut -d "<" -f 1)

# Export PATH and run JDBC sample
export CLASSPATH=${CLASSPATH}:target/$PACKAGE_NAME-$JAVA_VERSION.jar
cp sample/en/jdbc/JDBCSelect.java .
javac JDBCSelect.java
java JDBCSelect
