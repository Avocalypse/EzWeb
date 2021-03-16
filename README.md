# EzWeb
Professional Web Development using an open-source DXP

Techno used :

repository : github

local dev : docker compose service : DB, redis, mailcatcher

CI : github actions

web : eZ platform and Ibexa

API : GraphQL

sh : Platform.sh

# How to start
## Before starting :
Install symfony : *https://symfony.com/download*, You should export your symfony path to use it everywhere : *export PATH="$HOME/.symfony/bin:$PATH"*
Install docker engine : *https://docs.docker.com/engine/install/ubuntu/*
Install docker-compose : *https://docs.docker.com/compose/install/*
Install make : *sudo apt install make*
Install php : *sudo apt install php-mysql*
Install composer
Install yarn : with npm for example : *sudo npm install -g yarn*

Create a file call '.env' in the ./provisioning/dev directory (you can copy the .env.example)
Do the same thing inside the website-skeleton directory

## How to run the project
- To run everything : run the *make* command (*make will also start db, redis, and mail catcher docker containers. The command will crash if one of the container port is already in use : In that case, you should kill the process behind those port, or change the containers port inside the .env file.*)
- Then, you just have to go on *http://localhost:8000* on your browser to start the project !
- You were hable to found an admin interface at *http://localhost:8000/admin/dashboard*
- If you want only to run the project, you can do a *make run*

# Requirements :

- Project must be on a Git*
- Use Docker Compose for local dev using (at least) services: DB, Redis, MailCatcher
- Project must be installable easily
- Confirm that by an automatic install tested in a CI (Github Actions, or Travis, Circle.)
    - Codings Standards
    - Static Analysis
        - CodeSniffer
        - PHPStan? or at least PHPMD
    - Tests
        - smoke tests
        - unit tests
        - functional tests
- provide a Readme.md to onboard coworkers
- Makefile to simplify their life
    - target to run the commons commands
- Project must use eZ Platform / Ibexa Core Concepts 
    - example of project:
         - Brewery
         - Garage
         - Blog
         - Library
         - but can be anything with Content, I am sure you have ideas
- Content Types in a Content Tree
- Use the Templating system
- On 3 SiteAccess / Multi-Languages (fr/en and admin)
- Symfony Core Concepts
    - including Services, Dependency injection with autowiring
    - controller must be simple
- Project should send 1 email using Symfony Messenger to make it asynchronous
- use Application Cache for one feature using Symfony cache
- Include at least a call to the API (GraphQL or Rest)
- Platform.sh - configuration
    - check git* integration
- Open Source so you can use CI/and Git* for free
- Extends/Customize the Admin Interface with something

Bonus:
- HTTP Cache enabled or at least considered via Varnish
- Behat
- RabbitMQ
