-- DELETE para eliminar datos de las tablas

-- esto elimina todos los datos ¡CUIDADO!
-- DELETE FROM alumnos

DELETE FROM alumnos WHERE Alumno_Id = 4

-- se puede mezclar con subconsultas
DELETE FROM ventas_detalle
WHERE VD_ProdId IN (
	SELECT
		Prod_Id
	FROM productos
	WHERE Prod_Status = 1
)