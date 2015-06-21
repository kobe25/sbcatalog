# Installazione manuale

## Prerequisiti

È richiesto Python 3.4+, quindi Debian 8+, Ubuntu 14.04+ o Arch.

Su Debian/Ubuntu, installare Python 3, MongoDB, Node ed NPM:

    sudo apt install python3 mongodb nodejs-legacy npm

Installare Harp con NPM:

    sudo npm install -g harp

Aggiungere alla fine di `/etc/hosts` la seguente riga:

    127.0.0.1  web frontend backend database

## Installazione

### Server

    $ pip install -r sbcatalog/requirements/dev.txt
    $ sbcatalog/run.py

### Client

    $ harp server frontend
    $ firefox http://localhost:9000
