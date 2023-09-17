CREATE DATABASE ventasETLsemi2;

USE ventasETLsemi2;

CREATE TABLE Temporal (
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
    NombreProducto VARCHAR(100),
    MarcaProducto VARCHAR(50),
    Categoria VARCHAR(50),
    SodSuSursal VARCHAR(50),
    NombreSucursal VARCHAR(100),
    DireccionSucursal VARCHAR(200),
    Region VARCHAR(50),
    Departamento VARCHAR(50),
    Unidades VARCHAR(50),
    PrecioUnitario VARCHAR(50),
)

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
    NombreProducto VARCHAR(100),
    MarcaProducto VARCHAR(50),
    Categoria VARCHAR(50),
    SodSuSursal VARCHAR(50),
    NombreSucursal VARCHAR(100),
    DireccionSucursal VARCHAR(200),
    Region VARCHAR(50),
    Departamento VARCHAR(50),
    Unidades VARCHAR(50),
    PrecioUnitario VARCHAR(50),
)

SELECT * FROM Temporal;
SELECT * FROM Ventas;

DELETE FROM Temporal;
DELETE FROM Ventas;

DROP TABLE Temporal;
DROP TABLE Ventas;



