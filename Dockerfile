FROM php:8.1-apache

RUN apt-get update && apt-get install -y \
    libicu-dev \
    && docker-php-ext-install intl

RUN a2enmod rewrite

COPY ./src /var/www/html

EXPOSE 80
