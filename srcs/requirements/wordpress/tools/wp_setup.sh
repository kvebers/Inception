#!bin/sh

echo '
[www]
user = nobody
group = nobody
listen = 9000
pm = dynamic
pm.max_children = 5
pm.start_servers = 2
pm.min_spare_servers = 1
pm.max_spare_servers = 3
' > /etc/php81/php-fpm.d/www.conf

if [ ! -f /var/www/html/wp-config.php ]; then
    curl -LO https://wordpress.org/wordpress-5.7.2.tar.gz
    tar -xvzf wordpress-5.7.2.tar.gz
    mv wordpress/* /var/www/html/
    rmdir wordpress
    rm wordpress-5.7.2.tar.gz
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
    mv wp-cli.phar /usr/local/bin/wp
    wp config create --dbname=your_db_name --dbuser=your_db_user --dbpass=your_db_pass --dbhost=your_db_host --path='/var/www/html'
    wp core install --url=your_domain.com --title="Your Blog Title" --admin_user=admin_username --admin_password=admin_password --admin_email=your_email --path='/var/www/html'
fi

php-fpm7 -F