FROM php:7.4-fpm

#RUN chmod -R 755 /var/www/storage

RUN apt-get -y update
RUN apt-get install -y libzip-dev

# Extension zip for laravel
RUN docker-php-ext-install zip 

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN composer global require laravel/installer

