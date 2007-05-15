
SELECT VACA.n_crotal, ANIMAL.nombre, RAZA.nombre
FROM VACA, RAZA, PERTENECE, ANIMAL
WHERE ANIMAL.n_crotal = VACA.n_crotal AND
	VACA.n_crotal=PERTENECE.n_crotal AND RAZA.cod=PERTENECE.cod AND NOT EXISTS(SELECT PARE.n_crotal_madre
							   FROM PARE
							   WHERE PARE.n_crotal_madre = VACA.n_crotal);