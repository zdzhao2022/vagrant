#!/bin/bash

# MySQL
yum install -y mariadb-server mariadb-libs mariadb

service mariadb start

mysql -u root -e "SHOW DATABASES";