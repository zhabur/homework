#!/bin/bash
set -e
#docker image rm -f python:plask python:3-alpine python:time

docker build -t python:time .
docker build -t python:plask .

docker run -d -t --rm -i -p 8080:8080 --name=python python:plask python3 /app/app.py
docker run --rm -d --network container:python --name=redis redis:6-alpine
docker run -d -t --rm -i --name=time python:time python3 /app/time.py
