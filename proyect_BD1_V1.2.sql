/*==============================================================*/
/* Proyect: DATA BASE 1                                         */
/*==============================================================*/


/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   idpersona           NUMBER(10)           GENERATED by default on null as IDENTITY,
   primerNombre        VARCHAR2(50)         not null,
   segundoNombre       VARCHAR2(50)         not null,
   primerApellido      VARCHAR2(50)         not null,
   segundoApellido     VARCHAR2(50)         not null,
   fechaNacimiento     DATE                 not null,
   identificacion      NUMBER(13)           not null,
   nit                 VARCHAR2(10)         ,
   estadoCivil         VARCHAR2(15)         not null,
   genero              VARCHAR2(1) check (genero in('F','M')) not null,
   telefono1           NUMBER(8)            not null,
   telefono2           NUMBER(8)            ,
   constraint PK_PERSONA primary key (idpersona)
);


/*==============================================================*/
/* SEQUENCE: PERSONA                                            */
/*==============================================================*/
CREATE SEQUENCE SQC_PERSONA
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1;


/*==============================================================*/
/* Table: SERVICIO                                              */
/*==============================================================*/
create table SERVICIO (
   idservicio           NUMBER(10)            GENERATED by default on null as IDENTITY,
   servicio             VARCHAR2(200)         not null,
   precio               NUMBER(10,2)          not null,
   constraint PK_SERVICIO primary key (idservicio)
);


/*==============================================================*/
/* SEQUENCE: SERVICIO                                           */
/*==============================================================*/
CREATE SEQUENCE SQC_SERVICIO
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1;


/*==============================================================*/
/* Table: AREA                                                  */
/*==============================================================*/
create table AREA (
   idarea               NUMBER(10)            GENERATED by default on null as IDENTITY,
   idservicio           NUMBER(10)            not null,
   area                 VARCHAR2(200)         not null,
   constraint PK_AREA primary key (idarea)
);


/*==============================================================*/
/* SEQUENCE: AREA                                               */
/*==============================================================*/
CREATE SEQUENCE SQC_AREA
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1;


/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO (
   iddepartamento       NUMBER(10)            GENERATED by default on null as IDENTITY,
   departamento         VARCHAR2(200)         not null,
   constraint PK_DEPARTAMENTO primary key (iddepartamento)
);


/*==============================================================*/
/* SEQUENCE: DEPARTAMENTO                                       */
/*==============================================================*/
CREATE SEQUENCE SQC_DEPARTAMENTO
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1;


/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   idfactura            NUMBER(10)           GENERATED by default on null as IDENTITY,
   fechaEmision        DATE                  not null,
   nit                  VARCHAR2(10)         not null,
   razonSocial         VARCHAR2(100)         not null,
   total                NUMBER(10,2)         not null,
   constraint PK_FACTURA primary key (idfactura)
);


/*==============================================================*/
/* SEQUENCE: FACTURA                                            */
/*==============================================================*/
CREATE SEQUENCE SQC_FACTURA
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1;


/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   idcliente            NUMBER(10)            GENERATED by default on null as IDENTITY,
   idpersona            NUMBER(10)            not null,
   constraint PK_CLIENTE primary key (idcliente),
   constraint FK_CLIENTE_PERSONA foreign key (idpersona) references PERSONA(idpersona)
);


/*==============================================================*/
/* SEQUENCE: CLIENTE                                            */
/*==============================================================*/
CREATE SEQUENCE SQC_CLIENTE
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1;


/*==============================================================*/
/* Table: CLINICA                                               */
/*==============================================================*/
create table CLINICA (
   idclinica            NUMBER(10)            GENERATED by default on null as IDENTITY,
   iddepartamento       NUMBER(10)            not null,
   clinica              VARCHAR2(300)         not null,
   direccion            VARCHAR2(300)         not null,
   constraint PK_CLINICA primary key (idclinica),
   constraint FK_CLINICA_DEPTO foreign key (iddepartamento) references DEPARTAMENTO(iddepartamento)
);


/*==============================================================*/
/* SEQUENCE: CLINICA                                            */
/*==============================================================*/
CREATE SEQUENCE SQC_CLINICA
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1;


/*==============================================================*/
/* Table: AREAS_CLINICA                                         */
/*==============================================================*/
create table AREAS_CLINICA (
   idarea               NUMBER(10)            GENERATED by default on null as IDENTITY,
   idclinica            NUMBER(10)            GENERATED by default on null as IDENTITY,
   constraint PK_AREAS_CLINICA primary key (idarea, idclinica),
   constraint FK_AREACLINICA_CLINICA foreign key (idclinica) references CLINICA(idclinica),
   constraint FK_AREACLINICA_AREA foreign key (idarea) references AREA(idarea)
);


/*==============================================================*/
/* SEQUENCE: AREAS_CLINICA                                      */
/*==============================================================*/
CREATE SEQUENCE SQC_AREAS_CLINICA
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1;


/*==============================================================*/
/* Table: AREA_SERVICIOS                                        */
/*==============================================================*/
create table AREA_SERVICIOS (
   idarea               NUMBER(10)            GENERATED by default on null as IDENTITY,
   idservicio           NUMBER(10)            GENERATED by default on null as IDENTITY,
   constraint PK_AREA_SERVICIOS primary key (idarea, idservicio),
   constraint FK_AREASERVICIOS_SERVICIO foreign key (idservicio) references SERVICIO(idservicio),
   constraint FK_AREASERVICIOS_AREA foreign key (idarea) references AREA(idarea)
);


