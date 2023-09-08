FROM alpine:3.18

RUN apk --no-cache add mariadb
RUN apk --no-cache add mariadb-client
COPY ./requirements/mariadb/conf/my.cnf /usr/local/bin/my.cnf
RUN mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
COPY ./requirements/mariadb/tools/db.sh /usr/local/bin/db.sh
RUN chmod +x /usr/local/bin/db.sh
EXPOSE 3306
CMD ["/usr/local/bin/db.sh"]
