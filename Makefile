.PHONY: build up down start stop restart logs ps login

build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down

login:
	docker compose run -w /home/node/app app /bin/bash

setup:
	docker compose run -w /home/node/app app /bin/bash -c "npm install"

watch:
	docker compose up -d
	docker compose logs --tail=10 -f app