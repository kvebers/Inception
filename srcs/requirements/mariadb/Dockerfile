# FROM debian:bullseye
# RUN apt-get update
# RUN apt-get install -y mariadb-server mariadb-client
# RUN apt-get clean
# RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* /var/cache/apt/archives/*.deb
# RUN mkdir /var/run/mysqld
# RUN chmod 777 /var/run/mysqld
# RUN echo '[mysqld]' > /etc/my.cnf.d/docker.cnf
# RUN echo 'skip-host-cache' >> /etc/my.cnf.d/docker.cnf
# RUN echo 'skip-name-resolve' >> /etc/my.cnf.d/docker.cnf
# RUN echo 'bind-address=0.0.0.0' >> /etc/my.cnf.d/docker.cnf
# RUN sed -i "s|skip-networking|skip-networking=0|g" /etc/my.cnf.d/mariadb-server.cnf
# RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql
# EXPOSE 3306
# USER mysql
# COPY tools/db.sh .
# ENTRYPOINT  ["sh", "db.sh"]
# CMD ["/usr/bin/mysqld", "--skip-log-error"]

FROM debian:bullseye
RUN apt-get update
RUN apt-get install -y mariadb-server mariadb-client
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* /var/cache/apt/archives/*.deb
EXPOSE 3306
USER mysql
COPY tools/db.sh .
ENTRYPOINT  ["sh", "db.sh"]
CMD ["/usr/bin/mysqld", "--skip-log-error"]