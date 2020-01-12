
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/12/2020 17:47:48
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

IF OBJECT_ID(N'[dbo].[FK_Corporation_Catalog_FK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Facility_Catalog] DROP CONSTRAINT [FK_Corporation_Catalog_FK];
GO
IF OBJECT_ID(N'[dbo].[FK_Enagement_DetailsClient_Catalog_Enagement_Details]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Enagement_DetailsClient_Catalog] DROP CONSTRAINT [FK_Enagement_DetailsClient_Catalog_Enagement_Details];
GO
IF OBJECT_ID(N'[dbo].[FK_Enagement_DetailsClient_Catalog_Client_Catalog]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Enagement_DetailsClient_Catalog] DROP CONSTRAINT [FK_Enagement_DetailsClient_Catalog_Client_Catalog];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Corporation_Catalog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Corporation_Catalog];
GO
IF OBJECT_ID(N'[dbo].[Facility_Catalog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Facility_Catalog];
GO
IF OBJECT_ID(N'[dbo].[Engagement_Catalog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Engagement_Catalog];
GO
IF OBJECT_ID(N'[dbo].[Enagement_Details]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Enagement_Details];
GO
IF OBJECT_ID(N'[dbo].[Client_Catalog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Client_Catalog];
GO
IF OBJECT_ID(N'[dbo].[Enagement_DetailsClient_Catalog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Enagement_DetailsClient_Catalog];
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
    [Facility_Code] varchar(50)  NOT NULL,
    [Facility_Name] varchar(255)  NOT NULL,
    [Facility_Description] nvarchar(max)  NOT NULL,
    [Facility_Short_Code] nvarchar(6)  NOT NULL
);
GO

-- Creating table 'Engagement_Catalog'
CREATE TABLE [dbo].[Engagement_Catalog] (
    [Engagement_Catalog_ID] int IDENTITY(1,1) NOT NULL,
    [Engagement_Code] nvarchar(50)  NULL,
    [Engagement_Name] nvarchar(255)  NULL,
    [Engagement_Description] nvarchar(max)  NULL,
    [Engagement] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Enagement_Details'
CREATE TABLE [dbo].[Enagement_Details] (
    [Engagement_Details_ID] int IDENTITY(1,1) NOT NULL,
    [Engagement_Detail_Is_Active] bit  NOT NULL,
    [Engagement_Start_Date] datetime  NOT NULL,
    [Engagement_End_Date] datetime  NOT NULL,
    [Engagement_Baseline_Start_Date] datetime  NOT NULL,
    [Engagement_Baseline_End_Date] datetime  NOT NULL,
    [Engagement_Revenue] nvarchar(max)  NOT NULL,
    [Engagement_Expense] nvarchar(max)  NOT NULL,
    [Engagement_Profit] nvarchar(max)  NOT NULL,
    [Engagement_Revenue_Budget] nvarchar(max)  NOT NULL,
    [Engagement_Expense_Budget] nvarchar(max)  NOT NULL,
    [Engagement_Profit_Budget] nvarchar(max)  NOT NULL,
    [Engagement_Catalog_ID] int  NOT NULL
);
GO

-- Creating table 'Client_Catalog'
CREATE TABLE [dbo].[Client_Catalog] (
    [Client_Catalog_ID] int IDENTITY(1,1) NOT NULL,
    [Client_Code] nvarchar(max)  NOT NULL,
    [Client_Name] nvarchar(max)  NOT NULL,
    [Client_Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Enagement_DetailsClient_Catalog'
CREATE TABLE [dbo].[Enagement_DetailsClient_Catalog] (
    [Enagement_Details_Engagement_Details_ID] int  NOT NULL,
    [Client_Catalog_Client_Catalog_ID] int  NOT NULL
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

-- Creating primary key on [Engagement_Catalog_ID] in table 'Engagement_Catalog'
ALTER TABLE [dbo].[Engagement_Catalog]
ADD CONSTRAINT [PK_Engagement_Catalog]
    PRIMARY KEY CLUSTERED ([Engagement_Catalog_ID] ASC);
GO

-- Creating primary key on [Engagement_Details_ID] in table 'Enagement_Details'
ALTER TABLE [dbo].[Enagement_Details]
ADD CONSTRAINT [PK_Enagement_Details]
    PRIMARY KEY CLUSTERED ([Engagement_Details_ID] ASC);
GO

-- Creating primary key on [Client_Catalog_ID] in table 'Client_Catalog'
ALTER TABLE [dbo].[Client_Catalog]
ADD CONSTRAINT [PK_Client_Catalog]
    PRIMARY KEY CLUSTERED ([Client_Catalog_ID] ASC);
GO

-- Creating primary key on [Enagement_Details_Engagement_Details_ID], [Client_Catalog_Client_Catalog_ID] in table 'Enagement_DetailsClient_Catalog'
ALTER TABLE [dbo].[Enagement_DetailsClient_Catalog]
ADD CONSTRAINT [PK_Enagement_DetailsClient_Catalog]
    PRIMARY KEY CLUSTERED ([Enagement_Details_Engagement_Details_ID], [Client_Catalog_Client_Catalog_ID] ASC);
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

-- Creating foreign key on [Enagement_Details_Engagement_Details_ID] in table 'Enagement_DetailsClient_Catalog'
ALTER TABLE [dbo].[Enagement_DetailsClient_Catalog]
ADD CONSTRAINT [FK_Enagement_DetailsClient_Catalog_Enagement_Details]
    FOREIGN KEY ([Enagement_Details_Engagement_Details_ID])
    REFERENCES [dbo].[Enagement_Details]
        ([Engagement_Details_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Client_Catalog_Client_Catalog_ID] in table 'Enagement_DetailsClient_Catalog'
ALTER TABLE [dbo].[Enagement_DetailsClient_Catalog]
ADD CONSTRAINT [FK_Enagement_DetailsClient_Catalog_Client_Catalog]
    FOREIGN KEY ([Client_Catalog_Client_Catalog_ID])
    REFERENCES [dbo].[Client_Catalog]
        ([Client_Catalog_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Enagement_DetailsClient_Catalog_Client_Catalog'
CREATE INDEX [IX_FK_Enagement_DetailsClient_Catalog_Client_Catalog]
ON [dbo].[Enagement_DetailsClient_Catalog]
    ([Client_Catalog_Client_Catalog_ID]);
GO

-- Creating foreign key on [Engagement_Catalog_ID] in table 'Enagement_Details'
ALTER TABLE [dbo].[Enagement_Details]
ADD CONSTRAINT [FK_Engagement_Catalog_to_Enagement_Details]
    FOREIGN KEY ([Engagement_Catalog_ID])
    REFERENCES [dbo].[Engagement_Catalog]
        ([Engagement_Catalog_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Engagement_Catalog_to_Enagement_Details'
CREATE INDEX [IX_FK_Engagement_Catalog_to_Enagement_Details]
ON [dbo].[Enagement_Details]
    ([Engagement_Catalog_ID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------