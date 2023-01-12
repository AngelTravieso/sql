-- JOINS (Union de Tablas)

/*
	los joins se deben ejecutar en orden, es decir,
	son dependientes de los joins anteriores para
	poder encontrar las tablas
*/

-- INNER significa interno
-- JOIN e INNER JOIN es lo mismo para el motor
SELECT
	Ventas_Fecha,
	Ventas_NroFactura,
	Ventas_CliId,
	Cli_RazonSocial,
	VD_ProdId,
	Prod_Descripcion,
	Prod_ProvId,
	Prov_Nombre,
	VD_Cantidad,
	VD_Precio,
	(VD_Cantidad * VD_Precio) AS 'Parcial'
FROM ventas
JOIN ventas_detalle ON VD_VentasId = Ventas_Id
JOIN productos ON VD_ProdId = Prod_Id
JOIN proveedores ON Prod_ProvId = Prov_Id
JOIN clientes ON Cli_Id = Ventas_CliId

-- si el orden es incorrecto no funcionara
/* SELECT
	Ventas_Fecha,
	Ventas_NroFactura,
	Ventas_CliId,
	Cli_RazonSocial,
	VD_ProdId,
	Prod_Descripcion,
	Prod_ProvId,
	Prov_Nombre,
	VD_Cantidad,
	VD_Precio,
	(VD_Cantidad * VD_Precio) AS 'Parcial'
FROM ventas
JOIN clientes ON Ventas_CliId = Cli_Id
JOIN productos ON Prod_Id = VD_ProdId
JOIN ventas_detalle ON VD_Id = Ventas_Id
JOIN proveedores ON Prov_Id = Prod_ProvId
*/