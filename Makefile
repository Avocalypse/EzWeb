all:	init	run

init:	docker
	cd website-skeleton; composer update
	cd website-skeleton; composer install
	cd website-skeleton; php bin/console ibexa:install
	cd website-skeleton; php bin/console ibexa:graphql:generate-schema
	cd website-skeleton; composer run post-install-cmd

docker:
	cd provisioning/dev; sudo docker-compose up -d

run:
	cd website-skeleton; symfony serve
