.PHONY: up stop down pull

COMPOSE_CMD:=docker-compose
ifeq ($(ENV),dev)
	COMPOSE_CMD:=docker-compose -f docker-compose.dev.yml
endif

up:
	@${COMPOSE_CMD} up -d storage grafana-storage && sleep 5 && ${COMPOSE_CMD} up

stop:
	@${COMPOSE_CMD} stop

down:
	@${COMPOSE_CMD} down

pull:
	@${COMPOSE_CMD} pull
