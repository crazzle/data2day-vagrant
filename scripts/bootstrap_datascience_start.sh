#!/bin/bash

set -e

echo "Running Jupyter Notebook..."
nohup jupyter notebook --ip=* --no-browser &