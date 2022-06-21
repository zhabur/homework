FROM python:3-alpine

ENV HOST_REDIS=redis.service.consul

WORKDIR /app

ADD requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

ADD app.py /app/app.py
ADD time.py /app/time.py