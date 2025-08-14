/*
==================================================
Create Database and Schemas
==================================================

Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists.
    All data in the database will be permanently deleted. Proceed with caution
    and ensure you have proper backups before running this script.

*/


use master;

IF EXISTS (select 1 from sys.databases where name = 'DataWareHouseDB')
BEGIN
	ALTER DATABASE DataWareHouseDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE 
	DROP DATABASE DataWareHouseDB;
END

GO
CREATE DATABASE DataWareHouseDB;
GO
USE DataWareHouseDB;
GO
Create Schema bronze;
GO
Create Schema silver;
GO
Create Schema golden;
