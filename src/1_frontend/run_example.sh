#!/bin/sh

composer install

cp .env.example .env

php artisan key:generate

chown -R $USER:www-data storage

chown -R $USER:www-data bootstrap/cache

chmod -R 775 storage

chmod -R 775 bootstrap/cache