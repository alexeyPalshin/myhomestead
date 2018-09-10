#!/bin/bash

sudo apt-get update
sudo apt-get -y install php-fpm php7.2-zip php7.2-mbstring php7.2-xml php7.2-dev

# xdebug
sudo wget https://xdebug.org/files/xdebug-2.6.0.tgz
tar -xvzf xdebug-2.6.0.tgz
cd xdebug-2.6.0/
sudo phpize
sudo ./configure
sudo make
sudo cp modules/xdebug.so /usr/lib/php/20170718
sudo chmod 644 /usr/lib/php/20170718/xdebug.so
sudo cp /vagrant/config/xdebug.ini /etc/php/7.2/mods-available/
sudo chmod 644 /etc/php/7.2/mods-available/xdebug.ini
sudo ln -sf /etc/php/7.2/mods-available/xdebug.ini /etc/php/7.2/fpm/conf.d/20-xdebug.ini
sudo ln -sf /etc/php/7.2/mods-available/xdebug.ini /etc/php/7.2/cli/conf.d/20-xdebug.ini
sudo rm -rf ../xdebug-2.6.0*
sudo rm ../package.xml

sudo service php7.2-fpm restart