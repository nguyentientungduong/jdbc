#!/bin/bash

export CLASSPATH=${CLASSPATH}:../../target/
cp ../../sample/en/jdbc/JDBCSelect.java .
javac JDBCSelect.java
java JDBCSelect
docker kill griddb_sample
