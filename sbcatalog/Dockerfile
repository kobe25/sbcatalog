FROM python:3.4.1

MAINTAINER Antonio Esposito "kobe@befair.it"

ENV PYTHONUNBUFFERED 1
ENV PYTHONPATH /code:/usr/local/lib/python3.4/site-packages

RUN groupadd -r app && useradd -r -g app -d /code app
COPY . /code/sbcatalog
WORKDIR /code/sbcatalog

RUN pip install -r requirements/dev.txt
RUN apt update -q && apt install -yq uwsgi uwsgi-plugin-python3

RUN chown -R app:app /code/sbcatalog
USER app

EXPOSE 7000
CMD ["uwsgi", "--yaml", "app.yaml"]
