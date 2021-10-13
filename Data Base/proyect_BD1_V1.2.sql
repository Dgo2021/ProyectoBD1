
DROP TABLE ROL_COMPONENTES CASCADE CONSTRAINTS;
DROP TABLE ROL CASCADE CONSTRAINTS;
DROP TABLE FACTURA_DETALLE CASCADE CONSTRAINTS;
DROP TABLE FACTURA CASCADE CONSTRAINTS;
DROP TABLE CLIENTE CASCADE CONSTRAINTS;
DROP TABLE EMPLEADO_SERVICIOS CASCADE CONSTRAINTS;
DROP TABLE AGENDA_ESTADO CASCADE CONSTRAINTS;
DROP TABLE AGENDA CASCADE CONSTRAINTS;
DROP TABLE AREAS_CLINICA CASCADE CONSTRAINTS;
DROP TABLE AREA CASCADE CONSTRAINTS;
DROP TABLE CLINICA CASCADE CONSTRAINTS;
DROP TABLE COMPONENTE CASCADE CONSTRAINTS;
DROP TABLE DEPARTAMENTO CASCADE CONSTRAINTS;
DROP TABLE PERSONA CASCADE CONSTRAINTS;
DROP TABLE SERVICIO CASCADE CONSTRAINTS;
DROP TABLE EMPLEADO CASCADE CONSTRAINTS;

/*==============================================================*/
/* Proyect: DATA BASE 1 V1.2                                    */
/*==============================================================*/


/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   idpersona           NUMBER(10)           GENERATED by default on null as IDENTITY,
   nombres             VARCHAR2(50)         not null,
   apellidos           VARCHAR2(50)         not null,
   fecha_nacimiento     DATE                 ,
   identificacion      NUMBER(13)           not null,
   nit                 VARCHAR2(10)         ,
   genero              VARCHAR2(1) check (genero in('F','M')) ,
   telefono1           NUMBER(8)            not null,
   telefono2           NUMBER(8)            ,
   constraint PK_PERSONA primary key (idpersona)
);

/*==============================================================*/
/* Table: AREA                                                  */
/*==============================================================*/
create table AREA (
   idarea               NUMBER(10)            GENERATED by default on null as IDENTITY,
   area                 VARCHAR2(200)         not null,
   constraint PK_AREA primary key (idarea)
);

/*==============================================================*/
/* Table: SERVICIO                                             */
/*==============================================================*/
create table SERVICIO (
   idservicio           NUMBER(10)            GENERATED by default on null as IDENTITY,
   idarea               NUMBER(10)            NOT NULL,
   servicio             VARCHAR2(200)         not null,
   precio               NUMBER(10,2)          not null,
   constraint PK_SERVICIO primary key (idservicio),
   constraint FK_SERVICIO_AREA foreign key (idarea) references AREA(idarea)
);

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO (
   iddepartamento       NUMBER(10)            GENERATED by default on null as IDENTITY,
   departamento         VARCHAR2(30)         not null,
   constraint PK_DEPARTAMENTO primary key (iddepartamento)
);


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
/* Table: CLINICA                                               */
/*==============================================================*/
create table CLINICA (
   idclinica            NUMBER(10)            GENERATED by default on null as IDENTITY,
   iddepartamento       NUMBER(10)            not null,
   clinica              VARCHAR2(100)         not null,
   direccion            VARCHAR2(100)         not null,
   constraint PK_CLINICA primary key (idclinica),
   constraint FK_CLINICA_DEPTO foreign key (iddepartamento) references DEPARTAMENTO(iddepartamento)
);


/*==============================================================*/
/* Table: AREAS_CLINICA                                         */
/*==============================================================*/
create table AREAS_CLINICA (
   idarea               NUMBER(10)            not null,
   idclinica            NUMBER(10)            not null,
   constraint PK_AREAS_CLINICA primary key (idarea, idclinica),
   constraint FK_AREACLINICA_AREA foreign key (idarea) references AREA(idarea),
   constraint FK_AREACLINICA_CLINICA foreign key (idclinica) references CLINICA(idclinica)
   
);


/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create Table ROL(
   idrol                number(10)           GENERATED by default on null as IDENTITY,
   rol                  VARCHAR2(15)         not null,
   constraint PK_ROL primary KEY (idrol)
);


/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   idempleado           NUMBER(10)            GENERATED by default on null as IDENTITY,
   idpersona            NUMBER(10)            not null,
   idclinica            NUMBER(10)            not null,
   idrol                number(10)            not null,
   contrasenia          VARCHAR2(15)          not null,
   email                Varchar2(50)          not null,
   constraint PK_EMPLEADO primary key (idempleado),
   constraint FK_EMPLEADO_PERSONA foreign key (idpersona) REFERENCES PERSONA(idpersona),
   constraint FK_EMPLEADO_CLINICA foreign key (idclinica) REFERENCES CLINICA(idclinica),
   CONSTRAINT FK_EMPLEADO_ROL FOREIGN KEY (idrol) references ROL(idrol)
);


