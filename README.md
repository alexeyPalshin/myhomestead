## Included Software
* Ubuntu 18.04
* PHP 7.2
* Nginx
* Composer
* Docker with docker-compose 
* Mysql 5.7 as docker image
* Laravel
* Elasticsearch 5.5.1
* Redis 
* (Memcached, RabbitMQ) to be added...

## Usage
```bash
git clone git@github.com:alexeyPalshin/myhomestead.git path/to/project
```
or https
```bash
git clone https://github.com/alexeyPalshin/myhomestead.git path/to/project
```
then 
```bash
cd $_
vagrant up 
```
Enjoy

## Credentials
###Mysql
rootUser: root
password: root

user: homestead
password: secret

You can choose another php version using:
```bash
update-alternatives --config php
```
Off course Pre-installing it
