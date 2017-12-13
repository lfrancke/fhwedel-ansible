#!/usr/bin/env bash

cat studenten.csv | while read user; do echo "hadoop fs -mkdir /user/$user && hadoop fs -chown $user:$user /user/$user && hdfs dfsadmin -setSpaceQuota 3g /user/$user"; done


