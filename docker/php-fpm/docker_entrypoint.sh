#!/usr/bin/env bash

set -e

if [[ $1 == 'serve' ]] ; then

    composer install

    if [[ $2 == 'dev' ]] ; then

        wait-for-it database:3306 -- bin/console doctrine:schema:update --force
        bin/console doctrine:fixtures:load
        bin/console doctrine:migrations:migrate --allow-no-migration

    elif [[ $2 == 'prod' ]] ; then
        APP_ENV=prod

    fi

    php-fpm

else
    exec "$@"
fi
