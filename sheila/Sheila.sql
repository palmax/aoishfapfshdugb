-- --------------------DELETE --------------------
DELETE 
FROM SEMENTAL
WHERE SEMENTAL.n_crotal IN (SELECT PERTENECE.n_crotal
		     FROM PERTENECE
		     WHERE PERTENECE.cod IN (SELECT RAZA.cod
				     FROM RAZA
				     WHERE RAZA.nombre = 'Alistana'));

SELECT VACA.n_crotal, ANIMAL.nombre, RAZA.nombre
FROM VACA, RAZA, PERTENECE, ANIMAL
WHERE ANIMAL.n_crotal = VACA.n_crotal AND
	VACA.n_crotal=PERTENECE.n_crotal AND RAZA.cod=PERTENECE.cod AND NOT EXISTS(SELECT PARE.n_crotal_madre
							   FROM PARE
							   WHERE PARE.n_crotal_madre = VACA.n_crotal);



SELECT VACA.n_crotal, COUNT(PARE.n_crotal_madre)
FROM VACA, PARE
WHERE VACA.n_crotal=PARE.n_crotal_madre
GROUP BY PARE.n_crotal_madre;



SELECT RAZA.nombre, COUNT(RAZA.cod)
FROM SEMENTAL, RAZA, PERTENECE
WHERE SEMENTAL.n_crotal=PERTENECE.n_crotal AND RAZA.cod=PERTENECE.cod
GROUP BY RAZA.cod