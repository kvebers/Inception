if ! command -v mysql &> /dev/null; then
    apt-get update
    apt-get install -y mysql-server mysql-client
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
    mysql -e "ALTER USER '$ROOT_USER'@'localhost' IDENTIFIED BY '$ROOT_PASS';"
fi

existing_normal_user=$(mysql -e "SELECT User FROM mysql.user WHERE User='$NORM_USER';" | grep "$NORM_USER")
if [ -n "$existing_normal_user" ]; then
else
    mysql -e "CREATE USER '$NORM_USER'@'localhost' IDENTIFIED BY '$NORM_PASS';"
    mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$NORM_USER'@'localhost';"
    mysql -e "FLUSH PRIVILEGES;"
fi

exit 0