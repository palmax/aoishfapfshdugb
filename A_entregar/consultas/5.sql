SELECT ANIMAL.n_crotal, ANIMAL.nombre AS Nombre_Vaca,RAZA.Nombre AS Nombre_Raza,
	ANIMAL.tipo,RAZA.Nombre,Insemina.Fecha AS Fecha_Inseminacion
FROM ANIMAL,pertenece,RAZA,Insemina
WHERE ANIMAL.n_crotal=pertenece.n_crotal and pertenece.cod=RAZA.Cod and 
      Insemina.n_crotal = ANIMAL.n_crotal and
      (DATE_ADD(insemina.Fecha,INTERVAL 290 DAY) < '2007-09-30' and
       DATE_ADD(insemina.Fecha, INTERVAL 276 Day)>'2007-09-01');
