FROM debian:buster
RUN apt-get update
RUN apt-get install -y mariadb-server
# RUN apt-get install -y mariadb-client
# RUN mkdir -p /var/run/mysqld
# RUN chmod 770 /var/run/mysqld
# RUN chown -R mysql:mysql /var/run/mysqld
# RUN touch /var/run/mysqld/mysqld.sock
# RUN chmod 0660 /var/run/mysqld/mysqld.sock
# ENV MYSQL_SOCKET="/var/run/mysqld/mysqld.sock"

COPY ./requirements/mariadb/tools/my.cnf /etc/mysql/mariadb.conf.d/my.cnf

EXPOSE 3306
RUN service mysql start
COPY ./requirements/mariadb/tools/db.sh db.sh
RUN chmod +x /db.sh
# ENTRYPOINT ["tail", "-f", "/dev/null"]
ENTRYPOINT ["/db.sh"]