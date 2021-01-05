FROM php:7-fpm-alpine

COPY docker/php-fpm/wait-for-it.sh /usr/bin/wait-for-it
COPY docker/php-fpm/docker_entrypoint.sh /docker_entrypoint.sh

RUN chmod +x /usr/bin/wait-for-it
RUN chmod +x /docker_entrypoint.sh

RUN apk --update --no-cache add git bash
RUN docker-php-ext-install pdo_mysql

COPY --from=composer /usr/bin/composer /usr/bin/composer
COPY app /var/www

WORKDIR /var/www

ENTRYPOINT ["/docker_entrypoint.sh"]
CMD ["serve", "dev"]
 
EXPOSE 9000
