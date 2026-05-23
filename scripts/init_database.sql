/*
=================================================
Create Database and Schemas
=================================================

Script Purpose:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	If database exists, it is dropped and recreated. Also, the script sets up three schemas within
	the database: 'bronze', 'silver', and 'gold'.

WARNING:
	Running this script will drop the entire database 'DataWarehouse' if it exists.
	All data in the database will be permanently deleted. Procced with caution
	and ensure you have proper backups before running this script.
*/


Use master;
GO

-- Drop and recreate the 'DataWarehouse' database
if exists (select 1 from sys.databases where name = 'DataWarehouse')
BEGIN
	ALTER Database DataWarehouse set single_user with rollback immediate;
	DROP Database DataWarehouse;
END;
GO

-- Create Database 'DataWarehouse'
Create database DataWarehouse;
GO

Use DataWarehouse;
GO

-- Create Schemas
create schema bronze;
GO
create schema silver;
GO
create schema gold;
GO
