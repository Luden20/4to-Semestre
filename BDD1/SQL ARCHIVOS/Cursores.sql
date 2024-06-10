SELECT * FROM CIUDAD;

SELECT * FROM producto where cat_codigo='01';
NO DATA FOUND;
TOO_MANY_ROWS;

SET SERVEROUTPUT ON
DECLARE
    v_desc VARCHAR2(50);
BEGIN
    SELECT prd_descripcion INTO v_desc FROM producto WHERE prd_codigo='CD1';
    DBMS_OUTPUT.PUT_LINE(v_desc);
END;
/

1.CURSOR nombre_cursosr is instruccionSelect;
2.CURSOR nombre_cursor( param1 tipo1,...,paramN tipoN) IS instruccionSelect;

1.OPEN nombre_cursor;
2.OPEN nombre_cursor(valor1,...,valorN);

FETCH nombre_cursor INTO variables;
CLOSE nombre_cursor;
