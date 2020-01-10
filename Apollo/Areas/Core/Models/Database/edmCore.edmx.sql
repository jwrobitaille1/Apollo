
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/08/2020 19:38:28
-- Generated from EDMX file: C:\Users\jrobi\source\repos\Apollo\Apollo\Areas\Core\Models\Database\edmCore.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DataPhyx_DEV];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Corporation_Catalog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Corporation_Catalog];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Corporation_Catalog'
CREATE TABLE [dbo].[Corporation_Catalog] (
    [Corporation_Name] varchar(255)  NULL,
    [Corporation_Description] varchar(2000)  NULL,
    [Industry] varchar(50)  NULL,
    [Corporation_Type] varchar(50)  NULL,
    [Date_of_Incorpration] varchar(50)  NULL,
    [Fiscal_Year_Start] varchar(50)  NULL,
    [Number_of_Employees] varchar(50)  NULL,
    [Address] varchar(50)  NULL,
    [City] varchar(50)  NULL,
    [State] varchar(50)  NULL,
    [Zip_Code] varchar(50)  NULL,
    [Area_Code] varchar(50)  NULL,
    [Phone_Number] varchar(50)  NULL,
    [Extensions_Name] varchar(50)  NULL,
    [Extension] varchar(50)  NULL,
    [Effective_Start_Date] datetime  NULL,
    [Effective_End_Date] datetime  NULL,
    [Created_Date] datetime  NULL,
    [Created_By] varchar(50)  NULL,
    [Updated_Date] datetime  NULL,
    [Updated_By] varchar(50)  NULL,
    [Is_Active] bit  NULL,
    [Corporation_Code] varchar(50)  NULL,
    [Corporation_Catalog_ID] int  NOT NULL
);
GO

-- Creating table 'Facility_Catalog'
CREATE TABLE [dbo].[Facility_Catalog] (
    [Facility_Catalog_ID] int IDENTITY(1,1) NOT NULL,
    [Corporation_Catalog_ID] int  NOT NULL,
    [Facility_Code] nvarchar(max)  NOT NULL,
    [Facility_Name] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Corporation_Catalog_ID] in table 'Corporation_Catalog'
ALTER TABLE [dbo].[Corporation_Catalog]
ADD CONSTRAINT [PK_Corporation_Catalog]
    PRIMARY KEY CLUSTERED ([Corporation_Catalog_ID] ASC);
GO

-- Creating primary key on [Facility_Catalog_ID] in table 'Facility_Catalog'
ALTER TABLE [dbo].[Facility_Catalog]
ADD CONSTRAINT [PK_Facility_Catalog]
    PRIMARY KEY CLUSTERED ([Facility_Catalog_ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Corporation_Catalog_ID] in table 'Facility_Catalog'
ALTER TABLE [dbo].[Facility_Catalog]
ADD CONSTRAINT [FK_Corporation_Catalog_FK]
    FOREIGN KEY ([Corporation_Catalog_ID])
    REFERENCES [dbo].[Corporation_Catalog]
        ([Corporation_Catalog_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Corporation_Catalog_FK'
CREATE INDEX [IX_FK_Corporation_Catalog_FK]
ON [dbo].[Facility_Catalog]
    ([Corporation_Catalog_ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------