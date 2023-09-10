# SPecify the folder structure you want

FOLDER_1="srcs"
FOLDER_2="requirements"

# setup the env

touch $FOLDER_1/.env
echo "DOMAIN_NAME=$USER.42.fr" > $FOLDER_1/.env
echo "CERT_=/etc/ssl/certs/$USER.42.fr.crt" >> $FOLDER_1/.env
echo "KEY_=/etc/ssl/private/$USER.42.fr.key" >> $FOLDER_1/.env
echo "MYSQL_DATABASE=problemdb"
echo "MYSQL_ROOT_PASSWORD=noproblem"
echo "MYSQL_USER=problemuser"
echo "MYSQL_PASSWORD=onetwothree"

