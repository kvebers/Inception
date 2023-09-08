#!bin/sh

cat > problem.sql <<EOF
CREATE DATABASE IF NOT EXISTS {MYSQL_DATABASE};
CREATE USER IF NOT EXISTS '{MYSQL_USER}' IDENTIFIED BY '{MYSQL_PASSWORD}';
GRANT ALL PRIVILEGES ON {MYSQL_DATABASE}.* TO '{MYSQL_USER}';
FLUSH PRIVILEGES;
EOF

replace "{MYSQL_DATABASE}" "$MYSQL_DATABASE" -- problem.sql
replace "{MYSQL_USER}" "$MYSQL_USER" -- problem.sql
replace "{MYSQL_PASSWORD}" "$MYSQL_PASSWORD" -- problem.sql
replace "{MYSQL_ROOT_PASSWORD}" "$MYSQL_ROOT_PASSWORD" -- problem.sql

exec mariadbd --no-defaults --user=root --datadir=/var/lib/mysql --init-file=/problem.sql
