mkdir srcs
touch Makefile
mkdir srcs/mand
touch srcs/docker-compose.yml
touch srcs/.env
mkdir srcs/mand/mariadb
mkdir srcs/mand/mariadb/conf
touch srcs/mand/mariadb/conf/create_db.sh
mkdir srcs/mand/mariadb/tools
echo "" > srcs/mand/mariadb/tools/.gitkeep
touch srcs/mand/mariadb/Dockerfile
touch srcs/mand/mariadb/.dockerignore
echo ".git" > srcs/mand/mariadb/.dockerignore
echo ".env" >> srcs/mand/mariadb/.dockerignore
mkdir srcs/mand/nginx
mkdir srcs/mand/nginx/conf
touch srcs/mand/nginx/conf/nginx.conf
mkdir srcs/mand/nginx/tools
touch srcs/mand/nginx/Dockerfile
echo ".git" > srcs/mand/mariadb/.dockerignore
echo ".env" >> srcs/mand/mariadb/.dockerignore
mkdir srcs/mand/tools
mkdir srcs/mand/wordpress
mkdir srcs/mand/wordpress/conf
touch srcs/mand/wordpress/conf/wp-config-create.sh
mkdir srcs/mand/wordpress/tools
echo "" > srcs/mand/wordpress/tools/.gitkeep
touch srcs/mand/wordpress/Dockerfile
touch srcs/mand/wordpress/.dockerignore
echo ".git" > srcs/mand/wordpress/.dockerignore
echo ".env" >> srcs/mand/wordpress/.dockerignore
touch .gitignore
echo ".env" >> .gitignore
echo "DOMAIN_NAME=$USER.42.fr" > srcs/.env
echo "CERT_=./mand/tools/$USER.42.fr.crt" >> srcs/.env
echo "KEY_=./mand/tools/$USER.42.fr.key" >> srcs/.env
echo "DB_NAME=wordpress" >> srcs/.env
echo "DB_ROOT=rootpass" >> srcs/.env
echo "DB_USER=wpuser" >> srcs/.env
echo "DB_PASS=wppass" >> srcs/.env