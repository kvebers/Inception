# SPecify the folder structure you want

FOLDER_1="srcs"
FOLDER_2="requirements"

# setup the env

touch $FOLDER_1/.env
echo "DOMAIN_NAME=$USER.42.fr" > $FOLDER_1/.env
echo "CERT_=./$FOLDER_2/tools/$USER.42.fr.crt" >> $FOLDER_1/.env
echo "KEY_=./$FOLDER_2/tools/$USER.42.fr.key" >> $FOLDER_1/.env
echo "MYSQL_ROOT_PASSWORD=123" >> $FOLDER_1/.env
echo "MYSQL_USER=123" >> $FOLDER_1/.env
echo "MYSQL_PASSWORD=123" >> $FOLDER_1/.env
echo "MYSQL_DATABASE=wordpress" >> $FOLDER_1/.env

# setup the Certificates
bash ./srcs/requirements/nginx/cert/setupCerts.sh