#!/usr/bin/env bash

composer install --optimize-autoloader --prefer-dist --no-dev --no-interaction

php-fpm
