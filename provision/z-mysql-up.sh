#!/bin/bash

cd /vagrant/docker
sudo docker-compose up -d

# write the ip container to the laravel database connection settings
DOCKER_MYSQL_IP=$(sudo docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' docker_db_1)
sed -i "s/DB_HOST=127.0.0.1/DB_HOST=${DOCKER_MYSQL_IP}/g" /src/laravel/.env