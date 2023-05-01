FROM php:8.1-apache

WORKDIR /var/www/html

COPY ./web/ /var/www/html/

RUN chown -R www-data:www-data /var/www/html/ \
    && chmod -R u=rwX,g=rX,o= /var/www/html/


COPY redlock-dbs.sql /docker-entrypoint-initdb.d/redlock-dbs.sql

RUN apt-get update -y && apt-get install -y libmariadb-dev 
RUN docker-php-ext-install mysqli