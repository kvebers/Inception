FROM debian:bullseye
RUN apt-get update 
RUN apt-get install -y mariadb-server mariadb-client
EXPOSE 3306
CMD ["mysqld"]
ENV MYSQL_SOCKET=/var/run/mysqld/mysqld.sock