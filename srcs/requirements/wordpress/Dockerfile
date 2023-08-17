FROM php:8.0-fpm-bullseye
# Install required PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

WORKDIR /var/www/html

COPY ./wordpress-files/ .
EXPOSE 9000
CMD ["php-fpm"]