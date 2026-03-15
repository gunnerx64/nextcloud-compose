.PHONY: up down logs ps

up:
	docker compose up -d --force-recreate

down:
	docker compose down

logs:
	docker compose logs -f

ps:
	docker compose ps
