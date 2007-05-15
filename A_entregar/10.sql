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
	  AND ANIMAL.n_crotal = VACA.n_crotal;