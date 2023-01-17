-- Ejercicios SELECT uniendo 2 o más tablas

/*
	N°1
	Traer fecha de factura,
	Nro de factura, Id. de Cliente
	Razon Social del cliente y monto total vendido
*/

-- con WHERE
SELECT
	Ventas_Fecha AS 'Fecha',
	Ventas_NroFactura AS 'Nro. Factura',
	Ventas_CliId AS 'Cliente',
	Cli_RazonSocial AS 'Razon Social',
	Ventas_Total AS 'Total'
FROM ventas, clientes
WHERE Ventas_CliId = Cli_id

-- con JOIN
SELECT
	Ventas_Fecha AS 'Fecha',
	Ventas_NroFactura AS 'Nro. Factura',
	Ventas_CliId AS 'Cliente',
	Cli_RazonSocial AS 'Razon Social',
	Ventas_Total AS 'Total'
FROM ventas
	JOIN clientes ON Ventas_CliId = Cli_Id


/*
	N°2
	Traer fecha de factura, Nro de factura,
	Id de producto, Descripcion de Producto,
	Id de proveedor, Nombre de Proveedor,
	Cantidad, Precio Unitario y Parcial
*/
SELECT
	Ventas_Fecha AS 'Fecha',
	Ventas_NroFactura AS 'Factura',
	VD_ProdId AS 'Producto',
	Prod_Descripcion AS 'Descripcion',
	VD_Cantidad AS 'Cantidad',
	VD_Precio AS 'Precio',
	Prod_ProvId AS 'Proveedor',
	Prov_Nombre AS 'Nombre Proveedor',
	(VD_Cantidad * VD_Precio) AS 'Parcial'
FROM ventas
	JOIN ventas_detalle ON VD_VentasId = Ventas_Id
	JOIN productos ON VD_ProdId = Prod_Id
	JOIN proveedores ON Prod_ProvId = Prov_Id
	
	
/*
	N°3
	Traer todos los productos que hayan sido vendidos entre
	el 14/1/2018 y el 16/01/2018 (sin repetir) y calculando
	la cantidad de unidades vendidas
*/
SELECT
	Prod_Id AS 'Nro. Producto',
	Prod_Descripcion AS 'Descripcion',
	Ventas_Fecha AS 'Venta Fecha',
	Ventas_NroFactura AS 'Factura',
	SUM(VD_Cantidad) AS 'Unidades Vendidas',
	Ventas_Total AS 'Total'
FROM productos
	JOIN ventas_detalle ON VD_ProdId = Prod_Id
	JOIN ventas ON Ventas_Id = VD_VentasId
WHERE Ventas_Fecha BETWEEN '2018-01-14' AND '2018-01-16' AND
GROUP BY Prod_Id
ORDER BY Ventas_Fecha







