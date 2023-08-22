FOLDER_1="srcs"
FOLDER_2="requirements"

mkdir $FOLDER_1
touch Makefile
mkdir $FOLDER_1/$FOLDER_2
touch $FOLDER_1/docker-compose.yml
touch $FOLDER_1/.env
mkdir $FOLDER_1/$FOLDER_2/mariadb
mkdir $FOLDER_1/$FOLDER_2/mariadb/conf
touch $FOLDER_1/$FOLDER_2/mariadb/conf/create_db.sh
mkdir $FOLDER_1/$FOLDER_2/mariadb/tools
echo "" > $FOLDER_1/$FOLDER_2/mariadb/tools/.gitkeep
touch $FOLDER_1/$FOLDER_2/mariadb/Dockerfile
mkdir $FOLDER_1/$FOLDER_2/nginx
mkdir $FOLDER_1/$FOLDER_2/nginx/conf
touch $FOLDER_1/$FOLDER_2/nginx/conf/nginx.conf
mkdir $FOLDER_1/$FOLDER_2/nginx/tools
touch $FOLDER_1/$FOLDER_2/nginx/Dockerfile
mkdir $FOLDER_1/$FOLDER_2/tools
mkdir $FOLDER_1/$FOLDER_2/wordpress
mkdir $FOLDER_1/$FOLDER_2/wordpress/conf
touch $FOLDER_1/$FOLDER_2/wordpress/conf/wp-config-create.sh
mkdir $FOLDER_1/$FOLDER_2/wordpress/tools
echo "" > $FOLDER_1/$FOLDER_2/wordpress/tools/.gitkeep
touch $FOLDER_1/$FOLDER_2/wordpress/Dockerfile
echo "DOMAIN_NAME=$USER.42.fr" > $FOLDER_1/.env
echo "CERT_=./$FOLDER_2/tools/$USER.42.fr.crt" >> $FOLDER_1/.env
echo "KEY_=./$FOLDER_2/tools/$USER.42.fr.key" >> $FOLDER_1/.env
echo "DB_NAME=wordpress" >> $FOLDER_1/.env
echo "DB_ROOT=rootpass" >> $FOLDER_1/.env
echo "DB_USER=wpuser" >> $FOLDER_1/.env
echo "DB_PASS=wppass" >> $FOLDER_1/.env