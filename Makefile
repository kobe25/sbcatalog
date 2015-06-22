help:
	@echo help
	@echo make logs  See all logs
	@echo
	@echo make stop  Stop all containers

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

test-unit:
	@docker-compose run back py.test tests

test-integration:
	@docker-compose run test py.test

test:  test-unit test-integration
	@echo 'All tests passed!'
