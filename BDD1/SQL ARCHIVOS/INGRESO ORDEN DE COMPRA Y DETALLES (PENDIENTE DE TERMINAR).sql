DESC DETALLE_ORDEN_COMPRA;
DESC ORDEN_COMPRA;
DESC PRODUCTO_BODEGA;

SELECT * FROM ORDEN_COMPRA;
SELECT * FROM detalle_orden_compra;
SELECT * FROM PRODUCTO_PROOVEDOR;
SELECT * FROM PRODUCTO_BODEGA;

DESC PRODUCTO_BODEGA;
SELECT * FROM SUCURSAL;
--S_001-S_020
--CD001-CD106
--BOD001-BOD020
--EN TOTAL VA LA SUMA DE LOS PRODUCTOS DE DETALLES
--ME TOCA HACER ESTO MANUALMENTE
--POR LO MENOS 1 ORDEN DE COMPRA POR SUCURSAL
--------------------------------------------
TRUNCATE TABLE ORDEN_COMPRA;
TRUNCATE TABLE PRODUCTO_PROOVEDOR;
TRUNCATE TABLE DETALLE_ORDEN_COMPRA;
TRUNCATE TABLE PRODUCTO_PROOVEDOR;
TRUNCATE TABLE PRODUCTO_BODEGA;



INSERT INTO ORDEN_COMPRA VALUES('OC001','BOD001','PRV001','2023-01-01','2023-01-15','2023-01-26',TOTAL);
INSERT INTO DETALLE_ORDEN_COMPRA VALUES ('OC001','CD001');
INSERT INTO DETALLE_ORDEN_COMPRA VALUES ('OC001','CD002');
INSERT INTO DETALLE_ORDEN_COMPRA VALUES ('OC001','CD003');
INSERT INTO PRODUCTO_PROOVEDOR VALUES('CD001','PRV001');
INSERT INTO PRODUCTO_PROOVEDOR VALUES('CD002','PRV001');
INSERT INTO PRODUCTO_PROOVEDOR VALUES('CD003','PRV001');
INSERT INTO PRODUCTO_BODEGA VALUES('CD001','BOD001');
INSERT INTO PRODUCTO_BODEGA VALUES('CD002','BOD001');
INSERT INTO PRODUCTO_BODEGA VALUES('CD003','BOD001');

-----
ALTER TABLE ORDEN_COMPRA MODIFY(ORD_ELABORO VARCHAR2(25));
----------------------------------------------
CREATE OR REPLACE PROCEDURE GENERAR_ORDEN_COMPRA (
    p_orden_numero IN VARCHAR2,
    p_bodega_codigo IN VARCHAR2,
    p_proveedor_codigo IN VARCHAR2,
    p_fecha_inicio IN DATE,
    p_fecha_entrega IN DATE,
    p_elaboro IN VARCHAR2, -- Cambiado a p_elaboro
    p_productos IN SYS.ODCIVARCHAR2LIST,
    p_total OUT NUMBER
)
IS
    v_total NUMBER := 0;
BEGIN
    -- Insertar en ORDEN_COMPRA
    INSERT INTO ORDEN_COMPRA (ORD_NUMERO__, BOD_CODIGO, PRV_CODIGO__, ORD_FECHA, ORD_FECHA_LIM, ORD_ELABORO, ORD_TOTAL)
    VALUES (p_orden_numero, p_bodega_codigo, p_proveedor_codigo, p_fecha_inicio, p_fecha_entrega, p_elaboro, v_total) -- Cambiado a p_elaboro
    RETURNING ORD_TOTAL INTO p_total;

    -- Insertar en DETALLE_ORDEN_COMPRA y PRODUCTO_PROVEEDOR
    FOR i IN 1..p_productos.COUNT LOOP
        INSERT INTO DETALLE_ORDEN_COMPRA (ORD_NUMERO__, PRD_CODIGO__)
        VALUES (p_orden_numero, p_productos(i));

        -- Insertar en PRODUCTO_PROVEEDOR si no existe ya
        BEGIN
            INSERT INTO PRODUCTO_PROOVEDOR (PRD_CODIGO__, PRV_CODIGO__)
            VALUES (p_productos(i), p_proveedor_codigo);
        EXCEPTION
            WHEN DUP_VAL_ON_INDEX THEN
                NULL; -- Ignorar si ya existe el registro
        END;

        -- Actualizar el total de la orden
        SELECT SUM(PRD_PRECIO__) INTO v_total
        FROM PRODUCTO
        WHERE PRD_CODIGO__ IN (SELECT PRD_CODIGO__ FROM DETALLE_ORDEN_COMPRA WHERE ORD_NUMERO__ = p_orden_numero);

        UPDATE ORDEN_COMPRA
        SET ORD_TOTAL = v_total
        WHERE ORD_NUMERO__ = p_orden_numero;

        -- Insertar en PRODUCTO_BODEGA si no existe ya
        BEGIN
            INSERT INTO PRODUCTO_BODEGA (BOD_CODIGO, PRD_CODIGO__)
            VALUES (p_bodega_codigo, p_productos(i));
        EXCEPTION
            WHEN DUP_VAL_ON_INDEX THEN
                NULL; -- Ignorar si ya existe el registro
        END;
    END LOOP;

    p_total := v_total;
