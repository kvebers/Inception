FROM debian:bullseye
RUN apt-get update 
RUN apt-get install -y mariadb-server mariadb-client
RUN mkdir -p /run/mysqld && chown mysql:mysql /run/mysqld







EXPOSE 3306
ENV MYSQL_SOCKET=/var/run/mysqld/mysqld.sock
# USER mysql
COPY requirements/mariadb/conf/db.sh /db.sh
RUN chmod +x /db.sh
RUN bash db.sh
CMD ["mysqld", "--bind-address=0.0.0.0"]