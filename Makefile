all:	docker
	cd symfonyServer; symfony serve

docker:
	docker-compose up -d
