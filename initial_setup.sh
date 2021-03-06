#!/usr/bin/env bash

source /opt/hadoop/setup_hadoop.sh
hdfs namenode -format
start-dfs.sh

hadoop fs -mkdir -p /user/spark/applicationHistory
hadoop fs -chmod 1777 /user/spark/applicationHistory

hadoop fs -mkdir -p /tmp
hadoop fs -chmod 1777 /tmp

hadoop fs -mkdir -p /user/history
hadoop fs -chmod -R 1777 /user/history

schematool -initSchema -dbType derby
hadoop fs -mkdir /user/hive/warehouse

hadoop fs -mkdir /data
