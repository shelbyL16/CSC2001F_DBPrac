PASSWORD = <your mysql password>
USER = <your username>
HOST = nightmare.cs.uct.ac.za
SRC = SRC
FLAGS = --host=$(HOST) --user=$(USER) --password=$(PASSWORD)
MYSQL = /usr/bin/mysql

tables:
	@echo 'Creating tables in $(DATABASE).'
	$(MYSQL) $(FLAGS) $(DATABASE) < $(SRC)/create-q1.sql
	$(MYSQL) $(FLAGS) -e 'show tables;' $(DATABASE)

query:
	@echo 'Running question 3 query.'
	$(MYSQL) $(FLAGS) $(DATABASE) < $(SRC)/query-q3.sql

clean:
	@echo 'Erasing database $(DATABASE).'
	@$(MYSQL) $(FLAGS) -e 'DROP DATABASE $(DATABASE);' 
	@echo Creating database $(DATABASE).'
	@$(MYSQL) $(FLAGS) -e 'CREATE DATABASE $(DATABASE);' 

