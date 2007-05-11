/* 1 */
ALTER TABLE ANIMAL ADD Nombre VARCHAR(16);
/* 2 */
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
                 ('6','Alistana','pecho ancho profundo, musculado al igual que el resto del cuerpo.Mucosas negras con orla blanca, Color castaña','Origen Cantabria, España');

--7
----------------------------------------------------------------------------------------------
----------------------------------TABLA ANIMAL------------------------------------------------
----------------------------------------------------------------------------------------------
---------------TOROS:
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0001','pipu','macho','0000-00-00','Navalcarnero','Carne',NULL);
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0002','Campanero','macho','1985-10-25','Madrid','Carne',"0001");
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0003','Topogigio','macho','1969-06-09','La Villa Visiosa','Semental',"0001");
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0006','Ferdinando','macho','1938-02-23','La Dehesa de la Villa','Semental',NULL);
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0011','Can','macho','1999-05-07',NULL,'Carne',NULL);
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0100','Sambo','macho','1984-11-02','Lima','Semental','0006');
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0101','Bandit','macho','1990-03-10','Trujillo','Semental',NULL);
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0102','Bulek','macho','1990-05-20','Berlin','Semental',NULL);


--15
---------------VACAS:
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0004',"Keorsa","hembra",'1984-04-28','Chimbote','Lechera','0006');
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0005',"Rubi","hembra",'1984-11-09','Arequipa','Lechera','0003');
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0007','Camila','hembra','2001-04-21','Miraflores,Madid,España','Lechera','0003');
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0008','Caloway','hembra','2004-01-22','Londres,Inglaterra','Lechera','0009');
INSERT INTO ANIMAL (n_crotal,nombre,sexo,fecha_nacimiento,lugar_nacimiento,tipo,n_crotal_padre)
    VALUES ('0010','Marga','hembra','2005-01-22','Leon,C.Leon,España','Lechera','0003');
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
-----------------------------------TABLA SEMENTAL---------------------------------------------
----------------------------------------------------------------------------------------------

INSERT INTO SEMENTAL (n_crotal,calidad_semen,largo,alto)
            VALUES ('0101','Regular',1.30,1.07);
INSERT INTO SEMENTAL (n_crotal,calidad_semen,largo,alto)
            VALUES ('0102','Buena',1.40,1.10);
INSERT INTO SEMENTAL (n_crotal,calidad_semen,largo,alto)
            VALUES ('0100','Excelente',1.35,1.06);
INSERT INTO SEMENTAL (n_crotal,calidad_semen,largo,alto)
            VALUES ('0003','Buena',1.34,1.09);
INSERT INTO SEMENTAL (n_crotal,calidad_semen,largo,alto)
            VALUES ('0006','Excelente',1.30,1.12);

--30
----------------------------------------------------------------------------------------------
-----------------------------------TABLA VETERINARIO------------------------------------------
----------------------------------------------------------------------------------------------

INSERT INTO VETERINARIO (n_colegiado,Nombre,telefono,movil,direccion)
       VALUES ('100132','Elena','91-4298472','+34-698337257','C/ Toro 12 2 D,Madrid,Espany');
INSERT INTO VETERINARIO (n_colegiado,Nombre,telefono,movil,direccion)
       VALUES ('170132','Andres','92-1298472','+34-626873214','C/ Cuerno');
INSERT INTO VETERINARIO (n_colegiado,Nombre,telefono,movil,direccion)
       VALUES ('500132','Cesar','92-39743894','+34-666112233','Pso Prado 45');
INSERT INTO VETERINARIO (n_colegiado,Nombre,telefono,movil,direccion)
       VALUES ('800121','Rodrigo','91-8294472','+34-628345219','C/Trote');
INSERT INTO VETERINARIO (n_colegiado,Nombre,telefono,movil,direccion)
       VALUES ('170131','Roberto','97-7278912','+34-612783314','C/Luciernaga');






------------------------------------------------------------------

----------------------------------------------------------------------------------------------
-----------------------------------TABLA PROVEEDOR--------------------------------------------
----------------------------------------------------------------------------------------------
INSERT INTO PROVEEDOR (codP,Nombre,Telefono,direccion)
       VALUES ('357590','Livestock Improvement Corporation','+64 7 856 0700 ','Hamilton 2021 Nueva Zelanda');

INSERT INTO PROVEEDOR (codP,Nombre,Telefono,direccion)
       VALUES ('446681','Agricultural & Fishery Marketing Co','+82 2 6300 1404','aT Center 232,
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
       VALUES ('x56789','2006-09-14',
       'El veterinario perdio un brazo y parte de la pierna','170131','0003');
INSERT INTO EXTRACCION (codEx,Fecha,Incidencias,n_colegiado,n_crotal)
       VALUES ('x56793','2006-09-15',
       'El toro quedo exhausto, durmio los siguientes tres dias','170131','0002');
INSERT INTO EXTRACCION (codEx,Fecha,Incidencias,n_colegiado,n_crotal)
       VALUES ('x56791','2006-09-06',
       'Apenas se lleno un bote','190234','0001');
INSERT INTO EXTRACCION (codEx,Fecha,Incidencias,n_colegiado,n_crotal)
       VALUES ('x56790','2006-09-14',
       'Ninguna','500132','0003');
INSERT INTO EXTRACCION (codEx,Fecha,Incidencias,n_colegiado,n_crotal)
       VALUES ('x56792','2006-09-14','Ninguna','5001321','0003');





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
            VALUES ('0000001','grupa','parte posterior del animal');
INSERT INTO CARACTERISTICAS_CRIA (Cod, Nombre, Descripcion)
            VALUES ('0000002','tamanyo','alta');
INSERT INTO CARACTERISTICAS_CRIA (Cod, Nombre, Descripcion)
            VALUES ('0000003','cintura','ancha');
INSERT INTO CARACTERISTICAS_CRIA (Cod, Nombre, Descripcion)
            VALUES ('0000004','cabeza','achatada');
INSERT INTO CARACTERISTICAS_CRIA (Cod, Nombre, Descripcion)
            VALUES ('0000005','grupa_alta','alta');
--55


----------------------------
--12-------------------------
CREATE TABLE PARTO (
                    n_crotal          varchar(32),
                    fecha_prev_parto  date,
                    fecha_min_parto   date,
                    fecha_max_parto   date,
          PRIMARY KEY (n_crotal)
);
------13---------------------

/*
DELIMITER .

CREATE TRIGGER insertar_parto AFTER INSERT ON monta
  FOR EACH ROW BEGIN 
    INSERT INTO PARTO SET n_crotal = NEW.VACA_n_crotal;
  END .

DELIMITER ;
*/



DELIMITER |

CREATE TRIGGER insert_parto BEFORE INSERT ON monta
  FOR EACH ROW BEGIN
    INSERT INTO PARTO SET n_crotal = NEW.VACA_n_crotal,
                          fecha_prev_parto = DATE_ADD(NEW.Fecha,INTERVAL 280 DAY),
                          fecha_min_parto =  DATE_ADD(NEW.Fecha,INTERVAL 290 DAY),
                          fecha_max_parto = NEW.Fecha;
  END
|

DELIMITER ;

INSERT INTO monta VALUES ('0100','0001','1800-02-21','ok','no');
