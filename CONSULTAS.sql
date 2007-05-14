--  1  

ALTER TABLE ANIMAL ADD Nombre VARCHAR(16);
--  2  
INSERT INTO RAZA (Cod,Nombre,Caracteristicas,Descripcion) VALUES ('1','Holstein Freisian','resistente','blanco y negro o blanco y rojo, con las manchas bien definidas.');
INSERT INTO RAZA (Cod,Nombre,Caracteristicas,Descripcion) VALUES ('2','Jersey','produccion de leche con alto contenido de grasa (5%).','peso que varia entre 370 y 500 kilogramos.');
INSERT INTO RAZA (Cod,Nombre,Caracteristicas,Descripcion) VALUES 
                 ('3','Charolaise','Piel y mucosas rosadas,pelo corto de color blanco o crema','Origen centro de francia, al campo toman un tinte blanco pajizo');
INSERT INTO RAZA (Cod,Nombre,Caracteristicas,Descripcion) VALUES
                 ('4','Hereford','Color dominante rojo cereza a rojo abayado.
                   La cara debe ser blanca extendiendose el blanco al vientre, la ingle y las extremidades',
               'origen suroeste de inglaterra, variedad pollet hereford');
INSERT INTO RAZA (Cod,Nombre,Caracteristicas,Descripcion) VALUES 
                 ('5','Cosmica','Resistentes al monoxido de carbono','Grande,Verde,Fuerte');
