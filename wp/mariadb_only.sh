apk add mariadb mariadb-client
# mariadb-install-db --user=mysql
/etc/init.d/mariadb setup

# vi /etc/my.cnf.d/mariadb-server.cnf 
# change skip-networking, bind-address

# service mariadb start

# mariadb
# GRANT ALL PRIVILEGES ON *.* TO 'mysql'@'%' IDENTIFIED BY 'password' WITH GRANT OPTION;
# FLUSH PRIVILEGES;
