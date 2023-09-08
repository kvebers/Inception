DOCKER_COMPOSE = docker-compose
COMPOSE_FILE = srcs/docker-compose.yml
ENV_FILE = srcs/.env
DIRS := ./wordpress_files ./wordpress_db

include $(ENV_FILE)
export

build: dirs
	$(DOCKER_COMPOSE) -f $(COMPOSE_FILE) build

start: dirs
	$(DOCKER_COMPOSE) -f $(COMPOSE_FILE) up -d

dirs:
	@for dir in $(DIRS); do \
	  [ -d $$dir ] || mkdir -p $$dir ; \
	done

stop:
	$(DOCKER_COMPOSE) -f $(COMPOSE_FILE) stop

clean: stop
	$(DOCKER_COMPOSE) -f $(COMPOSE_FILE) stop
	docker system prune -a

fclean:
	$(DOCKER_COMPOSE) -f $(COMPOSE_FILE) stop
	docker stop $$(docker ps -aq) || true
	docker system prune --all --force --volumes
	docker network prune --force
	docker volume prune --force
	
lunch: build start

re: stop build start

rebuild: build start

all: build

ps:
	docker ps

db:
	docker exec -it mariadb mysql -u bash

delete_data:
	rm -rf wordpress_db
	rm -rf wordpress_files

.PHONY: build start rebuild stop re fclean clean lunch all logs log db delete_data
