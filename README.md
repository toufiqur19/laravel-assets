Clone or download repository then:

1. download zip file or clone the project
2. run : cd laravel-starter
3. run : cp .env.example .env
4. open .env and update DB_DATABASE Name
5. run : composer install
6. run : php artisan key:generate
7. run : php artisan migrate:fresh --seed
8. run : php artisan serve


** Table Column rename or datatype chang:
library-run : composer require doctrine/dbal
