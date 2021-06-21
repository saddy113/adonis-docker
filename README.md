# adonis-docker-ts
Starter adonisjs 5 docker

## First time start project
---
### env
create `.env` file
```
APP_NAME=starter

PORT=3333
HOST=0.0.0.0
NODE_ENV=development 
APP_KEY= #32 character

DB_CONNECTION=mysql
MYSQL_HOST=db
MYSQL_PORT=3306 #do not change
MYSQL_USER=lucid
MYSQL_PASSWORD=
MYSQL_ROOT_PASSWORD=
MYSQL_DB_NAME=lucid

REDIS_CONNECTION=local
REDIS_HOST=redis
REDIS_PASSWORD=
REDIS_PORT=6379 #do not change

REDIS_PORT_FOR_DOCKER= #port for docker
MYSQL_PORT_FOR_DOCKER= #port for docker

```
### Start Project
#### DEV
```
docker-compose build
docker-compose up
```
#### PROD
```
docker-compose -f docker-compose.prod.yml build
docker-compose -f docker-compose.prod.yml up -d
```
### Migrations
```
docker exec -ti <container_name_adonis-api> node ace migration:run
```

### Running seeders
```
# runs all
docker exec -ti <container_name_adonis-api> node ace db:seed
```

Run Employee only
```
#Example
node ace db:seed --files "./database/seeders/Employee.ts"
```
### Document Developer
https://docs.adonisjs.com/guides