FROM debian:buster
RUN apt-get update
RUN apt-get install -y mariadb-server mariadb-client
EXPOSE 3306
COPY ./requirements/mariadb/tools/db.sh /db.sh
RUN chmod +x /db.sh
ENTRYPOINT ["/db.sh"]