#!/bin/bash

# Update CentOS wiht any patches
yum update -y --exclude=kernel

# Tools
yum install -y nana git unzip screen

# Apache
yum install -y httpd httpd-devel httpd-tools
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start

# PHP
yum install -y php php-cli php-common php-devel php-mysql

# MySQL
yum install -y mariadb-server mariadb-libs mariadb

service mariadb start

mysql -u root -e "SHOW DATABASES";

# Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/zdzhao2022/vagrant/main/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/zdzhao2022/vagrant/main/files/info.php

service httpd restart



