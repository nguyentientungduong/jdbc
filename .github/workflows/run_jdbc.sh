#!/bin/bash

# Turn off firewall
sudo ufw disable

# Export PATH and run JDBC sample
export CLASSPATH=${CLASSPATH}:target/
cp sample/en/jdbc/JDBCSelect.java .
javac JDBCSelect.java
java JDBCSelect
