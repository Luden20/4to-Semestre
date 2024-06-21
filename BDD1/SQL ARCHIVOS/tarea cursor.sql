SET SERVEROUTPUT ON
DECLARE
  CURSOR c_v IS 
    SELECT * FROM VENDEDOR;
  CURSOR c_f (ced FACTURA.fac_numero%TYPE) IS 
    SELECT * FROM FACTURA WHERE ven_cedula_ruc = ced AND FAC_MONTO!=0;
  f_v VENDEDOR%ROWTYPE;
  f_f FACTURA%ROWTYPE;
BEGIN
  OPEN c_v;
  
  LOOP
    FETCH c_v INTO f_v;
    EXIT WHEN c_v%NOTFOUND;  
    DBMS_OUTPUT.PUT_LINE(f_v.ven_nombre||'  '||f_v.ven_cedula_ruc);
    OPEN c_f(f_v.VEN_CEDULA_RUC);
    LOOP
      FETCH c_f INTO f_f;
      EXIT WHEN c_f%NOTFOUND;
      DBMS_OUTPUT.PUT_LINE('Factura: ' || f_f.fac_numero ||'Fecha '||f_f.fac_fecha ||' Monto: ' || f_f.fac_monto); 
    END LOOP;
    CLOSE c_f;
  END LOOP;
  CLOSE c_v;
END;
/
