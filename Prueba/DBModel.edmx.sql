
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/10/2023 20:51:59
-- Generated from EDMX file: C:\Users\jmgv8\Escritorio\ModelFirst\Prueba\DBModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [ModelFirst];
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

-- Creating table 'ArticuloSet'
CREATE TABLE [dbo].[ArticuloSet] (
    [id_articulo] int IDENTITY(1,1) NOT NULL,
    [ANombre] nvarchar(max)  NOT NULL,
    [APrecio] float  NOT NULL,
    [Categoria_id_categoria] int  NOT NULL
);
GO

-- Creating table 'CategoriaSet'
CREATE TABLE [dbo].[CategoriaSet] (
    [id_categoria] int IDENTITY(1,1) NOT NULL,
    [CNombre] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id_articulo] in table 'ArticuloSet'
ALTER TABLE [dbo].[ArticuloSet]
ADD CONSTRAINT [PK_ArticuloSet]
    PRIMARY KEY CLUSTERED ([id_articulo] ASC);
GO

-- Creating primary key on [id_categoria] in table 'CategoriaSet'
ALTER TABLE [dbo].[CategoriaSet]
ADD CONSTRAINT [PK_CategoriaSet]
    PRIMARY KEY CLUSTERED ([id_categoria] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Categoria_id_categoria] in table 'ArticuloSet'
ALTER TABLE [dbo].[ArticuloSet]
ADD CONSTRAINT [FK_ArticuloCategoria]
    FOREIGN KEY ([Categoria_id_categoria])
    REFERENCES [dbo].[CategoriaSet]
        ([id_categoria])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ArticuloCategoria'
CREATE INDEX [IX_FK_ArticuloCategoria]
ON [dbo].[ArticuloSet]
    ([Categoria_id_categoria]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------