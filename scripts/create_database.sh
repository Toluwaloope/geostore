#!/bin/bash

psql createdb -U postgres geostore

psql -U geostore -d geostore -f YOUR_GEOSTORE_DIR/doc/sql/001_setup_db.sql

psql -U geostore -d geostore -f YOUR_GEOSTORE_DIR/doc/sql/002_create_schema_postgres.sql

set PGOPTIONS="--search_path=geostore_test"

psql -U geostore_test -d geostore -f YOUR_GEOSTORE_DIR/doc/sql/002_create_schema_postgres.sql