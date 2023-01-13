-- INSERT
-- INSERT INTO alumnos(Alumno_Nombre) VALUES ('angel');
INSERT INTO productos(
	Prod_Descripcion,
) VALUES (
	'Mesa',
);

INSERT INTO productos(
	Prod_Descripcion,
	Prod_Color
) VALUES (
	'Mesa',
	'Blanco'
);

-- no importa el orden de los campos en la tabla
INSERT INTO productos(
	Prod_Descripcion,
	Prod_Color,
	Prod_Precio
) VALUES (
	'Mesa',
	'Blanco',
	100
);

/*
para obviar la lista de campos es necesario que los
valores esten ordenados y no me salte ningun campo,
si no coloco la lista de campos estoy obligado a 
insertar la totalidad de los campos de la tabla
*/

-- esto es un error
INSERT INTO productos VALUES (
	'Mesa',
	'Blanco',
	100
);