END;
/


DECLARE
    v_total_orden NUMBER;
BEGIN
    -- Llamados al procedimiento GENERAR_ORDEN_COMPRA desde OC001 hasta OC020
    GENERAR_ORDEN_COMPRA (
        'OC001', -- C�digo de orden de compra
        'BOD001',
        'PRV001', -- C�digo del proveedor
        TO_DATE('2023-01-01', 'YYYY-MM-DD'), -- Fecha de inicio
        TO_DATE('2023-01-15', 'YYYY-MM-DD'), -- Fecha de entrega
        'Juan Perez', -- Nombre del elaborador
        SYS.ODCIVARCHAR2LIST('CD001', 'CD002', 'CD003'), -- Lista de c�digos de productos
        v_total_orden -- Salida para el total de la orden
    );

    GENERAR_ORDEN_COMPRA (
        'OC002', -- C�digo de orden de compra
        'BOD002',
        'PRV002', -- C�digo del proveedor
        TO_DATE('2023-01-16', 'YYYY-MM-DD'), -- Fecha de inicio
        TO_DATE('2023-01-31', 'YYYY-MM-DD'), -- Fecha de entrega
        'Maria Garcia', -- Nombre del elaborador
        SYS.ODCIVARCHAR2LIST('CD004', 'CD005', 'CD006'), -- Lista de c�digos de productos
        v_total_orden -- Salida para el total de la orden
    );

    GENERAR_ORDEN_COMPRA (
        'OC003', -- C�digo de orden de compra
        'BOD003',
        'PRV003', -- C�digo del proveedor
        TO_DATE('2023-02-01', 'YYYY-MM-DD'), -- Fecha de inicio
        TO_DATE('2023-02-15', 'YYYY-MM-DD'), -- Fecha de entrega
        'Pedro Martinez', -- Nombre del elaborador
        SYS.ODCIVARCHAR2LIST('CD007', 'CD008', 'CD009'), -- Lista de c�digos de productos
        v_total_orden -- Salida para el total de la orden
    );

    GENERAR_ORDEN_COMPRA (
        'OC004', -- C�digo de orden de compra
        'BOD004',
        'PRV004', -- C�digo del proveedor
        TO_DATE('2023-02-16', 'YYYY-MM-DD'), -- Fecha de inicio
        TO_DATE('2023-02-28', 'YYYY-MM-DD'), -- Fecha de entrega
        'Ana Lopez', -- Nombre del elaborador
        SYS.ODCIVARCHAR2LIST('CD010', 'CD011', 'CD012'), -- Lista de c�digos de productos
        v_total_orden -- Salida para el total de la orden
    );

    GENERAR_ORDEN_COMPRA (
        'OC005', -- C�digo de orden de compra
        'BOD005',
        'PRV005', -- C�digo del proveedor
        TO_DATE('2023-03-01', 'YYYY-MM-DD'), -- Fecha de inicio
        TO_DATE('2023-03-15', 'YYYY-MM-DD'), -- Fecha de entrega
        'Laura Ramirez', -- Nombre del elaborador
        SYS.ODCIVARCHAR2LIST('CD013', 'CD014', 'CD015'), -- Lista de c�digos de productos
        v_total_orden -- Salida para el total de la orden
    );

    GENERAR_ORDEN_COMPRA (
        'OC006', -- C�digo de orden de compra
        'BOD006',
        'PRV006', -- C�digo del proveedor
        TO_DATE('2023-03-16', 'YYYY-MM-DD'), -- Fecha de inicio
        TO_DATE('2023-03-31', 'YYYY-MM-DD'), -- Fecha de entrega
        'Carlos Sanchez', -- Nombre del elaborador
        SYS.ODCIVARCHAR2LIST('CD016', 'CD017', 'CD018'), -- Lista de c�digos de productos
        v_total_orden -- Salida para el total de la orden
    );

    GENERAR_ORDEN_COMPRA (
        'OC007', -- C�digo de orden de compra
        'BOD007',
        'PRV007', -- C�digo del proveedor
        TO_DATE('2023-04-01', 'YYYY-MM-DD'), -- Fecha de inicio
        TO_DATE('2023-04-15', 'YYYY-MM-DD'), -- Fecha de entrega
        'Sofia Fernandez', -- Nombre del elaborador
        SYS.ODCIVARCHAR2LIST('CD019', 'CD020', 'CD021'), -- Lista de c�digos de productos
        v_total_orden -- Salida para el total de la orden
    );

    GENERAR_ORDEN_COMPRA (
        'OC008', -- C�digo de orden de compra
        'BOD008',
        'PRV008', -- C�digo del proveedor
        TO_DATE('2023-04-16', 'YYYY-MM-DD'), -- Fecha de inicio
        TO_DATE('2023-04-30', 'YYYY-MM-DD'), -- Fecha de entrega
        'Diego Gomez', -- Nombre del elaborador
        SYS.ODCIVARCHAR2LIST('CD022', 'CD023', 'CD024'), -- Lista de c�digos de productos
        v_total_orden -- Salida para el total de la orden
    );
    GENERAR_ORDEN_COMPRA (
    'OC009', -- C�digo de orden de compra
    'BOD009',
    'PRV009', -- C�digo del proveedor
    TO_DATE('2023-05-01', 'YYYY-MM-DD'), -- Fecha de inicio
    TO_DATE('2023-05-15', 'YYYY-MM-DD'), -- Fecha de entrega
    'Elena Rodriguez', -- Nombre del elaborador
    SYS.ODCIVARCHAR2LIST('CD025', 'CD026', 'CD027'), -- Lista de c�digos de productos
    v_total_orden -- Salida para el total de la orden
);

