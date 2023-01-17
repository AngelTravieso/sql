-- Ejercicios SELECT buscando Strings

/*
	N°1
	Traer todos los articulos cuya descripcion
	comience con la palabra 'SUBTERRANEO'
*/
SELECT
	Prod_Id AS 'Codigo',
	Prod_Descripcion AS 'Descripcion'
FROM productos
WHERE Prod_Descripcion LIKE 'SUBTERRANEO%'

/*
	N°2
	Traer todos los articulos que en su descripcion o
	color o nombre de Proveedor tenga el String 'FERRO'
*/
SELECT
	Prod_Id AS 'Codigo',
	Prod_Descripcion AS 'Descripcion',
	Prov_Nombre AS 'Proveedor'
FROM productos
	JOIN proveedores ON Prov_Id = Prod_ProvId
WHERE CONCAT(Prod_Descripcion, Prov_Nombre) LIKE '%FERRO%'

/*
	N°3
	Traer todos los articulos que en su descripcion tenga la
	palabra 'CINTA' y que tengan ventas realizadas
*/
SELECT
	Prod_Id AS 'Codigo Producto',
	Prod_Descripcion AS 'Descripcion'
FROM productos
WHERE Prod_Id IN (SELECT VD_ProdId FROM ventas_detalle) AND
Prod_Descripcion LIKE '%CINTA%'
