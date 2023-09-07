FROM alpine:3.18

# Environment variables
# Install necessary packages
RUN apk --no-cache add mariadb
RUN apk --no-cache add mariadb-client
# Copy your script
COPY ./requirements/mariadb/conf/my.cnf /usr/local/bin/my.cnf
RUN mariadb-install-db --user=mysql --basedir=/usr --datadir=/var/lib/mysql

COPY ./requirements/mariadb/tools/db.sh /usr/local/bin/db.sh
RUN chmod +x /usr/local/bin/db.sh
EXPOSE 3306
# Make the script as the default command to run
CMD ["/usr/local/bin/db.sh"]



# FROM debian:buster
# ENV DEBIAN_FRONTEND=non-interactive
# RUN apt-get update && \
#     apt-get install -y mariadb-server mariadb-client && \
#     rm -rf /var/lib/apt/lists/* && \
#     rm -rf /var/lib/mysql && \
#     mkdir -p /var/lib/mysql /var/run/mysqld && \
#     chown -R mysql:mysql /var/lib/mysql /var/run/mysqld && \
#     chmod 777 /var/run/mysqld
# EXPOSE 3306
# COPY ./requirements/mariadb/conf/my.cnf /etc/mysql/my.cnf
# COPY ./requirements/mariadb/tools/db.sh /db.sh
# RUN chmod +x /db.sh
# USER mysql
# ENTRYPOINT ["/db.sh"]
