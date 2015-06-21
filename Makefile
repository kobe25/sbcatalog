up:
	@docker-compose up -d

rm:
	@docker-compose stop
	@docker-compose rm -f
	@docker rmi -f sbcatalog_{test,web,fe,be,db}

test-unit:
	@docker-compose run be 'py.test tests'

test-integration:
	@docker-compose run test 'py.test'

test: test-unit test-integration
	@echo 'All tests passed!'
