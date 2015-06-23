FROM node:0.12

MAINTAINER Antonio Esposito "kobe@befair.it"

COPY . /code
WORKDIR /code
RUN npm install -g

EXPOSE 9000
CMD ["harp", "server", "--port", "9000"]
