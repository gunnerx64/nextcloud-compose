# Nextcloud Docker Compose Setup

Nextcloud running with Docker Compose, including MariaDB database and Valkey cache.

## Setup

1. Copy environment variables:
   ```bash
   cp .env.example .env
   ```

2. Edit `.env` with secure passwords. Optionally set `DOCKER_PROXY` to use a local Docker registry (include trailing slash):
   ```bash
   DOCKER_PROXY=docker.company.local/docker/
   ```

3. Start the services:
   ```bash
   docker compose up -d
   ```

4. Access Nextcloud at http://localhost:8080

## Services

- **app**: Nextcloud (port 8080)
- **db**: MariaDB database
- **valkey**: Cache server

## Data

- `./data`: Nextcloud data
- `./apps`: Custom apps
- `./config`: Configuration files
- `db_data`: Database data (Docker volume)

## Customization

- Custom apps: `./apps/`
- Configuration: `./config/`
