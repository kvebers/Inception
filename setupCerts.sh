FOLDER_1="srcs"
FOLDER_2="requirements"
mkcert $USER.42.fr
mkcert -install # fixing some wierd issue that could occure for some setups
mv $USER.42.fr-key.pem ./$FOLDER_1/$FOLDER_2/nginx/tools/$USER.42.fr.key
mv $USER.42.fr.pem ./$FOLDER_1/$FOLDER_2/nginx/tools/$USER.42.fr.crt