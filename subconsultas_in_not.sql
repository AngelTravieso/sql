-- subconsultas: select dentro de otro select

/*
	1.- Figurar entre parentesis dentro de otra sentencia select
	2.- Solo debe haber un campo en el area de datos
*/

/*
	obtener registros unicos con clausula IN/NOT IN
	generalmente se usa con subconsultas (pero no es limitante)
*/

/*
obtener los clientes que no han comprado (sin ventas)
durante el mes de febrero
*/
SELECT 
	Cli_Id AS 'Nro. Cliente',
	Cli_RazonSocial AS 'Nombre'
FROM clientes
WHERE Cli_Id NOT IN (
	SELECT 
		DISTINCT(Ventas_CliId) AS 'Cliente'
	FROM ventas
	WHERE Ventas_Fecha >= '2018-02-01'
	AND Ventas_Fecha < '2018-03-01'
)

-- obtener los clientes que han comprado en febrero
SELECT 
	Cli_Id AS 'Nro. Cliente',
	Cli_RazonSocial AS 'Nombre'
FROM clientes
WHERE Cli_Id IN (SELECT 
	DISTINCT(Ventas_CliId) AS 'Cliente'
FROM ventas
WHERE Ventas_Fecha >= '2018-02-01'
AND Ventas_Fecha < '2018-03-01' )
ORDER BY Cli_Id

-- la clausula IN no solo funciona con subconsulta
SELECT
	Cli_Id AS 'Nro. Cliente',
	Cli_RazonSocial AS 'Nombre'
FROM clientes
WHERE Cli_Id IN (1,5,6,10)
ORDER BY Cli_Id

SELECT
	Prod_Id AS 'Nro. Producto',
	Prod_Descripcion AS 'Descripcion'
FROM productos
WHERE Prod_Status IN (1,0)

-- obtener la lista de productos que nunca fueron vendidos en el 2018
-- que no se encuentran en la tabla ventas_detalle
SELECT
	Prod_Id AS 'Nro. Producto',
	Prod_Descripcion AS 'Productos'
FROM productos
WHERE Prod_Id NOT IN (
	SELECT 
		DISTINCT(VD_ProdId)
	FROM ventas_detalle, ventas
	WHERE VD_VentasID = Ventas_Id AND
	Ventas_Fecha > '2018-01-01'
)

-- obtener la lista limpia, con cada registro unico (sin repetir, solo trae 1)
SELECT 
	DISTINCT(Ventas_CliId) AS 'Cliente'
FROM ventas

