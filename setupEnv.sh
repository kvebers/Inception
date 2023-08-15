FOLDER_1="srcs"
FOLDER_2="mand"

touch $FOLDER_1/.env
echo "DOMAIN_NAME=$USER.42.fr" > $FOLDER_1/.env
echo "CERT_=./$FOLDER_2/tools/$USER.42.fr.crt" >> $FOLDER_1/.env
echo "KEY_=./$FOLDER_2/tools/$USER.42.fr.key" >> $FOLDER_1/.env
echo "DB_NAME=wordpress" >> $FOLDER_1/.env
echo "DB_ROOT=rootpass" >> $FOLDER_1/.env
echo "DB_USER=wpuser" >> $FOLDER_1/.env
echo "DB_PASS=wppass" >> $FOLDER_1/.env