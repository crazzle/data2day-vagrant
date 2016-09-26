#!/bin/bash

set -e

echo "Installing Kafka..."
apt-get update
apt-get install openjdk-7-jdk --yes
sudo su vagrant
wget -q -O kafka http://ftp.fau.de/apache/kafka/0.10.0.1/kafka_2.11-0.10.0.1.tgz
tar -xf kafka
sed -i -- 's/#advertised.listeners=PLAINTEXT:\/\/your.host.name:9092/advertised.listeners=PLAINTEXT:\/\/10.100.198.200:9092/g' kafka_2.11-0.10.0.1/config/server.properties
