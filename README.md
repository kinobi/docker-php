# docker-php
Docker Personnal Image packaging for PHP application

## Features

- Ready to production with php.ini configured
- Redis extension
- Hookable in mounting .sh or .php scripts in /docker-entrypoint-hooks.d/

## Notes

### Docker build command

    docker build --force-rm -t kinobi/php-[environment]:[php-version] .
