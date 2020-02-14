#!/bin/sh
echo '***** config.sh wait for the SQL Server to come up'
sleep 30s

echo '***** run the setup script to create the DB'
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Change_me! -d master -i /usr/src/app/db_scripts/001_db.sql

#echo ***** run the setup script to create users in the DB
#/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Password123 -d master -i /usr/src/app/scripts/002_users.sql

#echo ***** run the setup script to create the schema in the DB
#/opt/mssql-tools/bin/sqlcmd -S localhost -U SMS_Repository_Dev -P Password123 -d master -i /usr/src/app/scripts/003_schema.sql
