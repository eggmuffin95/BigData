#! /bin/bash

# Notice: --endpoint-mode dnsrr is required

docker service create \
	--name hadoop-master \
	--hostname hadoop-master \
	--network swarm-net \
	--replicas 1 \
	--detach=true \
	--endpoint-mode dnsrr \
	--mount type=bind,source=/Users/yann/Documents/GitHub/BigData/hadoop/config,target=/config/hadoop \
	--mount type=bind,source=/Users/yann/Documents/GitHub/BigData/hadoop/hdfs/master,target=/tmp/hadoop-root \
	--mount type=bind,source=/Users/yann/Documents/GitHub/BigData/hadoop/logs/master,target=/usr/local/hadoop/logs \
	eggmuffin95/hadoop:3.3.2
