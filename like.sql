-- LIKE: permite buscar en campos String un texto

-- % : comodin
SELECT
	Prod_Id,
	Prod_Descripcion,
	Prod_Color
FROM productos
WHERE Prod_Descripcion LIKE '%DORADO%'


-- CONCAT() para concatenar campos
SELECT
	Prod_Id,
	Prod_Descripcion,
	Prod_Color
FROM productos
-- para buscar texto en varios campos
WHERE CONCAT(Prod_Descripcion, Prod_Color) LIKE '%AD%'