CREATE DATABASE comprasETLsemi2;

USE comprasETLsemi2;

DROP TABLE IF EXISTS comp;
CREATE TABLE comp (
    Fecha VARCHAR(50),
    CodProveedor VARCHAR(50),
    NombreProveedor VARCHAR(100),
    DireccionProveedor VARCHAR(200),
    NumeroProveedor VARCHAR(50),
    WebProveedor VARCHAR(100),
    CodProducto VARCHAR(50),
    NombreProducto VARCHAR(200),
    MarcaProducto VARCHAR(50),
    Categoria VARCHAR(50),
    SodSuSursal VARCHAR(50),
    NombreSucursal VARCHAR(100),
    DireccionSucursal VARCHAR(200),
    Region VARCHAR(100),
    Departamento VARCHAR(100),
    Unidades VARCHAR(50),
    CostoU VARCHAR(50)
);
DROP TABLE IF EXISTS Compras;
CREATE TABLE Compras(
    Fecha VARCHAR(50),
    CodProveedor VARCHAR(50),
    NombreProveedor VARCHAR(100),
    DireccionProveedor VARCHAR(200),
    NumeroProveedor VARCHAR(50),
    WebProveedor VARCHAR(100),
    CodProducto VARCHAR(50),
    NombreProducto VARCHAR(200),
    MarcaProducto VARCHAR(50),
    Categoria VARCHAR(50),
    SodSuSursal VARCHAR(50),
    NombreSucursal VARCHAR(100),
    DireccionSucursal VARCHAR(200),
    Region VARCHAR(100),
    Departamento VARCHAR(100),
    Unidades VARCHAR(50),
    CostoU VARCHAR(50)
);

SELECT * FROM comp;
SELECT * FROM Compras;

DELETE FROM comp;
DELETE FROM Compras;

DROP TABLE comp;
DROP TABLE Compras;



