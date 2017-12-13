#!/usr/bin/env bash

hadoop fs -mkdir /data

mkdir wikipedia
cd wikipedia
wget https://dumps.wikimedia.org/other/pagecounts-raw/2016/2016-08/pagecounts-20160805-110000.gz
wget https://dumps.wikimedia.org/other/pagecounts-raw/2016/2016-08/pagecounts-20160805-120000.gz
hadoop fs -mkdir /data/pagecount
hadoop fs -put * /data/pagecount
cd ..

mkdir taxi
cd taxi
wget https://s3.amazonaws.com/nyc-tlc/trip+data/yellow_tripdata_2017-06.csv
hadoop fs -mkdir /data/taxi
hadoop fs -put * /data/taxi
hive -f taxi.ql
cd ..

mkdir europa
cd europa
wget http://www.statmt.org/europarl/v7/de-en.tgz
tar xvfz de-en.tgz
hadoop fs -mkdir /data/europa
hadoop fs -put *.de /data/europa
hadoop fs -put *.en /data/europa
cd ..

