# FROM debian:bullseye
# RUN apt-get update -y
# RUN apt-get install -y php
# RUN apt-get install -y php-cgi
# RUN apt-get install -y php-mysql
# RUN apt-get install -y php-fpm
# RUN apt-get install -y php-pdo
# RUN apt-get install -y php-gd php-cli
# RUN apt-get install -y php-mbstring
# # Utils
# RUN mkdir -p /run/php/
# RUN chmod 755 /run/php/
# RUN apt-get install -y wget
# RUN apt-get install -y curl
# RUN rm -rf /var/lib/apt/lists/*
# # COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d/
# WORKDIR /var/www/html/
# EXPOSE 9000
# CMD ["/usr/sbin/php-fpm7.4", "-F"]

FROM debian:bullseye
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install -y php
RUN apt-get install -y php-cgi
RUN apt-get install -y php-mysql
RUN apt-get install -y php-fpm
RUN apt-get install -y php-pdo
RUN apt-get install -y php-gd php-cli
RUN apt-get install -y php-mbstring
RUN mkdir -p /run/php/
RUN chmod 755 /run/php/
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN rm -rf /var/lib/apt/lists/*
RUN useradd -m -s /bin/bash wordpress


# Switch to non-root user
# # USER wordpress

WORKDIR /var/www/html/

EXPOSE 9000
CMD ["/usr/sbin/php-fpm7.4", "-F"]