-- ORDER BY permite ordenar nuestros datos

-- ordenar clientes alfabeticamente
SELECT * FROM clientes ORDER BY Cli_RazonSocial

SELECT * FROM productos 
ORDER BY Prod_Status, Prod_Precio DESC

SELECT * FROM productos 
ORDER BY Prod_ProvId DESC

SELECT * FROM ventas_detalle, productos
WHERE VD_ProdId = Prod_Id
ORDER BY Prod_ProvId DESC
