#!/bin/bash

# Turn off firewall
sudo ufw disable

# Export PATH and run JDBC sample
export CLASSPATH=${CLASSPATH}:bin/gridstore-jdbc.jar
cp sample/en/jdbc/JDBCSelect.java .
javac JDBCSelect.java
java JDBCSelect
