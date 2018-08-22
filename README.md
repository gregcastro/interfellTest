# interfellTest

## Dependencies
+ Python 3.5+
+ Pip3 (9.0+)
+ PostgreSQL 9.5+


## Install instructions

Create a \[virtual environment\](https://virtualenv.pypa.io/en/latest/) with these commands

```bash
$ cd /your_path/Interfell/
$ virtualenv env
$ source env/bin/activate

```

Then, install requirements files in **Interfell/requirements.txt** (virtual env must be activated)

```bash
(env)$ pip install -r requirements.txt

```

### Setup database

Change the password of postgres user

```SQL
ALTER USER postgres WITH PASSWORD 'new_password';

```

### Creating database

In /your_path/interfellTest/ type

```bash
$ psql -U postgres < db_interfell.sql
```

### Creating local settings file
Create a new file called *local_settings.py* in /your_path/interfellTest/interfellTest and copy the information from the *local_settings_template.py* file into it.

Change the information corresponding to your local machine, such as the password of the database.


Go to /your_path/interfellTest/interfellTest/settings.py and include your database settings

```sql
DATABASES = {
	"default": {
		"ENGINE": "django.db.backends.postgresql_psycopg2",
		"NAME": "interfell", # database name
		"USER": "postgres", # database user
		"PASSWORD": your_password, # database password
		"HOST": "localhost", # database server
		"PORT": "5432", # database port
	}
}
```

### Migrations
Go to /your_path/interfellTest/interfellTest/ and write

```bash
(env)$ python manage.py makemigrations
(env)$ python magage.py migrate

```

## Running App
```bash
(env)$ python manage.py runserver 0.0.0.0:8000

```


# interfell-fe

## Project Setup

To install all Project's dependencies, run the following command:

```bash
$ npm install
```

### Creating config file
Create a new file called *config.jsx* in /your_path/interfell-fe/utils and copy the information from the *config_template.jsx* file into it.

Change the information corresponding to your local machine.

## Running App

To start the app, run the following command:

```bash
$ npm start
```