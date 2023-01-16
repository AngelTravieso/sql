-- Ejercicios SELECT para una sola tabla

/*
	N°1 
Traer las fechas de numeros de factura y monto total
de las ventas
*/
SELECT
	Ventas_Fecha AS 'Fecha',
	Ventas_NroFactura AS 'Nro. Factura',
	Ventas_Total AS 'Total'
FROM ventas

/*
	N°2
	Traer los ID de productos, cantidad y precio de mi
	detalle de ventas de los registros donde el precio
	sea mayor a 0
*/
SELECT
	VD_ProdId AS 'Nro. Producto',
	VD_Cantidad AS 'Cantidad',
	VD_Precio AS 'Precio'
FROM ventas_detalle
WHERE VD_Precio > 0

/*
	N° 3
	Traer el total vendido por fecha de factura
*/
SELECT
	Ventas_Fecha AS 'Fecha',
	SUM(Ventas_Total) AS 'Total'
FROM ventas
GROUP BY Ventas_Fecha

/*
	N°4
	Traer el total vendido por año y mes de factura
*/
SELECT
	YEAR(Ventas_Fecha) AS 'Año',
	MONTH(Ventas_Fecha) AS 'Mes',
	SUM(Ventas_Total) AS 'Total'
FROM ventas
GROUP BY Año, Mes

/*
	N°5
	Traer los productos de la tabla productos que
	pertenezcan al proveedor 62
*/
SELECT
	*
FROM productos
WHERE
Prod_ProvId = 62

/*
	N°6
	Traer la lista de productos (solo su ID) sin
	repeticiones y con el total vendido por cada uno
*/
SELECT
	VD_ProdId AS 'Producto',
	SUM((VD_Precio * VD_Cantidad))  AS 'Total'
FROM ventas_detalle
GROUP BY Producto


