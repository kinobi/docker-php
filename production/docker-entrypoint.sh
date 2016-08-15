#!/usr/bin/env bash

composer install --optimize-autoloader --prefer-dist --no-dev --no-interaction

echo
for f in /docker-entrypoint-hooks.d/*; do
	case "$f" in
		*.sh)     echo "$0: running $f"; . "$f" ;;
		*.php)    echo "$0: running $f"; php -f  "$f"; echo ;;
		*)        echo "$0: ignoring $f" ;;
	esac
	echo
done

php-fpm
