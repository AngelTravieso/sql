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


