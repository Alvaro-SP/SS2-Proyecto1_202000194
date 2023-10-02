
USE semi2_202000194;
GO
SELECT 'PROVEEDOR' AS Tabla, COUNT(*) AS Recuento FROM dbo.PROVEEDOR
UNION ALL
SELECT 'SUCURSAL' AS Tabla, COUNT(*) AS Recuento FROM dbo.SUCURSAL
UNION ALL
SELECT 'PRODUCTO' AS Tabla, COUNT(*) AS Recuento FROM dbo.PRODUCTO
UNION ALL
SELECT 'FECHA' AS Tabla, COUNT(*) AS Recuento FROM dbo.FECHA
UNION ALL
SELECT 'COMPRA' AS Tabla, COUNT(*) AS Recuento FROM dbo.COMPRA
UNION ALL
SELECT 'CLIENTE' AS Tabla, COUNT(*) AS Recuento FROM dbo.CLIENTE
UNION ALL
SELECT 'VENDEDOR' AS Tabla, COUNT(*) AS Recuento FROM dbo.VENDEDOR
UNION ALL
SELECT 'VENTA' AS Tabla, COUNT(*) AS Recuento FROM dbo.VENTA;


-- -----------------------------------------------------
USE semi2_202000194;

INSERT INTO VENTA(
idSUCURSAL
, idCLIENTE
, idVENDEDOR
, idPRODUCTO
, idFECHA
, Unidades
, PrecioUnitario
, Fecha
, total
)
SELECT 
SUCURSAL.idSUCURSAL
, CLIENTE.idCLIENTE
, VENDEDOR.idVENDEDOR
, PRODUCTO.idPRODUCTO
, FECHA.idFECHA
, vent.Unidades
, vent.PrecioUnitario
, vent.Fecha
, CAST(vent.Unidades AS DECIMAL(12, 2)) * CAST(vent.PrecioUnitario AS DECIMAL(12, 2)) 
FROM SUCURSAL
INNER JOIN vent on vent.SodSuSursal= SUCURSAL.SodSuSursal
INNER JOIN PRODUCTO on vent.CodProducto = PRODUCTO.CodProducto
INNER JOIN CLIENTE on vent.CodigoCliente = CLIENTE.CodigoCliente
INNER JOIN VENDEDOR on vent.CodVendedor = VENDEDOR.CodVendedor
INNER JOIN FECHA on vent.Fecha = FECHA.Fecha;

DELETE FROM VENTA WHERE Unidades < 0 OR PrecioUnitario < 0.0;


INSERT INTO COMPRA(
unidades
, CostoU
, total
, fecha
, idSUCURSAL
, idPROVEEDOR
, idPRODUCTO
, idFECHA
)
SELECT 
comp.unidades
, comp.CostoU
, CAST(comp.unidades AS DECIMAL(12, 2)) * CAST(comp.CostoU AS DECIMAL(12, 2)) 
, comp.Fecha
, sucursal.idSUCURSAL
, PROVEEDOR.idPROVEEDOR
, PRODUCTO.idPRODUCTO
, FECHA.idFECHA
FROM SUCURSAL
INNER JOIN comp on comp.SodSuSursal= SUCURSAL.SodSuSursal
INNER JOIN PRODUCTO on comp.CodProducto = PRODUCTO.CodProducto
INNER JOIN PROVEEDOR on comp.CodProveedor = PROVEEDOR.CodProveedor
INNER JOIN FECHA on comp.Fecha = FECHA.Fecha;




DELETE FROM COMPRA WHERE Unidades < 0 OR CostoU < 0.0;