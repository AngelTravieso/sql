-- GROUP BY sirve para agrupar datos de un campo (util para totalizar)
SELECT
	Ventas_Fecha,
	SUM(Ventas_Total) AS 'Total'
FROM ventas
GROUP BY Ventas_Fecha

-- desglosado
SELECT
	YEAR(Ventas_Fecha) AS 'Año',
	MONTH(Ventas_Fecha) AS 'Mes',
	SUM(Ventas_Total) AS 'Total',
	MIN(Ventas_Total) AS 'Minimo',
	MAX(Ventas_Total) AS 'Maximo',
	COUNT(Ventas_Total) AS 'Operaciones',
	AVG(Ventas_Total) AS 'Promedio Ventas'
FROM ventas
WHERE Ventas_CliId = 1
GROUP BY Año, Mes