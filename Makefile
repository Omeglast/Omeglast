.PHONY: up stop down pull

up:
	@docker-compose up -d storage && sleep 5 && docker-compose up

stop:
	@docker-compose stop

down:
	@docker-compose down

pull:
	@docker-compose pull