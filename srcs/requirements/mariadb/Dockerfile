FROM debian:11-slim
RUN apt-get update && \
    apt-get install -y mariadb-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
COPY ./conf/my.cnf /etc/mysql/my.cnf
EXPOSE 3306
CMD ["mysqld"]