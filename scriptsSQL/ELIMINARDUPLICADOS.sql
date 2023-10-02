USE semi2_202000194;
GO

--  eliminar duplicados de la tabla "CLIENTE":

DELETE  a
FROM  CLIENTE a
        LEFT JOIN
        (
            SELECT MIN(idCLIENTE) idCLIENTE, CodigoCliente, NombreCliente, TipoCliente, DireccionCliente, NumeroCliente
            FROM  CLIENTE
            GROUP   BY CodigoCliente, NombreCliente, TipoCliente, DireccionCliente, NumeroCliente
        ) b ON  a.idCLIENTE = b.idCLIENTE AND
                a.CodigoCliente = b.CodigoCliente AND
                a.NombreCliente = b.NombreCliente AND
                a.TipoCliente = b.TipoCliente AND
                a.DireccionCliente = b.DireccionCliente AND
                a.NumeroCliente = b.NumeroCliente
WHERE   b.idCLIENTE IS NULL;


-- Eliminar duplicados de la tabla "VENDEDOR":
DELETE  a
FROM  VENDEDOR a
        LEFT JOIN
        (
            SELECT MIN(idVENDEDOR) idVENDEDOR, CodVendedor, NombreVendedor, Vacacionista
            FROM  VENDEDOR
            GROUP   BY CodVendedor, NombreVendedor, Vacacionista
        ) b ON  a.idVENDEDOR = b.idVENDEDOR AND
                a.CodVendedor = b.CodVendedor AND
                a.NombreVendedor = b.NombreVendedor AND
                a.Vacacionista = b.Vacacionista
WHERE   b.idVENDEDOR IS NULL;

-- Eliminar duplicados de la tabla "PROVEEDOR":
DELETE  a
FROM  PROVEEDOR a
        LEFT JOIN
        (
            SELECT MIN(idPROVEEDOR) idPROVEEDOR, CodProveedor, NombreProveedor, DireccionProveedor, NumeroProveedor, WebProveedor
            FROM  PROVEEDOR
            GROUP   BY CodProveedor, NombreProveedor, DireccionProveedor, NumeroProveedor, WebProveedor
        ) b ON  a.idPROVEEDOR = b.idPROVEEDOR AND
                a.CodProveedor = b.CodProveedor AND
                a.NombreProveedor = b.NombreProveedor AND
                a.DireccionProveedor = b.DireccionProveedor AND
                a.NumeroProveedor = b.NumeroProveedor AND
                a.WebProveedor = b.WebProveedor
WHERE   b.idPROVEEDOR IS NULL;

-- Eliminar duplicados de la tabla "SUCURSAL":


DELETE  a
FROM  SUCURSAL a
        LEFT JOIN
        (
            SELECT MIN(idSUCURSAL) idSUCURSAL, SodSuSursal, NombreSucursal, DireccionSucursal, Region, Departamento
            FROM  SUCURSAL
            GROUP   BY SodSuSursal, NombreSucursal, DireccionSucursal, Region, Departamento
        ) b ON  a.idSUCURSAL = b.idSUCURSAL AND
                a.SodSuSursal = b.SodSuSursal AND
                a.NombreSucursal = b.NombreSucursal AND
                a.DireccionSucursal = b.DireccionSucursal AND
                a.Region = b.Region AND
                a.Departamento = b.Departamento
WHERE   b.idSUCURSAL IS NULL;

-- Eliminar duplicados de la tabla "PRODUCTO":

DELETE  a
FROM  PRODUCTO a
        LEFT JOIN
        (
            SELECT MIN(idPRODUCTO) idPRODUCTO, CodProducto, NombreProducto, MarcaProducto, Categoria
            FROM  PRODUCTO
            GROUP   BY CodProducto, NombreProducto, MarcaProducto, Categoria
        ) b ON  a.idPRODUCTO = b.idPRODUCTO AND
                a.CodProducto = b.CodProducto AND
                a.NombreProducto = b.NombreProducto AND
                a.MarcaProducto = b.MarcaProducto AND
                a.Categoria = b.Categoria
WHERE   b.idPRODUCTO IS NULL;

-- Eliminar duplicados de la tabla "FECHA":

DELETE  a
FROM  FECHA a
        LEFT JOIN
        (
            SELECT MIN(idFECHA) idFECHA, Fecha
            FROM  FECHA
            GROUP   BY Fecha
        ) b ON  a.idFECHA = b.idFECHA AND
                a.Fecha = b.Fecha
WHERE   b.idFECHA IS NULL;
