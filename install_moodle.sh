#!/bin/bash
# Fresh Moodle Installation from Official Source

# Update system
sudo apt update && sudo apt upgrade -y

# Install LAMP stack
sudo apt install -y apache2 mariadb-server php php-mysql libapache2-mod-php \
  php-gd php-xmlrpc php-mbstring php-soap php-intl php-zip php-curl \
  php-xml php-json git

# Download Moodle from official source
cd /opt
sudo git clone -b MOODLE_404_STABLE git://git.moodle.org/moodle.git moodle

# Create Moodle data directory
sudo mkdir /var/moodledata
sudo chown -R www-data:www-data /var/moodledata
sudo chmod -R 0755 /var/moodledata

# Copy Moodle to web directory
sudo cp -R /opt/moodle /var/www/html/
sudo chown -R www-data:www-data /var/www/html/moodle

# Restart Apache
sudo systemctl restart apache2
