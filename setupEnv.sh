# SPecify the folder structure you want

FOLDER_1="srcs"
FOLDER_2="requirements"

# setup the env

touch $FOLDER_1/.env
echo "DOMAIN_NAME=$USER.42.fr" > $FOLDER_1/.env
echo "CERT_=/etc/ssl/certs/$USER.42.fr.crt" >> $FOLDER_1/.env
echo "KEY_=/etc/ssl/private/$USER.42.fr.key" >> $FOLDER_1/.env
echo "MYSQL_PROBLEM=problemdb"  >> $FOLDER_1/.env
echo "MYSQL_ROOT_PROBLEM_PASSWORD=noproblem"  >> $FOLDER_1/.env
echo "MYSQL_USER_PROBLEM=problemuser"  >> $FOLDER_1/.env
echo "MYSQL_USER_PASSWORD_PROBLEM=noproblem"  >> $FOLDER_1/.env
