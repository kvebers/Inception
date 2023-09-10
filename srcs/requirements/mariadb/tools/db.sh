#!bin/sh

cat > problem.sql <<EOF
CREATE DATABASE IF NOT EXISTS {MYSQL_DATABASE};
CREATE USER IF NOT EXISTS '{MYSQL_USER}' IDENTIFIED BY '{MYSQL_PASSWORD}';
GRANT ALL PRIVILEGES ON {MYSQL_DATABASE}.* TO '{MYSQL_USER}';
FLUSH PRIVILEGES;
EOF

replace "{MYSQL_DATABASE}" "$MYSQL_PROBLEM" -- problem.sql
replace "{MYSQL_ROOT_PASSWORD}" "$MYSQL_ROOT_PROBLEM_PASSWORD" -- problem.sql
replace "{MYSQL_USER}" "$MYSQL_USER_PROBLEM" -- problem.sql
replace "{MYSQL_PASSWORD}" "$MYSQL_USER_PASSWORD_PROBLEM" -- problem.sql

exec mariadbd --no-defaults --user=root --datadir=/var/lib/mysql --init-file=/problem.sql
