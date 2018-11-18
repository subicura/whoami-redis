# whoami (+redis)

## build

```sh
docker build -t subicura/whoami-redis:1 .
```

## run

```sh
docker run -p 4567:4567 subicura/whoami-redis:1
docker run -p 4567:4567 -e REDIS_HOST=docker.for.mac.localhost -e REDIS_PORT=6379 subicura/whoami-redis:1
```
