#!/bin/bash

cd /vagrant/docker
sudo docker-compose up -d

# write the ip container to the laravel database connection settings
DOCKER_MYSQL_IP=$(sudo docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' docker_db_1)
sed -i "s/DB_HOST=127.0.0.1/DB_HOST=${DOCKER_MYSQL_IP}/g" /src/laravel/.env

# set env variable for redis container host. Laravel use it as default host to connect to redis
REDIS_HOST=$(sudo docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' docker_redis_1)
sed -i "s/REDIS_HOST=127.0.0.1/REDIS_HOST=${REDIS_HOST}/g" /src/laravel/.env