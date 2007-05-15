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



SELECT VACA.n_crotal, COUNT(PARE.n_crotal_madre)AS Num_Hijos
FROM VACA, PARE
WHERE VACA.n_crotal=PARE.n_crotal_madre
GROUP BY PARE.n_crotal_madre;



SELECT RAZA.nombre, COUNT(RAZA.cod) AS Num_Sementales 
FROM SEMENTAL, RAZA, PERTENECE
WHERE SEMENTAL.n_crotal=PERTENECE.n_crotal AND RAZA.cod=PERTENECE.cod
GROUP BY RAZA.cod;


SELECT VACA.n_crotal,ANIMAL.nombre
FROM  VACA, ANIMAL
WHERE VACA.n_crotal NOT IN(SELECT INSEMINA.n_crotal
                       FROM INSEMINA,ANIMAL,PARE
	  	       WHERE INSEMINA.Lote IN(SELECT SUMINISTRA.Lote
						       FROM SUMINISTRA
						       WHERE SUMINISTRA.codP IN (SELECT PROVEEDOR.codP 
										 FROM PROVEEDOR 
										 WHERE PROVEEDOR.nombre='X'))
                        AND ANIMAL.fecha_nacimiento BETWEEN INSEMINA.Fecha + 276 AND INSEMINA.Fecha + 290
			AND PARE.n_crotal_hijo=ANIMAL.n_crotal AND PARE.n_crotal_madre=INSEMINA.n_crotal
                        )
	  AND ANIMAL.n_crotal = VACA.n_crotal ;

  
SELECT ANIMAL.n_crotal, ANIMAL.nombre AS Nombre_Vaca,RAZA.Nombre AS Nombre_Raza,
	ANIMAL.tipo,RAZA.Nombre,Insemina.Fecha AS Fecha_Inseminacion
FROM ANIMAL,pertenece,RAZA,Insemina
WHERE ANIMAL.n_crotal=pertenece.n_crotal and pertenece.cod=RAZA.Cod and 
      Insemina.n_crotal = ANIMAL.n_crotal and (DATE_ADD(insemina.Fecha,INTERVAL 290 DAY) < '2007-09-30' and DATE_ADD(insemina.Fecha, INTERVAL 276 Day)>'2007-09-01');

