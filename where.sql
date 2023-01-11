SELECT * FROM clientes;

-- SELECT <Campo/s> FROM Tabla/s .......

-- where permite filtrar nuestras consultas
SELECT Cli_Id FROM clientes WHERE Cli_Id > 10; 

SELECT Prod_Id, Prod_Descripcion, Prod_Precio FROM productos WHERE Prod_Precio > 0;

SELECT * FROM productos
WHERE Prod_Status = 1 AND Prod_Precio > 0;

SELECT * FROM productos
WHERE Prod_Precio > 0 
AND (Prod_Status = 0 OR (Prod_Status = 1 AND Prod_ProvId = 97))

SELECT Ventas_Fecha, Ventas_CliId, Ventas_Total FROM ventas
WHERE Ventas_Fecha > '2018-01-03'
AND Ventas_Fecha < '2018-01-10'
AND Ventas_CliId <> 1
AND Ventas_Total > 1000