# Docker host Vue.js

- **Docker**

- **Docker Compose**

- **traefik**

- **portainer**

## host project

1. change this project folder name to your own project name.

2. clone your laravel project to `./src`.

3. run script

```bash
./depoly.sh YOUR_PROJECT YOUR_PROJECT_DOMAIN
```

or

**change docker-compose.yml**

```
- "traefik.http.routers.YOUR_PROJECT.rule=Host(`YOUR_PROJECT_DOMAIN.com`)"
- "traefik.http.routers.YOUR_PROJECT.entrypoints=websecure"
```

```
docker-compose up -d
```


## Reset

```
docker-compose down

remove images

rm -rf volumes
```
