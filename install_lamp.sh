#!/bin/bash

# Goal: Script which automatically downloads the LAMP STACK

# Test to see if user is running with root privileges.
if [[ "${UID}" -ne 0 ]]
then
 echo 'Must execute with sudo or root user!' >&2
 exit 1
fi

# Ensure system is up to date
sudo apt-get update -y 

# Install Apache
sudo apt-get install apache2 apache2-utils -y

# Install PHP
sudo apt-get install php libapache2-mod-php php-mysql -y

# Install MySQL
sudo apt-get install mysql-server -y

# Install PhpMyAdmin (for database access)
sudo apt-get install phpmyadmin -y

# Configure phpMyAdmin
echo 'Include /etc/phpmyadmin/apache.conf' >> /etc/apache2/apache2.conf

# Set permissions using chown
sudo chown -R www-data:www-data /var/www

# Restart apache
sudo service apache2 restart 

# Check exit code
if [[ $? -eq 0 ]]
then 
 echo -e "\033[1;32mSuccessfully installed the LAMP Stack :)\033[0m" >&2
 exit 0
else
 echo -e "\033[1;31mFailed to install the LAMP Stack...\033[0m" >&2
 exit 1
fi


