FROM node:0.12

MAINTAINER Antonio Esposito "kobe@befair.it"

RUN mkdir /code
WORKDIR /code
COPY . /code
#RUN npm install -g harp

EXPOSE 9000
CMD ["node_modules/.bin/harp", "server", "--port", "9000"]
