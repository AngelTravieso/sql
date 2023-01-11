-- GROUP BY sirve para agrupar datos de un campo (util para totalizar)
SELECT
	Ventas_Fecha,
	SUM(Ventas_Total) AS 'Ventas Total'
FROM ventas
GROUP BY Ventas_Fecha