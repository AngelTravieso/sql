

-- SUM() para sumar valores
SELECT
	SUM(Ventas_Total) AS 'Total Ventas'
FROM ventas
WHERE MONTH(Ventas_Fecha) = 1 AND
YEAR(Ventas_Fecha) = 2018

-- COUNT() contar registros
SELECT COUNT(*) AS 'Cantidad Ventas'
FROM ventas
WHERE MONTH(Ventas_Fecha) = 1 AND
YEAR(Ventas_Fecha) = 2018

-- MAX() valor maximo de un campo
SELECT MAX(Ventas_Total) AS 'Ventas Máxima'
FROM ventas
WHERE MONTH(Ventas_Fecha) = 1 AND
YEAR(Ventas_Fecha) = 2018


-- MIN() valor minimo de un campo
SELECT MIN(Ventas_Total) AS 'Ventas Mínima'
FROM ventas
WHERE MONTH(Ventas_Fecha) = 1 AND
YEAR(Ventas_Fecha) = 2018

-- AVG() sacar promedio
SELECT AVG(Ventas_Total) AS 'Ventas Promedio'
FROM ventas
WHERE MONTH(Ventas_Fecha) = 1 AND
YEAR(Ventas_Fecha) = 2018