# docker compose configs

Most composes need an `.env` file to provide variables. See each folder README.

### `compose.yaml` convention

```yaml
services:
  SERVICE1:
    build:
      context: /path/to/folder
      dockerfile: /path/to/dockerfile
      tags:
        - "LATEST"
      args:
        ARG1: "VALUE1"
    image: IMAGE1:TAG
    container_name: NAME1
    depends_on:
      - "SERVICEx"
    healthcheck:
      test: ["CMD-SHELL", "..."]
      start_period: "10s"
      interval: "30s"
      timeout: "2s"
    restart: "unless-stopped"
    hostname: "HOSTNAME"
    environment:
      ENV1: "VALUE1"
    user: "root"
    command: ["..."]
    labels:
      LABEL1: "VALUE1"
    networks:
      NETWORK1:
    ports:
      - "8080:8080"
    volumes:
      - "NETWORK1:/path"
    deploy:
      resources:
        limits:
          memory: "1G"
networks:
  NETWORK1:
volumes:
  VOLUME1:
```
