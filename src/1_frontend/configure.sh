composer install
cp .env.example .env
php artisan key:generate
sudo chown -R $USER:www-data storage
sudo chown -R $USER:www-data bootstrap/cache
chmod -R 775 storage
chmod -R 775 bootstrap/cache
npm install
npm run dev
npm run build