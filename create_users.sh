#!/usr/bin/env bash

cat studenten.csv | while read user; do echo "hadoop fs -mkdir /user/$user"; done
cat studenten.csv | while read user; do echo "hadoop fs -chown $user:$user /user/$user"; done
cat studenten.csv | while read user; do echo "hdfs dfsadmin -setSpaceQuota 3g /user/$user"; done



