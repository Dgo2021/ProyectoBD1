/*==============================================================*/
/* DBMS name:      ORACLE Version 12c                           */
/* Created on:     10/8/2021 5:07:53 PM                         */
/*==============================================================*/


alter table AGENDA
   drop constraint FK_AGENDA_REFERENCE_EMPLEADO;

alter table AGENDA
   drop constraint FK_AGENDA_REFERENCE_CLIENTE;

alter table AGENDA
   drop constraint FK_AGENDA_REFERENCE_CLINICA;

alter table AGENDA
   drop constraint FK_AGENDA_REFERENCE_AREA;

alter table AGENDA
   drop constraint FK_AGENDA_REFERENCE_SERVICIO;

alter table AREAS_CLINICA
   drop constraint FK_AREAS_CL_AREAS_CLI_AREA;

alter table AREAS_CLINICA
   drop constraint FK_AREAS_CL_AREAS_CLI_CLINICA;

alter table CLIENTE
   drop constraint FK_CLIENTE_REFERENCE_PERSONA;

alter table CLINICA
   drop constraint FK_CLINICA_REFERENCE_DEPARTAM;

alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__REFERENCE_AGENDA;

alter table DETALLE_FACTURA
   drop constraint FK_DETALLE__REFERENCE_FACTURA;

alter table EMPLEADO
   drop constraint FK_EMPLEADO_REFERENCE_PERSONA;

alter table EMPLEADO
   drop constraint FK_EMPLEADO_REFERENCE_CLINICA;

alter table EMPLEADO_SERVICIOS
   drop constraint FK_EMPLEADO_REFERENCE_SERVICIO;

alter table EMPLEADO_SERVICIOS
   drop constraint FK_EMPLEADO_REFERENCE_EMPLEADO;

alter table RELATIONSHIP_18
   drop constraint FK_RELATION_RELATIONS_AREA;

alter table RELATIONSHIP_18
   drop constraint FK_RELATION_RELATIONS_SERVICIO;

drop index REFERENCE_30_FK;

drop index REFERENCE_29_FK;

drop index REFERENCE_28_FK;

drop index REFERENCE_17_FK;

drop index REFERENCE_16_FK;

drop table AGENDA cascade constraints;

drop table AREA cascade constraints;

drop index AREAS_CLINICA_FK2;

drop index AREAS_CLINICA_FK;

drop table AREAS_CLINICA cascade constraints;

drop index REFERENCE_14_FK;

drop table CLIENTE cascade constraints;

drop index REFERENCE_21_FK;

drop table CLINICA cascade constraints;

drop table DEPARTAMENTO cascade constraints;

drop index REFERENCE_20_FK;

drop index REFERENCE_18_FK;

drop table DETALLE_FACTURA cascade constraints;

drop index REFERENCE_27_FK;

drop index REFERENCE_25_FK;

drop table EMPLEADO cascade constraints;

drop index REFERENCE_23_FK;

drop index REFERENCE_24_FK;

drop table EMPLEADO_SERVICIOS cascade constraints;

drop table FACTURA cascade constraints;

drop table PERSONA cascade constraints;

drop index RELATIONSHIP_18_FK2;

drop index RELATIONSHIP_18_FK;

drop table RELATIONSHIP_18 cascade constraints;

drop table SERVICIO cascade constraints;

/*==============================================================*/
/* Table: AGENDA                                                */
/*==============================================================*/
create table AGENDA (
   IDAGENDA             NUMBER(10)            not null,
   IDEMPLEADO           NUMBER(10),
   IDAREA               NUMBER(10),
   IDCLINICA            NUMBER(10),
   IDCLIENTE            NUMBER(10),
   IDSERVICIO           NUMBER(10),
   INGRESO              NUMBER(2)             not null,
   SALIDA               NUMBER(2)             not null,
   FECHA                DATE                  not null,
   ESTADO               VARCHAR2(1)           not null,
   constraint PK_AGENDA primary key (IDAGENDA)
);

/*==============================================================*/
/* Index: REFERENCE_16_FK                                       */
/*==============================================================*/
create index REFERENCE_16_FK on AGENDA (
   IDEMPLEADO ASC
);

/*==============================================================*/
/* Index: REFERENCE_17_FK                                       */
/*==============================================================*/
create index REFERENCE_17_FK on AGENDA (
   IDCLIENTE ASC
);

/*==============================================================*/
/* Index: REFERENCE_28_FK                                       */
/*==============================================================*/
create index REFERENCE_28_FK on AGENDA (
   IDCLINICA ASC
);

/*==============================================================*/
/* Index: REFERENCE_29_FK                                       */
/*==============================================================*/
create index REFERENCE_29_FK on AGENDA (
   IDAREA ASC
);

/*==============================================================*/
/* Index: REFERENCE_30_FK                                       */
/*==============================================================*/
create index REFERENCE_30_FK on AGENDA (
   IDSERVICIO ASC
);

