
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/10/2017 02:02:54
-- Generated from EDMX file: C:\Users\pedro\Documents\Visual Studio 2017\Projects\SitiosPrueba4\SitiosPrueba4\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ModeloPrueba];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'SitiosSet'
CREATE TABLE [dbo].[SitiosSet] (
    [Id_Sitio] int IDENTITY(1,1) NOT NULL,
    [CodigoSitio] nvarchar(max)  NOT NULL,
    [X] decimal(18,0)  NOT NULL,
    [Y] decimal(18,0)  NOT NULL,
    [Altitud] decimal(18,0)  NOT NULL,
    [Propiedad] int  NOT NULL,
    [Antecedentes] nvarchar(max)  NOT NULL,
    [RelatoAcontecimientos] nvarchar(max)  NOT NULL,
    [FechaEvento] datetime  NOT NULL,
    [FechaInhumacion] datetime  NOT NULL,
    [NumeroVictimas] int  NOT NULL,
    [ExhumacionAnterior] bit  NOT NULL,
    [MaterialesAdicionales] bit  NOT NULL
);
GO

-- Creating table 'InformantesSet'
CREATE TABLE [dbo].[InformantesSet] (
    [Id_Informante] int IDENTITY(1,1) NOT NULL,
    [Nombres] nvarchar(max)  NOT NULL,
    [ApellidoPaterno] nvarchar(max)  NOT NULL,
    [ApellidoMaterno] nvarchar(max)  NOT NULL,
    [Sitios_Id_Sitio] int  NOT NULL
);
GO

-- Creating table 'VictimasSet'
CREATE TABLE [dbo].[VictimasSet] (
    [Id_Victima] int IDENTITY(1,1) NOT NULL,
    [Codigo] nvarchar(max)  NOT NULL,
    [NA] nvarchar(max)  NOT NULL,
    [Sexo] int  NOT NULL,
    [Edad] float  NOT NULL,
    [Procedencia] nvarchar(max)  NOT NULL,
    [Familia] nvarchar(max)  NOT NULL,
    [PresuntaAfiliacion] nvarchar(max)  NOT NULL,
    [Sitios_Id_Sitio] int  NOT NULL,
    [Familiares_Id_Familiar] int  NOT NULL
);
GO

-- Creating table 'FamiliaresSet'
CREATE TABLE [dbo].[FamiliaresSet] (
    [Id_Familiar] int IDENTITY(1,1) NOT NULL,
    [Familiar] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TestigosSet'
CREATE TABLE [dbo].[TestigosSet] (
    [Id_Testigo] int IDENTITY(1,1) NOT NULL,
    [Nombres] nvarchar(max)  NOT NULL,
    [ApellidoPaterno] nvarchar(max)  NOT NULL,
    [ApellidoMaterno] nvarchar(max)  NOT NULL,
    [Sitios_Id_Sitio] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id_Sitio] in table 'SitiosSet'
ALTER TABLE [dbo].[SitiosSet]
ADD CONSTRAINT [PK_SitiosSet]
    PRIMARY KEY CLUSTERED ([Id_Sitio] ASC);
GO

-- Creating primary key on [Id_Informante] in table 'InformantesSet'
ALTER TABLE [dbo].[InformantesSet]
ADD CONSTRAINT [PK_InformantesSet]
    PRIMARY KEY CLUSTERED ([Id_Informante] ASC);
GO

-- Creating primary key on [Id_Victima] in table 'VictimasSet'
ALTER TABLE [dbo].[VictimasSet]
ADD CONSTRAINT [PK_VictimasSet]
    PRIMARY KEY CLUSTERED ([Id_Victima] ASC);
GO

-- Creating primary key on [Id_Familiar] in table 'FamiliaresSet'
ALTER TABLE [dbo].[FamiliaresSet]
ADD CONSTRAINT [PK_FamiliaresSet]
    PRIMARY KEY CLUSTERED ([Id_Familiar] ASC);
GO

-- Creating primary key on [Id_Testigo] in table 'TestigosSet'
ALTER TABLE [dbo].[TestigosSet]
ADD CONSTRAINT [PK_TestigosSet]
    PRIMARY KEY CLUSTERED ([Id_Testigo] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Sitios_Id_Sitio] in table 'InformantesSet'
ALTER TABLE [dbo].[InformantesSet]
ADD CONSTRAINT [FK_SitiosInformantes]
    FOREIGN KEY ([Sitios_Id_Sitio])
    REFERENCES [dbo].[SitiosSet]
        ([Id_Sitio])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SitiosInformantes'
CREATE INDEX [IX_FK_SitiosInformantes]
ON [dbo].[InformantesSet]
    ([Sitios_Id_Sitio]);
GO

-- Creating foreign key on [Sitios_Id_Sitio] in table 'VictimasSet'
ALTER TABLE [dbo].[VictimasSet]
ADD CONSTRAINT [FK_SitiosVictimas]
    FOREIGN KEY ([Sitios_Id_Sitio])
    REFERENCES [dbo].[SitiosSet]
        ([Id_Sitio])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SitiosVictimas'
CREATE INDEX [IX_FK_SitiosVictimas]
ON [dbo].[VictimasSet]
    ([Sitios_Id_Sitio]);
GO

-- Creating foreign key on [Familiares_Id_Familiar] in table 'VictimasSet'
ALTER TABLE [dbo].[VictimasSet]
ADD CONSTRAINT [FK_FamiliaresVictimas]
    FOREIGN KEY ([Familiares_Id_Familiar])
    REFERENCES [dbo].[FamiliaresSet]
        ([Id_Familiar])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FamiliaresVictimas'
CREATE INDEX [IX_FK_FamiliaresVictimas]
ON [dbo].[VictimasSet]
    ([Familiares_Id_Familiar]);
GO

-- Creating foreign key on [Sitios_Id_Sitio] in table 'TestigosSet'
ALTER TABLE [dbo].[TestigosSet]
ADD CONSTRAINT [FK_SitiosTestigos]
    FOREIGN KEY ([Sitios_Id_Sitio])
    REFERENCES [dbo].[SitiosSet]
        ([Id_Sitio])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SitiosTestigos'
CREATE INDEX [IX_FK_SitiosTestigos]
ON [dbo].[TestigosSet]
    ([Sitios_Id_Sitio]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------