all:	init	refresh	run

init:	docker
	cd website-skeleton; composer update
	cd website-skeleton; composer install
	cd website-skeleton; php bin/console ibexa:install
	cd website-skeleton; php bin/console ibexa:graphql:generate-schema
	cd website-skeleton; composer run post-install-cmd

refresh:
	cd website-skeleton; php bin/console cache:clear
	cd website-skeleton; php bin/console assets:install
	cd website-skeleton; yarn encore dev

docker:
	cd provisioning/dev; sudo docker-compose up -d

run:
	cd website-skeleton; symfony serve
