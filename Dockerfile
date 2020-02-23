FROM php:7.2-fpm-alpine
RUN docker-php-ext-install pdo pdo_mysql
ADD ./src/. /src
WORKDIR /src
RUN php artisan route:list > t.txt