#!/bin/bash

set -e

echo "Installing Spark..."
apt-get update
apt-get install openjdk-7-jdk --yes
apt-get install python-pip --yes
apt-get install libzmq-dev python-dev --yes
wget -q -O spark http://d3kbcqa49mib13.cloudfront.net/spark-1.6.2-bin-hadoop2.6.tgz
tar -xf spark