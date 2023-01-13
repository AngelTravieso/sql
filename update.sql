-- UPDATE para actulizar datos

-- actualizar todos los registros
UPDATE productos SET Prod_Status = 0

/*
	para actualizar cuando cumpla
	una condicion se debe usar WHERE
*/

UPDATE productos SET Prod_Status = 1
WHERE Prod_Precio > 0

-- actualizar mas de un campo
UPDATE productos SET Prod_Precio = 0, Prod_Status = 0
WHERE Prod_ProvId = 25