USE master;
GO

-- Drop the database if it exists
IF EXISTS (SELECT name FROM sys.databases WHERE name = N'semi2_202000194')
    DROP DATABASE semi2_202000194;
GO
-- Create a new database
CREATE DATABASE semi2_202000194;
GO

-- Use the new database
USE semi2_202000194;
GO

-- -----------------------------------------------------
-- Table [dbo].[PROVEEDOR]
-- -----------------------------------------------------
CREATE TABLE [dbo].[PROVEEDOR] (
  [idPROVEEDOR] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  [CodProveedor] VARCHAR(45) NULL,
  [NombreProveedor] VARCHAR(100) NULL,
  [DireccionProveedor] NVARCHAR(MAX) NULL,
  [NumeroProveedor] BIGINT NULL,
  [WebProveedor] VARCHAR(45) NULL
);

-- -----------------------------------------------------
-- Table [dbo].[SUCURSAL]
-- -----------------------------------------------------
CREATE TABLE [dbo].[SUCURSAL] (
  [idSUCURSAL] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  [SodSuSursal] VARCHAR(45) NULL,
  [NombreSucursal] VARCHAR(45) NULL,
  [DireccionSucursal] NVARCHAR(MAX) NULL,
  [Region] NVARCHAR(100) NULL,
  [Departamento] NVARCHAR(100) NULL
);

-- -----------------------------------------------------
-- Table [dbo].[PRODUCTO]
-- -----------------------------------------------------
CREATE TABLE [dbo].[PRODUCTO] (
  [idPRODUCTO] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  [CodProducto] VARCHAR(50) NULL,
  [NombreProducto] VARCHAR(100) NULL,
  [MarcaProducto] VARCHAR(50) NULL
);

-- -----------------------------------------------------
-- Table [dbo].[CATEGORIA]
-- -----------------------------------------------------
CREATE TABLE [dbo].[CATEGORIA] (
  [idCATEGORIA] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  [Categoria] VARCHAR(45) NULL
);

-- -----------------------------------------------------
-- Table [dbo].[FECHA]
-- -----------------------------------------------------
CREATE TABLE [dbo].[FECHA] (
  [idFECHA] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  [Fecha] VARCHAR(45) NULL
);

-- -----------------------------------------------------
-- Table [dbo].[COMPRA]
-- -----------------------------------------------------
CREATE TABLE [dbo].[COMPRA] (
  [id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  [Unidades] INT NULL,
  [CostoU] DECIMAL(18, 2) NULL,
  [total] INT NULL,
  [fecha] VARCHAR(45) NULL,
  [idPROVEEDOR] INT NOT NULL,
  [idSUCURSAL] INT NOT NULL,
  [idPRODUCTO] INT NOT NULL,
  [idCATEGORIA] INT NOT NULL,
  [idFECHA] INT NOT NULL,
  FOREIGN KEY ([idPROVEEDOR]) REFERENCES [dbo].[PROVEEDOR]([idPROVEEDOR]),
  FOREIGN KEY ([idSUCURSAL]) REFERENCES [dbo].[SUCURSAL]([idSUCURSAL]),
  FOREIGN KEY ([idPRODUCTO]) REFERENCES [dbo].[PRODUCTO]([idPRODUCTO]),
  FOREIGN KEY ([idCATEGORIA]) REFERENCES [dbo].[CATEGORIA]([idCATEGORIA]),
  FOREIGN KEY ([idFECHA]) REFERENCES [dbo].[FECHA]([idFECHA])
);

-- -----------------------------------------------------
-- Table [dbo].[CLIENTE]
-- -----------------------------------------------------
CREATE TABLE [dbo].[CLIENTE] (
  [idCLIENTE] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  [CodigoCliente] VARCHAR(45) NULL,
  [NombreCliente] VARCHAR(100) NULL,
  [TipoCliente] VARCHAR(100) NULL,
  [DireccionCliente] NVARCHAR(MAX) NULL,
  [NumeroCliente] BIGINT NULL
);

-- -----------------------------------------------------
-- Table [dbo].[VENDEDOR]
-- -----------------------------------------------------
CREATE TABLE [dbo].[VENDEDOR] (
  [idVENDEDOR] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
  [CodVendedor] VARCHAR(45) NULL,
  [NombreVendedor] VARCHAR(45) NULL,
  [Vacacionista] VARCHAR(45) NULL
);

-- -----------------------------------------------------
-- Table [dbo].[VENTA]
-- -----------------------------------------------------
CREATE TABLE [dbo].[VENTA] (
  [idVENTA] INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
  [Unidades] INT NULL,
  [PrecioUnitario] DECIMAL(18, 2) NULL,
  [Fecha] VARCHAR(45) NULL,
  [total] DECIMAL(18, 2) NULL,
  [idVENDEDOR] INT NOT NULL,
  [idCLIENTE] INT NOT NULL,
  [idSUCURSAL] INT NOT NULL,
  [idFECHA] INT NOT NULL,
  [idCATEGORIA] INT NOT NULL,
  [idPRODUCTO] INT NOT NULL,
  FOREIGN KEY ([idVENDEDOR]) REFERENCES [dbo].[VENDEDOR]([idVENDEDOR]),
  FOREIGN KEY ([idCLIENTE]) REFERENCES [dbo].[CLIENTE]([idCLIENTE]),
  FOREIGN KEY ([idSUCURSAL]) REFERENCES [dbo].[SUCURSAL]([idSUCURSAL]),
  FOREIGN KEY ([idFECHA]) REFERENCES [dbo].[FECHA]([idFECHA]),
  FOREIGN KEY ([idCATEGORIA]) REFERENCES [dbo].[CATEGORIA]([idCATEGORIA]),
  FOREIGN KEY ([idPRODUCTO]) REFERENCES [dbo].[PRODUCTO]([idPRODUCTO])
);
