#!/bin/bash

psql -U postgres --dbname "$POSTGRES_DB" < /data/sql/0_database.sql
psql -U developer --dbname elder_things_encyclopedia < /data/sql/1_table.sql