GENERAR_ORDEN_COMPRA (
    'OC010', -- C�digo de orden de compra
    'BOD010',
    'PRV010', -- C�digo del proveedor
    TO_DATE('2023-05-16', 'YYYY-MM-DD'), -- Fecha de inicio
    TO_DATE('2023-05-31', 'YYYY-MM-DD'), -- Fecha de entrega
    'Fernando Martinez', -- Nombre del elaborador
    SYS.ODCIVARCHAR2LIST('CD028', 'CD029', 'CD030'), -- Lista de c�digos de productos
    v_total_orden -- Salida para el total de la orden
);

GENERAR_ORDEN_COMPRA (
    'OC011', -- C�digo de orden de compra
    'BOD011',
    'PRV011', -- C�digo del proveedor
    TO_DATE('2023-06-01', 'YYYY-MM-DD'), -- Fecha de inicio
    TO_DATE('2023-06-15', 'YYYY-MM-DD'), -- Fecha de entrega
    'Marta Ruiz', -- Nombre del elaborador
    SYS.ODCIVARCHAR2LIST('CD031', 'CD032', 'CD033'), -- Lista de c�digos de productos
    v_total_orden -- Salida para el total de la orden
);

GENERAR_ORDEN_COMPRA (
    'OC012', -- C�digo de orden de compra
    'BOD012',
    'PRV012', -- C�digo del proveedor
    TO_DATE('2023-06-16', 'YYYY-MM-DD'), -- Fecha de inicio
    TO_DATE('2023-06-30', 'YYYY-MM-DD'), -- Fecha de entrega
    'Jose Perez', -- Nombre del elaborador
    SYS.ODCIVARCHAR2LIST('CD034', 'CD035', 'CD036'), -- Lista de c�digos de productos
    v_total_orden -- Salida para el total de la orden
);

GENERAR_ORDEN_COMPRA (
    'OC013', -- C�digo de orden de compra
    'BOD013',
    'PRV013', -- C�digo del proveedor
    TO_DATE('2023-07-01', 'YYYY-MM-DD'), -- Fecha de inicio
    TO_DATE('2023-07-15', 'YYYY-MM-DD'), -- Fecha de entrega
    'Ana Fernandez', -- Nombre del elaborador
    SYS.ODCIVARCHAR2LIST('CD037', 'CD038', 'CD039'), -- Lista de c�digos de productos
    v_total_orden -- Salida para el total de la orden
);

