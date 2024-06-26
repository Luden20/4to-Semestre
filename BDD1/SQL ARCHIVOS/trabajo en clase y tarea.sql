
INSERT INTO sucursal VALUES('S_001', 'C-128', 'QUITO NORTE', 'AV DE LA PRENSA 1070', '022564535','LUIS ALBERTO MEDINA');
INSERT INTO sucursal VALUES('S_002', 'C-128', 'QUITO SUR', 'AV MALDONADO 20-54', '022348923','JORGE L�PEZ');
INSERT INTO sucursal VALUES('S_003', 'C-78', 'GUAYAQUIL NORTE', 'AV DE LA PRENSA', '022564535','CARLOS C�RDENAS');
INSERT INTO sucursal VALUES('S_004', 'C-78', 'GUAYAQUIL SUR', 'LE�N FEBRESCORDERO', '022348923','ARTURO CAJAS');
INSERT INTO sucursal VALUES('S_005', 'C-1', 'CUENCA NORTE', 'LA LARGA N-124', '022348923','LAURA P�REZ');

INSERT INTO vendedor VALUES('1751447622','S_001','MILENA ESTEFANIA','AGUIRRE LEON','milenaea@empresaxyz.com','0987654321',5,'1234562');
INSERT INTO vendedor VALUES('1726231440','S_002','KATHERINE MISHELL','AIMACANA CHICAIZA','kmaimacana@empresaxyz.com','0987654321',10,'345678');
INSERT INTO vendedor VALUES('1750922344','S_001','DIANA CAROLINA','ALBAN COLIMBA','dcalban@empresaxyz.com','0987654321',10,'876549');
INSERT INTO vendedor VALUES('2100673355','S_002','SIMON EFRAIN','AUCATOMA REA','seaucatoma@empresaxyz.com','0987654321',4,'748574089');
INSERT INTO vendedor VALUES('1727158683','S_001','ORLANDO JAVIER','AYALA TITUANA','ojayala@empresaxyz.com','0987654321',2,'64758364');
INSERT INTO vendedor VALUES('2350055329','S_002','YELITZA BELEN','BALCAZAR GUALLPA','ybbalcazar@empresaxyz.com','0987654321',7,'475857484');
INSERT INTO vendedor VALUES('1719206615','S_001','JESSICA CAROLINA','BALSECA QUINTANA','jcbalseca@empresaxyz.com','0987654321',10,'34457674');

INSERT INTO categoria VALUES('01','LIMPIEZA');
INSERT INTO categoria VALUES('02','FRUTAS Y VERDURAS');
INSERT INTO categoria VALUES('03','LICORES');
INSERT INTO categoria VALUES('04','ENLATADOS');
INSERT INTO categoria VALUES('05','GRANOS SECOS');
INSERT INTO categoria VALUES('06','ASEO PERSONAL');
INSERT INTO categoria VALUES('07','HOGAR');
INSERT INTO categoria VALUES('08','ROPA');
INSERT INTO categoria VALUES('09','CALSADO');
INSERT INTO categoria VALUES('10','JUGUETES');


SELECT * FROM PRODUCTO_BODEGA;

INSERT INTO producto VALUES('CD1','01','DETERGENTE DEJA',18.50,15.20,'12345678','S');
INSERT INTO producto VALUES('CD2','01','DESINFECTANTE KLM',10.50,8.20,'12345679','S');
INSERT INTO producto VALUES('CD3','01','CLORO',5.0,4.50,'12345680','S');
INSERT INTO producto VALUES('CD4','02','LECHUGA CRESPA',0.75,0.60,'201524','N');
INSERT INTO producto VALUES('CD5','02','PAPA CHOLA',0.45,0.30,'201530','N');
INSERT INTO producto VALUES('CD30','03','VINO TINTO CONCHA Y TORO',15.75,12.60,'507024','S');
INSERT INTO producto VALUES('CD4','02','ZANAHORIA',0.75,0.60,'201524','N');
INSERT INTO producto VALUES('CD5','02','CAMOTE',0.45,0.30,'201530','N');
INSERT INTO producto VALUES('CD6','03','TROPICO',15.75,12.60,'507024','S');
INSERT INTO producto VALUES('CD7','02','TOMATE RI�ON',0.75,0.60,'201524','N');
INSERT INTO producto VALUES('AG1','02','CEBOLLA PERLA',0.45,0.30,'201530','N');
INSERT INTO producto VALUES('AG2','03','CHAMPANG',15.75,12.60,'507024','S');
INSERT INTO producto VALUES('AG3','02','PEREJIL',0.45,0.30,'201530','N');
INSERT INTO producto VALUES('AG4','03','VINO TINTO CONCHA Y TORO',15.75,12.60,'507024','S');
INSERT INTO producto VALUES('AG5','02','CHAMPI�ON',0.45,0.30,'201530','N');
INSERT INTO producto VALUES('AG6','03','CHIVAS',15.75,12.60,'507024','S');
INSERT INTO producto VALUES('AG7','02','PIMIENTO',0.45,0.30,'201530','N');
INSERT INTO producto VALUES('FX1','03','VINO BLANCO',15.75,12.60,'507024','S');
INSERT INTO producto VALUES('FX2','03','CERVEZA ARTESANAL',15.75,12.60,'507024','S');
INSERT INTO producto VALUES('FX3','03','CERVEZA CLUB',15.75,12.60,'507024','S');
INSERT INTO producto VALUES('FX4','03','CERVEZA PILSENER',15.75,12.60,'507024','S');
INSERT INTO producto VALUES('FX5','04','ATUN',15.75,12.60,'507024','S');
INSERT INTO producto VALUES('FX6','04','SARDINA',15.75,12.60,'507024','S');
INSERT INTO producto VALUES('FX7','04','DURASNOS',15.75,12.60,'507024','S');


