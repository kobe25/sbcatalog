FROM python:3.4

MAINTAINER Antonio Esposito "kobe@befair.it"

ENV PYTHONUNBUFFERED 1
ENV PYTHONPATH /code:/usr/local/lib/python3.4/site-packages

COPY . /code/test
COPY ../api /code/api
WORKDIR /code

RUN pip install -r requirements.txt
