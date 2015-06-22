help:
	@echo '**SBCatalog Help**'
	@echo 'make           Print this help'
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
	@echo 'make logs back  See only backend logs'
	@echo 'make back       Debug in backend via iPython'

debian8 jessie:
	@sudo apt install -t jessie-backports docker.io
	@sudo pip2 install docker-compose

debian9 stretch:
	@sudo apt install make docker.io docker-compose

arch:
	@sudo pacman -S make docker
	@sudo pip2 install docker-compose

up:
	@docker-compose up -d

log logs:
	@docker-compose logs

start:
	@docker-compose start

stop:
	@docker-compose stop

restart:
	@docker-compose restart

ps:
	@docker-compose ps

t:
	@docker-compose run test /bin/bash

back be backend api:
	@docker-compose run back ipython

rm:
	@docker-compose stop
	@docker-compose rm -f
	@docker rmi -f sbcatalog_{test,proxy,front,back,db}

test:  test-unit test-integration
	@echo 'All tests passed successfully!'

test-unit:
	@docker-compose run back py.test tests

test-integration:
	@docker-compose run test py.test
