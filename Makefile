all:	docker
	cd website-skeleton; symfony serve

docker:
	cd provisioning/dev; sudo docker-compose up -d
