#!/bin/sh


mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld
mysqld_safe &
for i in {30..0}; do
    if echo 'SELECT 1' | mysql &> /dev/null; then
        break
    fi
    sleep 1
done

if [ "$i" = 0 ]; then
    echo >&2 "MariaDB did not start"
    exit 1
fi

if ! command -v mysql &> /dev/null; then
    apk update
    apk add mariadb mariadb-client
fi

existing_db=$(mysql -e "SHOW DATABASES LIKE '$DB_NAME';" | grep "$DB_NAME")
if [ -n "$existing_db" ]; then
    exit 1
fi

mysql -e "CREATE DATABASE $DB_NAME DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;"

existing_root_user=$(mysql -e "SELECT User FROM mysql.user WHERE User='$ROOT_USER';" | grep "$ROOT_USER")
if [ -n "$existing_root_user" ]; then
    echo "User '$ROOT_USER' already exists."
else
    mysql -e "GRANT ALL ON *.* TO '$ROOT_USER'@'localhost' IDENTIFIED BY '$ROOT_PASS' WITH GRANT OPTION;"
fi

existing_normal_user=$(mysql -e "SELECT User FROM mysql.user WHERE User='$NORM_USER';" | grep "$NORM_USER")
if [ -z "$existing_normal_user" ]; then
    mysql -e "CREATE USER '$NORM_USER'@'%' IDENTIFIED BY '$NORM_PASS';"
    mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$NORM_USER'@'%';"
    mysql -e "FLUSH PRIVILEGES;"
fi

wait

