/*

===============================================================================================
Create Database and Schemas
===============================================================================================
Script Purpose:
    This scripts creates a new database named "warehousedata" after checking it already exists. If the database exists, it is
    dropped and recreated. Additionally, the scripts sets up three schemas within the database: 'bronze', 'silver', 'gold'.

WARNING:
    Running this script will drop the entire 'warehousedata' database of it exists. All data in the 
    database will be permanently deleted. Proceed with caution and ensure you have proper backups 
    running the scripts.

/*

USE master;
GO

--Drop and recreate the 'warehousedata' database.
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'warehousedata')
BEGIN
    AlTER DATABASE Warehousedata SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE warehousedata;


END;
GO

--Create the 'warehousedata' databases
CREATE DATABASE warehousedata;
GO

USE warehousedata;
GO

--Create Schema

CREATe SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO




