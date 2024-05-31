--Saber el usuario que usa el sistema
SELECT USER FROM dual;
--Saber fecha del sistema
SELECT sysdate From dual;
--Ver el usuario de la PC
SELECT sys_context('userenv','os_user') FROM dual;
--Nombre de la maquina
SELECT sys_context('userenv','HOST') FROM dual;
--Ip de la maquina
SELECT sys_context('userenv','IP_ADDRESS') FROM dual;
--Procedimiento anonimo
--Estructura almacenada
SET SERVEROUTPUT ON
DECLARE
variable Tipo :=valor_constante;
BEGIN
...
END;
/
--Hola Mundo :D
SET SERVEROUTPUT ON
DECLARE
    v_mensaje VARCHAR2(40) :='HOLA MUNDO';
BEGIN
    DBMS_OUTPUT.PUT_LINE('EL MENSAJE ES: '||v_mensaje);
END;
/
--Suma de dos numeros
SET SERVEROUTPUT ON
DECLARE
    v_n1 NUMBER(10,2) :=20.5;
    v_n2 NUMBER(10,2) :=30.6;
BEGIN
    DBMS_OUTPUT.PUT_LINE('EL RESULTADO DE LA SUMA ES: '|| TO_CHAR(v_n1 + v_n2));
END;
/
--CANTIDAD DE PRODUCTOS, LUEGO EL PROMEDIO DEL PRECIO, PRECIO MAXIMO,PRECIO MINIMO, DESCRIPCION Y PRECIO DEL PRODUCTO FX3
--%rowtyple, es una variable  de un registro
--%TYPE me da el tipo de dato de un atributo
SET SERVEROUTPUT ON
DECLARE
    v_valor    NUMBER(10,2);
    v_promedio NUMBER(10,2);
    v_max      NUMBER(10,2);
    v_min      NUMBER(10,2);
    v_desc     producto.prd_descripcion%TYPE;
    v_precio   producto.prd_precio%TYPE;
    v_bod      bodega%ROWTYPE;
BEGIN
    SELECT COUNT(*) INTO v_valor FROM producto;
    --SELECT AVG(prd_precio) INTO v_promedio FROM producto;
    --SELECT MAX(prd_precio), MIN(prd_precio) INTO v_max, v_min FROM producto;
    SELECT AVG(prd_precio) INTO v_promedio FROM producto;
    SELECT MAX(prd_precio) INTO v_max FROM producto;
    SELECT MIN(prd_precio) INTO v_min FROM producto;
    SELECT prd_descripcion , prd_precio INTO v_desc, v_precio FROM producto WHERE prd_codigo='FX30';
    SELECT * INTO v_bod FROM bodega WHERE bod_codigo='BOD_05';
    DBMS_OUTPUT.PUT_LINE('TOTAL :'||TO_CHAR(v_valor));
    DBMS_OUTPUT.PUT_LINE('PROMEDIO :'||TO_CHAR(v_promedio));
    DBMS_OUTPUT.PUT_LINE('EL MAXIMO ES:'||TO_CHAR(v_max));
    DBMS_OUTPUT.PUT_LINE('EL MINIMO ES:'||TO_CHAR(v_min));
    DBMS_OUTPUT.PUT_LINE('DESCRIPCION :'||v_desc||' El precio es'||TO_CHAR(v_precio));
    DBMS_OUTPUT.PUT_LINE('LA BODEGA ES '||v_bod.bod_descripcion||' el responsable es :'||v_bod.bod_responsable);
END;
/

select * from bodega;
SELECT MAX(prd_precio), MIN(prd_precio) FROM producto;
SELECT * FROM ;
--TRIGERS
CREATE OR REPLACE TRIGGER nombre_disparador
    BEFORE ,AFTER o INSTEAD (Momento)
    INSERT, UPDATE o DELETE (Evento)
    OF campos( solo para updatem si no se define significa cualquier campo modificado)
    ON nombre_tabla
    STATEMENT o FOR EACH ROW (NIVEL puede ser anivel de sentencia o fila)
    [WHEN (Condicion)]
    DECLARE
        Variable :  Tipo(el tipo puede ser tipo de dato, tipo de atrivuto y tipo de registro)
        -->TIPO
    BEGIN
    -->
    CUERPO DEL DISPARADOR -->SENTENCIAS
    END NOMBRE_DISPARADOR;
