FROM php:7.4-fpm

RUN apt-get update && apt-get install -y libzip-dev

RUN chown -R www-data:www-data /var/www

RUN chmod -R 755 /var/www/storage
RUN chmod -R 755 /var/www/storage
