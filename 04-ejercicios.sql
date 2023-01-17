-- Ejercicios SELECT agrupando y sumarizando totales uniendo varias tablas
/*
	N°1
	Traer la cantidad de productos que se han vendido
*/
SELECT 
	COUNT(DISTINCT(VD_ProdId)) AS 'Cantidad'
FROM productos
	JOIN ventas_detalle ON Prod_Id = VD_ProdId

/*
	N°2
	Traer el total vendido de los productos que
	fueron vendidos entre el 02/01/2018 y el 10/01/2018
	y cuyo proveedor se encuentre entre el 2 y el 100
*/
SELECT
	SUM(VD_Precio * VD_Cantidad) AS 'Total Vendido'
FROM ventas_detalle
	JOIN ventas ON Ventas_Id = VD_VentasId
	JOIN productos ON Prod_Id = VD_ProdId
WHERE (Ventas_Fecha BETWEEN '2018-01-02' AND '2018-01-10') AND
		(Prod_ProvId BETWEEN 2 AND 100)

/*
	N°3
	Traer la factura de valor maximo, que haya tenido en sus items
	vendidos, el producto 656
*/
SELECT
	Ventas_NroFactura AS 'Factura',
	Max(Ventas_Total) AS 'Valor Maximo'
FROM ventas
	JOIN ventas_detalle ON VD_VentasId = Ventas_Id
WHERE VD_ProdId = 656