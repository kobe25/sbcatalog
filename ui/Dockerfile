FROM iojs:2.3

MAINTAINER Antonio Esposito "kobe@befair.it"

RUN mkdir /code
WORKDIR /code
COPY . /code
#RUN npm install -g harp

EXPOSE 9000
CMD ["node_modules/harp/bin/harp", "server", "--port", "9000"]
