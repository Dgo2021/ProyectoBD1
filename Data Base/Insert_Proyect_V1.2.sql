/*==============================================================*/
/* INSERT: DEPARTAMENTO                                         */
/*==============================================================*/

INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('GUATEMALA');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('PETEN');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('IZABAL');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('ALTA VERAPAZ');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('QUICHE');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('HUEHUETENANGO');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('ESCUINTLA');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('SAN MARCOS');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('JUTIAPA');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('BAJA VERAPAZ');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('SANTA ROSA');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('ZACAPA');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('SUCHITEPEQUEZ');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('CHIQUIMULA');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('JALAPA');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('CHIMALTENANGO');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('QUETZALTENANGO');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('EL PROGRESO');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('RETALHULEU');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('SOLOLA');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('TOTONICAPAN');
INSERT INTO DEPARTAMENTO (DEPARTAMENTO) VALUES ('SACATEPEQUEZ');

/*==============================================================*/
/* INSERT: CLINICA                                              */
/*==============================================================*/

INSERT INTO CLINICA (IDDEPARTAMENTO, CLINICA, DIRECCION ) 
VALUES (1, 'GUATEMALA 01', 'ZONA 1');

/*==============================================================*/
/* INSERT: AREA                                                 */
/*==============================================================*/
INSERT INTO AREA (IDCLINICA, AREA) VALUES (1,'FISIOTERAPIA TRAUMATOLOGICA');
INSERT INTO AREA (IDCLINICA, AREA) VALUES (1,'FISIOTERAPIA ORTEPEDICA');
INSERT INTO AREA (IDCLINICA, AREA) VALUES (1,'FISIOTERAPIA DEPORTIVA');
INSERT INTO AREA (IDCLINICA, AREA) VALUES (1,'FISIOTERAPIA GERIATRICA');
INSERT INTO AREA (IDCLINICA, AREA) VALUES (1,'FISIOTERAPIA NEUROLOGICA');
INSERT INTO AREA (IDCLINICA, AREA) VALUES (1,'FISIOTERAPIA CARDIOPULMONAR');
INSERT INTO AREA (IDCLINICA, AREA) VALUES (1,'FISIOTERAPIA OBSTETRICA');
INSERT INTO AREA (IDCLINICA, AREA) VALUES (1,'FISIOTERAPIA REUMATOLOGICA');
INSERT INTO AREA (IDCLINICA, AREA) VALUES (1,'FISIOTERAPIA RESPIRATORIA');
INSERT INTO AREA (IDCLINICA, AREA) VALUES (1,'FISIOTERAPIA PEDIATRICA');
INSERT INTO AREA (IDCLINICA, AREA) VALUES (1,'FISIOTERAPIA ODONTOLOGICA');
INSERT INTO AREA (IDCLINICA, AREA) VALUES (1,'FISIOTERAPIA CARDIOVASCULAR');




/*==============================================================*/
/* INSERT: AGENDA_ESTADO                                              */
/*==============================================================*/

INSERT INTO AGENDA_ESTADO (estado) VALUES ('REALIZADO');
INSERT INTO AGENDA_ESTADO (estado) VALUES ('PAGADO');
INSERT INTO AGENDA_ESTADO (estado) VALUES ('CANCELADO');
INSERT INTO AGENDA_ESTADO (estado) VALUES ('REAGENDADO');
INSERT INTO AGENDA_ESTADO (estado) VALUES ('PENDIENTE');
INSERT INTO AGENDA_ESTADO (estado) VALUES ('AUSENTE');
INSERT INTO AGENDA_ESTADO (estado) VALUES ('CONFIRMADO');

/*==============================================================*/
/* INSERT: PERSONA                                              */
/*==============================================================*/

