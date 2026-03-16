# Nextcloud Docker Compose Setup

Nextcloud running with Docker Compose, including MariaDB database and Valkey cache.

## Setup

1. Copy environment variables:
   ```bash
   cp .env.example .env
   ```

2. Edit `.env` with secure passwords. Optionally set environment variables:
   ```bash
   DOCKER_PROXY=docker.company.local/docker/
   ```
   If you're behind a corporate proxy, also set proxy settings for the App Store:
   ```bash
   HTTP_PROXY=http://proxy.company.local:3128
   HTTPS_PROXY=http://proxy.company.local:3128
   NO_PROXY=localhost,127.0.0.1
   ```

3. Start the services:
   ```bash
   make up
   ```
   Or use Docker Compose directly:
   ```bash
   docker compose up -d
   ```

4. Access Nextcloud at http://localhost:8090

## Makefile Commands

- `make up` - Start services with force recreate
- `make down` - Stop and remove services
- `make logs` - Follow logs from all services
- `make ps` - List running containers

## Services

- **app**: Nextcloud (port 8080)
- **db**: MariaDB database
- **valkey**: Cache server

## Data

- `./data`: Nextcloud application files
  - `./data/config/`: Configuration files
  - `./data/data/`: User data
- `./apps`: Custom apps
- `db_data`: Database data (Docker volume)

## Customization

- Custom apps: `./apps/`
- Configuration: `./data/config/`
