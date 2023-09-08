FROM alpine:3.18
RUN apk --no-cache add mariadb 
RUN apk --no-cache add mariadb-client
RUN rm -f /var/cache/apk/*
RUN mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
COPY tools/db.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/db.sh
EXPOSE 3306
ENTRYPOINT ["db.sh"]
CMD ["mysqld"]