/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   idfactura            NUMBER(10)           GENERATED by default on null as IDENTITY,
   idempleado           NUMBER(10)           not null,
   numero_factura       NUMBER(10)           not null,
   fecha_emision        DATE                 not null,
   nit                  VARCHAR2(10)         not null,
   razonSocial          VARCHAR2(100)        not null,
   total                NUMBER(10,2)         not null,
   constraint PK_FACTURA primary key (idfactura),
   constraint FK_FACTURA_EMPLEADO FOREIGN KEY (idempleado) REFERENCES EMPLEADO (idempleado)
);


/*==============================================================*/
/* Table: EMPLEADO_SERVICIOS                                    */
/*==============================================================*/
create table EMPLEADO_SERVICIOS (
   idempleado           NUMBER(10)            not null,
   idservicio           NUMBER(10)            not null,
   constraint PK_EMPLEADO_SERVICIOS primary key (idempleado, idservicio),
   constraint FK_EMPLEADOSERVICIO_EMPLEADO foreign KEY (idempleado) REFERENCES EMPLEADO(idempleado),
   CONSTRAINT FK_EMPLEADOSERVICIO_SERVICIO FOREIGN KEY (idservicio) REFERENCES SERVICIO(idservicio)
);


/*==============================================================*/
/* Table: AGENDA_ESTADO                                         */
/*==============================================================*/
create table AGENDA_ESTADO(
   idestado         number(10)           GENERATED by default on null as IDENTITY,
   estado            VARCHAR2(20)         not null,
   constraint PK_AGENDAESTADO primary KEY (idestado)
);


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
   idestado            NUMBER(10)            not null,   
   hora_ingreso         NUMBER(2)             not null,
   hora_salida          NUMBER(2)             not null,
   fecha                DATE                  not null,
   constraint PK_AGENDA primary key (idagenda),
   CONSTRAINT FK_AGENDA_EMPLEADO FOREIGN KEY (idempleado) REFERENCES EMPLEADO(idempleado),
   CONSTRAINT FK_AGENDA_AREA FOREIGN KEY (idarea) REFERENCES AREA(idarea),
   CONSTRAINT FK_AGENA_CLINICA FOREIGN KEY (idclinica) REFERENCES CLINICA(idclinica),
   CONSTRAINT FK_AGENA_CLIENTE FOREIGN KEY (idcliente) REFERENCES CLIENTE(idcliente),
   CONSTRAINT FK_AGENDA_SERVICIO FOREIGN KEY (idservicio)REFERENCES SERVICIO(idservicio),
   CONSTRAINT FK_AGENDA_AGESTADO FOREIGN KEY (idestado) references AGENDA_ESTADO (idestado),
   CONSTRAINT CK_HORA Check (hora_ingreso between 8 and 17 AND hora_salida between 8 and 17 AND hora_salida > hora_ingreso )
);


/*==============================================================*/
/* Table: DETALLE_FACTURA                                       */
/*==============================================================*/
create table FACTURA_DETALLE (
   idfactura_detalle    NUMBER(10)            GENERATED by default on null as IDENTITY,
   idfactura            NUMBER(10)            not null,
   idagenda             NUMBER(10)            not null,
   constraint PK_DETALLE_FACTURA primary key (idfactura_detalle),
   constraint FK_DETALLEFACTURA_FACTURA FOREIGN KEY (idfactura) REFERENCES FACTURA(idfactura),
   CONSTRAINT FK_DETALLEFACTURA_AGENDA FOREIGN KEY (idagenda) REFERENCES AGENDA(idagenda)
);


/*==============================================================*/
/* Table: COMPONENTE                                            */
/*==============================================================*/
create Table COMPONENTE(
   idcomponente        number(10)           GENERATED by default on null as IDENTITY,
   componente          varchar2(100)        ,
   constraint PK_COMPONENTES primary KEY (idcomponente)
);


/*==============================================================*/
/* Table: ROL_COMPONENTES                                       */
/*==============================================================*/
create table ROL_COMPONENTES(
   idcomponente        number(10)        not null,
   idrol                number(10)        not null,
   constraint PK_ROLCOMPONENTES primary KEY (idcomponente, idrol),
   constraint FK_ROLCOMPONENTES_COMP foreign KEY (idcomponente) REFERENCES COMPONENTE(idcomponente),
   CONSTRAINT FK_ROLCOMPONENTES_ROL FOREIGN KEY (idrol) REFERENCES ROL(idrol)
);
