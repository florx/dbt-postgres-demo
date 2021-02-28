
all: clean start create-base-tables add-data seed run

clean: 
	docker-compose stop && docker-compose rm -f

start:
	docker-compose up -d

create-base-tables:
	# wait a moment for the database to be ready
	sleep 2 
	PGPASSWORD=dbt_pass psql -h localhost -U dbt_user -d dbt_db -a -f setup/prices-create-table.sql

add-data: 
	cat setup/prices-data-2020.csv.gz | gunzip -c > setup/prices-data-2020.csv
	PGPASSWORD=dbt_pass psql -h localhost -U dbt_user -d dbt_db -a -f setup/prices-import-data.sql

seed: 
	dbt seed --profiles-dir dbt-profiles/

run:
	dbt run --profiles-dir dbt-profiles/