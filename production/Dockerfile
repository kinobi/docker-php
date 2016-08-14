FROM php:7.0.9-fpm

MAINTAINER Lionel BRIANTO <kinobi@kinobiweb.com>

RUN apt-get update -qq \
    && apt-get install -y -qq --no-install-recommends netcat git wget libmysqlclient-dev libmysqld-dev libmcrypt-dev \
    && rm -rf /var/lib/apt/lists/* \
    && usermod -u 1000 www-data

RUN pecl install redis && docker-php-ext-enable redis
RUN docker-php-ext-install pdo_mysql mcrypt opcache json
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer

WORKDIR /var/www

COPY php.ini /usr/local/etc/php/
COPY run.sh /usr/local/bin/

CMD /usr/local/bin/run.sh
