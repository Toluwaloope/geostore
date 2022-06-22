#!/bin/bash

psql createdb -U postgres geostore

psql -U geostore -d geostore -f 001_setup_db.sql

psql -U geostore -d geostore -f 002_create_schema_postgres.sql

set PGOPTIONS="--search_path=geostore_test"

psql -U geostore_test -d geostore -f 002_create_schema_postgres.sql
