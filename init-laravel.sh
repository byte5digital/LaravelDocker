#!/usr/bin/env bash

while ! mysqladmin ping -h"database" --silent; do
    sleep 1
done


php /var/www/html/artisan key:generate
php /var/www/html/artisan migrate