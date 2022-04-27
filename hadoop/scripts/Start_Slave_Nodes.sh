#!/bin/bash

# Notice: --endpoint-mode dnsrr is required

docker service create \
	--name hadoop-slave1 \
	--hostname hadoop-slave1 \
	--network swarm-net \
	--replicas 1 \
	--detach=true \
	--endpoint-mode dnsrr \
	--mount type=bind,source=/Users/yann/Documents/GitHub/BigData/hadoop/config,target=/config/hadoop \
	--mount type=bind,source=/Users/yann/Documents/GitHub/BigData/hadoop/hdfs/slave1,target=/tmp/hadoop-root \
	--mount type=bind,source=/Users/yann/Documents/GitHub/BigData/hadoop/logs/slave1,target=/usr/local/hadoop/logs \
  eggmuffin95/hadoop:2.7.4

docker service create \
	--name hadoop-slave2 \
	--hostname hadoop-slave2 \
	--network swarm-net \
	--replicas 1 \
	--detach=true \
	--endpoint-mode dnsrr \
	--mount type=bind,source=/Users/yann/Documents/GitHub/BigData/hadoop/config,target=/config/hadoop \
	--mount type=bind,source=/Users/yann/Documents/GitHub/BigData/hadoop/hdfs/slave2,target=/tmp/hadoop-root \
	--mount type=bind,source=/Users/yann/Documents/GitHub/BigData/hadoop/logs/slave2,target=/usr/local/hadoop/logs \
	eggmuffin95/hadoop:2.7.4

docker service create \
	--name hadoop-slave3 \
	--hostname hadoop-slave3 \
	--network swarm-net \
	--replicas 1 \
	--detach=true \
	--endpoint-mode dnsrr \
	--mount type=bind,source=/Users/yann/Documents/GitHub/BigData/hadoop/config,target=/config/hadoop \
	--mount type=bind,source=/Users/yann/Documents/GitHub/BigData/hadoop/hdfs/slave3,target=/tmp/hadoop-root \
	--mount type=bind,source=/Users/yann/Documents/GitHub/BigData/hadoop/logs/slave3,target=/usr/local/hadoop/logs \
	eggmuffin95/hadoop:2.7.4