/*==============================================================*/
/* SEQUENCE: AREA_SERVICIOS                                     */
/*==============================================================*/
CREATE SEQUENCE SQC_AREA_SERVICIOS
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1;


/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   idempleado           NUMBER(10)            GENERATED by default on null as IDENTITY,
   idpersona            NUMBER(10)            not null,
   idclinica            NUMBER(10)            not null,
   fecha_ingreso        DATE                  not null,
   puesto               VARCHAR2(100)         not null,
   constraint PK_EMPLEADO primary key (idempleado),
   constraint FK_EMPLEADO_CLINICA foreign key (idclinica) REFERENCES CLINICA(idclinica),
   constraint FK_EMPLEADO_PERSONA foreign key (idpersona) REFERENCES persona(idpersona)
);


/*==============================================================*/
/* SEQUENCE: EMPLEADO                                           */
/*==============================================================*/
CREATE SEQUENCE SQC_EMPLEADO
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1;


/*==============================================================*/
/* Table: EMPLEADO_SERVICIOS                                    */
/*==============================================================*/
create table EMPLEADO_SERVICIOS (
   idempleado           NUMBER(10)            GENERATED by default on null as IDENTITY,
   idservicio           NUMBER(10)            GENERATED by default on null as IDENTITY,
   constraint PK_EMPLEADO_SERVICIOS primary key (idempleado, idservicio),
   constraint FK_EMPLEADOSERVICIO_EMPLEADO foreign KEY (idempleado) REFERENCES EMPLEADO(idempleado),
   CONSTRAINT FK_EMPLEADOSERVICIO_SERVICIO FOREIGN KEY (idservicio) REFERENCES SERVICIO(idservicio),
);


/*==============================================================*/
/* SEQUENCE: EMPLEADO_SERVICIOS                                 */
/*==============================================================*/
CREATE SEQUENCE SQC_EMPLEADO_SERVICIOS
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1;


/*==============================================================*/
/* Table: AGENDA                                                */
/*==============================================================*/
create table AGENDA (
   idagenda             NUMBER(10)            GENERATED by default on null as IDENTITY,
   idempleado           NUMBER(10)            not null,
   idarea               NUMBER(10)            not null,
   idclinica            NUMBER(10)            not null,
   idcliente            NUMBER(10)            not null,
   idservicio           NUMBER(10)            not null,
   ingreso              NUMBER(2)             not null,
   salida               NUMBER(2)             not null,
   fecha                DATE                  not null,
   estado               VARCHAR2(1)           not null,
   constraint PK_AGENDA primary key (idagenda),
   CONSTRAINT FK_AGENDA_EMPLEADO FOREIGN KEY (idempleado) REFERENCES EMPLEADO(idempleado),
   CONSTRAINT FK_AGENDA_AREA FOREIGN KEY (idarea) REFERENCES AREA(idarea),
   CONSTRAINT FK_AGENA_CLINICA FOREIGN KEY (idclinica) REFERENCES CLINICA(idclinica),
   CONSTRAINT FK_AGENA_CLIENTE FOREIGN KEY (idcliente) REFERENCES CLIENTE(idcliente),
   CONSTRAINT FK_AGENDA_SERVICIO FOREIGN KEY (idservicio)REFERENCES SERVICIO(idservicio)
);


/*==============================================================*/
/* SEQUENCE: AGENDA                                             */
/*==============================================================*/
CREATE SEQUENCE SQC_AGENDA
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1;


/*==============================================================*/
/* Table: DETALLE_FACTURA                                       */
/*==============================================================*/
create table DETALLE_FACTURA (
   iddetalle_factura    NUMBER(10)            GENERATED by default on null as IDENTITY,
   idfactura            NUMBER(10)            not null,
   idagenda             NUMBER(10)            not null,
   constraint PK_DETALLE_FACTURA primary key (iddetalle_factura),
   constraint FK_DETALLEFACTURA_FACTURA FOREIGN KEY (idfactura) REFERENCES FACTURA(idfactura),
   CONSTRAINT FK_DETALLEFACTURA_AGENDA FOREIGN KEY (idagenda) REFERENCES AGENDA(idagenda)
);


/*==============================================================*/
/* SEQUENCE: DETALLE_FACTURA                                    */
/*==============================================================*/
CREATE SEQUENCE SQC_DETALLE_FACTURA
START WITH 1
MINVALUE 1
NOMAXVALUE
INCREMENT BY 1;



/*TABLA CATALOGO PARA =  ESTADO CIVIL*/

/*TABLA JORNADA EMPLEADO= para llevar control */

/*TABLA PUESTO = CREAR*/

/*TABLA ESTAOD AGENDA*/

/*FALTA INDICAR QUIEN EMITE LA FACTURA*/

/*Que servicios detallaran en detalle factura*/

/*Como llevaran el control de horarios disponibles para que los clientes verifiquen*/

/*Como van a llevar el control de pagos*/

/*agregar a factura cliente y empleado, clinica, */

/*agregar a detalle factura los servicios*/


/*Cada equipo debe velar por su módulo en cuanto a Roles / Accesos / Seguridad*/