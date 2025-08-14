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
