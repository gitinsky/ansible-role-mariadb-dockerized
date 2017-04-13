#!/bin/bash
chown -R mysql:mysql /var/lib/mysql
if [ ! -e /var/lib/mysql/ibdata1 ]; then
    mysql_install_db
fi
mysqladmin -u root password $MYSQL_ROOT_PASSWORD
mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql -u root -p $MYSQL_ROOT_PASSWORD mysql
