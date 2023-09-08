#!bin/sh
openssl req -x509 -newkey rsa:4096 -keyout ${KEY_} -out ${CERT_} -sha256 -days 365 -nodes -subj "/CN="${DOMAIN_NAME}""
exec nginx -g "daemon off;"
