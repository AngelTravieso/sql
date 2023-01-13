-- Funcines básicas MYSQL
SELECT
	Prod_Id,
	Prod_Descripcion,
	-- funciona como ternario
	IF (Prod_Status = 1, 'Habilitado', 'Deshabilitado') AS 'Estado'
FROM productos

-- si necesito evaluar mas condiciones (CASE)
SELECT
	Prod_Id,
	Prod_Descripcion,
	CASE WHEN Prod_Status = 1 
		THEN 'Habilitado' ELSE 'Deshabilitado'
	END AS 'Estado'
FROM productos

SELECT
	Prod_Id,
	Prod_Descripcion,
	CASE 
		WHEN Prod_Status = 1 THEN 'Habilitado'
		WHEN Prod_Status = 0 THEN 'Inhabilitado'
		WHEN Prod_status = 2 THEN 'Otro Estado'
	END AS 'Estado'
FROM productos

-- tambien funciona (mucho mejor)
-- usar siempre case (recomendado)
SELECT
	Prod_Id,
	Prod_Descripcion,
	CASE Prod_Status 
		/*
		se pueden hacer calculos o subconsultas
		en los THEN (en base a la condicion)
		*/
		WHEN 1 THEN 'Habilitado'
		WHEN 0 THEN 'Inhabilitado'
		WHEN 2 THEN 'Otro Estado'
	END AS 'Estado'
FROM productos

-- SUBSTRING() para cortar/obtener una parte del texto
SELECT
	Prod_Id,
	Prod_Descripcion,
	-- Campos, desde, hasta
	SUBSTR(Prod_Descripcion, 1, 10) AS 'Parte'
FROM productos

-- Combinar CASE con Funciones

-- UCASE() texto a mayusculas
SELECT
	Prod_Id,
	Prod_Descripcion,
	-- evaluar primera letra
	UCASE(CASE SUBSTR(Prod_Descripcion, 1, 1)
		WHEN 'A' THEN 'Letra A'
		WHEN 'B' THEN 'Letra B'
	END) AS 'Ejercicio'
FROM productos

-- Funciones que se pueden llamar sin referencia a tabla

-- Obtener hora del SGBD (11:41:01)
SELECT CURRENT_TIME

-- Obtener fecha completa (2023-01-13 11:40:29)
SELECT CURRENT_TIMESTAMP

-- mezclar funciones con consultas
SELECT
	CURRENT_TIMESTAMP, Prod_Id
FROM productos

-- Obtener el nombre de la BD
SELECT DATABASE()

-- DATEDIFF() Verificar diferencia entre fechas (devuelve los dias)
SELECT
	DATEDIFF('2018-01-01', '2018-06-01') AS 'Fechas'
FROM productos

SELECT
	DATEDIFF(CURRENT_DATE, Ventas_Fecha) AS 'Diferencia'
FROM ventas

-- DAYOFWEEK() Obtener dia de la semana (numero del dia)
-- 1 = Domingo
SELECT DAYOFWEEK(CURRENT_DATE) AS 'Dia Actual'

SELECT 
	CASE DAYOFWEEK(CURRENT_DATE) WHEN 6 THEN 'Viernes'
	END AS 'Dia'
	
SELECT
	DAYOFWEEK(CURRENT_DATE) AS 'Fechas',
	Ventas_NroFactura AS 'Nro. Factura'
FROM ventas
	
/*
obtener el total de ventas por mes
*/
	
SELECT
	Ventas_Fecha,
	MONTH(Ventas_Fecha) AS 'Mes',
	/* CASE DAYOFWEEK(Ventas_Fecha)
		WHEN 1 THEN 'Domingo'
		WHEN 2 THEN 'Lunes'
		WHEN 3 THEN 'Martes'
		WHEN 4 THEN 'Miercoles'
		WHEN 5 THEN 'Jueves'
		WHEN 6 THEN 'Viernes'
		WHEN 7 THEN 'Sabado'
	END AS 'Dia Venta' */
	SUM(Ventas_Total) AS 'Total Ventas Mes'
	--	ORDER BY
FROM ventas
GROUP BY Mes
ORDER BY Mes, DAYOFWEEK(Ventas_Fecha)
-- ORDER BY MES, [Total Ventas Mes]

-- 1.808.658,28 (2018-01-01)

-- comprobar
SELECT
	Ventas_Fecha,
	MONTH(Ventas_Fecha) AS 'Mes',
	SUM(Ventas_Total) AS 'Total Ventas Enero'
FROM ventas
WHERE Ventas_Fecha BETWEEN '2018-01-01' AND '2018-01-31'
GROUP BY Mes

SELECT
	Ventas_Fecha,
	SUM(Ventas_Total) AS 'Total Ventas'
FROM ventas
GROUP BY Ventas_Fecha