/*==============================================================*/
/* Table: AREA                                                  */
/*==============================================================*/
create table AREA (
   IDAREA               NUMBER(10)            not null,
   IDSERVICIO           NUMBER(10),
   AREA                 VARCHAR2(200)         not null,
   constraint PK_AREA primary key (IDAREA)
);

/*==============================================================*/
/* Table: AREAS_CLINICA                                         */
/*==============================================================*/
create table AREAS_CLINICA (
   IDAREA               NUMBER(10)            not null,
   IDCLINICA            NUMBER(10)            not null,
   constraint PK_AREAS_CLINICA primary key (IDAREA, IDCLINICA)
);

/*==============================================================*/
/* Index: AREAS_CLINICA_FK                                      */
/*==============================================================*/
create index AREAS_CLINICA_FK on AREAS_CLINICA (
   IDAREA ASC
);

/*==============================================================*/
/* Index: AREAS_CLINICA_FK2                                     */
/*==============================================================*/
create index AREAS_CLINICA_FK2 on AREAS_CLINICA (
   IDCLINICA ASC
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   IDCLIENTE            NUMBER(10)            not null,
   IDPERSONA            NUMBER(10),
   constraint PK_CLIENTE primary key (IDCLIENTE)
);

/*==============================================================*/
/* Index: REFERENCE_14_FK                                       */
/*==============================================================*/
create index REFERENCE_14_FK on CLIENTE (
   IDPERSONA ASC
);

/*==============================================================*/
/* Table: CLINICA                                               */
/*==============================================================*/
create table CLINICA (
   IDCLINICA            NUMBER(10)            not null,
   IDDEPARTAMENTO       NUMBER(10)            not null,
   CLINICA              VARCHAR2(300)         not null,
   DIRECCION            VARCHAR2(300)         not null,
   constraint PK_CLINICA primary key (IDCLINICA)
);

/*==============================================================*/
/* Index: REFERENCE_21_FK                                       */
/*==============================================================*/
create index REFERENCE_21_FK on CLINICA (
   IDDEPARTAMENTO ASC
);

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO (
   IDDEPARTAMENTO       NUMBER(10)            not null,
   DEPARTAMENTO         VARCHAR2(200)         not null,
   constraint PK_DEPARTAMENTO primary key (IDDEPARTAMENTO)
);

/*==============================================================*/
/* Table: DETALLE_FACTURA                                       */
/*==============================================================*/
create table DETALLE_FACTURA (
   IDDETALLE_FACTURA    NUMBER(10)            not null,
   IDFACTURA            NUMBER(10),
   IDAGENDA             NUMBER(10),
   constraint PK_DETALLE_FACTURA primary key (IDDETALLE_FACTURA)
);

/*==============================================================*/
/* Index: REFERENCE_18_FK                                       */
/*==============================================================*/
create index REFERENCE_18_FK on DETALLE_FACTURA (
   IDAGENDA ASC
);

/*==============================================================*/
/* Index: REFERENCE_20_FK                                       */
/*==============================================================*/
create index REFERENCE_20_FK on DETALLE_FACTURA (
   IDFACTURA ASC
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   IDEMPLEADO           NUMBER(10)            not null,
   IDPERSONA            NUMBER(10),
   IDCLINICA            NUMBER(10),
   FECHA_INGRESO        DATE                  not null,
   PUESTO               VARCHAR2(100)         not null,
   constraint PK_EMPLEADO primary key (IDEMPLEADO)
);

/*==============================================================*/
/* Index: REFERENCE_25_FK                                       */
/*==============================================================*/
create index REFERENCE_25_FK on EMPLEADO (
   IDPERSONA ASC
);

/*==============================================================*/
/* Index: REFERENCE_27_FK                                       */
/*==============================================================*/
create index REFERENCE_27_FK on EMPLEADO (
   IDCLINICA ASC
);

/*==============================================================*/
/* Table: EMPLEADO_SERVICIOS                                    */
/*==============================================================*/
create table EMPLEADO_SERVICIOS (
   IDEMPLEADO           NUMBER(10)            not null,
   IDSERVICIO           NUMBER(10)            not null,
   constraint PK_EMPLEADO_SERVICIOS primary key (IDEMPLEADO, IDSERVICIO)
);

/*==============================================================*/
/* Index: REFERENCE_24_FK                                       */
/*==============================================================*/
create index REFERENCE_24_FK on EMPLEADO_SERVICIOS (
   IDEMPLEADO ASC
);

