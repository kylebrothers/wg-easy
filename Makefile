.PHONY: up down restart logs status pull update clean

up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

logs:
	docker compose logs -f

status:
	docker compose ps

pull:
	docker compose pull

update: pull down up
	@echo "WireGuard updated and restarted"

clean:
	docker compose down -v
	@echo "Warning: This removes volumes including client configs"
