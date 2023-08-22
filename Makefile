DOCKER_COMPOSE = docker-compose
COMPOSE_FILE = srcs/docker-compose.yml
ENV_FILE = srcs/.env

include $(ENV_FILE)
export

build:
	$(DOCKER_COMPOSE) -f $(COMPOSE_FILE) build

start:
	$(DOCKER_COMPOSE) -f $(COMPOSE_FILE) up -d

stop:
	$(DOCKER_COMPOSE) -f $(COMPOSE_FILE) down

down:
	$(DOCKER_COMPOSE) -f $(COMPOSE_FILE) down

clean: down
	$(DOCKER_COMPOSE) -f $(COMPOSE_FILE) down
	docker system prune -a

fclean:
	$(DOCKER_COMPOSE) -f $(COMPOSE_FILE) down
	docker stop $$(docker ps -aq) || true
	docker system prune --all --force --volumes
	docker network prune --force
	docker volume prune --force

lunch: build start

re: stop start

all: build

log:
	docker logs srcs_nginx_1 

.PHONY: build start stop restart down re fclean clean lunch all