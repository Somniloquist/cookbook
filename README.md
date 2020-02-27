# cookbook

## Installation
### Prerequisites
- ruby 2.6.4
- rails 5.2.4

1. Install the neccessary gems
```
bundle install --without production
```
2. Start the postgresql database server
```
sudo service postgresql start
```
3. Create the postgresql database
```
rails db:create:all
```
4. Run the migrations and seed with test data
```
rails db:migrate
rails db:seed
```
5. Start the rails server
```
rails server
```

If you run into any database errors follow the database configuration below. This app runs on a PostgreSQL database, you must have the server installed and running to install this app.

## Database configuration
 1. Install PostgreSQL
 ```
 sudo apt-get update
 sudo apt-get install postgresql postgresql-contrib libpq-dev
 ```
 2. Start the postgresql database server
 ```
 sudo service postgresql start
 ```
 3. Login to the postgresql server as postgres superuser
 ```
 sudo -u postgres psql
 ```
 4. Create a new role for your user (must be the same name as your currently logged in user)
 ```
 postgres=# CREATE ROLE [username] WITH CREATEDB LOGIN;
 ```

---
_This project uses the [spoonacular API](https://spoonacular.com/food-api) to retrieve recipe information._
