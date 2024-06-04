--UN proceso almacenado es una funcion que puedo llamar despues
--IN es que es de entrada, default asume un valor si no se le da valor
CREATE OR REPLACE PROCEDURE nombre_procedimiento (v_entrada IN NUMBER DEFAULT 10,ci IN empleado.ci%TYPE,v_salida OUT empleado.salario%TYPE)
AS [IS]
--[DECLARACION DE VARIABLES]
BEGIN
    --INSTRUCCIONES
END;
/
DROP PROCEDURE nombre_procedimient;
select * from producto;

CREATE OR REPLACE PROCEDURE modificar_precio
AS
BEGIN
    UPDATE producto SET PRD_PRECIO = PRD_PRECIO *1.1;
    END;
/

EXEC modificar_precio;
SELECT * FROM PRODUCTO ORDER BY PRD_CODIGO;

CREATE OR REPLACE PROCEDURE consulta_producto (v_codigo IN  producto.prd_codigo%TYPE DEFAULT 'CD1',v_prd_descripcion OUT producto.prd_descripcion%TYPE,v_prd_precio OUT producto.prd_precio%TYPE)
AS
BEGIN
    SELECT prd_descripcion,prd_precio INTO v_prd_descripcion,v_prd_precio FROM producto WHERE prd_codigo=v_codigo;
END;
/
--PROCEDIMIENTOS ALMACENADOS QUE RETORNAN ALGO DEBEN EJECUTARSE EN PROCESOS ANONIMOS
SET SERVEROUTPUT ON
DECLARE
    v_des   producto.prd_descripcion%TYPE;
    v_prc   producto.prd_precio%TYPE;
BEGIN
    consulta_producto('FX4',v_des,v_prc);
    DBMS_OUTPUT.PUT_LINE('EL PRODUCTO ES'||v_des||' Y EL PRECIO ES '||v_prc);
END;
/
DESC FACTURA;
drop table factura_his;
create table FACTURA_HIS (
    FAC_NUMERO      NUMBER(12) not null,  
    SUC_CODIGO      VARCHAR2(8)  not null, 
    TRN_CODIGO      VARCHAR2(5)  not null,
    CLI_CEDULA_RUC  VARCHAR2(13)  not null,
    VEN_CEDULA_RUC  VARCHAR2(13)  not null,
    FAC_FECHA       DATE,         
    FAC_MONTO       NUMBER(18,4), 
    FAC_ESTADO      VARCHAR2(1)
)
    tablespace DATOS_2024_01;
/
SELECT * FROM FACTURA WHERE EXTRACT (YEAR FROM FACTURA.FAC_FECHA)='2023';
SELECT * FROM FACTURA;
EXTRACT (YEAR FROM FACTURA.FAC_FECHA);
CREATE OR REPLACE PROCEDURE gen_his_factura (v_anio IN NUMBER DEFAULT 2023)
AS
    v_fac_ini   NUMBER;
    v_fac_fin   NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_fac_ini FROM FACTURA WHERE EXTRACT (YEAR FROM FACTURA.FAC_FECHA)=v_anio;
    INSERT INTO FACTURA_HIS
    SELECT * FROM FACTURA WHERE EXTRACT (YEAR FROM FACTURA.FAC_FECHA)=v_anio;
    SELECT COUNT(*) INTO v_fac_fin FROM FACTURA_HIS WHERE EXTRACT (YEAR FROM FACTURA_HIS.FAC_FECHA)=v_anio;
    IF v_fac_ini=v_fac_fin THEN
        --DELETE FROM FACTURA WHERE EXTRACT (YEAR FROM FACTURA.FAC_FECHA)=v_anio;;
        --COMMIT;
        DBMS_OUTPUT.PUT_LINE('se deberia borrar');
    ELSE
        RAISE_APPLICATION_ERROR(-20000,'ERROR NO SE INSERTARO TODOS');
    END IF;
END;
/
delete  from factura_his;
EXEC gen_his_factura();
select * from factura_his;
--PROCESO ALMACENADO QUE CAMBIA EL PRECIO DE UNA CATEGORIA EL PRECIO EN BASE A UN PORCENTAJE
--YA EN PROCESO EN ALMACENADO DONDE ENTRA LA CEDULA  Y EL DIGITO VERIFICADOR, EL DIGITO VERIFICADOR VA POR SEPARADO
COMMIT;
SELECT * FROM FACTURA;