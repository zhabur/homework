#!/bin/bash
set -e

docker build -t python:time .

docker run -d -t -i --name=time python:time python3 /app/app.py