#!/usr/bin/env bash

wget https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2017-06.csv
hadoop fs -mkdir /user/hadoop/taxi
hadoop fs -put yellow_tripdata_2017-06.csv /user/hadoop/taxi
hive -f taxi.ql
