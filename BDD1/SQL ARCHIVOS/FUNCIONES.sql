CREATE OR REPLACE FUNCTION EsPar (numero IN NUMBER)
return boolean
IS
    v_numero NUMBER;
BEGIN
    if MOD(numero ,2) = 0 THEN
        Return TRUE;
    ELSE
        RETURN FALSE;
    END IF;
END;
/
CREATE OR REPLACE FUNCTION Llama_Es_Par (v_numero IN NUMBER)
return VARCHAR2
IS

BEGIN
    if EsPar(v_numero) THEN
        Return 'Si es par';
    ELSE
        RETURN 'No Es Par';
    END IF;
END;
/
SET SERVEROUTPUT ON
DECLARE 
    a Number:=10;
Begin
    DBMS_OUTPUT.PUT_LINE('EL NUMERO'||a||' '||Llama_Es_Par(a));
END;
/

SELECT Llama_validar_cedula('1726788563') from dual;
CREATE OR REPLACE FUNCTION validar_cedula (cedula in VARCHAR2)
RETURN boolean
IS
    aux     NUMBER;
    suma    NUMBER;
    verf    NUMBER; 
    finaln  NUMBER; 
BEGIN
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
            RETURN TRUE;
        ELSE
            RETURN FALSE;
        END IF;
    ELSE
        RETURN FALSE;
    END IF;
END;
/

CREATE OR REPLACE FUNCTION Llama_validar_cedula  (cedula in VARCHAR2)
return VARCHAR2
IS

BEGIN
    if validar_cedula(cedula) THEN
        Return 'Si es valida';
    ELSE
        RETURN 'No es valida';
    END IF;
END;
/
SET SERVEROUTPUT ON
DECLARE
    cedula varchar2(10);
BEGIN
    DBMS_OUTPUT.PUT_LINE('Ingrese la cedula a validar ');
    cedula:='&ci';
    if validar_cedula(cedula) THEN
        DBMS_OUTPUT.PUT_LINE( 'Si es valida');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No es valida');
    END IF;
END;
/
CREATE OR REPLACE FUNCTION GET_PRECIO(codigo in producto.prd_codigo%type)
return producto.prd_precio%type
IS
    aux producto.prd_precio%type;
BEGIN
    Select prd_precio into aux From producto where prd_codigo=codigo;
    return aux;
END;
/
SET SERVEROUTPUT ON
DECLARE
    x varchar2(5);
    aux varchar2(5);
BEGIN
    aux:='&codigo';
    x:=TO_CHAR(GET_PRECIO(aux));
    DBMS_OUTPUT.PUT_LINE('El precio de '||aux||' es '||x);
END;
/
desc vendedor;
CREATE OR REPLACE FUNCTION GET_COMISION(cedula in vendedor.ven_cedula_ruc%type)
RETURN vendedor.ven_p_comision%type
IS
    aux vendedor.ven_p_comision%type;
BEGIN
    SELECT ven_p_comision into aux from vendedor where ven_cedula_ruc=cedula;
    RETURN aux;
END;
/

SET SERVEROUTPUT ON
DECLARE
    x vendedor.ven_cedula_ruc%type;
    aux vendedor.ven_cedula_ruc%type;
BEGIN
    aux:='&cedula';
    x:=TO_CHAR(GET_COMISION(aux));
    DBMS_OUTPUT.PUT_LINE('La comision de '||aux||' es '||x);
END;
/