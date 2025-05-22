apk add lighttpd composer fcgi php83-cgi
cp $(dirname $0)/lighttpd.conf /etc/lighttpd
apk add wget mysql mysql-client php83-mysqli
service lighttpd start

mkdir -p /usr/share/webapps/

cd /usr/share/webapps/
wget https://wordpress.org/latest.tar.gz

tar -xzqf latest.tar.gz
rm latest.tar.gz
chown -R lighttpd /usr/share/webapps/

ln -s /usr/share/webapps/wordpress/ /var/www/localhost/htdocs/wordpress

/usr/bin/mysql_install_db --user=mysql
/etc/init.d/mariadb setup
rc-service mariadb start
/usr/bin/mysqladmin -u root password 'password'

mysql -u root -ppassword < $(dirname $0)/wp.sql

echo '<?php phpinfo();' > /var/www/localhost/htdocs/index.php
