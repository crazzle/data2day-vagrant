#!/bin/bash

set -e

echo "Installing Toree..."
pip install jupyter
pip install --pre toree
jupyter toree install --spark_opts='--packages org.apache.spark:spark-streaming-kafka_2.10:1.6.2,org.json4s:json4s-native_2.10:3.3.0,org.json4s:json4s-ext_2.10:3.3.0 --master=local[4]' --spark_home=/home/vagrant/spark-1.6.2-bin-hadoop2.6 --interpreters=Scala,PySpark,SparkR,SQL
