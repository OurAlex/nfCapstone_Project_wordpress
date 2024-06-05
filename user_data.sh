#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y apache2
sudo apt-get install -y php libapache2-mod-php php-mysql

# Connect to RDS instance and create database and user
mysql -h $mydatabase.croo008iwwe3.eu-central-1.rds.amazonaws.com:3306 -u root -p <<MYSQL_SCRIPT
CREATE DATABASE wordpress;
CREATE USER 'WPUser'@'%' IDENTIFIED BY 'myPassword123!';
GRANT ALL PRIVILEGES ON wordpress.* TO 'WPUser'@'%';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

chown -R www-data:www-data /var/www/html
chmod -R 755 /var/www/html

systemctl restart apache2