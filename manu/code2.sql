drop database explotacion1;

CREATE DATABASE explotacion1;

USE explotacion1;

CREATE TABLE RAZA (
      Cod                 varchar(16),
      Nombre              varchar(32) NOT NULL,
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
     CHECK (sexo ='macho' OR sexo='hembra')
);



CREATE TABLE pertenece (
      n_crotal            varchar(32),
      Cod                 varchar(16),
      PRIMARY KEY (n_crotal,Cod),
      FOREIGN KEY (n_crotal) REFERENCES ANIMAL (n_crotal)
       ON DELETE  CASCADE
       ON UPDATE  CASCADE,
      FOREIGN KEY (Cod) REFERENCES RAZA (Cod)
	ON DELETE  RESTRICT  /*hay que ablandar la restriccion*/
        ON UPDATE  CASCADE

);
--ALTER TABLE pertenece ADD CONSTRAINT
--      CHECK (NOT EXISTS
--            (SELECT * FROM ANIMAL
--             WHERE n_crotal NOT IN (SELECT n_crotal FROM pertenece)
--          ));

CREATE TABLE se_transforma (
      n_crotal_antiguo varchar(32),
      n_crotal_nuevo   varchar(32),
      Fecha            date,
      Motivo           varchar(255),
	UNIQUE(n_crotal_antiguo),
      PRIMARY KEY (n_crotal_antiguo, n_crotal_nuevo),
      FOREIGN KEY (n_crotal_antiguo) REFERENCES ANIMAL (n_crotal)
        ON DELETE  CASCADE
        ON UPDATE  CASCADE,
      FOREIGN KEY (n_crotal_nuevo) REFERENCES ANIMAL (n_crotal)
        ON DELETE  CASCADE
        ON UPDATE  CASCADE
);

/* Mas tarde haremos sus restricciones */


CREATE TABLE VACA (
      calidad_leche    varchar(16),
      Peso             int,
      capacidad_lactea int,
      n_crotal         varchar(32),
      PRIMARY KEY (n_crotal),
      FOREIGN KEY (n_crotal) REFERENCES ANIMAL (n_crotal)
        ON DELETE  CASCADE
        ON UPDATE  CASCADE
);


CREATE TABLE pare (
      n_crotal_hijo  varchar(32),
      n_crotal_madre varchar(32),
      incidencias    varchar(255),
      PRIMARY KEY (n_crotal_hijo, n_crotal_madre),
      FOREIGN KEY (n_crotal_hijo) REFERENCES ANIMAL (n_crotal)
	ON DELETE  CASCADE
        ON UPDATE  CASCADE,
      FOREIGN KEY (n_crotal_madre) REFERENCES ANIMAL (n_crotal)
	ON DELETE  RESTRICT
        ON UPDATE  CASCADE /* La madre puede cambiar de crotal**/
);


CREATE TABLE SEMENTAL (
      n_crotal       varchar(32),
      calidad_semen  varchar(16),
      Largo          int,
      Alto           int,
      PRIMARY KEY (n_crotal),
      FOREIGN KEY (n_crotal) REFERENCES ANIMAL (n_crotal)
	ON DELETE  CASCADE
        ON UPDATE  CASCADE
);


ALTER TABLE ANIMAL ADD FOREIGN KEY  (n_crotal_padre) REFERENCES SEMENTAL (n_crotal)
	ON DELETE  CASCADE
        ON UPDATE  CASCADE;


CREATE TABLE monta (
      VACA_n_crotal     varchar(32),
      SEMENTAL_n_crotal varchar(32),
      Fecha             date,
      exito             varchar(8),
      incidencias       varchar(255),
      PRIMARY KEY (VACA_n_crotal,SEMENTAL_n_crotal,Fecha),
      FOREIGN KEY (VACA_n_crotal) REFERENCES VACA (n_crotal)
	ON DELETE  CASCADE
        ON UPDATE  CASCADE,
      FOREIGN KEY (SEMENTAL_n_crotal) REFERENCES SEMENTAL (n_crotal)
	ON DELETE  RESTRICT
        ON UPDATE  CASCADE
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
      FOREIGN KEY (Cod) REFERENCES CARACTERISTICAS_CRIA (Cod)
	ON DELETE  CASCADE
        ON UPDATE  CASCADE,
      FOREIGN KEY (n_crotal) REFERENCES SEMENTAL (n_crotal)
	ON DELETE  RESTRICT /*Ablandar tb*/
        ON UPDATE  CASCADE
);
--ALTER TABLE posee ADD CONSTRAINT
-- CHECK (NOT EXISTS
--              (SELECT * FROM SEMENTAL
--             WHERE n_crotal NOT IN (SELECT n_crotal FROM posee)
--          ))
--;
/* Luego haremos sus restricciones */


CREATE TABLE VETERINARIO (
      n_colegiado varchar(32),
      Nombre      varchar(32),
      telefono    varchar(16),
      movil       varchar(16),
      direccion   varchar(255),
      PRIMARY KEY (n_colegiado)
);


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
       ON DELETE  RESTRICT
       ON UPDATE  CASCADE,
      FOREIGN KEY (n_crotal) REFERENCES SEMENTAL (n_crotal)
       ON DELETE  CASCADE
       ON UPDATE  CASCADE
);


CREATE TABLE UNIDAD_SEMEN (
      Lote            varchar(16),
      fecha_obtencion date,
      calidad         varchar(16),
      fecha_validez   date,
      codEx       varchar(16),
      PRIMARY KEY (Lote),
      FOREIGN KEY (codEx) REFERENCES EXTRACCION (codEx)
       ON DELETE  SET NULL
       ON UPDATE  CASCADE
);


CREATE TABLE suministra (
      codP  varchar(32),
      Lote  varchar(16),
      coste int,
      PRIMARY KEY (codP,Lote),
      FOREIGN KEY (codP) REFERENCES PROVEEDOR (codP)
       ON DELETE  CASCADE
       ON UPDATE  CASCADE,
      FOREIGN KEY (Lote) REFERENCES UNIDAD_SEMEN (Lote)
       ON DELETE  CASCADE
       ON UPDATE  CASCADE
);

CREATE TABLE insemina (
      n_colegiado varchar(32),
      n_crotal    varchar(32),
      Lote        varchar(16),
      Fecha       date,
      PRIMARY KEY (n_colegiado,n_crotal,Lote,Fecha),
      FOREIGN KEY (n_colegiado) REFERENCES VETERINARIO (n_colegiado)
       ON  DELETE  RESTRICT
       ON UPDATE  CASCADE,
      FOREIGN KEY (n_crotal) REFERENCES VACA (n_crotal)
       ON DELETE  CASCADE
       ON UPDATE  CASCADE,
      FOREIGN KEY (Lote) REFERENCES UNIDAD_SEMEN (Lote)
       ON DELETE  CASCADE
       ON UPDATE  CASCADE
);

/* Las restricciones son complejas, se realizaran mas tarde */







