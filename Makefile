help:
	@echo '**SBCatalog Help**'
	@echo 'make            Print this help'
	@echo
	@echo 'Whole app commands:'
	@echo 'make up         Build and start all'
	@echo 'make ps         Container status'
	@echo 'make logs       See all logs'
	@echo 'make stop       Stop all containers'
	@echo 'make restart    Restart all containers'
	@echo 'make rm         Delete containers'
	@echo
	@echo 'Container commands:'
	@echo 'make logs-back  See only backend logs'
	@echo 'make back       Debug in backend via iPython'

debian8 jessie:
	@sudo apt install python
	@sudo apt install -t jessie-backports docker.io
	@sudo pip2 install docker-compose

debian9 stretch:
	@sudo apt install python docker.io docker-compose

arch:
	@sudo pacman -S python2 docker
	@sudo pip2 install docker-compose

up:
	@docker-compose up -d
	@docker-compose ps

build:
	@docker-compose build

logs log:
	@docker-compose logs

logs-back log-back:
	@docker-compose logs back

start:
	@docker-compose start
	@docker-compose ps

stop:
	@docker-compose stop
	@docker-compose ps

restart:
	@docker-compose restart
	@docker-compose ps

ps:
	@docker-compose ps

t:
	@docker-compose run test /bin/bash

back be backend api:
	@docker-compose run back ipython

rmall:  rm rmc rmi
	@echo 'All containers/images removed!'

rm:
	@docker-compose stop
	@docker-compose rm -f
	@docker rmi -f sbcatalog_{test,proxy,front,back}

rmc:
	@docker rm -f `docker ps -aq`

rmi:
	@docker rmi -f `docker images -aq`

test:  test-unit test-integration
	@echo 'All tests passed!'

test-unit:
	@docker-compose run back py.test tests

test-integration:
	@docker-compose run test py.test