INSERT INTO bodega VALUES('BOD_01', 'S_001','BODEGA PRODUCTO TERMINADO Q1','PATRICIO PARAMO');
INSERT INTO bodega VALUES('BOD_02', 'S_002','BODEGA PRODUCTO TERMINADO Q2','MANUEL PAREDES');
INSERT INTO bodega VALUES('BOD_03', 'S_003','BODEGA PRODUCTO TERMINADO G1','ROCIO PERALTA');
INSERT INTO bodega VALUES('BOD_04', 'S_004','BODEGA PRODUCTO TERMINADO G2','CRISTIAN GALARZA');
INSERT INTO bodega VALUES('BOD_05', 'S_005','BODEGA PRODUCTO TERMINADO G3','MARIA ORDO�EZ');



INSERT INTO producto_bodega VALUES('CD1','BOD_01', 45,TO_DATE('5/08/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('CD2','BOD_01', 50,TO_DATE('15/08/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('AG2','BOD_01', 120,TO_DATE('20/08/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('AG4','BOD_01', 30,TO_DATE('25/08/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('FX2','BOD_01', 10,TO_DATE('12/08/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('FX3','BOD_01', 12,TO_DATE('10/09/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('CD3','BOD_01', 50,TO_DATE('5/09/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('CD4','BOD_01', 170,TO_DATE('20/09/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('CD5','BOD_01', 200,TO_DATE('25/09/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('CD6','BOD_01', 180,TO_DATE('15/09/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('CD7','BOD_01', 10,TO_DATE('5/08/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('AG1','BOD_01', 30,TO_DATE('25/08/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('AG3','BOD_01', 26,TO_DATE('15/08/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('AG5','BOD_01', 120,TO_DATE('5/10/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('AG6','BOD_01', 130,TO_DATE('15/10/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('AG7','BOD_01', 200,TO_DATE('25/10/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('FX1','BOD_01', 89,TO_DATE('22/10/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('FX4','BOD_01', 90,TO_DATE('5/11/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('FX5','BOD_01', 70,TO_DATE('15/11/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('FX6','BOD_01', 50,TO_DATE('25/11/2024','dd/mm/yyyy'));
INSERT INTO producto_bodega VALUES('FX7','BOD_01', 20,TO_DATE('20/11/2024','dd/mm/yyyy'));


INSERT INTO proveedor VALUES('1724669575','ELIAN DARIO BADILLO SUNTAXI','0945781245','JORGE ANDR�S CRUZ SILVA','AV. 6 DE DICIEMBRE Y GRANADOS','dortiz107@puce.edu.ec');
INSERT INTO proveedor VALUES('1721743076','ARIANA PATRICIA BARBOSA DIAZ','0998564578','MARIANA SORAYA LOZADA MONDRAG�N','AV. 12 OCTUBRE Y TOLEDO','mmejias@puce.edu.ec');
INSERT INTO proveedor VALUES('1724972458','PABLO ANTONIO LUZURIAGA PALACIOS','0945789256','EKATERINA DE ARMIJOS MOYA','AV. DE LOS SHIRIS Y PLASA ARGENTINA','jcosorio@puce.edu.ec');
INSERT INTO proveedor VALUES('1723246847','EMILY JOHANNA MAILA MAILA','0974871132','DAVID ALBERTO CORDERO HEREDIA','AV. 10 DE AGOSTO Y MARIANA DE JESUS','jegonzalezl@puce.edu.ec');
INSERT INTO proveedor VALUES('1750047449','ANAHI PAMELA MIER RUIZ','0994714565','MAR�A FERNANDA PILAQUINGA FLORES','AV. ELOY ALFARO Y LOS ASEITUNIOS','immeneses@puce.edu.ec');
INSERT INTO proveedor VALUES('1727449033','CRISTINA ALEXANDRA TORRES SANTILLAN','0992393565','DAVID SEBASTI�N CH�QUER SOLA','AV. EL TELEGRAFO Y LA RAZON','imencias600@puce.edu.ec');
INSERT INTO proveedor VALUES('1719700344','ALISSON BELEN VILLAMARIN AYALA','0954867653','MARCO ANDR�S ROMERO CARVAJAL','AV. TOMAS DE VERLANGA Y AMAZONAS','ahmosquera@puce.edu.ec');
INSERT INTO proveedor VALUES('2126711975','MARCO ANTONIO ASQUI VASCONEZ','0955663329','C�SAR FERNANDO P�LIZ ALTAMIRANO','AV. 6 DE DICIEMBRE Y ORELLANA','armonroy@puce.edu.ec');
INSERT INTO proveedor VALUES('2122252000','MARTHA ANDREA BELTRAN SAMANIEGO','0978452132','EDWIN MARCELO ALCAR�S PANCHI','AV. MALDONADO Y QUIMIAG','eqsalao@puce.edu.ec');
INSERT INTO proveedor VALUES('1757106339','RUB�N CARLOS M�NDEZ REATEGUI','0978452132','CARLOS ALBERTO RAMOS GALARZA','AV. MALDONADO Y QUIMIAG','rcmendez@puce.edu.ec');

COMMIT;
SELECT * FROM PRODUCTO_PROVEEDOR;

INSERT INTO producto_proveedor VALUES('CD1','1724669575',5);
INSERT INTO producto_proveedor VALUES('CD2','1724669575',5);
INSERT INTO producto_proveedor VALUES('AG2','1724669575',5);
INSERT INTO producto_proveedor VALUES('AG4','1724669575',5);
INSERT INTO producto_proveedor VALUES('FX2','1724669575',5);
INSERT INTO producto_proveedor VALUES('FX3','1724669575',5);
INSERT INTO producto_proveedor VALUES('CD3','1724669575',5);
INSERT INTO producto_proveedor VALUES('CD4','1724669575',5);
INSERT INTO producto_proveedor VALUES('CD5','1724669575',5);
INSERT INTO producto_proveedor VALUES('CD6','1724669575',5);

INSERT INTO producto_proveedor VALUES('CD7','1721743076',8);
INSERT INTO producto_proveedor VALUES('AG1','1721743076',8);
INSERT INTO producto_proveedor VALUES('AG3','1721743076',8);
INSERT INTO producto_proveedor VALUES('AG5','1721743076',8);
INSERT INTO producto_proveedor VALUES('AG6','1721743076',8);
INSERT INTO producto_proveedor VALUES('AG7','1721743076',8);
INSERT INTO producto_proveedor VALUES('FX1','1721743076',8);
INSERT INTO producto_proveedor VALUES('FX4','1721743076',8);
INSERT INTO producto_proveedor VALUES('FX5','1721743076',8);
INSERT INTO producto_proveedor VALUES('FX6','1721743076',8);
INSERT INTO producto_proveedor VALUES('FX7','1721743076',8);

INSERT INTO producto_proveedor VALUES('CD1','1724972458',15);
INSERT INTO producto_proveedor VALUES('CD2','1724972458',15);
INSERT INTO producto_proveedor VALUES('AG2','1724972458',15);
INSERT INTO producto_proveedor VALUES('AG4','1724972458',15);
INSERT INTO producto_proveedor VALUES('FX2','1724972458',15);
INSERT INTO producto_proveedor VALUES('FX1','1724972458',15);
INSERT INTO producto_proveedor VALUES('FX4','1724972458',15);
INSERT INTO producto_proveedor VALUES('FX5','1724972458',15);
INSERT INTO producto_proveedor VALUES('FX6','1724972458',15);
INSERT INTO producto_proveedor VALUES('FX7','1724972458',15);

INSERT INTO producto_proveedor VALUES('FX3','1723246847',7);
INSERT INTO producto_proveedor VALUES('CD3','1723246847',7);
INSERT INTO producto_proveedor VALUES('CD4','1723246847',7);
INSERT INTO producto_proveedor VALUES('CD5','1723246847',7);
INSERT INTO producto_proveedor VALUES('CD6','1723246847',7);
INSERT INTO producto_proveedor VALUES('FX1','1723246847',7);
INSERT INTO producto_proveedor VALUES('FX4','1723246847',7);
INSERT INTO producto_proveedor VALUES('FX5','1723246847',7);
INSERT INTO producto_proveedor VALUES('FX6','1723246847',7);
INSERT INTO producto_proveedor VALUES('FX7','1723246847',7);

INSERT INTO producto_proveedor VALUES('AG2','1750047449',5);
INSERT INTO producto_proveedor VALUES('AG4','1750047449',5);
INSERT INTO producto_proveedor VALUES('FX2','1750047449',5);
INSERT INTO producto_proveedor VALUES('FX3','1750047449',5);
INSERT INTO producto_proveedor VALUES('CD3','1750047449',5);
INSERT INTO producto_proveedor VALUES('AG6','1750047449',5);
INSERT INTO producto_proveedor VALUES('AG7','1750047449',5);
INSERT INTO producto_proveedor VALUES('FX1','1750047449',5);
INSERT INTO producto_proveedor VALUES('FX4','1750047449',5);
INSERT INTO producto_proveedor VALUES('FX5','1750047449',5);

INSERT INTO producto_proveedor VALUES('FX1','1727449033',8);
INSERT INTO producto_proveedor VALUES('FX4','1727449033',8);
INSERT INTO producto_proveedor VALUES('FX5','1727449033',8);
INSERT INTO producto_proveedor VALUES('FX6','1727449033',8);
INSERT INTO producto_proveedor VALUES('FX7','1727449033',8);
INSERT INTO producto_proveedor VALUES('FX2','1727449033',8);
INSERT INTO producto_proveedor VALUES('FX1','1727449033',8);
INSERT INTO producto_proveedor VALUES('FX4','1727449033',8);
INSERT INTO producto_proveedor VALUES('FX5','1727449033',8);
INSERT INTO producto_proveedor VALUES('FX6','1727449033',8);

INSERT INTO producto_proveedor VALUES('AG5','1719700344',9);
INSERT INTO producto_proveedor VALUES('AG6','1719700344',9);
INSERT INTO producto_proveedor VALUES('AG7','1719700344',9);
INSERT INTO producto_proveedor VALUES('FX1','1719700344',9);
INSERT INTO producto_proveedor VALUES('FX4','1719700344',9);
INSERT INTO producto_proveedor VALUES('FX7','1719700344',9);
INSERT INTO producto_proveedor VALUES('FX2','1719700344',9);
INSERT INTO producto_proveedor VALUES('FX1','1719700344',9);
INSERT INTO producto_proveedor VALUES('FX4','1719700344',9);
INSERT INTO producto_proveedor VALUES('FX5','1719700344',9);

INSERT INTO producto_proveedor VALUES('AG6','2126711975',20);
INSERT INTO producto_proveedor VALUES('AG7','2126711975',20);
INSERT INTO producto_proveedor VALUES('FX1','2126711975',20);
INSERT INTO producto_proveedor VALUES('FX4','2126711975',20);
INSERT INTO producto_proveedor VALUES('FX5','2126711975',20);
INSERT INTO producto_proveedor VALUES('AG5','2126711975',20);
INSERT INTO producto_proveedor VALUES('AG6','2126711975',20);
INSERT INTO producto_proveedor VALUES('AG7','2126711975',20);
INSERT INTO producto_proveedor VALUES('FX1','2126711975',20);
INSERT INTO producto_proveedor VALUES('FX4','2126711975',20);

INSERT INTO producto_proveedor VALUES('FX7','2122252000',12);
INSERT INTO producto_proveedor VALUES('FX2','2122252000',12);
INSERT INTO producto_proveedor VALUES('FX1','2122252000',12);
INSERT INTO producto_proveedor VALUES('FX4','2122252000',12);
INSERT INTO producto_proveedor VALUES('FX5','2122252000',12);
INSERT INTO producto_proveedor VALUES('FX6','2122252000',12);
INSERT INTO producto_proveedor VALUES('FX4','2122252000',12);
INSERT INTO producto_proveedor VALUES('FX5','2122252000',12);
INSERT INTO producto_proveedor VALUES('AG5','2122252000',12);
INSERT INTO producto_proveedor VALUES('AG6','2122252000',12);
INSERT INTO producto_proveedor VALUES('AG7','2122252000',12);

INSERT INTO producto_proveedor VALUES('FX4','1757106339',5);
INSERT INTO producto_proveedor VALUES('FX5','1757106339',5);
INSERT INTO producto_proveedor VALUES('FX6','1757106339',5);
INSERT INTO producto_proveedor VALUES('FX4','1757106339',5);
INSERT INTO producto_proveedor VALUES('FX5','1757106339',5);
INSERT INTO producto_proveedor VALUES('AG5','1757106339',5);
INSERT INTO producto_proveedor VALUES('FX5','1757106339',5);
INSERT INTO producto_proveedor VALUES('AG5','1757106339',5);
INSERT INTO producto_proveedor VALUES('AG6','1757106339',5);
INSERT INTO producto_proveedor VALUES('AG7','1757106339',5);
INSERT INTO producto_proveedor VALUES('FX1','1757106339',5);
INSERT INTO producto_proveedor VALUES('FX4','1757106339',5);

