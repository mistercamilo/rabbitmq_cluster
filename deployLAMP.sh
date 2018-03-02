sudo yum update
sudo yum install -y apache2 php php-mbstring php-zip phpunit unzip liapache2-mod-php

sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password admin'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password admin'

sudo yum install mysql-server
sudo mysql start

mysql -u root -padmin < /vagrant/createuser.sql
