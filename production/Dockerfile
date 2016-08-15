FROM php:7.0.9-fpm

MAINTAINER Lionel BRIANTO <kinobi@kinobiweb.com>

RUN apt-get update -qq \
    && apt-get install -y -qq --no-install-recommends zip git wget libmysqlclient-dev libmysqld-dev libmcrypt-dev \
    && rm -rf /var/lib/apt/lists/* \
    && usermod -u 1000 www-data

RUN pecl install redis && docker-php-ext-enable redis

RUN docker-php-ext-install pdo_mysql mcrypt opcache zip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

RUN mkdir -p /docker-entrypoint-hooks.d

COPY php.ini /usr/local/etc/php/
COPY docker-entrypoint.sh /usr/local/bin/

WORKDIR /var/www

ENTRYPOINT ["docker-entrypoint.sh"]

