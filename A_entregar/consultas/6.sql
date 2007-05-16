DELETE 
FROM SEMENTAL
WHERE SEMENTAL.n_crotal IN (SELECT PERTENECE.n_crotal
		     FROM PERTENECE
		     WHERE PERTENECE.cod IN (SELECT RAZA.cod
				     FROM RAZA
				     WHERE RAZA.nombre = 'Alistana'));