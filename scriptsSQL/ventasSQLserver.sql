CREATE DATABASE ventasETLsemi2;

USE ventasETLsemi2;

DROP TABLE IF EXISTS vent;
CREATE TABLE vent (
    Fecha VARCHAR(50),
    CodigoCliente VARCHAR(50),
    NombreCliente VARCHAR(100),
    TipoCliente VARCHAR(50),
    DireccionCliente VARCHAR(200),
    NumeroCliente VARCHAR(50),
    CodVendedor VARCHAR(50),
    NombreVendedor VARCHAR(100),
    Vacacionista VARCHAR(50),
    CodProducto VARCHAR(50),
    NombreProducto VARCHAR(200),
    MarcaProducto VARCHAR(50),
    Categoria VARCHAR(50),
    SodSuSursal VARCHAR(50),
    NombreSucursal VARCHAR(100),
    DireccionSucursal VARCHAR(200),
    Region VARCHAR(50),
    Departamento VARCHAR(50),
    Unidades VARCHAR(50),
    PrecioUnitario VARCHAR(50)
);
DROP TABLE IF EXISTS Ventas;
CREATE TABLE Ventas(
    Fecha VARCHAR(50),
    CodigoCliente VARCHAR(50),
    NombreCliente VARCHAR(100),
    TipoCliente VARCHAR(50),
    DireccionCliente VARCHAR(200),
    NumeroCliente VARCHAR(50),
    CodVendedor VARCHAR(50),
    NombreVendedor VARCHAR(100),
    Vacacionista VARCHAR(50),
    CodProducto VARCHAR(50),
    NombreProducto VARCHAR(200),
    MarcaProducto VARCHAR(50),
    Categoria VARCHAR(50),
    SodSuSursal VARCHAR(50),
    NombreSucursal VARCHAR(100),
    DireccionSucursal VARCHAR(200),
    Region VARCHAR(50),
    Departamento VARCHAR(50),
    Unidades VARCHAR(50),
    PrecioUnitario VARCHAR(50)
);

SELECT * FROM vent;
SELECT * FROM Ventas;

DELETE FROM vent;
DELETE FROM Ventas;

DROP TABLE vent;
DROP TABLE Ventas;



