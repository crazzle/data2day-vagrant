#!/bin/bash

set -e

echo "Starting Kafka..."
nohup sh kafka_2.11-0.10.0.1/bin/zookeeper-server-start.sh kafka_2.11-0.10.0.1/config/zookeeper.properties &
nohup sh kafka_2.11-0.10.0.1/bin/kafka-server-start.sh kafka_2.11-0.10.0.1/config/server.properties &
echo "sleep to get Kafka up and create Kafka-Topics..."
sleep 15
sh kafka_2.11-0.10.0.1/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic plant-data