/
--:old y :new el old 
--UPDATE los dos
--INSERSION no existe old, solo new
--DELETE no hay new, solo old

--Creacion de tabla auditoria
DROP TABLE AUDITORIA;
create table AUDITORIA(
    USUARIO VARCHAR2(40),
    FECHA   DATE,
    IP      VARCHAR2(50),
    TABLA   VARCHAR2(50),
    DATOOLD VARCHAR2(500),
    DATONEW VARCHAR2(500)
    )
    tablespace DATOS_2024_01
/

CREATE OR REPLACE TRIGGER DUP_AUDPRODUCTO
    BEFORE
    UPDATE
    ON producto
    FOR EACH ROW 
    DECLARE
        v_dataold VARCHAR2(500);
        v_datanew VARCHAR2(500);  
        v_ipred      VARCHAR2(50);
    BEGIN
        v_dataold:= :OLD.prd_codigo||'/'||:OLD.cat_codigo||'/'||:OLD.prd_descripcion||'/'||TO_CHAR(:OLD.prd_precio)||'/'||TO_CHAR(:OLD.prd_precio_anterior)||'/'||:OLD.prd_codigo_barra||'/'||:OLD.prd_paga_iva;
        v_datanew:= :NEW.prd_codigo||'/'||:NEW.cat_codigo||'/'||:NEW.prd_descripcion||'/'||TO_CHAR(:NEW.prd_precio)||'/'||TO_CHAR(:NEW.prd_precio_anterior)||'/'||:NEW.prd_codigo_barra||'/'||:NEW.prd_paga_iva;
        SELECT sys_context('userenv','IP_ADDRESS') INTO v_ipred FROM dual;
        INSERT INTO AUDITORIA VALUES(user,SYSDATE,v_ipred,'producto',v_dataold,v_datanew);
    END DUP_AUDPRODUCTO;
/ 

drop trigger DUP_AUDPRODUCTO;

--borrar disparador
DROP TRIGGER nombre_disparador;
SELECT * FROM DUAL;
desc producto;
UPDATE PRODUCTO SET PRD_DESCRIPCION ='DETERGENTE DEJA 503 G' WHERE PRD_CODIGO ='CD1';
SELECT * FROM AUDITORIA;
COMMIT;
--HACER UN VALIDARO DE LA CEDULA, DEBESER UNA CEDULA VALIDA PARA PODER REGISTRAR LA CEDULA VLAIDA
--MEJOR HAGO SOLO LA FUNCION ANONIMA
DESC BODEGA;
        SELECT *
        FROM PRODUCTO_BODEGA PB
        INNER JOIN BODEGA B
        ON B.BOD_CODIGO=PB.BOD_CODIGO
        
        INNER JOIN SUCURSAL S
        ON B.SUC_CODIGO=S.SUC_CODIGO  
        
        INNER JOIN FACTURA F
        ON F.SUC_CODIGO=S.SUC_CODIGO    
        
        INNER JOIN DETALLE_FACTURA DF
        ON DF.FAC_NUMERO=F.FAC_NUMERO
        
        AND DF.PRD_CODIGO=PB.PRD_CODIGO
        WHERE PB.PRD_CODIGO='AG5';
SELECT * FROM BODEGA;
SELECT * FROM PRODUCTO_BODEGA;
SELECT * FROM DETALLE_FACTURA ORDER BY PRD_CODIGO;
SELECT * FROM DETALLE_FACTURA ORDER BY FAC_NUMERO;

        SELECT *
        FROM PRODUCTO_BODEGA PB
        INNER JOIN BODEGA B
        ON B.BOD_CODIGO=PB.BOD_CODIGO     
        INNER JOIN SUCURSAL S
        ON B.SUC_CODIGO=S.SUC_CODIGO      
        INNER JOIN FACTURA F
        ON F.SUC_CODIGO=S.SUC_CODIGO         
        INNER JOIN DETALLE_FACTURA DF
        ON DF.FAC_NUMERO=F.FAC_NUMERO
        AND DF.PRD_CODIGO=PB.PRD_CODIGO
        AND DF.PRD_CODIGO='AG1'
        AND DF.FAC_NUMERO=32;