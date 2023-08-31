FROM debian:11
# Install required PHP extensions
RUN apt-get update && apt-get install -y \
    php \
    apache2 \
    mysql-server \
    php-mysql


WORKDIR /var/www/html

# COPY ./wordpress-files/ .
EXPOSE 9000
CMD ["php-fpm"]