/*==============================================================*/
/* Index: REFERENCE_23_FK                                       */
/*==============================================================*/
create index REFERENCE_23_FK on EMPLEADO_SERVICIOS (
   IDSERVICIO ASC
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   IDFACTURA            NUMBER(10)            not null,
   FECHA_EMISION        DATE                  not null,
   NIT                  VARCHAR2(10)          not null,
   RAZON_SOCIAL         VARCHAR2(100)         not null,
   TOTAL                NUMBER(10,2)          not null,
   constraint PK_FACTURA primary key (IDFACTURA)
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   IDPERSONA            NUMBER(10)            not null,
   PRIMER_NOMBRE        VARCHAR2(200)         not null,
   SEGUNDO_NOMBRE       VARCHAR2(200)         not null,
   PRIMER_APELLIDO      VARCHAR2(200)         not null,
   SEGUNDO_APELLIDO     VARCHAR2(200)         not null,
   FECHA_NACIMIENTO     DATE                  not null,
   DPI                  NUMBER(13)            not null,
   NIT                  VARCHAR2(10)          not null,
   ESTADO_CIVIL         VARCHAR2(15)          not null,
   GENERO               VARCHAR2(1)           not null,
   TELEFONO1            NUMBER(8)             not null,
   TELEFONO2            NUMBER(8)             not null,
   constraint PK_PERSONA primary key (IDPERSONA)
);

/*==============================================================*/
/* Table: RELATIONSHIP_18                                       */
/*==============================================================*/
create table RELATIONSHIP_18 (
   IDAREA               NUMBER(10)            not null,
   IDSERVICIO           NUMBER(10)            not null,
   constraint PK_RELATIONSHIP_18 primary key (IDAREA, IDSERVICIO)
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_18_FK on RELATIONSHIP_18 (
   IDAREA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK2                                   */
/*==============================================================*/
create index RELATIONSHIP_18_FK2 on RELATIONSHIP_18 (
   IDSERVICIO ASC
);

/*==============================================================*/
/* Table: SERVICIO                                              */
/*==============================================================*/
create table SERVICIO (
   IDSERVICIO           NUMBER(10)            not null,
   SERVICIO             VARCHAR2(200)         not null,
   PRECIO               NUMBER(10,2)          not null,
   constraint PK_SERVICIO primary key (IDSERVICIO)
);

alter table AGENDA
   add constraint FK_AGENDA_REFERENCE_EMPLEADO foreign key (IDEMPLEADO)
      references EMPLEADO (IDEMPLEADO);

alter table AGENDA
   add constraint FK_AGENDA_REFERENCE_CLIENTE foreign key (IDCLIENTE)
      references CLIENTE (IDCLIENTE);

alter table AGENDA
   add constraint FK_AGENDA_REFERENCE_CLINICA foreign key (IDCLINICA)
      references CLINICA (IDCLINICA);

alter table AGENDA
   add constraint FK_AGENDA_REFERENCE_AREA foreign key (IDAREA)
      references AREA (IDAREA);

alter table AGENDA
   add constraint FK_AGENDA_REFERENCE_SERVICIO foreign key (IDSERVICIO)
      references SERVICIO (IDSERVICIO);

alter table AREAS_CLINICA
   add constraint FK_AREAS_CL_AREAS_CLI_AREA foreign key (IDAREA)
      references AREA (IDAREA);

alter table AREAS_CLINICA
   add constraint FK_AREAS_CL_AREAS_CLI_CLINICA foreign key (IDCLINICA)
      references CLINICA (IDCLINICA);

alter table CLIENTE
   add constraint FK_CLIENTE_REFERENCE_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA);

alter table CLINICA
   add constraint FK_CLINICA_REFERENCE_DEPARTAM foreign key (IDDEPARTAMENTO)
      references DEPARTAMENTO (IDDEPARTAMENTO);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__REFERENCE_AGENDA foreign key (IDAGENDA)
      references AGENDA (IDAGENDA);

alter table DETALLE_FACTURA
   add constraint FK_DETALLE__REFERENCE_FACTURA foreign key (IDFACTURA)
      references FACTURA (IDFACTURA);

alter table EMPLEADO
   add constraint FK_EMPLEADO_REFERENCE_PERSONA foreign key (IDPERSONA)
      references PERSONA (IDPERSONA);

alter table EMPLEADO
   add constraint FK_EMPLEADO_REFERENCE_CLINICA foreign key (IDCLINICA)
      references CLINICA (IDCLINICA);

alter table EMPLEADO_SERVICIOS
   add constraint FK_EMPLEADO_REFERENCE_SERVICIO foreign key (IDSERVICIO)
      references SERVICIO (IDSERVICIO);

alter table EMPLEADO_SERVICIOS
   add constraint FK_EMPLEADO_REFERENCE_EMPLEADO foreign key (IDEMPLEADO)
      references EMPLEADO (IDEMPLEADO);

alter table RELATIONSHIP_18
   add constraint FK_RELATION_RELATIONS_AREA foreign key (IDAREA)
      references AREA (IDAREA);

alter table RELATIONSHIP_18
   add constraint FK_RELATION_RELATIONS_SERVICIO foreign key (IDSERVICIO)
      references SERVICIO (IDSERVICIO);