INSERT INTO RAZA (Cod,Nombre,Caracteristicas,Descripcion) VALUES 
                 ('6','Alistana','pecho ancho profundo, musculado al igual que el resto del cuerpo.
Mucosas negras con orla blanca, Color castanyo','Origen Cantabria, Espanya');


--------------------------------------------------------------------------------------------
----------------------------------TABLA ANIMAL------------------------------------------------
----------------------------------------------------------------------------------------------
---------------
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('2001','pipu','macho','0000-00-00','Navalcarnero','Carne',NULL);
INSERT INTO SEMENTAL (n_crotal,calidad_semen,largo,alto)
            VALUES ('2001','Regular',130,107);

INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
            VALUES ('2002','Campanero','macho','1985-10-25','Madrid','Carne',"2001");

INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
        VALUES ('2003','Topogigio','macho','1969-06-09','La Villa Visiosa','Semental',"2001");


INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
            VALUES ('2005',"Rubi","hembra",'1984-11-09','Arequipa','Lechera','2001');

INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
            VALUES ('2004','Keorza','hembra','1984-04-28','Chimbote','Lechera','2001');

------------------------------------------------

INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0001','pipu','macho','0000-00-00','Navalcarnero','Carne',NULL);
INSERT INTO SEMENTAL (n_crotal,calidad_semen,largo,alto)
            VALUES ('0001','Regular',130,107);

INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0002','Campanero','macho','1985-10-25','Madrid','Carne',"0001");

INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0003','Topogigio','macho','1969-06-09','La Villa Visiosa','Semental',"0001");
INSERT INTO SEMENTAL (n_crotal,calidad_semen,largo,alto)
            VALUES ('0003','Buena',1.34,109);

INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0006','Ferdinando','macho','1938-02-23','La Dehesa de la Villa','Semental',NULL);
INSERT INTO SEMENTAL (n_crotal,calidad_semen,largo,alto)
            VALUES ('0006','Excelente',1.30,112);

INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0011','Can','macho','1999-05-07',NULL,'Carne',NULL);

INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0100','Sambo','macho','1984-11-02','Lima','Semental','0006');
INSERT INTO SEMENTAL (n_crotal,calidad_semen,largo,alto)
            VALUES ('0100','Excelente',1.35,106);

INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0101','Bandit','macho','1990-03-10','Trujillo','Semental',NULL);

INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0102','Bulek','macho','1990-05-20','Berlin','Semental',NULL);
INSERT INTO SEMENTAL (n_crotal,calidad_semen,largo,alto)
            VALUES ('0102','Buena',1.40,110);


--15
---------------VACAS:
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0004',"Keorsa","hembra",'1984-04-28','Chimbote','Lechera','0006');
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0005',"Rubi","hembra",'1984-11-09','Arequipa','Lechera','0003');
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0007','Camila','hembra','2001-04-21','Miraflores,Madid,Espanya','Lechera','0003');
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0008','Sra.Caloway','hembra','2004-01-22','Londres,Inglaterra','Lechera','0006');
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0010','Margarita','hembra','2005-01-22','Leon,C.Leon,Espanya','Lechera','0003');
--20
----------------------------------------------------------------------------------------------
-----------------------------------TABLA VACA-------------------------------------------------
----------------------------------------------------------------------------------------------
INSERT INTO VACA (calidad_leche,n_crotal,Peso,capacidad_lactea)
            VALUES ('Regular','0004',360,10);
INSERT INTO VACA (calidad_leche,n_crotal,Peso,capacidad_lactea)
            VALUES ('Mala','0005',410,15);
INSERT INTO VACA (calidad_leche,n_crotal,Peso,capacidad_lactea)
            VALUES ('Buena','0007',369,24);
INSERT INTO VACA (calidad_leche,n_crotal,Peso,capacidad_lactea)
            VALUES ('Excelente','0010',350,40);
INSERT INTO VACA (calidad_leche,n_crotal,Peso,capacidad_lactea)
            VALUES ('Excelente','0008',400,35); 


----------------------------------------------------------------------------------------------
-----------------------------------TABLA VETERINARIO------------------------------------------
---------------------------------------------------------------------------------------------- 

INSERT INTO VETERINARIO (n_colegiado,Nombre,telefono,movil,direccion)
       VALUES ('100132','Elena Nito del Bosque','91-4298472','+34-698337257','C/ Toro 12 2 D,Madrid,Espanya');
INSERT INTO VETERINARIO (n_colegiado,Nombre,telefono,movil,direccion)
       VALUES ('170132','Andres Tresado','92-1298472','+34-626873214','C/ Cuerno');
INSERT INTO VETERINARIO (n_colegiado,Nombre,telefono,movil,direccion)
       VALUES ('500132','Umberto Cesar','92-39743894','+34-666112233','Pso Prado 45');
INSERT INTO VETERINARIO (n_colegiado,Nombre,telefono,movil,direccion)
       VALUES ('800121','Nicasio Rodrigo','91-8294472','+34-628345219','C/Trote');
INSERT INTO VETERINARIO (n_colegiado,Nombre,telefono,movil,direccion)
       VALUES ('170131','Roberto Antonio','97-7278912','+34-612783314','C/Luciernaga');

----------------------------------------------------------------------------------------------
-----------------------------------TABLA PROVEEDOR--------------------------------------------
---------------------------------------------------------------------------------------------- 
INSERT INTO PROVEEDOR (codP,Nombre,Telefono,direccion)
       VALUES ('357590','Livestock Improvement Corporation','+64 7 856 0700 ','Hamilton 2021 Nueva Zelanda');
INSERT INTO PROVEEDOR (codP,Nombre,Telefono,direccion)
       VALUES ('446681','Agricultural & Fishery Marketing Corporation','+82 2 6300 1404','aT Center 232,
                                                                                          Yangjae-Dong Seocho-gu,Seoul 137-130, Corea del Sur');
INSERT INTO PROVEEDOR (codP,Nombre,Telefono,direccion)
       VALUES ('530516','Casa Blanca Marketing Corporation S.A','+45 3 1415 1617','Simancaus 334-337, Nueva Zelanda');
INSERT INTO PROVEEDOR (codP,Nombre,Telefono,direccion)
       VALUES ('748905','Agri-Anchor Corporation','+73 2 6300 1404','Avenida Buenos Aires 78-81,Panaribo,Argentina');
INSERT INTO PROVEEDOR (codP,Nombre,Telefono,direccion)
       VALUES ('821792','P.Sherman','+0 11 235 8 1321','Way Wallabi 42,Sidney,Australia ');
--40
----------------------------------------------------------------------------------------------
-------------------------------TABLA EXTRACCION-----------------------------------------------
---------------------------------------------------------------------------------------------- 
INSERT INTO EXTRACCION (codEx,Fecha,Incidencias,n_colegiado,n_crotal)
       VALUES ('x56789','2006-09-14','El veterinario perdio un brazo y parte de la pierna','170131','0003');
INSERT INTO EXTRACCION (codEx,Fecha,Incidencias,n_colegiado,n_crotal)
       VALUES ('x56793','2006-09-15','El toro quedo exhausto, durmio los siguientes tres dias','170131','0006');
INSERT INTO EXTRACCION (codEx,Fecha,Incidencias,n_colegiado,n_crotal)
       VALUES ('x56791','2006-09-06','Apenas se lleno un bote','800121','0006');
INSERT INTO EXTRACCION (codEx,Fecha,Incidencias,n_colegiado,n_crotal)
       VALUES ('x56790','2006-09-14','Ninguna','500132','0003');
INSERT INTO EXTRACCION (codEx,Fecha,Incidencias,n_colegiado,n_crotal)
       VALUES ('x56792','2006-09-14','Ninguna','500132','0100');

---------------------------------------------------------------------------------
----------------------TABLA UNIDAD DE SEMEN -------------------------------------
--------------------------------------------------------------------------------- 

INSERT INTO UNIDAD_SEMEN (Lote, fecha_obtencion, calidad, fecha_validez, codEx)
            VALUES ('ab12345','1984-11-07','muy buena','2010-09-02','x56789');
INSERT INTO UNIDAD_SEMEN (Lote, fecha_obtencion, calidad, fecha_validez, codEx)
            VALUES ('ab12346','1990-06-07','buena','2020-10-24','x56789');
INSERT INTO UNIDAD_SEMEN (Lote, fecha_obtencion, calidad, fecha_validez, codEx)
            VALUES ('ab12347','1996-11-15','regular','2010-09-02','x56790');
INSERT INTO UNIDAD_SEMEN (Lote, fecha_obtencion, calidad, fecha_validez, codEx)
            VALUES ('ab12348','1996-06-20','regular','2010-09-02','x56790');
INSERT INTO UNIDAD_SEMEN (Lote, fecha_obtencion, calidad, fecha_validez, codEx)
            VALUES ('ab12349','1995-03-16','regular','2018-12-31','x56791');
--50
--------------------------------------------------------------------------------------
----------------------TABLA CARACTERISTICAS CRIA -------------------------------------
-------------------------------------------------------------------------------------
 

INSERT INTO CARACTERISTICAS_CRIA (Cod, Nombre, Descripcion)
            VALUES ('0000001','grupa_alta','parte poaterior del animal, forma angulo 45');
INSERT INTO CARACTERISTICAS_CRIA (Cod, Nombre, Descripcion)
            VALUES ('0000002','tamanio','alta');
INSERT INTO CARACTERISTICAS_CRIA (Cod, Nombre, Descripcion)
            VALUES ('0000003','cintura','ancha');
INSERT INTO CARACTERISTICAS_CRIA (Cod, Nombre, Descripcion)
            VALUES ('0000004','cabeza','achatada');
INSERT INTO CARACTERISTICAS_CRIA (Cod, Nombre, Descripcion)
            VALUES ('0000005','grupa','alta');

----------------------------
--12------------------------- 
CREATE TABLE PARTO (
                    n_crotal          varchar(32),
                    fecha_prev_parto  date,
                    fecha_min_parto   date,
                    fecha_max_parto   date,
          PRIMARY KEY (n_crotal)
);
------13-------------------- 

DELIMITER //

CREATE TRIGGER insert_parto AFTER INSERT ON monta
  FOR EACH ROW BEGIN
    REPLACE INTO PARTO SET n_crotal = NEW.VACA_n_crotal,
                          fecha_prev_parto = DATE_ADD(NEW.Fecha,INTERVAL 280 DAY),
                          fecha_min_parto =  DATE_ADD(NEW.Fecha,INTERVAL 290 DAY),
                          fecha_max_parto = NEW.Fecha;
  END //
CREATE TRIGGER insert_inseminacion AFTER INSERT ON insemina 
  FOR EACH ROW BEGIN
    REPLACE INTO PARTO SET n_crotal = NEW.n_crotal,
                          fecha_prev_parto = DATE_ADD(NEW.Fecha,INTERVAL 280 DAY),
                          fecha_min_parto =  DATE_ADD(NEW.Fecha,INTERVAL 276 DAY),
                          fecha_max_parto =  DATE_ADD(NEW.Fecha, INTERVAL 290 DAY);
END //



DELIMITER ;
-------------------------------------------------------------
--------------------------monta------------------------------
------------------------------------------------------------- 
INSERT INTO monta(VACA_n_crotal,SEMENTAL_n_crotal,Fecha,exito,incidencias)
       VALUES ('0004','0003','2001-10-21','ok','no');
INSERT INTO monta(VACA_n_crotal,SEMENTAL_n_crotal,Fecha,exito,incidencias)
       VALUES ('0007','0100','2002-02-21','ok','no');
INSERT INTO monta(VACA_n_crotal,SEMENTAL_n_crotal,Fecha,exito,incidencias)
       VALUES ('0008','0102','2000-08-21','ok','no');
INSERT INTO monta(VACA_n_crotal,SEMENTAL_n_crotal,Fecha,exito,incidencias)
       VALUES ('0005','0003','2003-07-21','ok','no');
INSERT INTO monta(VACA_n_crotal,SEMENTAL_n_crotal,Fecha,exito,incidencias)
       VALUES ('0010','0003','2007-06-21','ok','no');

-----------------------------------------------------------------
---------------------------pertenece-----------------------------
----------------------------------------------------------------- 
INSERT INTO pertenece (n_crotal,Cod)
       VALUES ('0004','2');
INSERT INTO pertenece (n_crotal,Cod)
       VALUES ('0002','3');
INSERT INTO pertenece (n_crotal,Cod)
       VALUES ('0003','1');
INSERT INTO pertenece (n_crotal,Cod)
       VALUES ('0005','6');
INSERT INTO pertenece (n_crotal,Cod)
       VALUES ('0001','4');
INSERT INTO pertenece (n_crotal,Cod)
       VALUES ('0006','2');
INSERT INTO pertenece (n_crotal,Cod)
       VALUES ('0010','6');
INSERT INTO pertenece (n_crotal,Cod)
       VALUES ('0011','5');

-----------------------------------------------------------------
---------------------------suministra-----------------------------
----------------------------------------------------------------- 
INSERT INTO suministra(codP,Lote,coste)
       VALUES ('357590','ab12345',78);
INSERT INTO suministra(codP,Lote,coste)
       VALUES ('446681','ab12346',78);
INSERT INTO suministra(codP,Lote,coste)
       VALUES ('446681','ab12347',78);
INSERT INTO suministra(codP,Lote,coste)
       VALUES ('357590','ab12348',78);
INSERT INTO suministra(codP,Lote,coste)
       VALUES ('357590','ab12349',78);
 
-----------------------------------------------------------------
---------------------------insemina-----------------------------
-----------------------------------------------------------------  
INSERT INTO insemina(n_colegiado,n_crotal,Lote,Fecha)
       VALUES ('100132','0008','ab12349','2001-08-29');
INSERT INTO insemina(n_colegiado,n_crotal,Lote,Fecha)
       VALUES ('100132','0004','ab12346','2003-10-08');
INSERT INTO insemina(n_colegiado,n_crotal,Lote,Fecha)
       VALUES ('100132','0010','ab12345','2004-03-12');
INSERT INTO insemina(n_colegiado,n_crotal,Lote,Fecha)
       VALUES ('100132','0007','ab12347','2005-02-09');
INSERT INTO insemina(n_colegiado,n_crotal,Lote,Fecha)
       VALUES ('100132','0008','ab12348','2007-05-05');

-----------------------------------------------------------------
---------------------------pare----------------------------------
-----------------------------------------------------------------  
INSERT INTO pare(n_crotal_hijo,n_crotal_madre,incidencias)
       VALUES ('0004','0010','ninguna');
INSERT INTO pare(n_crotal_hijo,n_crotal_madre,incidencias)
       VALUES ('0004','0011','ninguna');
INSERT INTO pare(n_crotal_hijo,n_crotal_madre,incidencias)
       VALUES ('0007','0008','ninguna');
INSERT INTO pare(n_crotal_hijo,n_crotal_madre,incidencias)
       VALUES ('0007','0101','ninguna');
INSERT INTO pare(n_crotal_hijo,n_crotal_madre,incidencias)
       VALUES ('0010','0100','ninguna');

-----------------------------------------------------------------
---------------------------posee----------------------------------
-----------------------------------------------------------------  
INSERT INTO posee(n_crotal,Cod)
       VALUES ('0001','0000001');
INSERT INTO posee(n_crotal,Cod)
       VALUES ('0003','0000002');
INSERT INTO posee(n_crotal,Cod)
       VALUES ('0100','0000003');
INSERT INTO posee(n_crotal,Cod)
       VALUES ('0102','0000004');
INSERT INTO posee(n_crotal,Cod)
       VALUES ('0006','0000005');
INSERT INTO posee(n_crotal,Cod)
       VALUES ('0100','0000004');
INSERT INTO posee(n_crotal,Cod)
       VALUES ('0102','0000001');
INSERT INTO posee(n_crotal,Cod)
       VALUES ('0006','0000003');
---------------------------------------------------------------------------
---------------------------------------------posee---------------------------
-----------------------------------------------------------------------   
INSERT INTO se_transforma(n_crotal_antiguo,n_crotal_nuevo,Fecha,Motivo)
       VALUES ('2001','0001','1999-04-24','Se comio el crotal un pajaro mutante');
INSERT INTO se_transforma(n_crotal_antiguo,n_crotal_nuevo,Fecha,Motivo)
       VALUES ('2002','0002','1998-04-24','Un centenar de buitres atacaron al animal y se comiron solamnte su crotal(y los ojos)');
INSERT INTO se_transforma(n_crotal_antiguo,n_crotal_nuevo,Fecha,Motivo)
       VALUES ('2003','0003','1899-04-24','Reencarnacion del animal');
INSERT INTO se_transforma(n_crotal_antiguo,n_crotal_nuevo,Fecha,Motivo)
       VALUES ('2005','0004','1999-12-31','Efecto 2000');
INSERT INTO se_transforma(n_crotal_antiguo,n_crotal_nuevo,Fecha,Motivo)
       VALUES ('2004','0005','1906-06-06','El crotal se derritio al encontrar el animal un isotopo de uranio radioactivo
               (posteriormente se vendio a Iran,el isotopo digo)');
---------------------------------------------------------------------------------------------------

-----3-----
UPDATE VETERINARIO SET movil = '+34-666551734' where n_colegiado='100132';
-----4-----
UPDATE ANIMAL SET n_crotal = '300' where n_crotal='0005';
-----5-----
SELECT ANIMAL.n_crotal,ANIMAL.nombre,RAZA.Nombre,ANIMAL.tipo
FROM ANIMAL,pertenece,RAZA
WHERE (ANIMAL.n_crotal=pertenece.n_crotal and pertenece.cod=RAZA.Cod) IN (
      SELECT n_crotal
      FROM insemina,monta
      WHERE ((CURRENT_DATE<=DATE_SUB(insemina.Fecha,INTERVAL 280 DAY))
             OR ((monta.EXITO = 'ok') AND 
             (CURRENT_DATE <= DATE_SUB(monta.Fecha,INTERVAL 280 DAY)))));




SELECT count( * ) AS montas, SEMENTAL_n_crotal, ANIMAL.nombre
FROM  monta, ANIMAL
WHERE ANIMAL.n_crotal=SEMENTAL_n_crotal
GROUP BY SEMENTAL_n_crotal
ORDER BY  montas DESC, ANIMAL.Nombre ASC
;
------------------------------------------------------



