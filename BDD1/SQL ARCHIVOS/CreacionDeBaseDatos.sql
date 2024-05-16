-- Type package declaration
create or replace package PDTypes  
as
    TYPE ref_cursor IS REF CURSOR;
end;
/
-- Integrity package declaration
create or replace package IntegrityPackage AS
 procedure InitNestLevel;
 function GetNestLevel return number;
 procedure NextNestLevel;
 procedure PreviousNestLevel;
 end IntegrityPackage;
/

-- Integrity package definition
create or replace package body IntegrityPackage AS
 NestLevel number;

-- Procedure to initialize the trigger nest level
 procedure InitNestLevel is
 begin
 NestLevel := 0;
 end;


-- Function to return the trigger nest level
 function GetNestLevel return number is
 begin
 if NestLevel is null then
     NestLevel := 0;
 end if;
 return(NestLevel);
 end;

-- Procedure to increase the trigger nest level
 procedure NextNestLevel is
 begin
 if NestLevel is null then
     NestLevel := 0;
 end if;
 NestLevel := NestLevel + 1;
 end;

-- Procedure to decrease the trigger nest level
 procedure PreviousNestLevel is
 begin
 NestLevel := NestLevel - 1;
 end;

 end IntegrityPackage;
/


drop trigger TDB_BODEGA
/

drop trigger TIB_BODEGA
/

drop trigger TUB_BODEGA
/

drop trigger TDB_CATEGORIAS
/

drop trigger TUB_CATEGORIAS
/

drop trigger TDB_CIUDAD
/

drop trigger TIB_CIUDAD
/

drop trigger TUB_CIUDAD
/

drop trigger TDB_CLIENTE
/

drop trigger TIB_CLIENTE
/

drop trigger TUB_CLIENTE
/

drop trigger TIB_COMISION
/

drop trigger TUB_COMISION
/

drop trigger TIB_DETALLE_FACTURA
/

drop trigger TUB_DETALLE_FACTURA
/

drop trigger TIB_DETALLE_ORDEN_COMPRA
/

drop trigger TUB_DETALLE_ORDEN_COMPRA
/

drop trigger TDB_FACTURA
/

drop trigger TIB_FACTURA
/

drop trigger TUB_FACTURA
/

drop trigger TDB_FORMA_PAGO
/

drop trigger TUB_FORMA_PAGO
/

drop trigger TIB_FORMA_PAGO_ELEGIDA
/

drop trigger TUB_FORMA_PAGO_ELEGIDA
/

drop trigger TIB_KARDEX
/

drop trigger TUB_KARDEX
/

drop trigger TDB_ORDEN_COMPRA
/

drop trigger TIB_ORDEN_COMPRA
/

drop trigger TUB_ORDEN_COMPRA
/

drop trigger TDB_PRODUCTO
/

drop trigger TIB_PRODUCTO
/

drop trigger TUB_PRODUCTO
/

drop trigger TIB_PRODUCTO_BODEGA
/

drop trigger TUB_PRODUCTO_BODEGA
/

drop trigger TIB_PRODUCTO_PROOVEDOR
/

drop trigger TUB_PRODUCTO_PROOVEDOR
/

drop trigger TDB_PROOVEDOR
/

drop trigger TUB_PROOVEDOR
/

drop trigger TDB_PROVINCIA
/

drop trigger TUB_PROVINCIA
/

drop trigger TDB_SUCURSAL
/

drop trigger TIB_SUCURSAL
/

drop trigger TUB_SUCURSAL
/

drop trigger TDB_TRANSACCION
/

drop trigger TUB_TRANSACCION
/

drop trigger TDB_UNIDAD_MEDIDA
/

drop trigger TUB_UNIDAD_MEDIDA
/

drop trigger TIB_UNID_MED_ALTERNA
/

drop trigger TUB_UNID_MED_ALTERNA
/

drop trigger TDB_VENDEDOR
/

drop trigger TIB_VENDEDOR
/

drop trigger TUB_VENDEDOR
/

drop index SUCURSAL_BODEGA_FK
/

drop table BODEGA cascade constraints
/

drop table CATEGORIAS cascade constraints
/

drop index PROVINCIA_CIUDAD_FK
/

drop table CIUDAD cascade constraints
/

drop index CLIENTE_CIUDAD_FK
/

drop table CLIENTE cascade constraints
/

drop index VENDEDOR_COMISION_FK
/

drop table COMISION cascade constraints
/

drop index PRODUCTO_DFAC_FK
/

drop index FAC_DFAC_FK
/

drop table DETALLE_FACTURA cascade constraints
/

drop index PRODUCTO_DOC_FK
/

drop index OC_DOC_FK
/

drop table DETALLE_ORDEN_COMPRA cascade constraints
/

drop table EMPRESA cascade constraints
/

drop index VENDEDOR_FACTURA_FK
/

drop index CLIENTE_FACTURA_FK
/

drop index TRANSACCION_FACTURA_FK
/

drop index SUCURSAL_FACTURAS_FK
/

drop table FACTURA cascade constraints
/

drop table FORMA_PAGO cascade constraints
/

drop index RELATIONSHIP_35_FK
/

drop index FP_FPE_FK
/

drop table FORMA_PAGO_ELEGIDA cascade constraints
/

drop index BODEGA_KARDEX_FK
/

drop index TRANSACCION_KARDEX_FK
/

drop index PRODUCTO_KARDEX_FK
/

drop table KARDEX cascade constraints
/

drop index PROOVEDOR_OC_FK
/

drop index BODEGA_OC_FK
/

drop table ORDEN_COMPRA cascade constraints
/

drop index CAT_PROD_FK
/

drop table PRODUCTO cascade constraints
/

drop index PRODUCTO_PB_FK
/

drop index BODEGA_PB_FK
/

drop table PRODUCTO_BODEGA cascade constraints
/

drop index PRODUCTO_PP_FK
/

drop index PROOVEDOR_PP_FK
/

drop table PRODUCTO_PROOVEDOR cascade constraints
/

drop table PROOVEDOR cascade constraints
/

drop table PROVINCIA cascade constraints
/

drop index CIUDES_SUCURSAL_FK
/

drop table SUCURSAL cascade constraints
/

drop table TRANSACCION cascade constraints
/

drop table UNIDAD_MEDIDA cascade constraints
/

drop index UM_UMA_FK
/

drop index PRD_UMALT_FK
/

drop table UNID_MED_ALTERNA cascade constraints
/

drop index SUCURSAL_VENDEDOR_FK
/

drop table VENDEDOR cascade constraints
/


/*==============================================================*/
/* Table: BODEGA                                                */
/*==============================================================*/
create table BODEGA (
   BOD_CODIGO           VARCHAR2(20)          not null
      constraint CKC_BOD_CODIGO_BODEGA check (BOD_CODIGO = upper(BOD_CODIGO)),
   SUC_CODIGO           VARCHAR2(20)          not null
      constraint CKC_SUC_CODIGO_BODEGA check (SUC_CODIGO = upper(SUC_CODIGO)),
   BOD_RESPONSABLE      VARCHAR2(20),
   BOD_DESCRIPCION      VARCHAR2(100),
   constraint PK_BODEGA primary key (BOD_CODIGO)
)
   tablespace DATOS_2024_01
/

comment on column BODEGA.BOD_RESPONSABLE is
'Encargado de la bodega
'
/

comment on column BODEGA.BOD_DESCRIPCION is
'Descripcion de las caracteristicas de la bodega
'
/

