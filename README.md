# docker compose configs

Most composes need an `.env` file to provide variables. See each folder README.

### `compose.yaml` convention

```yaml
services:
  SERVICE1:
    build:
      context: ...
      dockerfile: ...
      tags:
        - ...
      args:
        ...: ...
    image: ...
    container_name: ...
    depends_on:
      SERVICEx:
        condition: ...
    healthcheck:
      test: [...]
      start_period: ...
      interval: ...
      timeout: ...
    restart: ...
    hostname: ...
    environment:
      ...: ...
    user: ...
    command: [...]
    labels:
      ...: ...
    networks:
      ...:
    ports:
      - ...
    volumes:
      - ...
    deploy:
      resources:
        limits:
          memory: ...
networks:
  ...:
volumes:
  ...:
```
