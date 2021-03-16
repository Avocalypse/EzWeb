all:	docker	run

docker:
	cd provisioning/dev; sudo docker-compose up -d

run:
	cd website-skeleton; symfony serve
