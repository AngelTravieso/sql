-- BETWEEN

-- mostrar registros entre las fechas indicadas
SELECT
	Ventas_Fecha,
	Ventas_CliId,
	Ventas_Total
FROM ventas
WHERE Ventas_Fecha BETWEEN '2018-01-01' AND '2018-01-04'

-- obtener ventas de los clientes con ID entre 2 y 100
SELECT
	Ventas_Fecha,
	Ventas_CliId,
	Ventas_Total
FROM ventas
WHERE Ventas_CliId BETWEEN 2 AND 100