#!/bin/bash

set -e

echo "Installing Toree..."
pip install jupyter
pip install --pre toree
jupyter toree install --spark_opts='--master=local[4]' --spark_home=/home/vagrant/spark-1.6.2-bin-hadoop2.6 --interpreters=Scala,PySpark,SparkR,SQL