/*==============================================================*/
/* Index: SUCURSAL_BODEGA_FK                                    */
/*==============================================================*/
create index SUCURSAL_BODEGA_FK on BODEGA (
   SUC_CODIGO ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Table: CATEGORIAS                                            */
/*==============================================================*/
create table CATEGORIAS (
   CAT_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_CAT_CODIGO___CATEGORI check (CAT_CODIGO__ = upper(CAT_CODIGO__)),
   CAT_DESCRIPCION__    VARCHAR2(50),
   constraint PK_CATEGORIAS primary key (CAT_CODIGO__)
)
   tablespace DATOS_2024_01
/

comment on column CATEGORIAS.CAT_DESCRIPCION__ is
'Descripcion de la categoria
'
/

/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD (
   CIU_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_CIU_CODIGO___CIUDAD check (CIU_CODIGO__ = upper(CIU_CODIGO__)),
   POV_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_POV_CODIGO___CIUDAD check (POV_CODIGO__ = upper(POV_CODIGO__)),
   CIU_NOMBRE           VARCHAR2(20),
   constraint PK_CIUDAD primary key (CIU_CODIGO__)
)
   tablespace DATOS_2024_01
/

comment on column CIUDAD.CIU_NOMBRE is
'Nombre de la ciudad
'
/

/*==============================================================*/
/* Index: PROVINCIA_CIUDAD_FK                                   */
/*==============================================================*/
create index PROVINCIA_CIUDAD_FK on CIUDAD (
   POV_CODIGO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   CLI_CEDULA_RUC__     VARCHAR2(20)          not null,
   CIU_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_CIU_CODIGO___CLIENTE check (CIU_CODIGO__ = upper(CIU_CODIGO__)),
   CLI_NOMBRE__         VARCHAR2(20),
   CLI_APELLIDO__       VARCHAR2(20),
   CLI_CORREO           VARCHAR2(20),
   CLI_TELEFONO         VARCHAR2(13),
   CLI_DIRECCION__      VARCHAR2(50),
   CLI_SECTOR           VARCHAR2(20),
   constraint PK_CLIENTE primary key (CLI_CEDULA_RUC__)
)
   tablespace DATOS_2024_01
/

comment on column CLIENTE.CIU_CODIGO__ is
'Nombre del cliente
'
/

comment on column CLIENTE.CLI_NOMBRE__ is
'Apellido del cliente
'
/

comment on column CLIENTE.CLI_APELLIDO__ is
'Correo del cliente
'
/

comment on column CLIENTE.CLI_CORREO is
'Correo del cliente
'
/

comment on column CLIENTE.CLI_TELEFONO is
'Telefono del cliente
'
/

comment on column CLIENTE.CLI_DIRECCION__ is
'Direccion del cliente
'
/

comment on column CLIENTE.CLI_SECTOR is
'Sector del cliente
'
/

/*==============================================================*/
/* Index: CLIENTE_CIUDAD_FK                                     */
/*==============================================================*/
create index CLIENTE_CIUDAD_FK on CLIENTE (
   CIU_CODIGO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Table: COMISION                                              */
/*==============================================================*/
create table COMISION (
   COM_NUMERO__         VARCHAR2(20)          not null
      constraint CKC_COM_NUMERO___COMISION check (COM_NUMERO__ = upper(COM_NUMERO__)),
   VEN_CEDULA__         VARCHAR2(20)          not null,
   COM_FECHA_PAGO__     DATE,
   COM_FECHA_INI        DATE,
   COM_FECHA_FIN__      DATE,
   COM_CANTIDAD__       NUMBER,
   constraint PK_COMISION primary key (COM_NUMERO__)
)
   tablespace DATOS_2024_01
/

comment on column COMISION.COM_FECHA_PAGO__ is
'Fecha de pago de la comision
'
/

comment on column COMISION.COM_FECHA_INI is
'Fecha de inicio 
'
/

comment on column COMISION.COM_FECHA_FIN__ is
'Fecha de fin
'
/

comment on column COMISION.COM_CANTIDAD__ is
'Cantidad total
'
/

/*==============================================================*/
/* Index: VENDEDOR_COMISION_FK                                  */
/*==============================================================*/
create index VENDEDOR_COMISION_FK on COMISION (
   VEN_CEDULA__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Table: DETALLE_FACTURA                                       */
/*==============================================================*/
create table DETALLE_FACTURA (
   FAC_NUMERO__         VARCHAR2(20)          not null
      constraint CKC_FAC_NUMERO___DETALLE_ check (FAC_NUMERO__ = upper(FAC_NUMERO__)),
   PRD_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_PRD_CODIGO___DETALLE_ check (PRD_CODIGO__ = upper(PRD_CODIGO__))
)
   tablespace DATOS_2024_01
/

comment on table DETALLE_FACTURA is
'Tabla interseccion qu contiene los productos de una factura
'
/

/*==============================================================*/
/* Index: FAC_DFAC_FK                                           */
/*==============================================================*/
create index FAC_DFAC_FK on DETALLE_FACTURA (
   FAC_NUMERO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Index: PRODUCTO_DFAC_FK                                      */
/*==============================================================*/
create index PRODUCTO_DFAC_FK on DETALLE_FACTURA (
   PRD_CODIGO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Table: DETALLE_ORDEN_COMPRA                                  */
/*==============================================================*/
create table DETALLE_ORDEN_COMPRA (
   ORD_NUMERO__         VARCHAR2(20)          not null
      constraint CKC_ORD_NUMERO___DETALLE_ check (ORD_NUMERO__ = upper(ORD_NUMERO__)),
   PRD_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_PRD_CODIGO___DETALLE_OC check (PRD_CODIGO__ = upper(PRD_CODIGO__))
)
   tablespace DATOS_2024_01
/

/*==============================================================*/
/* Index: OC_DOC_FK                                             */
/*==============================================================*/
create index OC_DOC_FK on DETALLE_ORDEN_COMPRA (
   ORD_NUMERO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Index: PRODUCTO_DOC_FK                                       */
/*==============================================================*/
create index PRODUCTO_DOC_FK on DETALLE_ORDEN_COMPRA (
   PRD_CODIGO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Table: EMPRESA                                               */
/*==============================================================*/
create table EMPRESA (
   EMP_CEDULA_RUC       VARCHAR2(13)          not null,
   EMP_NOMBRE__         VARCHAR2(100),
   EMP_DIRECCION__      VARCHAR2(50),
   EMP_TELEFONO         VARCHAR2(11),
   EMP_CORREO__         VARCHAR2(25),
   EMP_NUM_FACTURA      VARCHAR2(2),
   EMP_CODIGO_SRI       VARCHAR2(13),
   EMP_REPRENSENTANTE_LEGAL VARCHAR2(20),
   EMP_PRC_COMISION_B   VARCHAR2(20),
   EMP_CODIGO           VARCHAR2(10),
   EMP_IVA              NUMBER,
   constraint PK_EMPRESA primary key (EMP_CEDULA_RUC)
)
   tablespace DATOS_2024_01
/

comment on table EMPRESA is
'Tabla o entidad que guarda informacion sobre Empresa

'
/

comment on column EMPRESA.EMP_NOMBRE__ is
'Nombre de la Empresa
'
/

comment on column EMPRESA.EMP_DIRECCION__ is
'Direccion donde esta la empresa
'
/

comment on column EMPRESA.EMP_TELEFONO is
'Numero de contacto
'
/

comment on column EMPRESA.EMP_CORREO__ is
'Correo de contacto 
'
/

comment on column EMPRESA.EMP_NUM_FACTURA is
'Num de las facturas asociadas a esta empresa
'
/

comment on column EMPRESA.EMP_CODIGO_SRI is
'Codigo del SRI
'
/

comment on column EMPRESA.EMP_REPRENSENTANTE_LEGAL is
'Nombre del representante
'
/

comment on column EMPRESA.EMP_PRC_COMISION_B is
'Precio por comision
'
/

comment on column EMPRESA.EMP_CODIGO is
'Codigo de la empresa
'
/

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   FAC_NUMERO__         VARCHAR2(20)          not null
      constraint CKC_FAC_NUMERO___FACTURA check (FAC_NUMERO__ = upper(FAC_NUMERO__)),
   SUC_CODIGO           VARCHAR2(20)          not null
      constraint CKC_SUC_CODIGO_FACTURA check (SUC_CODIGO = upper(SUC_CODIGO)),
   TRN_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_TRN_CODIGO___FACTURA check (TRN_CODIGO__ = upper(TRN_CODIGO__)),
   CLI_CEDULA_RUC__     VARCHAR2(20)          not null,
   VEN_CEDULA__         VARCHAR2(20)          not null,
   FAC_FECHA__          DATE,
   constraint PK_FACTURA primary key (FAC_NUMERO__)
)
   tablespace DATOS_2024_01
/

comment on column FACTURA.FAC_FECHA__ is
'Fecha de emision de la factura
'
/

/*==============================================================*/
/* Index: SUCURSAL_FACTURAS_FK                                  */
/*==============================================================*/
create index SUCURSAL_FACTURAS_FK on FACTURA (
   SUC_CODIGO ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Index: TRANSACCION_FACTURA_FK                                */
/*==============================================================*/
create index TRANSACCION_FACTURA_FK on FACTURA (
   TRN_CODIGO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Index: CLIENTE_FACTURA_FK                                    */
/*==============================================================*/
create index CLIENTE_FACTURA_FK on FACTURA (
   CLI_CEDULA_RUC__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Index: VENDEDOR_FACTURA_FK                                   */
/*==============================================================*/
create index VENDEDOR_FACTURA_FK on FACTURA (
   VEN_CEDULA__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Table: FORMA_PAGO                                            */
/*==============================================================*/
create table FORMA_PAGO (
   FRP_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_FRP_CODIGO___FORMA_PA check (FRP_CODIGO__ = upper(FRP_CODIGO__)),
   FRP_DESCRIPCION__    VARCHAR2(50),
   constraint PK_FORMA_PAGO primary key (FRP_CODIGO__)
)
   tablespace DATOS_2024_01
/

/*==============================================================*/
/* Table: FORMA_PAGO_ELEGIDA                                    */
/*==============================================================*/
create table FORMA_PAGO_ELEGIDA (
   FRP_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_FRP_CODIGO___FORMA_PA_E check (FRP_CODIGO__ = upper(FRP_CODIGO__)),
   FAC_NUMERO__         VARCHAR2(20)          not null
      constraint CKC_FAC_NUMERO___FORMA_PA check (FAC_NUMERO__ = upper(FAC_NUMERO__))
)
   tablespace DATOS_2024_01
/

comment on table FORMA_PAGO_ELEGIDA is
'Interseccion entre forma de pago y factura.
Para mi indicaria que forma de pago se escogio o se escogieron para cada factura
'
/

/*==============================================================*/
/* Index: FP_FPE_FK                                             */
/*==============================================================*/
create index FP_FPE_FK on FORMA_PAGO_ELEGIDA (
   FRP_CODIGO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Index: RELATIONSHIP_35_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_35_FK on FORMA_PAGO_ELEGIDA (
   FAC_NUMERO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Table: KARDEX                                                */
/*==============================================================*/
create table KARDEX (
   PRD_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_PRD_CODIGO___KARDEX check (PRD_CODIGO__ = upper(PRD_CODIGO__)),
   TRN_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_TRN_CODIGO___KARDEX check (TRN_CODIGO__ = upper(TRN_CODIGO__)),
   BOD_CODIGO           VARCHAR2(20)          not null
      constraint CKC_BOD_CODIGO_KARDEX check (BOD_CODIGO = upper(BOD_CODIGO))
)
   tablespace DATOS_2024_01
/

comment on table KARDEX is
'Tabla interseccion que contiene los movimientos de la bodega'
/

/*==============================================================*/
/* Index: PRODUCTO_KARDEX_FK                                    */
/*==============================================================*/
create index PRODUCTO_KARDEX_FK on KARDEX (
   PRD_CODIGO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Index: TRANSACCION_KARDEX_FK                                 */
/*==============================================================*/
create index TRANSACCION_KARDEX_FK on KARDEX (
   TRN_CODIGO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Index: BODEGA_KARDEX_FK                                      */
/*==============================================================*/
create index BODEGA_KARDEX_FK on KARDEX (
   BOD_CODIGO ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Table: ORDEN_COMPRA                                          */
/*==============================================================*/
create table ORDEN_COMPRA (
   ORD_NUMERO__         VARCHAR2(20)          not null
      constraint CKC_ORD_NUMERO___ORDEN_CO check (ORD_NUMERO__ = upper(ORD_NUMERO__)),
   BOD_CODIGO           VARCHAR2(20)          not null
      constraint CKC_BOD_CODIGO_ORDEN_CO check (BOD_CODIGO = upper(BOD_CODIGO)),
   PRV_CODIGO__         VARCHAR2(13)          not null,
   ORD_FECHA            DATE,
   ORD_FECHA_LIM        DATE,
   ORD_ELABORO          DATE,
   ORD_TOTAL            NUMBER              
      constraint CKC_ORD_TOTAL_ORDEN_CO check (ORD_TOTAL is null or (ORD_TOTAL >= 0)),
   constraint PK_ORDEN_COMPRA primary key (ORD_NUMERO__)
)
   tablespace DATOS_2024_01
/

comment on column ORDEN_COMPRA.ORD_FECHA is
'Fecha de emision de la orden de compra
'
/

comment on column ORDEN_COMPRA.ORD_FECHA_LIM is
'Fecha limite para recibir lo comprado
'
/

comment on column ORDEN_COMPRA.ORD_ELABORO is
'Fecha de llegada de los productos
'
/

comment on column ORDEN_COMPRA.ORD_TOTAL is
'Precio total
'
/

/*==============================================================*/
/* Index: BODEGA_OC_FK                                          */
/*==============================================================*/
create index BODEGA_OC_FK on ORDEN_COMPRA (
   BOD_CODIGO ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Index: PROOVEDOR_OC_FK                                       */
/*==============================================================*/
create index PROOVEDOR_OC_FK on ORDEN_COMPRA (
   PRV_CODIGO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   PRD_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_PRD_CODIGO___PRODUCTO check (PRD_CODIGO__ = upper(PRD_CODIGO__)),
   CAT_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_CAT_CODIGO___PRODUCTO check (CAT_CODIGO__ = upper(CAT_CODIGO__)),
   PRD_DESCRIPCION__    VARCHAR2(50),
   PRD_PRECIO__         NUMBER              
      constraint CKC_PRD_PRECIO___PRODUCTO check (PRD_PRECIO__ is null or (PRD_PRECIO__ >= 0)),
   PRD_PRECIO_ANTERIOR__ NUMBER              
      constraint CKC_PRD_PRECIO_ANTERI_PRODUCTO check (PRD_PRECIO_ANTERIOR__ is null or (PRD_PRECIO_ANTERIOR__ >= 0)),
   PRD_EXISTENCIA__     NUMBER              
      constraint CKC_PRD_EXISTENCIA___PRODUCTO check (PRD_EXISTENCIA__ is null or (PRD_EXISTENCIA__ >= 0)),
   PRD_CODIGO_BARRA__   VARCHAR2(15),
   PRD_PAGA_IVA         VARCHAR(10),
   constraint PK_PRODUCTO primary key (PRD_CODIGO__)
)
   tablespace DATOS_2024_01
/

comment on column PRODUCTO.PRD_DESCRIPCION__ is
'Descripcion general del producto
'
/

comment on column PRODUCTO.PRD_PRECIO__ is
'Precio actual del producto
'
/

comment on column PRODUCTO.PRD_PRECIO_ANTERIOR__ is
'Precio anterior del producto
'
/

comment on column PRODUCTO.PRD_EXISTENCIA__ is
'Existencia actual del producto
'
/

comment on column PRODUCTO.PRD_CODIGO_BARRA__ is
'Codigo de barra del producto
'
/

/*==============================================================*/
/* Index: CAT_PROD_FK                                           */
/*==============================================================*/
create index CAT_PROD_FK on PRODUCTO (
   CAT_CODIGO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Table: PRODUCTO_BODEGA                                       */
/*==============================================================*/
create table PRODUCTO_BODEGA (
   BOD_CODIGO           VARCHAR2(20)          not null
      constraint CKC_BOD_CODIGO_PRODUCTO check (BOD_CODIGO = upper(BOD_CODIGO)),
   PRD_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_PRD_CODIGO___PRODUCTO_BODEGA check (PRD_CODIGO__ = upper(PRD_CODIGO__))
)
   tablespace DATOS_2024_01
/

comment on table PRODUCTO_BODEGA is
'Tabla interseccion que contiene los productos de la bodega'
/

/*==============================================================*/
/* Index: BODEGA_PB_FK                                          */
/*==============================================================*/
create index BODEGA_PB_FK on PRODUCTO_BODEGA (
   BOD_CODIGO ASC
)
tablespace DATOS_2024_01
/

/*==============================================================*/
/* Index: PRODUCTO_PB_FK                                        */
/*==============================================================*/
create index PRODUCTO_PB_FK on PRODUCTO_BODEGA (
   PRD_CODIGO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Table: PRODUCTO_PROOVEDOR                                    */
/*==============================================================*/
create table PRODUCTO_PROOVEDOR (
   PRV_CODIGO__         VARCHAR2(13)          not null
      constraint CKC_PRV_CODIGO___PRODUCTO check (PRV_CODIGO__ = upper(PRV_CODIGO__)),
   PRD_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_PRD_CODIGO___PRODUCTO_PROOVEDOR check (PRD_CODIGO__ = upper(PRD_CODIGO__))
)
   tablespace DATOS_2024_01
/

comment on table PRODUCTO_PROOVEDOR is
'Tabla interseccion entre productos y proovedor, para saber que productos entrega cada proovedor
'
/

/*==============================================================*/
/* Index: PROOVEDOR_PP_FK                                       */
/*==============================================================*/
create index PROOVEDOR_PP_FK on PRODUCTO_PROOVEDOR (
   PRV_CODIGO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Index: PRODUCTO_PP_FK                                        */
/*==============================================================*/
create index PRODUCTO_PP_FK on PRODUCTO_PROOVEDOR (
   PRD_CODIGO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Table: PROOVEDOR                                             */
/*==============================================================*/
create table PROOVEDOR (
   PRV_CODIGO__         VARCHAR2(13)          not null
      constraint CKC_PRV_CODIGO___PROOVEDO check (PRV_CODIGO__ = upper(PRV_CODIGO__)),
   PVR_DESCRIPCION      VARCHAR2(100),
   PVR_TELEFONO         VARCHAR2(13)        
      constraint CKC_PVR_TELEFONO_PROOVEDO check (PVR_TELEFONO is null or (PVR_TELEFONO = upper(PVR_TELEFONO))),
   PVR_CONTACTO         VARCHAR2(13),
   PVR_DIRECCION        VARCHAR2(100),
   PVR_CORREO           VARCHAR2(20),
   constraint PK_PROOVEDOR primary key (PRV_CODIGO__)
)
   tablespace DATOS_2024_01
/

comment on table PROOVEDOR is
'Tabla o entidad que guarda informacion sobre Proovedor
'
/

comment on column PROOVEDOR.PVR_DESCRIPCION is
'Descripcion del proovedor
'
/

comment on column PROOVEDOR.PVR_TELEFONO is
'Telefono del proovedor
'
/

comment on column PROOVEDOR.PVR_CONTACTO is
'Contacto del proovedor
'
/

comment on column PROOVEDOR.PVR_DIRECCION is
'Direcion del proovedor
'
/

comment on column PROOVEDOR.PVR_CORREO is
'Correo del proovedor'
/

/*==============================================================*/
/* Table: PROVINCIA                                             */
/*==============================================================*/
create table PROVINCIA (
   POV_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_POV_CODIGO___PROVINCI check (POV_CODIGO__ = upper(POV_CODIGO__)),
   POV_NOMBRE__         VARCHAR2(20),
   constraint PK_PROVINCIA primary key (POV_CODIGO__)
)
   tablespace DATOS_2024_01
/

comment on column PROVINCIA.POV_NOMBRE__ is
'Nombre de la provincia
'
/

/*==============================================================*/
/* Table: SUCURSAL                                              */
/*==============================================================*/
create table SUCURSAL (
   SUC_CODIGO           VARCHAR2(20)          not null
      constraint CKC_SUC_CODIGO_SUCURSAL check (SUC_CODIGO = upper(SUC_CODIGO)),
   CIU_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_CIU_CODIGO___SUCURSAL check (CIU_CODIGO__ = upper(CIU_CODIGO__)),
   SUC_NOMBRE           VARCHAR2(20),
   SUC_DIRECCION        VARCHAR2(50),
   SUC_TELEFONO         VARCHAR2(13),
   SUC_RESPONSABLE      VARCHAR2(20),
   constraint PK_SUCURSAL primary key (SUC_CODIGO)
)
   tablespace DATOS_2024_01
/

comment on table SUCURSAL is
'Tabla o entidad que guarda informacion sobre Sucursal
'
/

comment on column SUCURSAL.SUC_NOMBRE is
'Nombre de la sucursal
'
/

comment on column SUCURSAL.SUC_DIRECCION is
'Direcion de la sucursal
'
/

comment on column SUCURSAL.SUC_TELEFONO is
'Telefono de contacto de la sucursal
'
/

comment on column SUCURSAL.SUC_RESPONSABLE is
'Responsable de la sucursal
'
/

/*==============================================================*/
/* Index: CIUDES_SUCURSAL_FK                                    */
/*==============================================================*/
create index CIUDES_SUCURSAL_FK on SUCURSAL (
   CIU_CODIGO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Table: TRANSACCION                                           */
/*==============================================================*/
create table TRANSACCION (
   TRN_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_TRN_CODIGO___TRANSACC check (TRN_CODIGO__ = upper(TRN_CODIGO__)),
   TRN_DESCRIPCION      VARCHAR2(100),
   constraint PK_TRANSACCION primary key (TRN_CODIGO__)
)
   tablespace DATOS_2024_01
/

comment on column TRANSACCION.TRN_DESCRIPCION is
'Descripcion de la transaccion
'
/

/*==============================================================*/
/* Table: UNIDAD_MEDIDA                                         */
/*==============================================================*/
create table UNIDAD_MEDIDA (
   UNI_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_UNI_CODIGO___UNIDAD_M check (UNI_CODIGO__ = upper(UNI_CODIGO__)),
   UNI_DESCRIPCION__    VARCHAR2(50),
   constraint PK_UNIDAD_MEDIDA primary key (UNI_CODIGO__)
)
   tablespace DATOS_2024_01
/

comment on column UNIDAD_MEDIDA.UNI_DESCRIPCION__ is
'Descripcion de la unidad de medida
'
/

/*==============================================================*/
/* Table: UNID_MED_ALTERNA                                      */
/*==============================================================*/
create table UNID_MED_ALTERNA (
   PRD_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_PRD_CODIGO___UNID_MED check (PRD_CODIGO__ = upper(PRD_CODIGO__)),
   UNI_CODIGO__         VARCHAR2(20)          not null
      constraint CKC_UNI_CODIGO___UNID_MED check (UNI_CODIGO__ = upper(UNI_CODIGO__))
)
   tablespace DATOS_2024_01
/

comment on table UNID_MED_ALTERNA is
'Interseccion unidades  de medida y productos
'
/

/*==============================================================*/
/* Index: PRD_UMALT_FK                                          */
/*==============================================================*/
create index PRD_UMALT_FK on UNID_MED_ALTERNA (
   PRD_CODIGO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Index: UM_UMA_FK                                             */
/*==============================================================*/
create index UM_UMA_FK on UNID_MED_ALTERNA (
   UNI_CODIGO__ ASC
)
tablespace INDICE_2024_01
/

/*==============================================================*/
/* Table: VENDEDOR                                              */
/*==============================================================*/
create table VENDEDOR (
   VEN_CEDULA__         VARCHAR2(20)          not null
      constraint CKC_VEN_CEDULA___VENDEDOR check (VEN_CEDULA__ = upper(VEN_CEDULA__)),
   SUC_CODIGO           VARCHAR2(20)          not null
      constraint CKC_SUC_CODIGO_VENDEDOR check (SUC_CODIGO = upper(SUC_CODIGO)),
   VEN_NOMBRE__         VARCHAR2(20),
   VEN_APELLIDO__       VARCHAR2(20),
   VEN_CORREO__         VARCHAR2(20),
   VEN_TELEFONO__       VARCHAR2(13),
   VEN_P_COMISION__     NUMBER,
   VEN_CUENTA_BANCO__   VARCHAR2(20)        
      constraint CKC_VEN_CUENTA_BANCO__VENDEDOR check (VEN_CUENTA_BANCO__ is null or (VEN_CUENTA_BANCO__ = upper(VEN_CUENTA_BANCO__))),
   constraint PK_VENDEDOR primary key (VEN_CEDULA__)
)
   tablespace DATOS_2024_01
/

comment on column VENDEDOR.VEN_NOMBRE__ is
'Nombre del vendedor
'
/

comment on column VENDEDOR.VEN_APELLIDO__ is
'Apellido del vendedor
'
/

comment on column VENDEDOR.VEN_CORREO__ is
'Correo del vendedor
'
/

comment on column VENDEDOR.VEN_TELEFONO__ is
'Telefono del vendedor
'
/

comment on column VENDEDOR.VEN_P_COMISION__ is
'Comisiones totales del vendedor
'
/

comment on column VENDEDOR.VEN_CUENTA_BANCO__ is
'Cuenta del banco
'
/

/*==============================================================*/
/* Index: SUCURSAL_VENDEDOR_FK                                  */
/*==============================================================*/
create index SUCURSAL_VENDEDOR_FK on VENDEDOR (
   SUC_CODIGO ASC
)
tablespace INDICE_2024_01
/


create trigger TDB_BODEGA before delete
on BODEGA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of DeleteParentRestrict constraint for "PRODUCTO_BODEGA"
    cursor cfk1_producto_bodega(var_bod_codigo varchar) is
       select 1
       from   PRODUCTO_BODEGA
       where  BOD_CODIGO = var_bod_codigo
        and   var_bod_codigo is not null;
    --  Declaration of DeleteParentRestrict constraint for "ORDEN_COMPRA"
    cursor cfk2_orden_compra(var_bod_codigo varchar) is
       select 1
       from   ORDEN_COMPRA
       where  BOD_CODIGO = var_bod_codigo
        and   var_bod_codigo is not null;
    --  Declaration of DeleteParentRestrict constraint for "KARDEX"
    cursor cfk3_kardex(var_bod_codigo varchar) is
       select 1
       from   KARDEX
       where  BOD_CODIGO = var_bod_codigo
        and   var_bod_codigo is not null;

begin
    --  Cannot delete parent "BODEGA" if children still exist in "PRODUCTO_BODEGA"
    open  cfk1_producto_bodega(:old.BOD_CODIGO);
    fetch cfk1_producto_bodega into dummy;
    found := cfk1_producto_bodega%FOUND;
    close cfk1_producto_bodega;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "PRODUCTO_BODEGA". Cannot delete parent "BODEGA".';
       raise integrity_error;
    end if;

    --  Cannot delete parent "BODEGA" if children still exist in "ORDEN_COMPRA"
    open  cfk2_orden_compra(:old.BOD_CODIGO);
    fetch cfk2_orden_compra into dummy;
    found := cfk2_orden_compra%FOUND;
    close cfk2_orden_compra;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "ORDEN_COMPRA". Cannot delete parent "BODEGA".';
       raise integrity_error;
    end if;

    --  Cannot delete parent "BODEGA" if children still exist in "KARDEX"
    open  cfk3_kardex(:old.BOD_CODIGO);
    fetch cfk3_kardex into dummy;
    found := cfk3_kardex%FOUND;
    close cfk3_kardex;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "KARDEX". Cannot delete parent "BODEGA".';
       raise integrity_error;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_BODEGA before insert
on BODEGA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of InsertChildParentExist constraint for the parent "SUCURSAL"
    cursor cpk1_bodega(var_suc_codigo varchar) is
       select 1
       from   SUCURSAL
       where  SUC_CODIGO = var_suc_codigo
        and   var_suc_codigo is not null;

begin
    --  Parent "SUCURSAL" must exist when inserting a child in "BODEGA"
    if :new.SUC_CODIGO is not null then
       open  cpk1_bodega(:new.SUC_CODIGO);
       fetch cpk1_bodega into dummy;
       found := cpk1_bodega%FOUND;
       close cpk1_bodega;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "SUCURSAL". Cannot create child in "BODEGA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_BODEGA before update
of BOD_CODIGO,
   SUC_CODIGO
on BODEGA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    seq NUMBER;
    --  Declaration of UpdateChildParentExist constraint for the parent "SUCURSAL"
    cursor cpk1_bodega(var_suc_codigo varchar) is
       select 1
       from   SUCURSAL
       where  SUC_CODIGO = var_suc_codigo
        and   var_suc_codigo is not null;
    --  Declaration of UpdateParentRestrict constraint for "PRODUCTO_BODEGA"
    cursor cfk1_producto_bodega(var_bod_codigo varchar) is
       select 1
       from   PRODUCTO_BODEGA
       where  BOD_CODIGO = var_bod_codigo
        and   var_bod_codigo is not null;
    --  Declaration of UpdateParentRestrict constraint for "ORDEN_COMPRA"
    cursor cfk2_orden_compra(var_bod_codigo varchar) is
       select 1
       from   ORDEN_COMPRA
       where  BOD_CODIGO = var_bod_codigo
        and   var_bod_codigo is not null;
    --  Declaration of UpdateParentRestrict constraint for "KARDEX"
    cursor cfk3_kardex(var_bod_codigo varchar) is
       select 1
       from   KARDEX
       where  BOD_CODIGO = var_bod_codigo
        and   var_bod_codigo is not null;

begin
    seq := IntegrityPackage.GetNestLevel;
    --  Parent "SUCURSAL" must exist when updating a child in "BODEGA"
    if (:new.SUC_CODIGO is not null) and (seq = 0) then
       open  cpk1_bodega(:new.SUC_CODIGO);
       fetch cpk1_bodega into dummy;
       found := cpk1_bodega%FOUND;
       close cpk1_bodega;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "SUCURSAL". Cannot update child in "BODEGA".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "BODEGA" if children still exist in "PRODUCTO_BODEGA"
    if (updating('BOD_CODIGO') and :old.BOD_CODIGO != :new.BOD_CODIGO) then
       open  cfk1_producto_bodega(:old.BOD_CODIGO);
       fetch cfk1_producto_bodega into dummy;
       found := cfk1_producto_bodega%FOUND;
       close cfk1_producto_bodega;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "PRODUCTO_BODEGA". Cannot modify parent code in "BODEGA".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "BODEGA" if children still exist in "ORDEN_COMPRA"
    if (updating('BOD_CODIGO') and :old.BOD_CODIGO != :new.BOD_CODIGO) then
       open  cfk2_orden_compra(:old.BOD_CODIGO);
       fetch cfk2_orden_compra into dummy;
       found := cfk2_orden_compra%FOUND;
       close cfk2_orden_compra;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "ORDEN_COMPRA". Cannot modify parent code in "BODEGA".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "BODEGA" if children still exist in "KARDEX"
    if (updating('BOD_CODIGO') and :old.BOD_CODIGO != :new.BOD_CODIGO) then
       open  cfk3_kardex(:old.BOD_CODIGO);
       fetch cfk3_kardex into dummy;
       found := cfk3_kardex%FOUND;
       close cfk3_kardex;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "KARDEX". Cannot modify parent code in "BODEGA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TDB_CATEGORIAS before delete
on CATEGORIAS for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of DeleteParentRestrict constraint for "PRODUCTO"
    cursor cfk1_producto(var_cat_codigo__ varchar) is
       select 1
       from   PRODUCTO
       where  CAT_CODIGO__ = var_cat_codigo__
        and   var_cat_codigo__ is not null;

begin
    --  Cannot delete parent "CATEGORIAS" if children still exist in "PRODUCTO"
    open  cfk1_producto(:old.CAT_CODIGO__);
    fetch cfk1_producto into dummy;
    found := cfk1_producto%FOUND;
    close cfk1_producto;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "PRODUCTO". Cannot delete parent "CATEGORIAS".';
       raise integrity_error;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_CATEGORIAS before update
of CAT_CODIGO__
on CATEGORIAS for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of UpdateParentRestrict constraint for "PRODUCTO"
    cursor cfk1_producto(var_cat_codigo__ varchar) is
       select 1
       from   PRODUCTO
       where  CAT_CODIGO__ = var_cat_codigo__
        and   var_cat_codigo__ is not null;

begin
    --  Cannot modify parent code in "CATEGORIAS" if children still exist in "PRODUCTO"
    if (updating('CAT_CODIGO__') and :old.CAT_CODIGO__ != :new.CAT_CODIGO__) then
       open  cfk1_producto(:old.CAT_CODIGO__);
       fetch cfk1_producto into dummy;
       found := cfk1_producto%FOUND;
       close cfk1_producto;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "PRODUCTO". Cannot modify parent code in "CATEGORIAS".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TDB_CIUDAD before delete
on CIUDAD for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of DeleteParentRestrict constraint for "SUCURSAL"
    cursor cfk1_sucursal(var_ciu_codigo__ varchar) is
       select 1
       from   SUCURSAL
       where  CIU_CODIGO__ = var_ciu_codigo__
        and   var_ciu_codigo__ is not null;
    --  Declaration of DeleteParentRestrict constraint for "CLIENTE"
    cursor cfk2_cliente(var_ciu_codigo__ varchar) is
       select 1
       from   CLIENTE
       where  CIU_CODIGO__ = var_ciu_codigo__
        and   var_ciu_codigo__ is not null;

begin
    --  Cannot delete parent "CIUDAD" if children still exist in "SUCURSAL"
    open  cfk1_sucursal(:old.CIU_CODIGO__);
    fetch cfk1_sucursal into dummy;
    found := cfk1_sucursal%FOUND;
    close cfk1_sucursal;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "SUCURSAL". Cannot delete parent "CIUDAD".';
       raise integrity_error;
    end if;

    --  Cannot delete parent "CIUDAD" if children still exist in "CLIENTE"
    open  cfk2_cliente(:old.CIU_CODIGO__);
    fetch cfk2_cliente into dummy;
    found := cfk2_cliente%FOUND;
    close cfk2_cliente;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "CLIENTE". Cannot delete parent "CIUDAD".';
       raise integrity_error;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_CIUDAD before insert
on CIUDAD for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of InsertChildParentExist constraint for the parent "PROVINCIA"
    cursor cpk1_ciudad(var_pov_codigo__ varchar) is
       select 1
       from   PROVINCIA
       where  POV_CODIGO__ = var_pov_codigo__
        and   var_pov_codigo__ is not null;

begin
    --  Parent "PROVINCIA" must exist when inserting a child in "CIUDAD"
    if :new.POV_CODIGO__ is not null then
       open  cpk1_ciudad(:new.POV_CODIGO__);
       fetch cpk1_ciudad into dummy;
       found := cpk1_ciudad%FOUND;
       close cpk1_ciudad;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "PROVINCIA". Cannot create child in "CIUDAD".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_CIUDAD before update
of CIU_CODIGO__,
   POV_CODIGO__
on CIUDAD for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    seq NUMBER;
    --  Declaration of UpdateChildParentExist constraint for the parent "PROVINCIA"
    cursor cpk1_ciudad(var_pov_codigo__ varchar) is
       select 1
       from   PROVINCIA
       where  POV_CODIGO__ = var_pov_codigo__
        and   var_pov_codigo__ is not null;
    --  Declaration of UpdateParentRestrict constraint for "SUCURSAL"
    cursor cfk1_sucursal(var_ciu_codigo__ varchar) is
       select 1
       from   SUCURSAL
       where  CIU_CODIGO__ = var_ciu_codigo__
        and   var_ciu_codigo__ is not null;
    --  Declaration of UpdateParentRestrict constraint for "CLIENTE"
    cursor cfk2_cliente(var_ciu_codigo__ varchar) is
       select 1
       from   CLIENTE
       where  CIU_CODIGO__ = var_ciu_codigo__
        and   var_ciu_codigo__ is not null;

begin
    seq := IntegrityPackage.GetNestLevel;
    --  Parent "PROVINCIA" must exist when updating a child in "CIUDAD"
    if (:new.POV_CODIGO__ is not null) and (seq = 0) then
       open  cpk1_ciudad(:new.POV_CODIGO__);
       fetch cpk1_ciudad into dummy;
       found := cpk1_ciudad%FOUND;
       close cpk1_ciudad;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "PROVINCIA". Cannot update child in "CIUDAD".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "CIUDAD" if children still exist in "SUCURSAL"
    if (updating('CIU_CODIGO__') and :old.CIU_CODIGO__ != :new.CIU_CODIGO__) then
       open  cfk1_sucursal(:old.CIU_CODIGO__);
       fetch cfk1_sucursal into dummy;
       found := cfk1_sucursal%FOUND;
       close cfk1_sucursal;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "SUCURSAL". Cannot modify parent code in "CIUDAD".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "CIUDAD" if children still exist in "CLIENTE"
    if (updating('CIU_CODIGO__') and :old.CIU_CODIGO__ != :new.CIU_CODIGO__) then
       open  cfk2_cliente(:old.CIU_CODIGO__);
       fetch cfk2_cliente into dummy;
       found := cfk2_cliente%FOUND;
       close cfk2_cliente;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "CLIENTE". Cannot modify parent code in "CIUDAD".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TDB_CLIENTE before delete
on CLIENTE for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of DeleteParentRestrict constraint for "FACTURA"
    cursor cfk1_factura(var_cli_cedula_ruc__ varchar) is
       select 1
       from   FACTURA
       where  CLI_CEDULA_RUC__ = var_cli_cedula_ruc__
        and   var_cli_cedula_ruc__ is not null;

begin
    --  Cannot delete parent "CLIENTE" if children still exist in "FACTURA"
    open  cfk1_factura(:old.CLI_CEDULA_RUC__);
    fetch cfk1_factura into dummy;
    found := cfk1_factura%FOUND;
    close cfk1_factura;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "FACTURA". Cannot delete parent "CLIENTE".';
       raise integrity_error;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_CLIENTE before insert
on CLIENTE for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of InsertChildParentExist constraint for the parent "CIUDAD"
    cursor cpk1_cliente(var_ciu_codigo__ varchar) is
       select 1
       from   CIUDAD
       where  CIU_CODIGO__ = var_ciu_codigo__
        and   var_ciu_codigo__ is not null;

begin
    --  Parent "CIUDAD" must exist when inserting a child in "CLIENTE"
    if :new.CIU_CODIGO__ is not null then
       open  cpk1_cliente(:new.CIU_CODIGO__);
       fetch cpk1_cliente into dummy;
       found := cpk1_cliente%FOUND;
       close cpk1_cliente;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "CIUDAD". Cannot create child in "CLIENTE".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_CLIENTE before update
of CLI_CEDULA_RUC__,
   CIU_CODIGO__
on CLIENTE for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    seq NUMBER;
    --  Declaration of UpdateChildParentExist constraint for the parent "CIUDAD"
    cursor cpk1_cliente(var_ciu_codigo__ varchar) is
       select 1
       from   CIUDAD
       where  CIU_CODIGO__ = var_ciu_codigo__
        and   var_ciu_codigo__ is not null;
    --  Declaration of UpdateParentRestrict constraint for "FACTURA"
    cursor cfk1_factura(var_cli_cedula_ruc__ varchar) is
       select 1
       from   FACTURA
       where  CLI_CEDULA_RUC__ = var_cli_cedula_ruc__
        and   var_cli_cedula_ruc__ is not null;

begin
    seq := IntegrityPackage.GetNestLevel;
    --  Parent "CIUDAD" must exist when updating a child in "CLIENTE"
    if (:new.CIU_CODIGO__ is not null) and (seq = 0) then
       open  cpk1_cliente(:new.CIU_CODIGO__);
       fetch cpk1_cliente into dummy;
       found := cpk1_cliente%FOUND;
       close cpk1_cliente;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "CIUDAD". Cannot update child in "CLIENTE".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "CLIENTE" if children still exist in "FACTURA"
    if (updating('CLI_CEDULA_RUC__') and :old.CLI_CEDULA_RUC__ != :new.CLI_CEDULA_RUC__) then
       open  cfk1_factura(:old.CLI_CEDULA_RUC__);
       fetch cfk1_factura into dummy;
       found := cfk1_factura%FOUND;
       close cfk1_factura;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "FACTURA". Cannot modify parent code in "CLIENTE".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_COMISION before insert
on COMISION for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of InsertChildParentExist constraint for the parent "VENDEDOR"
    cursor cpk1_comision(var_ven_cedula__ varchar) is
       select 1
       from   VENDEDOR
       where  VEN_CEDULA__ = var_ven_cedula__
        and   var_ven_cedula__ is not null;

begin
    --  Parent "VENDEDOR" must exist when inserting a child in "COMISION"
    if :new.VEN_CEDULA__ is not null then
       open  cpk1_comision(:new.VEN_CEDULA__);
       fetch cpk1_comision into dummy;
       found := cpk1_comision%FOUND;
       close cpk1_comision;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "VENDEDOR". Cannot create child in "COMISION".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_COMISION before update
of COM_NUMERO__,
   VEN_CEDULA__
on COMISION for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    seq NUMBER;
    --  Declaration of UpdateChildParentExist constraint for the parent "VENDEDOR"
    cursor cpk1_comision(var_ven_cedula__ varchar) is
       select 1
       from   VENDEDOR
       where  VEN_CEDULA__ = var_ven_cedula__
        and   var_ven_cedula__ is not null;

begin
    seq := IntegrityPackage.GetNestLevel;
    --  Parent "VENDEDOR" must exist when updating a child in "COMISION"
    if (:new.VEN_CEDULA__ is not null) and (seq = 0) then
       open  cpk1_comision(:new.VEN_CEDULA__);
       fetch cpk1_comision into dummy;
       found := cpk1_comision%FOUND;
       close cpk1_comision;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "VENDEDOR". Cannot update child in "COMISION".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_DETALLE_FACTURA before insert
on DETALLE_FACTURA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of InsertChildParentExist constraint for the parent "FACTURA"
    cursor cpk1_detalle_factura(var_fac_numero__ varchar) is
       select 1
       from   FACTURA
       where  FAC_NUMERO__ = var_fac_numero__
        and   var_fac_numero__ is not null;
    --  Declaration of InsertChildParentExist constraint for the parent "PRODUCTO"
    cursor cpk2_detalle_factura(var_prd_codigo__ varchar) is
       select 1
       from   PRODUCTO
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;

begin
    --  Parent "FACTURA" must exist when inserting a child in "DETALLE_FACTURA"
    if :new.FAC_NUMERO__ is not null then
       open  cpk1_detalle_factura(:new.FAC_NUMERO__);
       fetch cpk1_detalle_factura into dummy;
       found := cpk1_detalle_factura%FOUND;
       close cpk1_detalle_factura;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "FACTURA". Cannot create child in "DETALLE_FACTURA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "PRODUCTO" must exist when inserting a child in "DETALLE_FACTURA"
    if :new.PRD_CODIGO__ is not null then
       open  cpk2_detalle_factura(:new.PRD_CODIGO__);
       fetch cpk2_detalle_factura into dummy;
       found := cpk2_detalle_factura%FOUND;
       close cpk2_detalle_factura;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "PRODUCTO". Cannot create child in "DETALLE_FACTURA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_DETALLE_FACTURA before update
of FAC_NUMERO__,
   PRD_CODIGO__
on DETALLE_FACTURA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    seq NUMBER;
    --  Declaration of UpdateChildParentExist constraint for the parent "FACTURA"
    cursor cpk1_detalle_factura(var_fac_numero__ varchar) is
       select 1
       from   FACTURA
       where  FAC_NUMERO__ = var_fac_numero__
        and   var_fac_numero__ is not null;
    --  Declaration of UpdateChildParentExist constraint for the parent "PRODUCTO"
    cursor cpk2_detalle_factura(var_prd_codigo__ varchar) is
       select 1
       from   PRODUCTO
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;

begin
    seq := IntegrityPackage.GetNestLevel;
    --  Parent "FACTURA" must exist when updating a child in "DETALLE_FACTURA"
    if (:new.FAC_NUMERO__ is not null) and (seq = 0) then
       open  cpk1_detalle_factura(:new.FAC_NUMERO__);
       fetch cpk1_detalle_factura into dummy;
       found := cpk1_detalle_factura%FOUND;
       close cpk1_detalle_factura;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "FACTURA". Cannot update child in "DETALLE_FACTURA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "PRODUCTO" must exist when updating a child in "DETALLE_FACTURA"
    if (:new.PRD_CODIGO__ is not null) and (seq = 0) then
       open  cpk2_detalle_factura(:new.PRD_CODIGO__);
       fetch cpk2_detalle_factura into dummy;
       found := cpk2_detalle_factura%FOUND;
       close cpk2_detalle_factura;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "PRODUCTO". Cannot update child in "DETALLE_FACTURA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_DETALLE_ORDEN_COMPRA before insert
on DETALLE_ORDEN_COMPRA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of InsertChildParentExist constraint for the parent "ORDEN_COMPRA"
    cursor cpk1_detalle_orden_compra(var_ord_numero__ varchar) is
       select 1
       from   ORDEN_COMPRA
       where  ORD_NUMERO__ = var_ord_numero__
        and   var_ord_numero__ is not null;
    --  Declaration of InsertChildParentExist constraint for the parent "PRODUCTO"
    cursor cpk2_detalle_orden_compra(var_prd_codigo__ varchar) is
       select 1
       from   PRODUCTO
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;

begin
    --  Parent "ORDEN_COMPRA" must exist when inserting a child in "DETALLE_ORDEN_COMPRA"
    if :new.ORD_NUMERO__ is not null then
       open  cpk1_detalle_orden_compra(:new.ORD_NUMERO__);
       fetch cpk1_detalle_orden_compra into dummy;
       found := cpk1_detalle_orden_compra%FOUND;
       close cpk1_detalle_orden_compra;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "ORDEN_COMPRA". Cannot create child in "DETALLE_ORDEN_COMPRA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "PRODUCTO" must exist when inserting a child in "DETALLE_ORDEN_COMPRA"
    if :new.PRD_CODIGO__ is not null then
       open  cpk2_detalle_orden_compra(:new.PRD_CODIGO__);
       fetch cpk2_detalle_orden_compra into dummy;
       found := cpk2_detalle_orden_compra%FOUND;
       close cpk2_detalle_orden_compra;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "PRODUCTO". Cannot create child in "DETALLE_ORDEN_COMPRA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_DETALLE_ORDEN_COMPRA before update
of ORD_NUMERO__,
   PRD_CODIGO__
on DETALLE_ORDEN_COMPRA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    seq NUMBER;
    --  Declaration of UpdateChildParentExist constraint for the parent "ORDEN_COMPRA"
    cursor cpk1_detalle_orden_compra(var_ord_numero__ varchar) is
       select 1
       from   ORDEN_COMPRA
       where  ORD_NUMERO__ = var_ord_numero__
        and   var_ord_numero__ is not null;
    --  Declaration of UpdateChildParentExist constraint for the parent "PRODUCTO"
    cursor cpk2_detalle_orden_compra(var_prd_codigo__ varchar) is
       select 1
       from   PRODUCTO
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;

begin
    seq := IntegrityPackage.GetNestLevel;
    --  Parent "ORDEN_COMPRA" must exist when updating a child in "DETALLE_ORDEN_COMPRA"
    if (:new.ORD_NUMERO__ is not null) and (seq = 0) then
       open  cpk1_detalle_orden_compra(:new.ORD_NUMERO__);
       fetch cpk1_detalle_orden_compra into dummy;
       found := cpk1_detalle_orden_compra%FOUND;
       close cpk1_detalle_orden_compra;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "ORDEN_COMPRA". Cannot update child in "DETALLE_ORDEN_COMPRA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "PRODUCTO" must exist when updating a child in "DETALLE_ORDEN_COMPRA"
    if (:new.PRD_CODIGO__ is not null) and (seq = 0) then
       open  cpk2_detalle_orden_compra(:new.PRD_CODIGO__);
       fetch cpk2_detalle_orden_compra into dummy;
       found := cpk2_detalle_orden_compra%FOUND;
       close cpk2_detalle_orden_compra;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "PRODUCTO". Cannot update child in "DETALLE_ORDEN_COMPRA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TDB_FACTURA before delete
on FACTURA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of DeleteParentRestrict constraint for "DETALLE_FACTURA"
    cursor cfk1_detalle_factura(var_fac_numero__ varchar) is
       select 1
       from   DETALLE_FACTURA
       where  FAC_NUMERO__ = var_fac_numero__
        and   var_fac_numero__ is not null;
    --  Declaration of DeleteParentRestrict constraint for "FORMA_PAGO_ELEGIDA"
    cursor cfk2_forma_pago_elegida(var_fac_numero__ varchar) is
       select 1
       from   FORMA_PAGO_ELEGIDA
       where  FAC_NUMERO__ = var_fac_numero__
        and   var_fac_numero__ is not null;

begin
    --  Cannot delete parent "FACTURA" if children still exist in "DETALLE_FACTURA"
    open  cfk1_detalle_factura(:old.FAC_NUMERO__);
    fetch cfk1_detalle_factura into dummy;
    found := cfk1_detalle_factura%FOUND;
    close cfk1_detalle_factura;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "DETALLE_FACTURA". Cannot delete parent "FACTURA".';
       raise integrity_error;
    end if;

    --  Cannot delete parent "FACTURA" if children still exist in "FORMA_PAGO_ELEGIDA"
    open  cfk2_forma_pago_elegida(:old.FAC_NUMERO__);
    fetch cfk2_forma_pago_elegida into dummy;
    found := cfk2_forma_pago_elegida%FOUND;
    close cfk2_forma_pago_elegida;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "FORMA_PAGO_ELEGIDA". Cannot delete parent "FACTURA".';
       raise integrity_error;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_FACTURA before insert
on FACTURA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of InsertChildParentExist constraint for the parent "SUCURSAL"
    cursor cpk1_factura(var_suc_codigo varchar) is
       select 1
       from   SUCURSAL
       where  SUC_CODIGO = var_suc_codigo
        and   var_suc_codigo is not null;
    --  Declaration of InsertChildParentExist constraint for the parent "TRANSACCION"
    cursor cpk2_factura(var_trn_codigo__ varchar) is
       select 1
       from   TRANSACCION
       where  TRN_CODIGO__ = var_trn_codigo__
        and   var_trn_codigo__ is not null;
    --  Declaration of InsertChildParentExist constraint for the parent "CLIENTE"
    cursor cpk3_factura(var_cli_cedula_ruc__ varchar) is
       select 1
       from   CLIENTE
       where  CLI_CEDULA_RUC__ = var_cli_cedula_ruc__
        and   var_cli_cedula_ruc__ is not null;
    --  Declaration of InsertChildParentExist constraint for the parent "VENDEDOR"
    cursor cpk4_factura(var_ven_cedula__ varchar) is
       select 1
       from   VENDEDOR
       where  VEN_CEDULA__ = var_ven_cedula__
        and   var_ven_cedula__ is not null;

begin
    --  Parent "SUCURSAL" must exist when inserting a child in "FACTURA"
    if :new.SUC_CODIGO is not null then
       open  cpk1_factura(:new.SUC_CODIGO);
       fetch cpk1_factura into dummy;
       found := cpk1_factura%FOUND;
       close cpk1_factura;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "SUCURSAL". Cannot create child in "FACTURA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "TRANSACCION" must exist when inserting a child in "FACTURA"
    if :new.TRN_CODIGO__ is not null then
       open  cpk2_factura(:new.TRN_CODIGO__);
       fetch cpk2_factura into dummy;
       found := cpk2_factura%FOUND;
       close cpk2_factura;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "TRANSACCION". Cannot create child in "FACTURA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "CLIENTE" must exist when inserting a child in "FACTURA"
    if :new.CLI_CEDULA_RUC__ is not null then
       open  cpk3_factura(:new.CLI_CEDULA_RUC__);
       fetch cpk3_factura into dummy;
       found := cpk3_factura%FOUND;
       close cpk3_factura;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "CLIENTE". Cannot create child in "FACTURA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "VENDEDOR" must exist when inserting a child in "FACTURA"
    if :new.VEN_CEDULA__ is not null then
       open  cpk4_factura(:new.VEN_CEDULA__);
       fetch cpk4_factura into dummy;
       found := cpk4_factura%FOUND;
       close cpk4_factura;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "VENDEDOR". Cannot create child in "FACTURA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_FACTURA before update
of FAC_NUMERO__,
   SUC_CODIGO,
   TRN_CODIGO__,
   CLI_CEDULA_RUC__,
   VEN_CEDULA__
on FACTURA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    seq NUMBER;
    --  Declaration of UpdateChildParentExist constraint for the parent "SUCURSAL"
    cursor cpk1_factura(var_suc_codigo varchar) is
       select 1
       from   SUCURSAL
       where  SUC_CODIGO = var_suc_codigo
        and   var_suc_codigo is not null;
    --  Declaration of UpdateChildParentExist constraint for the parent "TRANSACCION"
    cursor cpk2_factura(var_trn_codigo__ varchar) is
       select 1
       from   TRANSACCION
       where  TRN_CODIGO__ = var_trn_codigo__
        and   var_trn_codigo__ is not null;
    --  Declaration of UpdateChildParentExist constraint for the parent "CLIENTE"
    cursor cpk3_factura(var_cli_cedula_ruc__ varchar) is
       select 1
       from   CLIENTE
       where  CLI_CEDULA_RUC__ = var_cli_cedula_ruc__
        and   var_cli_cedula_ruc__ is not null;
    --  Declaration of UpdateChildParentExist constraint for the parent "VENDEDOR"
    cursor cpk4_factura(var_ven_cedula__ varchar) is
       select 1
       from   VENDEDOR
       where  VEN_CEDULA__ = var_ven_cedula__
        and   var_ven_cedula__ is not null;
    --  Declaration of UpdateParentRestrict constraint for "DETALLE_FACTURA"
    cursor cfk1_detalle_factura(var_fac_numero__ varchar) is
       select 1
       from   DETALLE_FACTURA
       where  FAC_NUMERO__ = var_fac_numero__
        and   var_fac_numero__ is not null;
    --  Declaration of UpdateParentRestrict constraint for "FORMA_PAGO_ELEGIDA"
    cursor cfk2_forma_pago_elegida(var_fac_numero__ varchar) is
       select 1
       from   FORMA_PAGO_ELEGIDA
       where  FAC_NUMERO__ = var_fac_numero__
        and   var_fac_numero__ is not null;

begin
    seq := IntegrityPackage.GetNestLevel;
    --  Parent "SUCURSAL" must exist when updating a child in "FACTURA"
    if (:new.SUC_CODIGO is not null) and (seq = 0) then
       open  cpk1_factura(:new.SUC_CODIGO);
       fetch cpk1_factura into dummy;
       found := cpk1_factura%FOUND;
       close cpk1_factura;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "SUCURSAL". Cannot update child in "FACTURA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "TRANSACCION" must exist when updating a child in "FACTURA"
    if (:new.TRN_CODIGO__ is not null) and (seq = 0) then
       open  cpk2_factura(:new.TRN_CODIGO__);
       fetch cpk2_factura into dummy;
       found := cpk2_factura%FOUND;
       close cpk2_factura;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "TRANSACCION". Cannot update child in "FACTURA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "CLIENTE" must exist when updating a child in "FACTURA"
    if (:new.CLI_CEDULA_RUC__ is not null) and (seq = 0) then
       open  cpk3_factura(:new.CLI_CEDULA_RUC__);
       fetch cpk3_factura into dummy;
       found := cpk3_factura%FOUND;
       close cpk3_factura;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "CLIENTE". Cannot update child in "FACTURA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "VENDEDOR" must exist when updating a child in "FACTURA"
    if (:new.VEN_CEDULA__ is not null) and (seq = 0) then
       open  cpk4_factura(:new.VEN_CEDULA__);
       fetch cpk4_factura into dummy;
       found := cpk4_factura%FOUND;
       close cpk4_factura;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "VENDEDOR". Cannot update child in "FACTURA".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "FACTURA" if children still exist in "DETALLE_FACTURA"
    if (updating('FAC_NUMERO__') and :old.FAC_NUMERO__ != :new.FAC_NUMERO__) then
       open  cfk1_detalle_factura(:old.FAC_NUMERO__);
       fetch cfk1_detalle_factura into dummy;
       found := cfk1_detalle_factura%FOUND;
       close cfk1_detalle_factura;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "DETALLE_FACTURA". Cannot modify parent code in "FACTURA".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "FACTURA" if children still exist in "FORMA_PAGO_ELEGIDA"
    if (updating('FAC_NUMERO__') and :old.FAC_NUMERO__ != :new.FAC_NUMERO__) then
       open  cfk2_forma_pago_elegida(:old.FAC_NUMERO__);
       fetch cfk2_forma_pago_elegida into dummy;
       found := cfk2_forma_pago_elegida%FOUND;
       close cfk2_forma_pago_elegida;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "FORMA_PAGO_ELEGIDA". Cannot modify parent code in "FACTURA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TDB_FORMA_PAGO before delete
on FORMA_PAGO for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of DeleteParentRestrict constraint for "FORMA_PAGO_ELEGIDA"
    cursor cfk1_forma_pago_elegida(var_frp_codigo__ varchar) is
       select 1
       from   FORMA_PAGO_ELEGIDA
       where  FRP_CODIGO__ = var_frp_codigo__
        and   var_frp_codigo__ is not null;

begin
    --  Cannot delete parent "FORMA_PAGO" if children still exist in "FORMA_PAGO_ELEGIDA"
    open  cfk1_forma_pago_elegida(:old.FRP_CODIGO__);
    fetch cfk1_forma_pago_elegida into dummy;
    found := cfk1_forma_pago_elegida%FOUND;
    close cfk1_forma_pago_elegida;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "FORMA_PAGO_ELEGIDA". Cannot delete parent "FORMA_PAGO".';
       raise integrity_error;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_FORMA_PAGO before update
of FRP_CODIGO__
on FORMA_PAGO for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of UpdateParentRestrict constraint for "FORMA_PAGO_ELEGIDA"
    cursor cfk1_forma_pago_elegida(var_frp_codigo__ varchar) is
       select 1
       from   FORMA_PAGO_ELEGIDA
       where  FRP_CODIGO__ = var_frp_codigo__
        and   var_frp_codigo__ is not null;

begin
    --  Cannot modify parent code in "FORMA_PAGO" if children still exist in "FORMA_PAGO_ELEGIDA"
    if (updating('FRP_CODIGO__') and :old.FRP_CODIGO__ != :new.FRP_CODIGO__) then
       open  cfk1_forma_pago_elegida(:old.FRP_CODIGO__);
       fetch cfk1_forma_pago_elegida into dummy;
       found := cfk1_forma_pago_elegida%FOUND;
       close cfk1_forma_pago_elegida;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "FORMA_PAGO_ELEGIDA". Cannot modify parent code in "FORMA_PAGO".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_FORMA_PAGO_ELEGIDA before insert
on FORMA_PAGO_ELEGIDA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of InsertChildParentExist constraint for the parent "FORMA_PAGO"
    cursor cpk1_forma_pago_elegida(var_frp_codigo__ varchar) is
       select 1
       from   FORMA_PAGO
       where  FRP_CODIGO__ = var_frp_codigo__
        and   var_frp_codigo__ is not null;
    --  Declaration of InsertChildParentExist constraint for the parent "FACTURA"
    cursor cpk2_forma_pago_elegida(var_fac_numero__ varchar) is
       select 1
       from   FACTURA
       where  FAC_NUMERO__ = var_fac_numero__
        and   var_fac_numero__ is not null;

begin
    --  Parent "FORMA_PAGO" must exist when inserting a child in "FORMA_PAGO_ELEGIDA"
    if :new.FRP_CODIGO__ is not null then
       open  cpk1_forma_pago_elegida(:new.FRP_CODIGO__);
       fetch cpk1_forma_pago_elegida into dummy;
       found := cpk1_forma_pago_elegida%FOUND;
       close cpk1_forma_pago_elegida;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "FORMA_PAGO". Cannot create child in "FORMA_PAGO_ELEGIDA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "FACTURA" must exist when inserting a child in "FORMA_PAGO_ELEGIDA"
    if :new.FAC_NUMERO__ is not null then
       open  cpk2_forma_pago_elegida(:new.FAC_NUMERO__);
       fetch cpk2_forma_pago_elegida into dummy;
       found := cpk2_forma_pago_elegida%FOUND;
       close cpk2_forma_pago_elegida;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "FACTURA". Cannot create child in "FORMA_PAGO_ELEGIDA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_FORMA_PAGO_ELEGIDA before update
of FRP_CODIGO__,
   FAC_NUMERO__
on FORMA_PAGO_ELEGIDA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    seq NUMBER;
    --  Declaration of UpdateChildParentExist constraint for the parent "FORMA_PAGO"
    cursor cpk1_forma_pago_elegida(var_frp_codigo__ varchar) is
       select 1
       from   FORMA_PAGO
       where  FRP_CODIGO__ = var_frp_codigo__
        and   var_frp_codigo__ is not null;
    --  Declaration of UpdateChildParentExist constraint for the parent "FACTURA"
    cursor cpk2_forma_pago_elegida(var_fac_numero__ varchar) is
       select 1
       from   FACTURA
       where  FAC_NUMERO__ = var_fac_numero__
        and   var_fac_numero__ is not null;

begin
    seq := IntegrityPackage.GetNestLevel;
    --  Parent "FORMA_PAGO" must exist when updating a child in "FORMA_PAGO_ELEGIDA"
    if (:new.FRP_CODIGO__ is not null) and (seq = 0) then
       open  cpk1_forma_pago_elegida(:new.FRP_CODIGO__);
       fetch cpk1_forma_pago_elegida into dummy;
       found := cpk1_forma_pago_elegida%FOUND;
       close cpk1_forma_pago_elegida;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "FORMA_PAGO". Cannot update child in "FORMA_PAGO_ELEGIDA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "FACTURA" must exist when updating a child in "FORMA_PAGO_ELEGIDA"
    if (:new.FAC_NUMERO__ is not null) and (seq = 0) then
       open  cpk2_forma_pago_elegida(:new.FAC_NUMERO__);
       fetch cpk2_forma_pago_elegida into dummy;
       found := cpk2_forma_pago_elegida%FOUND;
       close cpk2_forma_pago_elegida;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "FACTURA". Cannot update child in "FORMA_PAGO_ELEGIDA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_KARDEX before insert
on KARDEX for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of InsertChildParentExist constraint for the parent "PRODUCTO"
    cursor cpk1_kardex(var_prd_codigo__ varchar) is
       select 1
       from   PRODUCTO
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;
    --  Declaration of InsertChildParentExist constraint for the parent "TRANSACCION"
    cursor cpk2_kardex(var_trn_codigo__ varchar) is
       select 1
       from   TRANSACCION
       where  TRN_CODIGO__ = var_trn_codigo__
        and   var_trn_codigo__ is not null;
    --  Declaration of InsertChildParentExist constraint for the parent "BODEGA"
    cursor cpk3_kardex(var_bod_codigo varchar) is
       select 1
       from   BODEGA
       where  BOD_CODIGO = var_bod_codigo
        and   var_bod_codigo is not null;

begin
    --  Parent "PRODUCTO" must exist when inserting a child in "KARDEX"
    if :new.PRD_CODIGO__ is not null then
       open  cpk1_kardex(:new.PRD_CODIGO__);
       fetch cpk1_kardex into dummy;
       found := cpk1_kardex%FOUND;
       close cpk1_kardex;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "PRODUCTO". Cannot create child in "KARDEX".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "TRANSACCION" must exist when inserting a child in "KARDEX"
    if :new.TRN_CODIGO__ is not null then
       open  cpk2_kardex(:new.TRN_CODIGO__);
       fetch cpk2_kardex into dummy;
       found := cpk2_kardex%FOUND;
       close cpk2_kardex;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "TRANSACCION". Cannot create child in "KARDEX".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "BODEGA" must exist when inserting a child in "KARDEX"
    if :new.BOD_CODIGO is not null then
       open  cpk3_kardex(:new.BOD_CODIGO);
       fetch cpk3_kardex into dummy;
       found := cpk3_kardex%FOUND;
       close cpk3_kardex;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "BODEGA". Cannot create child in "KARDEX".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_KARDEX before update
of PRD_CODIGO__,
   TRN_CODIGO__,
   BOD_CODIGO
on KARDEX for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    seq NUMBER;
    --  Declaration of UpdateChildParentExist constraint for the parent "PRODUCTO"
    cursor cpk1_kardex(var_prd_codigo__ varchar) is
       select 1
       from   PRODUCTO
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;
    --  Declaration of UpdateChildParentExist constraint for the parent "TRANSACCION"
    cursor cpk2_kardex(var_trn_codigo__ varchar) is
       select 1
       from   TRANSACCION
       where  TRN_CODIGO__ = var_trn_codigo__
        and   var_trn_codigo__ is not null;
    --  Declaration of UpdateChildParentExist constraint for the parent "BODEGA"
    cursor cpk3_kardex(var_bod_codigo varchar) is
       select 1
       from   BODEGA
       where  BOD_CODIGO = var_bod_codigo
        and   var_bod_codigo is not null;

begin
    seq := IntegrityPackage.GetNestLevel;
    --  Parent "PRODUCTO" must exist when updating a child in "KARDEX"
    if (:new.PRD_CODIGO__ is not null) and (seq = 0) then
       open  cpk1_kardex(:new.PRD_CODIGO__);
       fetch cpk1_kardex into dummy;
       found := cpk1_kardex%FOUND;
       close cpk1_kardex;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "PRODUCTO". Cannot update child in "KARDEX".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "TRANSACCION" must exist when updating a child in "KARDEX"
    if (:new.TRN_CODIGO__ is not null) and (seq = 0) then
       open  cpk2_kardex(:new.TRN_CODIGO__);
       fetch cpk2_kardex into dummy;
       found := cpk2_kardex%FOUND;
       close cpk2_kardex;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "TRANSACCION". Cannot update child in "KARDEX".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "BODEGA" must exist when updating a child in "KARDEX"
    if (:new.BOD_CODIGO is not null) and (seq = 0) then
       open  cpk3_kardex(:new.BOD_CODIGO);
       fetch cpk3_kardex into dummy;
       found := cpk3_kardex%FOUND;
       close cpk3_kardex;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "BODEGA". Cannot update child in "KARDEX".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TDB_ORDEN_COMPRA before delete
on ORDEN_COMPRA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of DeleteParentRestrict constraint for "DETALLE_ORDEN_COMPRA"
    cursor cfk1_detalle_orden_compra(var_ord_numero__ varchar) is
       select 1
       from   DETALLE_ORDEN_COMPRA
       where  ORD_NUMERO__ = var_ord_numero__
        and   var_ord_numero__ is not null;

begin
    --  Cannot delete parent "ORDEN_COMPRA" if children still exist in "DETALLE_ORDEN_COMPRA"
    open  cfk1_detalle_orden_compra(:old.ORD_NUMERO__);
    fetch cfk1_detalle_orden_compra into dummy;
    found := cfk1_detalle_orden_compra%FOUND;
    close cfk1_detalle_orden_compra;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "DETALLE_ORDEN_COMPRA". Cannot delete parent "ORDEN_COMPRA".';
       raise integrity_error;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_ORDEN_COMPRA before insert
on ORDEN_COMPRA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of InsertChildParentExist constraint for the parent "BODEGA"
    cursor cpk1_orden_compra(var_bod_codigo varchar) is
       select 1
       from   BODEGA
       where  BOD_CODIGO = var_bod_codigo
        and   var_bod_codigo is not null;
    --  Declaration of InsertChildParentExist constraint for the parent "PROOVEDOR"
    cursor cpk2_orden_compra(var_prv_codigo__ varchar) is
       select 1
       from   PROOVEDOR
       where  PRV_CODIGO__ = var_prv_codigo__
        and   var_prv_codigo__ is not null;

begin
    --  Parent "BODEGA" must exist when inserting a child in "ORDEN_COMPRA"
    if :new.BOD_CODIGO is not null then
       open  cpk1_orden_compra(:new.BOD_CODIGO);
       fetch cpk1_orden_compra into dummy;
       found := cpk1_orden_compra%FOUND;
       close cpk1_orden_compra;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "BODEGA". Cannot create child in "ORDEN_COMPRA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "PROOVEDOR" must exist when inserting a child in "ORDEN_COMPRA"
    if :new.PRV_CODIGO__ is not null then
       open  cpk2_orden_compra(:new.PRV_CODIGO__);
       fetch cpk2_orden_compra into dummy;
       found := cpk2_orden_compra%FOUND;
       close cpk2_orden_compra;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "PROOVEDOR". Cannot create child in "ORDEN_COMPRA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_ORDEN_COMPRA before update
of ORD_NUMERO__,
   BOD_CODIGO,
   PRV_CODIGO__
on ORDEN_COMPRA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    seq NUMBER;
    --  Declaration of UpdateChildParentExist constraint for the parent "BODEGA"
    cursor cpk1_orden_compra(var_bod_codigo varchar) is
       select 1
       from   BODEGA
       where  BOD_CODIGO = var_bod_codigo
        and   var_bod_codigo is not null;
    --  Declaration of UpdateChildParentExist constraint for the parent "PROOVEDOR"
    cursor cpk2_orden_compra(var_prv_codigo__ varchar) is
       select 1
       from   PROOVEDOR
       where  PRV_CODIGO__ = var_prv_codigo__
        and   var_prv_codigo__ is not null;
    --  Declaration of UpdateParentRestrict constraint for "DETALLE_ORDEN_COMPRA"
    cursor cfk1_detalle_orden_compra(var_ord_numero__ varchar) is
       select 1
       from   DETALLE_ORDEN_COMPRA
       where  ORD_NUMERO__ = var_ord_numero__
        and   var_ord_numero__ is not null;

begin
    seq := IntegrityPackage.GetNestLevel;
    --  Parent "BODEGA" must exist when updating a child in "ORDEN_COMPRA"
    if (:new.BOD_CODIGO is not null) and (seq = 0) then
       open  cpk1_orden_compra(:new.BOD_CODIGO);
       fetch cpk1_orden_compra into dummy;
       found := cpk1_orden_compra%FOUND;
       close cpk1_orden_compra;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "BODEGA". Cannot update child in "ORDEN_COMPRA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "PROOVEDOR" must exist when updating a child in "ORDEN_COMPRA"
    if (:new.PRV_CODIGO__ is not null) and (seq = 0) then
       open  cpk2_orden_compra(:new.PRV_CODIGO__);
       fetch cpk2_orden_compra into dummy;
       found := cpk2_orden_compra%FOUND;
       close cpk2_orden_compra;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "PROOVEDOR". Cannot update child in "ORDEN_COMPRA".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "ORDEN_COMPRA" if children still exist in "DETALLE_ORDEN_COMPRA"
    if (updating('ORD_NUMERO__') and :old.ORD_NUMERO__ != :new.ORD_NUMERO__) then
       open  cfk1_detalle_orden_compra(:old.ORD_NUMERO__);
       fetch cfk1_detalle_orden_compra into dummy;
       found := cfk1_detalle_orden_compra%FOUND;
       close cfk1_detalle_orden_compra;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "DETALLE_ORDEN_COMPRA". Cannot modify parent code in "ORDEN_COMPRA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TDB_PRODUCTO before delete
on PRODUCTO for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of DeleteParentRestrict constraint for "PRODUCTO_BODEGA"
    cursor cfk1_producto_bodega(var_prd_codigo__ varchar) is
       select 1
       from   PRODUCTO_BODEGA
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;
    --  Declaration of DeleteParentRestrict constraint for "PRODUCTO_PROOVEDOR"
    cursor cfk2_producto_proovedor(var_prd_codigo__ varchar) is
       select 1
       from   PRODUCTO_PROOVEDOR
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;
    --  Declaration of DeleteParentRestrict constraint for "DETALLE_ORDEN_COMPRA"
    cursor cfk3_detalle_orden_compra(var_prd_codigo__ varchar) is
       select 1
       from   DETALLE_ORDEN_COMPRA
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;
    --  Declaration of DeleteParentRestrict constraint for "KARDEX"
    cursor cfk4_kardex(var_prd_codigo__ varchar) is
       select 1
       from   KARDEX
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;
    --  Declaration of DeleteParentRestrict constraint for "DETALLE_FACTURA"
    cursor cfk5_detalle_factura(var_prd_codigo__ varchar) is
       select 1
       from   DETALLE_FACTURA
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;
    --  Declaration of DeleteParentRestrict constraint for "UNID_MED_ALTERNA"
    cursor cfk6_unid_med_alterna(var_prd_codigo__ varchar) is
       select 1
       from   UNID_MED_ALTERNA
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;

begin
    --  Cannot delete parent "PRODUCTO" if children still exist in "PRODUCTO_BODEGA"
    open  cfk1_producto_bodega(:old.PRD_CODIGO__);
    fetch cfk1_producto_bodega into dummy;
    found := cfk1_producto_bodega%FOUND;
    close cfk1_producto_bodega;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "PRODUCTO_BODEGA". Cannot delete parent "PRODUCTO".';
       raise integrity_error;
    end if;

    --  Cannot delete parent "PRODUCTO" if children still exist in "PRODUCTO_PROOVEDOR"
    open  cfk2_producto_proovedor(:old.PRD_CODIGO__);
    fetch cfk2_producto_proovedor into dummy;
    found := cfk2_producto_proovedor%FOUND;
    close cfk2_producto_proovedor;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "PRODUCTO_PROOVEDOR". Cannot delete parent "PRODUCTO".';
       raise integrity_error;
    end if;

    --  Cannot delete parent "PRODUCTO" if children still exist in "DETALLE_ORDEN_COMPRA"
    open  cfk3_detalle_orden_compra(:old.PRD_CODIGO__);
    fetch cfk3_detalle_orden_compra into dummy;
    found := cfk3_detalle_orden_compra%FOUND;
    close cfk3_detalle_orden_compra;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "DETALLE_ORDEN_COMPRA". Cannot delete parent "PRODUCTO".';
       raise integrity_error;
    end if;

    --  Cannot delete parent "PRODUCTO" if children still exist in "KARDEX"
    open  cfk4_kardex(:old.PRD_CODIGO__);
    fetch cfk4_kardex into dummy;
    found := cfk4_kardex%FOUND;
    close cfk4_kardex;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "KARDEX". Cannot delete parent "PRODUCTO".';
       raise integrity_error;
    end if;

    --  Cannot delete parent "PRODUCTO" if children still exist in "DETALLE_FACTURA"
    open  cfk5_detalle_factura(:old.PRD_CODIGO__);
    fetch cfk5_detalle_factura into dummy;
    found := cfk5_detalle_factura%FOUND;
    close cfk5_detalle_factura;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "DETALLE_FACTURA". Cannot delete parent "PRODUCTO".';
       raise integrity_error;
    end if;

    --  Cannot delete parent "PRODUCTO" if children still exist in "UNID_MED_ALTERNA"
    open  cfk6_unid_med_alterna(:old.PRD_CODIGO__);
    fetch cfk6_unid_med_alterna into dummy;
    found := cfk6_unid_med_alterna%FOUND;
    close cfk6_unid_med_alterna;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "UNID_MED_ALTERNA". Cannot delete parent "PRODUCTO".';
       raise integrity_error;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_PRODUCTO before insert
on PRODUCTO for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of InsertChildParentExist constraint for the parent "CATEGORIAS"
    cursor cpk1_producto(var_cat_codigo__ varchar) is
       select 1
       from   CATEGORIAS
       where  CAT_CODIGO__ = var_cat_codigo__
        and   var_cat_codigo__ is not null;

begin
    --  Parent "CATEGORIAS" must exist when inserting a child in "PRODUCTO"
    if :new.CAT_CODIGO__ is not null then
       open  cpk1_producto(:new.CAT_CODIGO__);
       fetch cpk1_producto into dummy;
       found := cpk1_producto%FOUND;
       close cpk1_producto;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "CATEGORIAS". Cannot create child in "PRODUCTO".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_PRODUCTO before update
of PRD_CODIGO__,
   CAT_CODIGO__
on PRODUCTO for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    seq NUMBER;
    --  Declaration of UpdateChildParentExist constraint for the parent "CATEGORIAS"
    cursor cpk1_producto(var_cat_codigo__ varchar) is
       select 1
       from   CATEGORIAS
       where  CAT_CODIGO__ = var_cat_codigo__
        and   var_cat_codigo__ is not null;
    --  Declaration of UpdateParentRestrict constraint for "PRODUCTO_BODEGA"
    cursor cfk1_producto_bodega(var_prd_codigo__ varchar) is
       select 1
       from   PRODUCTO_BODEGA
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;
    --  Declaration of UpdateParentRestrict constraint for "PRODUCTO_PROOVEDOR"
    cursor cfk2_producto_proovedor(var_prd_codigo__ varchar) is
       select 1
       from   PRODUCTO_PROOVEDOR
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;
    --  Declaration of UpdateParentRestrict constraint for "DETALLE_ORDEN_COMPRA"
    cursor cfk3_detalle_orden_compra(var_prd_codigo__ varchar) is
       select 1
       from   DETALLE_ORDEN_COMPRA
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;
    --  Declaration of UpdateParentRestrict constraint for "KARDEX"
    cursor cfk4_kardex(var_prd_codigo__ varchar) is
       select 1
       from   KARDEX
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;
    --  Declaration of UpdateParentRestrict constraint for "DETALLE_FACTURA"
    cursor cfk5_detalle_factura(var_prd_codigo__ varchar) is
       select 1
       from   DETALLE_FACTURA
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;
    --  Declaration of UpdateParentRestrict constraint for "UNID_MED_ALTERNA"
    cursor cfk6_unid_med_alterna(var_prd_codigo__ varchar) is
       select 1
       from   UNID_MED_ALTERNA
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;

begin
    seq := IntegrityPackage.GetNestLevel;
    --  Parent "CATEGORIAS" must exist when updating a child in "PRODUCTO"
    if (:new.CAT_CODIGO__ is not null) and (seq = 0) then
       open  cpk1_producto(:new.CAT_CODIGO__);
       fetch cpk1_producto into dummy;
       found := cpk1_producto%FOUND;
       close cpk1_producto;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "CATEGORIAS". Cannot update child in "PRODUCTO".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "PRODUCTO" if children still exist in "PRODUCTO_BODEGA"
    if (updating('PRD_CODIGO__') and :old.PRD_CODIGO__ != :new.PRD_CODIGO__) then
       open  cfk1_producto_bodega(:old.PRD_CODIGO__);
       fetch cfk1_producto_bodega into dummy;
       found := cfk1_producto_bodega%FOUND;
       close cfk1_producto_bodega;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "PRODUCTO_BODEGA". Cannot modify parent code in "PRODUCTO".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "PRODUCTO" if children still exist in "PRODUCTO_PROOVEDOR"
    if (updating('PRD_CODIGO__') and :old.PRD_CODIGO__ != :new.PRD_CODIGO__) then
       open  cfk2_producto_proovedor(:old.PRD_CODIGO__);
       fetch cfk2_producto_proovedor into dummy;
       found := cfk2_producto_proovedor%FOUND;
       close cfk2_producto_proovedor;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "PRODUCTO_PROOVEDOR". Cannot modify parent code in "PRODUCTO".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "PRODUCTO" if children still exist in "DETALLE_ORDEN_COMPRA"
    if (updating('PRD_CODIGO__') and :old.PRD_CODIGO__ != :new.PRD_CODIGO__) then
       open  cfk3_detalle_orden_compra(:old.PRD_CODIGO__);
       fetch cfk3_detalle_orden_compra into dummy;
       found := cfk3_detalle_orden_compra%FOUND;
       close cfk3_detalle_orden_compra;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "DETALLE_ORDEN_COMPRA". Cannot modify parent code in "PRODUCTO".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "PRODUCTO" if children still exist in "KARDEX"
    if (updating('PRD_CODIGO__') and :old.PRD_CODIGO__ != :new.PRD_CODIGO__) then
       open  cfk4_kardex(:old.PRD_CODIGO__);
       fetch cfk4_kardex into dummy;
       found := cfk4_kardex%FOUND;
       close cfk4_kardex;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "KARDEX". Cannot modify parent code in "PRODUCTO".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "PRODUCTO" if children still exist in "DETALLE_FACTURA"
    if (updating('PRD_CODIGO__') and :old.PRD_CODIGO__ != :new.PRD_CODIGO__) then
       open  cfk5_detalle_factura(:old.PRD_CODIGO__);
       fetch cfk5_detalle_factura into dummy;
       found := cfk5_detalle_factura%FOUND;
       close cfk5_detalle_factura;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "DETALLE_FACTURA". Cannot modify parent code in "PRODUCTO".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "PRODUCTO" if children still exist in "UNID_MED_ALTERNA"
    if (updating('PRD_CODIGO__') and :old.PRD_CODIGO__ != :new.PRD_CODIGO__) then
       open  cfk6_unid_med_alterna(:old.PRD_CODIGO__);
       fetch cfk6_unid_med_alterna into dummy;
       found := cfk6_unid_med_alterna%FOUND;
       close cfk6_unid_med_alterna;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "UNID_MED_ALTERNA". Cannot modify parent code in "PRODUCTO".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_PRODUCTO_BODEGA before insert
on PRODUCTO_BODEGA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of InsertChildParentExist constraint for the parent "BODEGA"
    cursor cpk1_producto_bodega(var_bod_codigo varchar) is
       select 1
       from   BODEGA
       where  BOD_CODIGO = var_bod_codigo
        and   var_bod_codigo is not null;
    --  Declaration of InsertChildParentExist constraint for the parent "PRODUCTO"
    cursor cpk2_producto_bodega(var_prd_codigo__ varchar) is
       select 1
       from   PRODUCTO
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;

begin
    --  Parent "BODEGA" must exist when inserting a child in "PRODUCTO_BODEGA"
    if :new.BOD_CODIGO is not null then
       open  cpk1_producto_bodega(:new.BOD_CODIGO);
       fetch cpk1_producto_bodega into dummy;
       found := cpk1_producto_bodega%FOUND;
       close cpk1_producto_bodega;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "BODEGA". Cannot create child in "PRODUCTO_BODEGA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "PRODUCTO" must exist when inserting a child in "PRODUCTO_BODEGA"
    if :new.PRD_CODIGO__ is not null then
       open  cpk2_producto_bodega(:new.PRD_CODIGO__);
       fetch cpk2_producto_bodega into dummy;
       found := cpk2_producto_bodega%FOUND;
       close cpk2_producto_bodega;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "PRODUCTO". Cannot create child in "PRODUCTO_BODEGA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_PRODUCTO_BODEGA before update
of BOD_CODIGO,
   PRD_CODIGO__
on PRODUCTO_BODEGA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    seq NUMBER;
    --  Declaration of UpdateChildParentExist constraint for the parent "BODEGA"
    cursor cpk1_producto_bodega(var_bod_codigo varchar) is
       select 1
       from   BODEGA
       where  BOD_CODIGO = var_bod_codigo
        and   var_bod_codigo is not null;
    --  Declaration of UpdateChildParentExist constraint for the parent "PRODUCTO"
    cursor cpk2_producto_bodega(var_prd_codigo__ varchar) is
       select 1
       from   PRODUCTO
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;

begin
    seq := IntegrityPackage.GetNestLevel;
    --  Parent "BODEGA" must exist when updating a child in "PRODUCTO_BODEGA"
    if (:new.BOD_CODIGO is not null) and (seq = 0) then
       open  cpk1_producto_bodega(:new.BOD_CODIGO);
       fetch cpk1_producto_bodega into dummy;
       found := cpk1_producto_bodega%FOUND;
       close cpk1_producto_bodega;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "BODEGA". Cannot update child in "PRODUCTO_BODEGA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "PRODUCTO" must exist when updating a child in "PRODUCTO_BODEGA"
    if (:new.PRD_CODIGO__ is not null) and (seq = 0) then
       open  cpk2_producto_bodega(:new.PRD_CODIGO__);
       fetch cpk2_producto_bodega into dummy;
       found := cpk2_producto_bodega%FOUND;
       close cpk2_producto_bodega;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "PRODUCTO". Cannot update child in "PRODUCTO_BODEGA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_PRODUCTO_PROOVEDOR before insert
on PRODUCTO_PROOVEDOR for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of InsertChildParentExist constraint for the parent "PROOVEDOR"
    cursor cpk1_producto_proovedor(var_prv_codigo__ varchar) is
       select 1
       from   PROOVEDOR
       where  PRV_CODIGO__ = var_prv_codigo__
        and   var_prv_codigo__ is not null;
    --  Declaration of InsertChildParentExist constraint for the parent "PRODUCTO"
    cursor cpk2_producto_proovedor(var_prd_codigo__ varchar) is
       select 1
       from   PRODUCTO
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;

begin
    --  Parent "PROOVEDOR" must exist when inserting a child in "PRODUCTO_PROOVEDOR"
    if :new.PRV_CODIGO__ is not null then
       open  cpk1_producto_proovedor(:new.PRV_CODIGO__);
       fetch cpk1_producto_proovedor into dummy;
       found := cpk1_producto_proovedor%FOUND;
       close cpk1_producto_proovedor;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "PROOVEDOR". Cannot create child in "PRODUCTO_PROOVEDOR".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "PRODUCTO" must exist when inserting a child in "PRODUCTO_PROOVEDOR"
    if :new.PRD_CODIGO__ is not null then
       open  cpk2_producto_proovedor(:new.PRD_CODIGO__);
       fetch cpk2_producto_proovedor into dummy;
       found := cpk2_producto_proovedor%FOUND;
       close cpk2_producto_proovedor;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "PRODUCTO". Cannot create child in "PRODUCTO_PROOVEDOR".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_PRODUCTO_PROOVEDOR before update
of PRV_CODIGO__,
   PRD_CODIGO__
on PRODUCTO_PROOVEDOR for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    seq NUMBER;
    --  Declaration of UpdateChildParentExist constraint for the parent "PROOVEDOR"
    cursor cpk1_producto_proovedor(var_prv_codigo__ varchar) is
       select 1
       from   PROOVEDOR
       where  PRV_CODIGO__ = var_prv_codigo__
        and   var_prv_codigo__ is not null;
    --  Declaration of UpdateChildParentExist constraint for the parent "PRODUCTO"
    cursor cpk2_producto_proovedor(var_prd_codigo__ varchar) is
       select 1
       from   PRODUCTO
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;

begin
    seq := IntegrityPackage.GetNestLevel;
    --  Parent "PROOVEDOR" must exist when updating a child in "PRODUCTO_PROOVEDOR"
    if (:new.PRV_CODIGO__ is not null) and (seq = 0) then
       open  cpk1_producto_proovedor(:new.PRV_CODIGO__);
       fetch cpk1_producto_proovedor into dummy;
       found := cpk1_producto_proovedor%FOUND;
       close cpk1_producto_proovedor;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "PROOVEDOR". Cannot update child in "PRODUCTO_PROOVEDOR".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "PRODUCTO" must exist when updating a child in "PRODUCTO_PROOVEDOR"
    if (:new.PRD_CODIGO__ is not null) and (seq = 0) then
       open  cpk2_producto_proovedor(:new.PRD_CODIGO__);
       fetch cpk2_producto_proovedor into dummy;
       found := cpk2_producto_proovedor%FOUND;
       close cpk2_producto_proovedor;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "PRODUCTO". Cannot update child in "PRODUCTO_PROOVEDOR".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TDB_PROOVEDOR before delete
on PROOVEDOR for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of DeleteParentRestrict constraint for "ORDEN_COMPRA"
    cursor cfk1_orden_compra(var_prv_codigo__ varchar) is
       select 1
       from   ORDEN_COMPRA
       where  PRV_CODIGO__ = var_prv_codigo__
        and   var_prv_codigo__ is not null;
    --  Declaration of DeleteParentRestrict constraint for "PRODUCTO_PROOVEDOR"
    cursor cfk2_producto_proovedor(var_prv_codigo__ varchar) is
       select 1
       from   PRODUCTO_PROOVEDOR
       where  PRV_CODIGO__ = var_prv_codigo__
        and   var_prv_codigo__ is not null;

begin
    --  Cannot delete parent "PROOVEDOR" if children still exist in "ORDEN_COMPRA"
    open  cfk1_orden_compra(:old.PRV_CODIGO__);
    fetch cfk1_orden_compra into dummy;
    found := cfk1_orden_compra%FOUND;
    close cfk1_orden_compra;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "ORDEN_COMPRA". Cannot delete parent "PROOVEDOR".';
       raise integrity_error;
    end if;

    --  Cannot delete parent "PROOVEDOR" if children still exist in "PRODUCTO_PROOVEDOR"
    open  cfk2_producto_proovedor(:old.PRV_CODIGO__);
    fetch cfk2_producto_proovedor into dummy;
    found := cfk2_producto_proovedor%FOUND;
    close cfk2_producto_proovedor;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "PRODUCTO_PROOVEDOR". Cannot delete parent "PROOVEDOR".';
       raise integrity_error;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_PROOVEDOR before update
of PRV_CODIGO__
on PROOVEDOR for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of UpdateParentRestrict constraint for "ORDEN_COMPRA"
    cursor cfk1_orden_compra(var_prv_codigo__ varchar) is
       select 1
       from   ORDEN_COMPRA
       where  PRV_CODIGO__ = var_prv_codigo__
        and   var_prv_codigo__ is not null;
    --  Declaration of UpdateParentRestrict constraint for "PRODUCTO_PROOVEDOR"
    cursor cfk2_producto_proovedor(var_prv_codigo__ varchar) is
       select 1
       from   PRODUCTO_PROOVEDOR
       where  PRV_CODIGO__ = var_prv_codigo__
        and   var_prv_codigo__ is not null;

begin
    --  Cannot modify parent code in "PROOVEDOR" if children still exist in "ORDEN_COMPRA"
    if (updating('PRV_CODIGO__') and :old.PRV_CODIGO__ != :new.PRV_CODIGO__) then
       open  cfk1_orden_compra(:old.PRV_CODIGO__);
       fetch cfk1_orden_compra into dummy;
       found := cfk1_orden_compra%FOUND;
       close cfk1_orden_compra;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "ORDEN_COMPRA". Cannot modify parent code in "PROOVEDOR".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "PROOVEDOR" if children still exist in "PRODUCTO_PROOVEDOR"
    if (updating('PRV_CODIGO__') and :old.PRV_CODIGO__ != :new.PRV_CODIGO__) then
       open  cfk2_producto_proovedor(:old.PRV_CODIGO__);
       fetch cfk2_producto_proovedor into dummy;
       found := cfk2_producto_proovedor%FOUND;
       close cfk2_producto_proovedor;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "PRODUCTO_PROOVEDOR". Cannot modify parent code in "PROOVEDOR".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TDB_PROVINCIA before delete
on PROVINCIA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of DeleteParentRestrict constraint for "CIUDAD"
    cursor cfk1_ciudad(var_pov_codigo__ varchar) is
       select 1
       from   CIUDAD
       where  POV_CODIGO__ = var_pov_codigo__
        and   var_pov_codigo__ is not null;

begin
    --  Cannot delete parent "PROVINCIA" if children still exist in "CIUDAD"
    open  cfk1_ciudad(:old.POV_CODIGO__);
    fetch cfk1_ciudad into dummy;
    found := cfk1_ciudad%FOUND;
    close cfk1_ciudad;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "CIUDAD". Cannot delete parent "PROVINCIA".';
       raise integrity_error;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_PROVINCIA before update
of POV_CODIGO__
on PROVINCIA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of UpdateParentRestrict constraint for "CIUDAD"
    cursor cfk1_ciudad(var_pov_codigo__ varchar) is
       select 1
       from   CIUDAD
       where  POV_CODIGO__ = var_pov_codigo__
        and   var_pov_codigo__ is not null;

begin
    --  Cannot modify parent code in "PROVINCIA" if children still exist in "CIUDAD"
    if (updating('POV_CODIGO__') and :old.POV_CODIGO__ != :new.POV_CODIGO__) then
       open  cfk1_ciudad(:old.POV_CODIGO__);
       fetch cfk1_ciudad into dummy;
       found := cfk1_ciudad%FOUND;
       close cfk1_ciudad;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "CIUDAD". Cannot modify parent code in "PROVINCIA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TDB_SUCURSAL before delete
on SUCURSAL for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of DeleteParentRestrict constraint for "BODEGA"
    cursor cfk1_bodega(var_suc_codigo varchar) is
       select 1
       from   BODEGA
       where  SUC_CODIGO = var_suc_codigo
        and   var_suc_codigo is not null;
    --  Declaration of DeleteParentRestrict constraint for "FACTURA"
    cursor cfk2_factura(var_suc_codigo varchar) is
       select 1
       from   FACTURA
       where  SUC_CODIGO = var_suc_codigo
        and   var_suc_codigo is not null;
    --  Declaration of DeleteParentRestrict constraint for "VENDEDOR"
    cursor cfk3_vendedor(var_suc_codigo varchar) is
       select 1
       from   VENDEDOR
       where  SUC_CODIGO = var_suc_codigo
        and   var_suc_codigo is not null;

begin
    --  Cannot delete parent "SUCURSAL" if children still exist in "BODEGA"
    open  cfk1_bodega(:old.SUC_CODIGO);
    fetch cfk1_bodega into dummy;
    found := cfk1_bodega%FOUND;
    close cfk1_bodega;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "BODEGA". Cannot delete parent "SUCURSAL".';
       raise integrity_error;
    end if;

    --  Cannot delete parent "SUCURSAL" if children still exist in "FACTURA"
    open  cfk2_factura(:old.SUC_CODIGO);
    fetch cfk2_factura into dummy;
    found := cfk2_factura%FOUND;
    close cfk2_factura;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "FACTURA". Cannot delete parent "SUCURSAL".';
       raise integrity_error;
    end if;

    --  Cannot delete parent "SUCURSAL" if children still exist in "VENDEDOR"
    open  cfk3_vendedor(:old.SUC_CODIGO);
    fetch cfk3_vendedor into dummy;
    found := cfk3_vendedor%FOUND;
    close cfk3_vendedor;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "VENDEDOR". Cannot delete parent "SUCURSAL".';
       raise integrity_error;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_SUCURSAL before insert
on SUCURSAL for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of InsertChildParentExist constraint for the parent "CIUDAD"
    cursor cpk1_sucursal(var_ciu_codigo__ varchar) is
       select 1
       from   CIUDAD
       where  CIU_CODIGO__ = var_ciu_codigo__
        and   var_ciu_codigo__ is not null;

begin
    --  Parent "CIUDAD" must exist when inserting a child in "SUCURSAL"
    if :new.CIU_CODIGO__ is not null then
       open  cpk1_sucursal(:new.CIU_CODIGO__);
       fetch cpk1_sucursal into dummy;
       found := cpk1_sucursal%FOUND;
       close cpk1_sucursal;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "CIUDAD". Cannot create child in "SUCURSAL".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_SUCURSAL before update
of SUC_CODIGO,
   CIU_CODIGO__
on SUCURSAL for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    seq NUMBER;
    --  Declaration of UpdateChildParentExist constraint for the parent "CIUDAD"
    cursor cpk1_sucursal(var_ciu_codigo__ varchar) is
       select 1
       from   CIUDAD
       where  CIU_CODIGO__ = var_ciu_codigo__
        and   var_ciu_codigo__ is not null;
    --  Declaration of UpdateParentRestrict constraint for "BODEGA"
    cursor cfk1_bodega(var_suc_codigo varchar) is
       select 1
       from   BODEGA
       where  SUC_CODIGO = var_suc_codigo
        and   var_suc_codigo is not null;
    --  Declaration of UpdateParentRestrict constraint for "FACTURA"
    cursor cfk2_factura(var_suc_codigo varchar) is
       select 1
       from   FACTURA
       where  SUC_CODIGO = var_suc_codigo
        and   var_suc_codigo is not null;
    --  Declaration of UpdateParentRestrict constraint for "VENDEDOR"
    cursor cfk3_vendedor(var_suc_codigo varchar) is
       select 1
       from   VENDEDOR
       where  SUC_CODIGO = var_suc_codigo
        and   var_suc_codigo is not null;

begin
    seq := IntegrityPackage.GetNestLevel;
    --  Parent "CIUDAD" must exist when updating a child in "SUCURSAL"
    if (:new.CIU_CODIGO__ is not null) and (seq = 0) then
       open  cpk1_sucursal(:new.CIU_CODIGO__);
       fetch cpk1_sucursal into dummy;
       found := cpk1_sucursal%FOUND;
       close cpk1_sucursal;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "CIUDAD". Cannot update child in "SUCURSAL".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "SUCURSAL" if children still exist in "BODEGA"
    if (updating('SUC_CODIGO') and :old.SUC_CODIGO != :new.SUC_CODIGO) then
       open  cfk1_bodega(:old.SUC_CODIGO);
       fetch cfk1_bodega into dummy;
       found := cfk1_bodega%FOUND;
       close cfk1_bodega;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "BODEGA". Cannot modify parent code in "SUCURSAL".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "SUCURSAL" if children still exist in "FACTURA"
    if (updating('SUC_CODIGO') and :old.SUC_CODIGO != :new.SUC_CODIGO) then
       open  cfk2_factura(:old.SUC_CODIGO);
       fetch cfk2_factura into dummy;
       found := cfk2_factura%FOUND;
       close cfk2_factura;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "FACTURA". Cannot modify parent code in "SUCURSAL".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "SUCURSAL" if children still exist in "VENDEDOR"
    if (updating('SUC_CODIGO') and :old.SUC_CODIGO != :new.SUC_CODIGO) then
       open  cfk3_vendedor(:old.SUC_CODIGO);
       fetch cfk3_vendedor into dummy;
       found := cfk3_vendedor%FOUND;
       close cfk3_vendedor;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "VENDEDOR". Cannot modify parent code in "SUCURSAL".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TDB_TRANSACCION before delete
on TRANSACCION for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of DeleteParentRestrict constraint for "FACTURA"
    cursor cfk1_factura(var_trn_codigo__ varchar) is
       select 1
       from   FACTURA
       where  TRN_CODIGO__ = var_trn_codigo__
        and   var_trn_codigo__ is not null;
    --  Declaration of DeleteParentRestrict constraint for "KARDEX"
    cursor cfk2_kardex(var_trn_codigo__ varchar) is
       select 1
       from   KARDEX
       where  TRN_CODIGO__ = var_trn_codigo__
        and   var_trn_codigo__ is not null;

begin
    --  Cannot delete parent "TRANSACCION" if children still exist in "FACTURA"
    open  cfk1_factura(:old.TRN_CODIGO__);
    fetch cfk1_factura into dummy;
    found := cfk1_factura%FOUND;
    close cfk1_factura;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "FACTURA". Cannot delete parent "TRANSACCION".';
       raise integrity_error;
    end if;

    --  Cannot delete parent "TRANSACCION" if children still exist in "KARDEX"
    open  cfk2_kardex(:old.TRN_CODIGO__);
    fetch cfk2_kardex into dummy;
    found := cfk2_kardex%FOUND;
    close cfk2_kardex;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "KARDEX". Cannot delete parent "TRANSACCION".';
       raise integrity_error;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_TRANSACCION before update
of TRN_CODIGO__
on TRANSACCION for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of UpdateParentRestrict constraint for "FACTURA"
    cursor cfk1_factura(var_trn_codigo__ varchar) is
       select 1
       from   FACTURA
       where  TRN_CODIGO__ = var_trn_codigo__
        and   var_trn_codigo__ is not null;
    --  Declaration of UpdateParentRestrict constraint for "KARDEX"
    cursor cfk2_kardex(var_trn_codigo__ varchar) is
       select 1
       from   KARDEX
       where  TRN_CODIGO__ = var_trn_codigo__
        and   var_trn_codigo__ is not null;

begin
    --  Cannot modify parent code in "TRANSACCION" if children still exist in "FACTURA"
    if (updating('TRN_CODIGO__') and :old.TRN_CODIGO__ != :new.TRN_CODIGO__) then
       open  cfk1_factura(:old.TRN_CODIGO__);
       fetch cfk1_factura into dummy;
       found := cfk1_factura%FOUND;
       close cfk1_factura;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "FACTURA". Cannot modify parent code in "TRANSACCION".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "TRANSACCION" if children still exist in "KARDEX"
    if (updating('TRN_CODIGO__') and :old.TRN_CODIGO__ != :new.TRN_CODIGO__) then
       open  cfk2_kardex(:old.TRN_CODIGO__);
       fetch cfk2_kardex into dummy;
       found := cfk2_kardex%FOUND;
       close cfk2_kardex;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "KARDEX". Cannot modify parent code in "TRANSACCION".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TDB_UNIDAD_MEDIDA before delete
on UNIDAD_MEDIDA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of DeleteParentRestrict constraint for "UNID_MED_ALTERNA"
    cursor cfk1_unid_med_alterna(var_uni_codigo__ varchar) is
       select 1
       from   UNID_MED_ALTERNA
       where  UNI_CODIGO__ = var_uni_codigo__
        and   var_uni_codigo__ is not null;

begin
    --  Cannot delete parent "UNIDAD_MEDIDA" if children still exist in "UNID_MED_ALTERNA"
    open  cfk1_unid_med_alterna(:old.UNI_CODIGO__);
    fetch cfk1_unid_med_alterna into dummy;
    found := cfk1_unid_med_alterna%FOUND;
    close cfk1_unid_med_alterna;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "UNID_MED_ALTERNA". Cannot delete parent "UNIDAD_MEDIDA".';
       raise integrity_error;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_UNIDAD_MEDIDA before update
of UNI_CODIGO__
on UNIDAD_MEDIDA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of UpdateParentRestrict constraint for "UNID_MED_ALTERNA"
    cursor cfk1_unid_med_alterna(var_uni_codigo__ varchar) is
       select 1
       from   UNID_MED_ALTERNA
       where  UNI_CODIGO__ = var_uni_codigo__
        and   var_uni_codigo__ is not null;

begin
    --  Cannot modify parent code in "UNIDAD_MEDIDA" if children still exist in "UNID_MED_ALTERNA"
    if (updating('UNI_CODIGO__') and :old.UNI_CODIGO__ != :new.UNI_CODIGO__) then
       open  cfk1_unid_med_alterna(:old.UNI_CODIGO__);
       fetch cfk1_unid_med_alterna into dummy;
       found := cfk1_unid_med_alterna%FOUND;
       close cfk1_unid_med_alterna;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "UNID_MED_ALTERNA". Cannot modify parent code in "UNIDAD_MEDIDA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_UNID_MED_ALTERNA before insert
on UNID_MED_ALTERNA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of InsertChildParentExist constraint for the parent "PRODUCTO"
    cursor cpk1_unid_med_alterna(var_prd_codigo__ varchar) is
       select 1
       from   PRODUCTO
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;
    --  Declaration of InsertChildParentExist constraint for the parent "UNIDAD_MEDIDA"
    cursor cpk2_unid_med_alterna(var_uni_codigo__ varchar) is
       select 1
       from   UNIDAD_MEDIDA
       where  UNI_CODIGO__ = var_uni_codigo__
        and   var_uni_codigo__ is not null;

begin
    --  Parent "PRODUCTO" must exist when inserting a child in "UNID_MED_ALTERNA"
    if :new.PRD_CODIGO__ is not null then
       open  cpk1_unid_med_alterna(:new.PRD_CODIGO__);
       fetch cpk1_unid_med_alterna into dummy;
       found := cpk1_unid_med_alterna%FOUND;
       close cpk1_unid_med_alterna;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "PRODUCTO". Cannot create child in "UNID_MED_ALTERNA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "UNIDAD_MEDIDA" must exist when inserting a child in "UNID_MED_ALTERNA"
    if :new.UNI_CODIGO__ is not null then
       open  cpk2_unid_med_alterna(:new.UNI_CODIGO__);
       fetch cpk2_unid_med_alterna into dummy;
       found := cpk2_unid_med_alterna%FOUND;
       close cpk2_unid_med_alterna;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "UNIDAD_MEDIDA". Cannot create child in "UNID_MED_ALTERNA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_UNID_MED_ALTERNA before update
of PRD_CODIGO__,
   UNI_CODIGO__
on UNID_MED_ALTERNA for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    seq NUMBER;
    --  Declaration of UpdateChildParentExist constraint for the parent "PRODUCTO"
    cursor cpk1_unid_med_alterna(var_prd_codigo__ varchar) is
       select 1
       from   PRODUCTO
       where  PRD_CODIGO__ = var_prd_codigo__
        and   var_prd_codigo__ is not null;
    --  Declaration of UpdateChildParentExist constraint for the parent "UNIDAD_MEDIDA"
    cursor cpk2_unid_med_alterna(var_uni_codigo__ varchar) is
       select 1
       from   UNIDAD_MEDIDA
       where  UNI_CODIGO__ = var_uni_codigo__
        and   var_uni_codigo__ is not null;

begin
    seq := IntegrityPackage.GetNestLevel;
    --  Parent "PRODUCTO" must exist when updating a child in "UNID_MED_ALTERNA"
    if (:new.PRD_CODIGO__ is not null) and (seq = 0) then
       open  cpk1_unid_med_alterna(:new.PRD_CODIGO__);
       fetch cpk1_unid_med_alterna into dummy;
       found := cpk1_unid_med_alterna%FOUND;
       close cpk1_unid_med_alterna;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "PRODUCTO". Cannot update child in "UNID_MED_ALTERNA".';
          raise integrity_error;
       end if;
    end if;

    --  Parent "UNIDAD_MEDIDA" must exist when updating a child in "UNID_MED_ALTERNA"
    if (:new.UNI_CODIGO__ is not null) and (seq = 0) then
       open  cpk2_unid_med_alterna(:new.UNI_CODIGO__);
       fetch cpk2_unid_med_alterna into dummy;
       found := cpk2_unid_med_alterna%FOUND;
       close cpk2_unid_med_alterna;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "UNIDAD_MEDIDA". Cannot update child in "UNID_MED_ALTERNA".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TDB_VENDEDOR before delete
on VENDEDOR for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of DeleteParentRestrict constraint for "FACTURA"
    cursor cfk1_factura(var_ven_cedula__ varchar) is
       select 1
       from   FACTURA
       where  VEN_CEDULA__ = var_ven_cedula__
        and   var_ven_cedula__ is not null;
    --  Declaration of DeleteParentRestrict constraint for "COMISION"
    cursor cfk2_comision(var_ven_cedula__ varchar) is
       select 1
       from   COMISION
       where  VEN_CEDULA__ = var_ven_cedula__
        and   var_ven_cedula__ is not null;

begin
    --  Cannot delete parent "VENDEDOR" if children still exist in "FACTURA"
    open  cfk1_factura(:old.VEN_CEDULA__);
    fetch cfk1_factura into dummy;
    found := cfk1_factura%FOUND;
    close cfk1_factura;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "FACTURA". Cannot delete parent "VENDEDOR".';
       raise integrity_error;
    end if;

    --  Cannot delete parent "VENDEDOR" if children still exist in "COMISION"
    open  cfk2_comision(:old.VEN_CEDULA__);
    fetch cfk2_comision into dummy;
    found := cfk2_comision%FOUND;
    close cfk2_comision;
    if found then
       errno  := -20006;
       errmsg := 'Children still exist in "COMISION". Cannot delete parent "VENDEDOR".';
       raise integrity_error;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TIB_VENDEDOR before insert
on VENDEDOR for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    --  Declaration of InsertChildParentExist constraint for the parent "SUCURSAL"
    cursor cpk1_vendedor(var_suc_codigo varchar) is
       select 1
       from   SUCURSAL
       where  SUC_CODIGO = var_suc_codigo
        and   var_suc_codigo is not null;

begin
    --  Parent "SUCURSAL" must exist when inserting a child in "VENDEDOR"
    if :new.SUC_CODIGO is not null then
       open  cpk1_vendedor(:new.SUC_CODIGO);
       fetch cpk1_vendedor into dummy;
       found := cpk1_vendedor%FOUND;
       close cpk1_vendedor;
       if not found then
          errno  := -20002;
          errmsg := 'Parent does not exist in "SUCURSAL". Cannot create child in "VENDEDOR".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/


create trigger TUB_VENDEDOR before update
of VEN_CEDULA__,
   SUC_CODIGO
on VENDEDOR for each row
declare
    integrity_error  exception;
    errno            integer;
    errmsg           char(200);
    dummy            integer;
    found            boolean;
    seq NUMBER;
    --  Declaration of UpdateChildParentExist constraint for the parent "SUCURSAL"
    cursor cpk1_vendedor(var_suc_codigo varchar) is
       select 1
       from   SUCURSAL
       where  SUC_CODIGO = var_suc_codigo
        and   var_suc_codigo is not null;
    --  Declaration of UpdateParentRestrict constraint for "FACTURA"
    cursor cfk1_factura(var_ven_cedula__ varchar) is
       select 1
       from   FACTURA
       where  VEN_CEDULA__ = var_ven_cedula__
        and   var_ven_cedula__ is not null;
    --  Declaration of UpdateParentRestrict constraint for "COMISION"
    cursor cfk2_comision(var_ven_cedula__ varchar) is
       select 1
       from   COMISION
       where  VEN_CEDULA__ = var_ven_cedula__
        and   var_ven_cedula__ is not null;

begin
    seq := IntegrityPackage.GetNestLevel;
    --  Parent "SUCURSAL" must exist when updating a child in "VENDEDOR"
    if (:new.SUC_CODIGO is not null) and (seq = 0) then
       open  cpk1_vendedor(:new.SUC_CODIGO);
       fetch cpk1_vendedor into dummy;
       found := cpk1_vendedor%FOUND;
       close cpk1_vendedor;
       if not found then
          errno  := -20003;
          errmsg := 'Parent does not exist in "SUCURSAL". Cannot update child in "VENDEDOR".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "VENDEDOR" if children still exist in "FACTURA"
    if (updating('VEN_CEDULA__') and :old.VEN_CEDULA__ != :new.VEN_CEDULA__) then
       open  cfk1_factura(:old.VEN_CEDULA__);
       fetch cfk1_factura into dummy;
       found := cfk1_factura%FOUND;
       close cfk1_factura;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "FACTURA". Cannot modify parent code in "VENDEDOR".';
          raise integrity_error;
       end if;
    end if;

    --  Cannot modify parent code in "VENDEDOR" if children still exist in "COMISION"
    if (updating('VEN_CEDULA__') and :old.VEN_CEDULA__ != :new.VEN_CEDULA__) then
       open  cfk2_comision(:old.VEN_CEDULA__);
       fetch cfk2_comision into dummy;
       found := cfk2_comision%FOUND;
       close cfk2_comision;
       if found then
          errno  := -20005;
          errmsg := 'Children still exist in "COMISION". Cannot modify parent code in "VENDEDOR".';
          raise integrity_error;
       end if;
    end if;


--  Errors handling
exception
    when integrity_error then
       raise_application_error(errno, errmsg);
end;
/
