#!/bin/bash 
psql -U postgres -d postgres -f /db/db.sql
psql -U postgres -d egaisexchange -f /db/schema.sql
psql -U postgres -d egaisexchange -f /db/ddl.sql
psql -U postgres -d egaisexchange -f /db/dml.sql