GENERAR_ORDEN_COMPRA (
    'OC014', -- C�digo de orden de compra
    'BOD014',
    'PRV014', -- C�digo del proveedor
    TO_DATE('2023-07-16', 'YYYY-MM-DD'), -- Fecha de inicio
    TO_DATE('2023-07-31', 'YYYY-MM-DD'), -- Fecha de entrega
    'David Lopez', -- Nombre del elaborador
    SYS.ODCIVARCHAR2LIST('CD040', 'CD041', 'CD042'), -- Lista de c�digos de productos
    v_total_orden -- Salida para el total de la orden
);

GENERAR_ORDEN_COMPRA (
    'OC015', -- C�digo de orden de compra
    'BOD015',
    'PRV015', -- C�digo del proveedor
    TO_DATE('2023-08-01', 'YYYY-MM-DD'), -- Fecha de inicio
    TO_DATE('2023-08-15', 'YYYY-MM-DD'), -- Fecha de entrega
    'Elena Sanchez', -- Nombre del elaborador
    SYS.ODCIVARCHAR2LIST('CD043', 'CD044', 'CD045'), -- Lista de c�digos de productos
    v_total_orden -- Salida para el total de la orden
);

GENERAR_ORDEN_COMPRA (
    'OC016', -- C�digo de orden de compra
    'BOD016',
    'PRV016', -- C�digo del proveedor
    TO_DATE('2023-08-16', 'YYYY-MM-DD'), -- Fecha de inicio
    TO_DATE('2023-08-31', 'YYYY-MM-DD'), -- Fecha de entrega
    'Santiago Rodriguez', -- Nombre del elaborador
    SYS.ODCIVARCHAR2LIST('CD046', 'CD047', 'CD048'), -- Lista de c�digos de productos
    v_total_orden -- Salida para el total de la orden
);

GENERAR_ORDEN_COMPRA (
    'OC017', -- C�digo de orden de compra
    'BOD017',
    'PRV017', -- C�digo del proveedor
    TO_DATE('2023-09-01', 'YYYY-MM-DD'), -- Fecha de inicio
    TO_DATE('2023-09-15', 'YYYY-MM-DD'), -- Fecha de entrega
    'Laura Martinez', -- Nombre del elaborador
    SYS.ODCIVARCHAR2LIST('CD049', 'CD050', 'CD051'), -- Lista de c�digos de productos
    v_total_orden -- Salida para el total de la orden
);

GENERAR_ORDEN_COMPRA (
    'OC018', -- C�digo de orden de compra
    'BOD018',
    'PRV018', -- C�digo del proveedor
    TO_DATE('2023-09-16', 'YYYY-MM-DD'), -- Fecha de inicio
    TO_DATE('2023-09-30', 'YYYY-MM-DD'), -- Fecha de entrega
    'Carlos Fernandez', -- Nombre del elaborador
    SYS.ODCIVARCHAR2LIST('CD052', 'CD053', 'CD054'), -- Lista de c�digos de productos
    v_total_orden -- Salida para el total de la orden
);

GENERAR_ORDEN_COMPRA (
    'OC019', -- C�digo de orden de compra
    'BOD019',
    'PRV019', -- C�digo del proveedor
    TO_DATE('2023-10-01', 'YYYY-MM-DD'), -- Fecha de inicio
    TO_DATE('2023-10-15', 'YYYY-MM-DD'), -- Fecha de entrega
    'Martina Gomez', -- Nombre del elaborador
    SYS.ODCIVARCHAR2LIST('CD055', 'CD056', 'CD057'),
    v_total_orden -- Salida para el total de la orden
);
GENERAR_ORDEN_COMPRA (
    'OC020', -- C�digo de orden de compra
    'BOD020',
    'PRV020', -- C�digo del proveedor
    TO_DATE('2023-10-16', 'YYYY-MM-DD'), -- Fecha de inicio
    TO_DATE('2023-10-31', 'YYYY-MM-DD'), -- Fecha de entrega
    'Alejandro Perez', -- Nombre del elaborador
    SYS.ODCIVARCHAR2LIST('CD058', 'CD059', 'CD060'), -- Lista de c�digos de productos
    v_total_orden -- Salida para el total de la orden
);
END;
/
