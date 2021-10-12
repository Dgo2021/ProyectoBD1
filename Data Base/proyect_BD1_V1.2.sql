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
/* Table: SERVICIOS                                             */
/*==============================================================*/
create table SERVICIOS (
   idservicio           NUMBER(10)            GENERATED by default on null as IDENTITY,
   servicio             VARCHAR2(200)         not null,
   precio               NUMBER(10,2)          not null,
   constraint PK_SERVICIO primary key (idservicio)
);


/*==============================================================*/
/* Table: AREA                                                  */
/*==============================================================*/
create table AREA (
   idarea               NUMBER(10)            GENERATED by default on null as IDENTITY,
   idservicio           NUMBER(10)            not null,
   area                 VARCHAR2(200)         not null,
   constraint PK_AREA primary key (idarea),
   CONSTRAINT FK_AREA_SERVICIO FOREIGN KEY (idservicio) references SERVICIO (idservicio)
);


/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO (
   iddepartamento       NUMBER(10)            GENERATED by default on null as IDENTITY,
   departamento         VARCHAR2(200)         not null,
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
   clinica              VARCHAR2(300)         not null,
   direccion            VARCHAR2(300)         not null,
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
   fecha_ingreso        DATE                  not null,
   puesto               VARCHAR2(100)         not null,
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
   CONSTRAINT FK_EMPLEADOSERVICIO_SERVICIO FOREIGN KEY (idservicio) REFERENCES SERVICIO(idservicio),
);


/*==============================================================*/
/* Table: AGENDA_ESTADO                                         */
/*==============================================================*/
create table AGENDA_ESTADO(
   idestados         number(10)           GENERATED by default on null as IDENTITY,
   estado            VARCHAR2(20)         not null,
   constraint PK_AGENDAESTADO primary KEY (idestados)
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
   idestados            NUMBER(10)            not null,   
   hora_ingreso         NUMBER(2)             not null,
   hora_salida          NUMBER(2)             not null,
   fecha                DATE                  not null,
   constraint PK_AGENDA primary key (idagenda),
   CONSTRAINT FK_AGENDA_EMPLEADO FOREIGN KEY (idempleado) REFERENCES EMPLEADO(idempleado),
   CONSTRAINT FK_AGENDA_AREA FOREIGN KEY (idarea) REFERENCES AREA(idarea),
   CONSTRAINT FK_AGENA_CLINICA FOREIGN KEY (idclinica) REFERENCES CLINICA(idclinica),
   CONSTRAINT FK_AGENA_CLIENTE FOREIGN KEY (idcliente) REFERENCES CLIENTE(idcliente),
   CONSTRAINT FK_AGENDA_SERVICIO FOREIGN KEY (idservicio)REFERENCES SERVICIO(idservicio),
   CONSTRAINT FK_AGENDA_AGESTADOS FOREIGN KEY (idestados) references AGENDA_ESTADO (idestados),
   CONSTRAINT CK_HORA Check (hora_ingreso between 8 and 17 || hora_salida between 8 and 17 || hora_salida > hora_ingreso )
);


/*==============================================================*/
/* Table: DETALLE_FACTURA                                       */
/*==============================================================*/
create table DETALLE_FACTURA (
   iddetalle_factura    NUMBER(10)            GENERATED by default on null as IDENTITY,
   idfactura            NUMBER(10)            not null,
   idagenda             NUMBER(10)            not null,
   idservicio           NUMBER(10)            not null,
   constraint PK_DETALLE_FACTURA primary key (iddetalle_factura),
   constraint FK_DETALLEFACTURA_FACTURA FOREIGN KEY (idfactura) REFERENCES FACTURA(idfactura),
   CONSTRAINT FK_DETALLEFACTURA_AGENDA FOREIGN KEY (idagenda) REFERENCES AGENDA(idagenda),
   constraint FK_DETALLEFACTURA_SERVICIO FOREIGN KEY (idservicio) references SERVICIOS (idservicio)
);


/*==============================================================*/
/* Table: COMPONENTES                                           */
/*==============================================================*/
create Table COMPONENTES(
   idcomponentes        number(10)           GENERATED by default on null as IDENTITY,
   componentes          varchar2(100)        ,
   constraint PK_COMPONENTES primary KEY (idcomponentes)
);


/*==============================================================*/
/* Table: ROL_COMPONENTES                                       */
/*==============================================================*/
create table ROL_COMPONENTES(
   idcomponentes        number(10)        not null,
   idrol                number(10)        not null,
   constraint PK_ROLCOMPONENTES primary KEY (idcomponentes, idrol),
   constraint FK_ROLCOMPONENTES_COMP foreign KEY (idcomponentes) REFERENCES COMPONENTES(idcomponentes),
   CONSTRAINT FK_ROLCOMPONENTES_ROL FOREIGN KEY (idrol) REFERENCES ROL(idrol)
);


/*==============================================================*/
/* INSERT: PERSONA                                              */
/*==============================================================*/


INSERT INTO PERSONA (nombres,apellidos,fecha_nacimiento,identificacion,nit,genero,telefono1,teleofno2)
values ('PABLO','SOLARES','01/01/21','1234567891011','132456K','M','12345678',null);


/* ROL
administrador
empleado
supervisor
servicio al cliente
*/


