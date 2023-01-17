-- Funciones SQL

-- ADDATE para agregar un intervalo a una fecha
-- Desde, Hasta (dias)
SELECT
	Ventas_Fecha AS 'Fecha',
	ADDDATE(Ventas_Fecha, 30) AS 'Vencimiento'
FROM ventas

-- Encriptacion en MYSQL ( AES_ENCRYPT() )
SELECT
	Prod_Descripcion,
	AES_ENCRYPT(Prod_Descripcion, 'Desarrollo') AS 'DescripEncrypt'
FROM productos

-- Desencriptacion ( AES_DECRYPT() )
SELECT
	Prod_Descripcion,
	AES_DECRYPT(AES_ENCRYPT(Prod_Descripcion, 'Desarrollo'), 'Desarrollo') 
	AS 'DescriDecrypt'
FROM productos

-- Obtener longitud del campo
SELECT 
	Prod_Descripcion, 
	LENGTH(Prod_Descripcion) AS 'Largo'
FROM productos

-- COMPRESS() para encryptar sin palabra clave
-- le da la responsabilidad de encriptado al motor
SELECT
	COMPRESS(Prod_Descripcion) AS 'Comprimido'
FROM productos

-- UNCOMPRESS() para desencriptar con el motor
SELECT
	UNCOMPRESS(COMPRESS(Prod_Descripcion)) AS 'Resultado'
FROM productos

-- CONCAT_WS(separador, campos) para concatenar con un
-- separador
SELECT CONCAT_WS(
	"!",
	Prod_Descripcion,
	Prod_Color,
	Prod_Precio) AS 'Desc'
FROM productos

-- CONVERT() para convertir tipos de datos
SELECT 
	CONVERT("2022-01-18", DATE) AS 'Fecha'
FROM productos

SELECT 
	CONVERT("08:25:00", TIME) AS 'Hora',
	Prod_Id
FROM productos

SELECT 
	*
FROM productos
WHERE LENGTH(Prod_Descripcion) > 50

-- NOW() hora actual
SELECT NOW()

-- DATEDIFF() diferencia de horas
SELECT
	DATEDIFF(Ventas_Fecha, NOW()) AS 'Intervalo'
FROM ventas

-- DATE_FORMAT() para formatear fecha
SELECT DATE_FORMAT("2015-06-15", "%Y") AS 'Resultado'

SELECT 
	DATE_FORMAT(Ventas_Fecha, "%Y") AS 'Resultado'
FROM ventas

SELECT 
	DATE_FORMAT(Ventas_Fecha, "%Y > mes %m (%d)") AS 'Resultado'
FROM ventas





