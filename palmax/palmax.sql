/* Parto del basico y luego modifico */
CREATE DATABASE explotacion1;

USE explotacion1;

CREATE TABLE RAZA (
      Cod                 varchar(16),
      Nombre              varchar(32),
      Caracteristicas     varchar(255),
      Descripcion         varchar(255),
      PRIMARY KEY (Cod)
);


CREATE TABLE ANIMAL (
      n_crotal            varchar(32),
      sexo                varchar(8),
      fecha_nacimiento    date,
      lugar_nacimiento    varchar(32),
      tipo                varchar(8),
      n_crotal_padre      varchar(32),
      PRIMARY KEY (n_crotal),
      FOREIGN KEY (n_crotal_padre) REFERENCES SEMENTAL (n_crotal)
);



CREATE TABLE pertenece (
      n_crotal            varchar(32),
      Cod                 varchar(16),
      PRIMARY KEY (n_crotal,Cod),
      FOREIGN KEY (n_crotal) REFERENCES ANIMAL (n_crotal),
      FOREIGN KEY (Cod) REFERENCES RAZA (Cod)
);
/* Mas tarde haremos sus restricciones */


CREATE TABLE se_transforma (
      n_crotal_antiguo varchar(32),
      n_crotal_nuevo   varchar(32),
      Fecha            date,
      Motivo           varchar(255),
      PRIMARY KEY (n_crotal_antiguo, n_crotal_nuevo),
      FOREIGN KEY (n_crotal_antiguo) REFERENCES ANIMAL (n_crotal),
      FOREIGN KEY (n_crotal_nuevo) REFERENCES ANIMAL (n_crotal)
);

/* Mas tarde haremos sus restricciones */


CREATE TABLE VACA (
      calidad_leche    varchar(16),
      Peso             int,
      capacidad_lactea int,
      n_crotal         varchar(32),
      PRIMARY KEY (n_crotal),
      FOREIGN KEY (n_crotal) REFERENCES ANIMAL (n_crotal)
);


CREATE TABLE pare (
      n_crotal_hijo  varchar(32),
      n_crotal_madre varchar(32),
      incidencias    varchar(255),
      PRIMARY KEY (n_crotal_hijo, n_crotal_madre),
      FOREIGN KEY (n_crotal_hijo) REFERENCES ANIMAL (n_crotal),
      FOREIGN KEY (n_crotal_madre) REFERENCES ANIMAL (n_crotal)
);


CREATE TABLE SEMENTAL (
      n_crotal       varchar(32),
      calidad_semen  varchar(16),
      Largo          int,
      Alto           int,
      PRIMARY KEY (n_crotal),
      FOREIGN KEY (n_crotal) REFERENCES ANIMAL (n_crotal)
);


CREATE TABLE monta (
      VACA_n_crotal     varchar(32),
      SEMENTAL_n_crotal varchar(32),
      Fecha             date,
      exito             varchar(8),
      incidencias       varchar(255),
      PRIMARY KEY (VACA_n_crotal,SEMENTAL_n_crotal,Fecha),
      FOREIGN KEY (VACA_n_crotal) REFERENCES VACA (n_crotal),
      FOREIGN KEY (SEMENTAL_n_crotal) REFERENCES SEMENTAL (n_crotal)
);


CREATE TABLE CARACTERISTICAS_CRIA (
      Cod         varchar(16),
      Nombre      varchar(16),
      Descripcion varchar(255),
      PRIMARY KEY (Cod)
);


CREATE TABLE posee (
      Cod       varchar(16),
      n_crotal  varchar(32),
      PRIMARY KEY (Cod,n_crotal),
      FOREIGN KEY (Cod) REFERENCES CARACTERISTICAS_CRIA (Cod),
      FOREIGN KEY (n_crotal) REFERENCES SEMENTAL (n_crotal)
);
/* Luego haremos sus restricciones */


CREATE TABLE VETERINARIO (
      n_colegiado varchar(32),
      Nombre      varchar(32),
      telefono    varchar(16),
      movil       varchar(16),
      direccion   varchar(255),
      PRIMARY KEY (n_colegiado)
);
-- Tiene logica poner algun atributo a nulo ya que quizas no lo sepamos aun


CREATE TABLE PROVEEDOR (
      codP      varchar(32),
      Nombre    varchar(255),
      Telefono  varchar(16),
      direccion varchar(255),
      PRIMARY KEY (codP)
);

CREATE TABLE EXTRACCION (
      codEx       varchar(16),
      Fecha       date,
      Incidencias varchar(255),
      n_colegiado varchar(32),
      n_crotal    varchar(32),
      PRIMARY KEY (codEx),
      FOREIGN KEY (n_colegiado) REFERENCES VETERINARIO (n_colegiado)
         ON DELETE SET NULL -- Mejor tener algo que no tener nada <- Manu RESTR
         ON UPDATE CASCADE, -- Si cambio el numero de colegiado => cambiar aki
      FOREIGN KEY (n_crotal) REFERENCES SEMENTAL (n_crotal)
         ON DELETE SET NULL -- Mejor tener algo que no tener nada <- Manu CASC
         ON UPDATE CASCADE -- Si cambio el codigo del proveedor => cambiar aki
);

CREATE TABLE UNIDAD_SEMEN (
      Lote            varchar(16),
      fecha_obtencion date,
      calidad         varchar(16),
      fecha_validez   date,
      codEx           varchar(16),
         UNIQUE(codEx),
      PRIMARY KEY (Lote),
      FOREIGN KEY (codEx) REFERENCES EXTRACCION (codEx)
         ON DELETE SET NULL -- Mejor tener algo que no tener nada
         ON UPDATE CASCADE -- Si cambio el codigo del proveedor => cambiar aki
);
/*
DELIMITER |

CREATE TRIGGER insert_unidad_semen AFTER INSERT ON unidad_semen
  FOR EACH ROW BEGIN
    IF ((NEW.fecha_validez != NULL) AND  -- kizas no sepamos la fecha_validez
        (NEW.fecha_obtencion > NEW.fecha_validez)) then
      drop; -- desestimar la peticion si la fecha de obtencion es despues
    END IF
  END
|

DELIMITER ;
*/


CREATE TABLE suministra (
      codP  varchar(32),
      Lote  varchar(16),
      coste int,
      PRIMARY KEY (codP,Lote),
      FOREIGN KEY (codP) REFERENCES PROVEEDOR (codP)
         --  ON DELETE SET NULL -- PK NO PUEDE SER NULO! <- Manu CASCADE
         ON UPDATE CASCADE, -- Si cambio el codigo del proveedor => cambiar aki
      FOREIGN KEY (Lote) REFERENCES UNIDAD_SEMEN (Lote)
         --  ON DELETE SET NULL -- PK NO PUEDE SER NULO! <- Manu CASCADE
         ON UPDATE CASCADE -- Si cambio el codigo del proveedor => cambiar aki
);
/* Hace falta el trigger para que cuando se a a insertar uno compruebe que ya
   no existe otro proveedor con el mismo codP en la tabla suministra */

CREATE TABLE insemina (
      n_colegiado varchar(32),
      n_crotal    varchar(32),
      Lote        varchar(16),
      Fecha       date,
      PRIMARY KEY (n_colegiado,n_crotal,Lote,Fecha),
      FOREIGN KEY (n_colegiado) REFERENCES VETERINARIO (n_colegiado),
      FOREIGN KEY (n_crotal) REFERENCES VACA (n_crotal),
      FOREIGN KEY (Lote) REFERENCES UNIDAD_SEMEN (Lote)
);
/* Las restricciones son complejas, se realizaran mas tarde */