INSERT INTO PERSONA (NOMBRES,APELLIDOS,FECHA_NACIMIENTO,IDENTIFICACION,NIT,GENERO,TELEFONO1,telefono2) 
VALUES ('MIGUEL','GARCIA', TO_DATE('01/01/1995', 'mm/dd/yyyy'),'1234567891012','123K','M','12345678','12345678');
INSERT INTO PERSONA (NOMBRES,APELLIDOS,FECHA_NACIMIENTO,IDENTIFICACION,NIT,GENERO,TELEFONO1,telefono2) 
VALUES ('JAVIER','SOLORZANO',TO_DATE('02/03/1998','mm/dd/yyyy'),'5412345654101','12356K','M','12987678','54198678');
INSERT INTO PERSONA (NOMBRES,APELLIDOS,FECHA_NACIMIENTO,IDENTIFICACION,NIT,GENERO,TELEFONO1,telefono2) 
VALUES ('BRENDA','SOLARES',TO_DATE('05/08/1990','mm/dd/yyyy'),'1987654101254','1235654','F','18788678','19568678');
INSERT INTO PERSONA (NOMBRES,APELLIDOS,FECHA_NACIMIENTO,IDENTIFICACION,NIT,GENERO,TELEFONO1) 
VALUES ('ASTRID','FLORES',TO_DATE('07/12/1999','mm/dd/yyyy'),'1987651234254','12456547','F','18788678');
INSERT INTO PERSONA (NOMBRES,APELLIDOS,FECHA_NACIMIENTO,IDENTIFICACION,NIT,GENERO,TELEFONO1,telefono2) 
VALUES ('GABRIELA','ZEPEDA',TO_DATE('09/09/1999','mm/dd/yyyy'),'1981231234254','1287654','F','18788678','65498732');
INSERT INTO PERSONA (NOMBRES,APELLIDOS,FECHA_NACIMIENTO,IDENTIFICACION,NIT,GENERO,TELEFONO1) 
VALUES ('ROXANA','ZETINO',TO_DATE('08/11/1997','mm/dd/yyyy'),'8787651234254','16556541','F','78788678');
INSERT INTO PERSONA (NOMBRES,APELLIDOS,FECHA_NACIMIENTO,IDENTIFICACION,NIT,GENERO,TELEFONO1,telefono2) 
VALUES ('DARLYN','MENDEZ',TO_DATE('10/05/1980','mm/dd/yyyy'),'1987981234254','6545654','F','98788678','65498798');
INSERT INTO PERSONA (NOMBRES,APELLIDOS,FECHA_NACIMIENTO,IDENTIFICACION,NIT,GENERO,TELEFONO1) 
VALUES ('CRISTOPHER','CUYUN',TO_DATE('01/10/1994','mm/dd/yyyy'),'1987651239874','12986549','M','18788578');
INSERT INTO PERSONA (NOMBRES,APELLIDOS,FECHA_NACIMIENTO,IDENTIFICACION,NIT,GENERO,TELEFONO1,telefono2) 
VALUES ('ANGEL','GALVEZ',TO_DATE('08/08/1998','mm/dd/yyyy'),'1987651233214','1245984','M','18788678','65465456');
INSERT INTO PERSONA (NOMBRES,APELLIDOS,FECHA_NACIMIENTO,IDENTIFICACION,NIT,GENERO,TELEFONO1) 
VALUES ('MARIO','PINEDA',TO_DATE('09/09/1999','mm/dd/yyyy'),'1987651236544','12498748','M','18788678');
INSERT INTO PERSONA (NOMBRES, APELLIDOS, FECHA_NACIMIENTO, IDENTIFICACION, NIT, GENERO, TELEFONO1) 
VALUES ('JOSE','DARDON',TO_DATE('09/07/2003','mm/dd/yyyy'),'1234565214785','12345K','M','12345875');

/*==============================================================*/
/* INSERT: ROL                                                  */
/*==============================================================*/

INSERT INTO ROL (ROL) VALUES ('ADMINISTRADOR');
INSERT INTO ROL (ROL) VALUES ('EMPLEADO');
INSERT INTO ROL (ROL) VALUES ('SECRETARIA');



/*==============================================================*/
/* INSERT: EMPLEADO                                             */
/*==============================================================*/

INSERT INTO EMPLEADO (IDPERSONA, IDCLINICA, IDROL, CONTRASENIA, EMAIL) 
VALUES (1,1,1, '12345', 'ADMIN@PROYECTO.COM');
