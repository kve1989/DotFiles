#!/bin/bash

#Install webserver Apache2.4
apt install apache2 -y

#Install mysql-server
apt install mysql-server mysql-client -y

#Install PHP
apt install php7.0 php7.0-mysql php7.0-mcrypt php7.0-gd

#Restart Apache
service apache2 restart

echo '<?php phpinfo(); ?>' > /var/www/html/info.php

#Install phpMyadmin
apt install phpmyadmin -y
