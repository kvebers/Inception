# SPecify the folder structure you want

FOLDER_1="srcs"
FOLDER_2="requirements"

# setup the env

touch $FOLDER_1/.env
echo "DOMAIN_NAME=$USER.42.fr" > $FOLDER_1/.env
echo "CERT_=./$FOLDER_2/tools/$USER.42.fr.crt" >> $FOLDER_1/.env
echo "KEY_=./$FOLDER_2/tools/$USER.42.fr.key" >> $FOLDER_1/.env
echo "DB_NAME=wordpress" >> $FOLDER_1/.env
echo "DB_ROOT=rootpass" >> $FOLDER_1/.env
echo "DB_USER=wpuser" >> $FOLDER_1/.env
echo "DB_PASS=wppass" >> $FOLDER_1/.env

# setup the Certificates

cd ~/$FOLDER_1/$FOLDER_2/tools/
mkcert kvebers.42.fr
mv kvebers.42.fr-key.pem kvebers.42.fr.key
mv kvebers.42.fr.pem kvebers.42.fr.crt
