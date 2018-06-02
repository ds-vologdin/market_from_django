# market_from_django
Учебный проект: интернет магазин на django

## Подготовка к использованию

### postgres
```
postgres=# CREATE USER django PASSWORD 'pasword';

postgres=# CREATE DATABASE django_market OWNER django;
```
Настройте доступ для пользователя django в pg_hba.conf

#### Накатить тестовые данные в БД
```
psql -h hostname -U django django_market < django_market_dump.sql
```
