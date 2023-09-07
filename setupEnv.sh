# SPecify the folder structure you want

FOLDER_1="srcs"
FOLDER_2="requirements"

# setup the env

touch $FOLDER_1/.env
echo "DOMAIN_NAME=$USER.42.fr" > $FOLDER_1/.env
echo "CERT_=./$FOLDER_2/tools/$USER.42.fr.crt" >> $FOLDER_1/.env
echo "KEY_=./$FOLDER_2/tools/$USER.42.fr.key" >> $FOLDER_1/.env
echo "DB_NAME=wordpress" >> $FOLDER_1/.env
echo "ROOT_PASS=onetwothree" >> $FOLDER_1/.env
echo "ROOT_USER=noproblem" >> $FOLDER_1/.env
echo "NORM_USER=problem" >> $FOLDER_1/.env
echo "NORM_PASS=problemuser" >> $FOLDER_1/.env
# echo "MYSQL_SOCKET=/var/run/mysqld/mysqld.sock" >> $FOLDER_1/.env

# setup the Certificates

mkdir /home/$USER/data
mkdir /home/$USER/data/maria
mkdir /home/$USER/data/wp

docker network create ok