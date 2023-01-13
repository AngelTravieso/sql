/*
HAVING es el WHERE que se ejecuta despues del GROUP BY y 
funciona con los datos de salida y no de entrada
*/

SELECT
	SUM(Ventas_Total) AS 'Total'
FROM ventas
 Total > 100
 
 SELECT
 	YEAR(Ventas_Fecha) AS 'Año',
 	MONTH(Ventas_Fecha) AS 'Mes',
 	SUM(Ventas_Total) AS 'Total'
FROM ventas
GROUP BY Año, Mes
HAVING Total > 1000000

/*
con HAVING se puede usar el nombre de los alias
y no necesariamente los nombres de los campos
de las tablas
*/

-- el where trabaja sobre las columnas de las tablas