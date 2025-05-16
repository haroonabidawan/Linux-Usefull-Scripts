echo -e "\e[0;32m---------adding php repository---------\e[0m"
sudo add-apt-repository ppa:ondrej/php

echo -e "\e[0;32m---------updating apt-get---------\e[0m"
sudo apt-get update

echo -e "\e[0;32m---------installing apache2---------\e[0m"
sudo apt-get install apache2 -y
sudo a2enmod rewrite

echo -e "\e[0;32m---------installing mysql---------\e[0m"
sudo apt-get install mysql-client mysql-server -y

echo -e "\e[0;32m---------installing php---------\e[0m"
sudo apt install php7.4-fpm php7.4-bcmath php7.4-gd php7.4-cgi php7.4-cli php7.4-common php7.4-curl php7.4-dba php7.4-dev php7.4-json php7.4-mbstring php7.4-mysql php7.4-opcache php7.4-xml php7.4-xsl php7.4-zip libphp7.4-embed libapache2-mod-php7.4 -y
sudo apt install php8.0-fpm php8.0-bcmath php8.0-gd php8.0-cgi php8.0-cli php8.0-common php8.0-curl php8.0-dba php8.0-dev php8.0-mbstring php8.0-mysql php8.0-opcache php8.0-xml php8.0-xsl php8.0-zip libphp8.0-embed libapache2-mod-php8.0 -y
sudo apt install php8.2-fpm php8.2-bcmath php8.2-gd php8.2-cgi php8.2-cli php8.2-common php8.2-curl php8.2-dba php8.2-dev php8.2-mbstring php8.2-mysql php8.2-opcache php8.2-xml php8.2-xsl php8.2-zip libphp8.2-embed libapache2-mod-php8.2 -y

echo -e "\e[0;32m---------switching php version to 7.4---------\e[0m"
sudo update-alternatives --set php /usr/bin/php7.4
sudo a2enconf php7.4

echo -e "\e[0;32m---------restarting apache2---------\e[0m"
sudo service apache2 restart

echo -e "\e[0;32m---------installing git---------\e[0m"
sudo apt-get install git -y

echo -e "\e[0;32m---------updating nodejs---------\e[0m"
sudo apt-get install nodejs -y

echo -e "\e[0;32m---------installing npm---------\e[0m"
sudo apt-get install npm -y

echo -e "\e[0;32m---------installing composer---------\e[0m"
sudo apt-get install composer -y
