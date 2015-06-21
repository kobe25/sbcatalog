# CLI Usage

Per lo sviluppo in container useremo questi due strumenti (soprattutto il secondo):

* [**Docker Engine**](https://www.docker.com/) e' il container runtime
* [**Docker Compose**](https://docs.docker.com/compose/) e' il container orchestrator, un wrapper che permette di gestire un'applicazione multi container

## Docker Engine

Visualizza tutte le immagini:

    $ docker images

Visualizza tutti i container:

    $ docker ps

Per approfondimenti, vedere [Docker Engine CLI Reference](https://docs.docker.com/docker/reference/commandline/cli/).

## Docker Compose

Aprire un interprete Python nel backend:

    $ docker-compose run be ipython

Vedere lo stato dei container:

    $ docker-compose ps

Vedere tutti i log:

    $ docker-compose logs

Vedere i log del backend:

    $ docker-compose logs be

Riavviare il container del web server:

    $ docker-compose restart web

Riavviare tutti i container:

    $ docker-compose stop

Cancellare le immagini dei container:

    $ docker-compose rm

Per approfondimenti, vedere [Docker Compose CLI Reference](https://docs.docker.com/compose/cli/).
