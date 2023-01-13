-- SUBCONSULTAS
-- sentencias SELECT dentro de otra sentencia SELECT
SELECT
	Prod_Id AS 'Articulo',
	Prod_Descripcion AS 'Descripcion',
	-- subconsulta
	
	-- ultima fecha que adquirieron este producto
	(
		SELECT 
			MAX(Ventas_Fecha) AS 'UltF'
		FROM ventas
			JOIN ventas_detalle ON Ventas_Id = VD_VentasId
			WHERE Prod_Id = 1633
	) AS 'UltFecha',
	-- clientes que compraron este producto
	(
		SELECT
			COUNT(DISTINCT(Ventas_CliId)) AS 'sss'
		FROM ventas
			JOIN ventas_detalle ON Ventas_Id = VD_VentasId
			WHERE Prod_id = 1633
		) AS 'CantCli'
FROM productos
WHERE Prod_Id = 1633


/*
ejemplo de como bloquear un sistema
si el valor de la tabla permiso es 1 (permitido)
trae consultas, si es diferente (0) NO trae nada
*/

SELECT
	Prod_Id AS 'Articulo',
	Prod_Descripcion AS 'Descripcion'
FROM productos
WHERE Prod_Id > 0 AND  (
	SELECT
		permiso
	FROM permisos
) = 1