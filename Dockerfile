FROM python:3.7-alpine
MAINTAINER Arnab CodeSmith

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requiremnets.txt
RUN pip install -r /requiremnets.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user