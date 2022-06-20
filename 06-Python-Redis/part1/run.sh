#!/bin/bash
set -e

docker build -t python:plask .

docker run -d -t -i -p 8080:8080 --name=python python:plask python3 /app/app.py
docker run --rm -d --network container:python --name=redis redis:6-alpine



