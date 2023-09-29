composer install
cp .env.example .env
php artisan key:generate
php artisan cache:clear
php artisan config:clear
sudo chown -R $USER:www-data storage
sudo chown -R $USER:www-data bootstrap/cache
chmod -R 775 storage
chmod -R 775 bootstrap/cache
npm install
npm run dev