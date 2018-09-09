#!/bin/bash

sudo apt-get update
sudo apt-get -y install nginx

# set up nginx server
sudo rm /etc/nginx/sites-available/default
sudo rm /etc/nginx/sites-enabled/default
sudo cp /vagrant/config/default /etc/nginx/sites-available/
sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled
#sudo chmod 644 /etc/nginx/conf.d/devenv.conf
# sudo usermod -a -G www-data nginx
sudo service nginx restart
