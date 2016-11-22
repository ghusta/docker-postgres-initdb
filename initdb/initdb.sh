#!/bin/bash
#set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER test;
    CREATE DATABASE test;
    GRANT ALL PRIVILEGES ON DATABASE test TO test;
	
	CREATE TABLE person
	(
		id 		serial PRIMARY KEY,
		name	varchar(50) not null,
		age		integer
	);
EOSQL