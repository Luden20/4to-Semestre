--Verificador de cedula
SET SERVEROUTPUT ON;
DECLARE
    cedula VARCHAR2(10);
    aux     NUMBER;
    suma    NUMBER;
    verf    NUMBER; 
    finaln  NUMBER; 
BEGIN
    cedula := '1724598253';
    aux := 0;
    suma := 0;
    finaln:= TO_NUMBER(SUBSTR(cedula, 10, 1));
    verf := TO_NUMBER(SUBSTR(cedula, 3  , 1));
    IF verf < 6 THEN
        FOR i IN 1..9 LOOP
            aux := TO_NUMBER(SUBSTR(cedula, i, 1));         
            IF MOD(i, 2) = 0 THEN
                suma := suma + aux;
            ELSE 
                aux := aux * 2;
                IF aux > 9 THEN
                    aux := aux - 9;
                END IF;
                suma := suma + aux;
            END IF;  
        END LOOP;      
        suma := (ROUND(suma / 10, 0) * 10) - suma;
        IF suma = finaln THEN
            DBMS_OUTPUT.PUT_LINE('Si vale su cedula');
        ELSE
            DBMS_OUTPUT.PUT_LINE('No vale su cedula');
        END IF;
    ELSE
        DBMS_OUTPUT.PUT_LINE('No vale su cedula');
    END IF;
END;
/
DESC bodega;
DESC DETALLE_FACTURA;
--Crear un disparador para que después de poner un producto vendido que se elimine de la existencia de producto bodega según la cantidad.
CREATE OR REPLACE TRIGGER DUPB_ACTUALIZAR_EXISTENCIA
AFTER INSERT ON DETALLE_FACTURA
FOR EACH ROW
DECLARE 
    V_CANTIDAD    NUMBER;
    V_BODEGA      VARCHAR(8);
BEGIN
    V_CANTIDAD := :NEW.DTF_CANTIDAD;

    SELECT PB.BOD_CODIGO INTO V_BODEGA
    FROM PRODUCTO_BODEGA PB
    INNER JOIN BODEGA B ON B.BOD_CODIGO = PB.BOD_CODIGO
    INNER JOIN SUCURSAL S ON S.SUC_CODIGO = B.SUC_CODIGO
    INNER JOIN FACTURA F ON F.SUC_CODIGO = S.SUC_CODIGO
    WHERE F.FAC_NUMERO = :NEW.FAC_NUMERO
    AND PB.PRD_CODIGO = :NEW.PRD_CODIGO;


    UPDATE PRODUCTO_BODEGA
    SET PRB_EXISTENCIA = PRB_EXISTENCIA - V_CANTIDAD
    WHERE PRD_CODIGO = :NEW.PRD_CODIGO
    AND BOD_CODIGO = V_BODEGA;
END DUPB_ACTUALIZAR_EXISTENCIA;
/
SELECT * FROM PRODUCTO_BODEGA WHERE PRD_CODIGO='FX7';
INSERT INTO DETALLE_FACTURA VALUES (1,'FX7',1,1);
DESC FACTURA;
--2. Antes o después de una venta registre en la tabla comisión (no poner nada en fecha de pago y de fin)
DESC FACTURA;
CREATE OR REPLACE TRIGGER DUPB_CREAR_COMISION
    AFTER 
    INSERT
    ON FACTURA
    FOR EACH ROW
    DECLARE
        V_NUMERO    VARCHAR2(13);
        V_PAGO      NUMBER(12,4);
        V_PORCENTAJE NUMBER(10,2);
        V_AUX       NUMBER(5);
    BEGIN
        SELECT VEN_P_COMISION INTO V_PORCENTAJE
        FROM VENDEDOR V
        WHERE :NEW.VEN_CEDULA_RUC=V.VEN_CEDULA_RUC;
        
        V_PAGO:=:NEW.FAC_MONTO*V_PORCENTAJE;
        
        SELECT COUNT(*)INTO V_AUX FROM COMISION;
        
        V_NUMERO:='COM_'||TO_CHAR(V_AUX);
        
        INSERT INTO COMISION VALUES(V_NUMERO,:NEW.VEN_CEDULA_RUC,NULL,NULL,NULL,V_PAGO);
    END DUPB_CREAR_COMISION;
/
SELECT * FROM VENDEDOR;
SELECT * FROM COMISION;
SELECT * FROM FACTURA;
SELECT * FROM TRANSACCION;
INSERT INTO TRANSACCION VALUES('T-998','PRUEBA TRIGGER','E');
INSERT INTO FACTURA VALUES(98,'S_001','T-998','0106609605','1751447622','05/02/2023',200,'V');
DESC COMISION;
 SELECT VEN_P_COMISION
        FROM VENDEDOR V
        INNER JOIN FACTURA F
        ON F.VEN_CEDULA_RUC=V.VEN_CEDULA_RUC;
commit;