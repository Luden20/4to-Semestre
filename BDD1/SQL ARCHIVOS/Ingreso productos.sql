--TODOS LOS PRODUCTOS ESTAN INGRESADOS
DESC PRODUCTO;

SELECT * FROM CATEGORIAS;

SELECT * FROM PRODUCTO;
TRUNCATE TABLE PRODUCTO;
-- LIMPIEZA
INSERT INTO PRODUCTO VALUES ('CD001', '01', 'DETERGENTE DEJA', 18.50, 15.20,  '12345678', 'S');
INSERT INTO PRODUCTO VALUES ('CD002', '01', 'DESINFECTANTE KLM', 10.50, 8.20,  '12345679', 'S');
INSERT INTO PRODUCTO VALUES ('CD003', '01', 'CLORO', 5.00, 4.50,  '12345680', 'S');
INSERT INTO PRODUCTO VALUES ('CD004', '01', 'Limpiador Multiusos FreshClean', 8.75, 7.40,  '12345686', 'S');
INSERT INTO PRODUCTO VALUES ('CD005', '01', 'Detergente en Gel ActiveMax', 10.20, 9.00,  '12345687', 'S');
INSERT INTO PRODUCTO VALUES ('CD006', '01', 'Desinfectante de Superficies GermKill', 6.50, 5.80,  '12345688', 'S');
INSERT INTO PRODUCTO VALUES ('CD007', '01', 'Esponja Abrasiva UltraScratch', 3.20, 2.50,  '12345689', 'S');
INSERT INTO PRODUCTO VALUES ('CD008', '01', 'Aromatizante en Spray FreshAir', 5.80, 4.90,  '12345690', 'S');

-- FRUTAS Y VERDURAS
INSERT INTO PRODUCTO VALUES ('CD009', '02', 'LECHUGA CRESPA', 0.75, 0.60,  '201524', 'N');
INSERT INTO PRODUCTO VALUES ('CD010', '02', 'PAPA CHOLA', 0.45, 0.30,  '201530', 'N');
INSERT INTO PRODUCTO VALUES ('CD011', '02', 'Peras Jugosas', 1.40, 1.10,  '201536', 'N');
INSERT INTO PRODUCTO VALUES ('CD012', '02', 'Uvas Frescas', 2.00, 1.60, '201537', 'N');
INSERT INTO PRODUCTO VALUES ('CD013', '02', 'Naranjas de Temporada', 1.10, 0.90,  '201538', 'N');
INSERT INTO PRODUCTO VALUES ('CD014', '02', 'Pimientos Rojos', 1.70, 1.30,  '201539', 'N');
INSERT INTO PRODUCTO VALUES ('CD015', '02', 'Tomates Cherry', 1.30, 1.00,  '201540', 'N');

-- LICORES
INSERT INTO PRODUCTO VALUES ('CD016', '03', 'VINO TINTO CONCHA Y TORO', 15.75, 12.60,  '507024', 'S');
INSERT INTO PRODUCTO VALUES ('CD017', '03', 'Gin Premium "Sapphire"', 28.50, 25.00,  '507028', 'S');
INSERT INTO PRODUCTO VALUES ('CD018', '03', 'Brandy Reserva "Don Pedro"', 22.80, 20.50,  '507029', 'S');
INSERT INTO PRODUCTO VALUES ('CD019', '03', 'Cerveza Artesanal "Golden Ale"', 4.20, 3.80,  '507030', 'S');
INSERT INTO PRODUCTO VALUES ('CD020', '03', 'Vodka de Frambuesa "Raspberry Burst"', 18.90, 16.50,  '507031', 'S');
INSERT INTO PRODUCTO VALUES ('CD021', '03', 'Tequila Blanco "El Charro"', 15.70, 13.80,  '507032', 'S');

-- ENLATADOS
INSERT INTO PRODUCTO VALUES ('CD022', '04', 'Atún en Agua (Lata de 200g)', 2.50, 2.00,  '753951', 'S');
INSERT INTO PRODUCTO VALUES ('CD023', '04', 'Maíz Dulce en Conserva (Lata de 400g)', 1.80, 1.50,  '753952', 'S');
INSERT INTO PRODUCTO VALUES ('CD024', '04', 'Sardinas en Aceite de Oliva (Lata de 150g)', 3.20, 2.80, '753953', 'S');
INSERT INTO PRODUCTO VALUES ('CD025', '04', 'Champiñones Enteros en Lata (200g)', 1.90, 1.60,  '753954', 'S');
INSERT INTO PRODUCTO VALUES ('CD026', '04', 'Duraznos en Almíbar (Lata de 250g)', 2.10, 1.80,  '753955', 'S');

-- ASEO PERSONAL
INSERT INTO PRODUCTO VALUES ('CD027', '05', 'Champú Revitalizante "Silk & Shine"', 9.50, 8.20,  '654321', 'S');
INSERT INTO PRODUCTO VALUES ('CD028', '05', 'Acondicionador Nutritivo "Smooth & Soft"', 7.80, 6.50, '654322', 'S');
INSERT INTO PRODUCTO VALUES ('CD029', '05', 'Crema Hidratante Corporal "Glowing Skin"', 11.20, 9.80,  '654323', 'S');
INSERT INTO PRODUCTO VALUES ('CD030', '05', 'Desodorante Antitranspirante "Fresh Day"', 4.90, 3.50,  '654324', 'S');
INSERT INTO PRODUCTO VALUES ('CD031', '05', 'Jabón Líquido Antibacterial "Pure Clean"', 6.30, 5.00,  '654325', 'S');

-- HOGAR
INSERT INTO PRODUCTO VALUES ('CD032', '06', 'Vela Aromática "Vanilla Dream"', 3.90, 3.20,  '987654', 'S');
INSERT INTO PRODUCTO VALUES ('CD033', '06', 'Almohadas de Plumón', 18.00, 15.50,  '987655', 'S');
INSERT INTO PRODUCTO VALUES ('CD034', '06', 'Cubiertos de Acero Inoxidable (Set de 24)', 32.50, 29.80,  '987656', 'S');
INSERT INTO PRODUCTO VALUES ('CD035', '06', 'Cojín Decorativo "Boho Chic"', 12.80, 10.90,  '987657', 'S');
INSERT INTO PRODUCTO VALUES ('CD036', '06', 'Cortinas Opacas "Midnight Black"', 22.90, 20.50,  '987658', 'S');

-- ROPA
INSERT INTO PRODUCTO VALUES ('CD037', '07', 'Camiseta de Algodón para Hombre (Talla M)', 15.99, 12.99,  '98765432', 'S');
INSERT INTO PRODUCTO VALUES ('CD038', '07', 'Vestido Casual de Verano (Talla L)', 25.50, 22.99,  '98765433', 'S');
INSERT INTO PRODUCTO VALUES ('CD039', '07', 'Sudadera con Capucha para Niños (Talla S)', 18.75, 15.80,  '98765434', 'S');
INSERT INTO PRODUCTO VALUES ('CD040', '07', 'Pantalones Vaqueros Slim Fit para Mujer (Talla 28)', 32.80, 28.50,  '98765435', 'S');
INSERT INTO PRODUCTO VALUES ('CD041', '07', 'Conjunto de Pijama de Franela (Talla XL)', 20.90, 18.50,  '98765436', 'S');

-- CALZADO
INSERT INTO PRODUCTO VALUES ('CD042', '08', 'Zapatillas Deportivas para Correr (Talla 9)', 49.99, 45.99,  '75395128', 'S');
INSERT INTO PRODUCTO VALUES ('CD043', '08', 'Botas de Cuero para Hombre (Talla 10)', 89.50, 80.00,  '75395129', 'S');
INSERT INTO PRODUCTO VALUES ('CD044', '08', 'Sandalias de Playa para Mujer (Talla 7)', 24.80, 21.50,  '75395130', 'S');
INSERT INTO PRODUCTO VALUES ('CD045', '08', 'Zapatos Formales de Cuero para Niños (Talla 4)', 34.90, 30.80,  '75395131', 'S');
INSERT INTO PRODUCTO VALUES ('CD046', '08', 'Zapatillas de Casa con Forro de Felpa (Talla 8)', 29.99, 26.50,  '75395132', 'S');

-- JUGUETES
INSERT INTO PRODUCTO VALUES ('CD047', '09', 'Set de Bloques de Construcción (100 Piezas)', 29.99, 25.50, '15935746', 'S');
INSERT INTO PRODUCTO VALUES ('CD048', '09', 'Muñeca Interactiva con Accesorios', 39.80, 35.00,  '15935747', 'S');
INSERT INTO PRODUCTO VALUES ('CD049', '09', 'Kit de Experimentos Científicos para Niños', 27.50, 23.99, '15935748', 'S');
INSERT INTO PRODUCTO VALUES ('CD050', '09', 'Peluche de Animal de Gran Tamaño (Oso)', 18.90, 15.50,  '15935749', 'S');
INSERT INTO PRODUCTO VALUES ('CD051', '09', 'Puzzle de 1000 Piezas (Escena de Naturaleza)', 22.30, 19.80,  '15935750', 'S');

-- GRANOS SECOS
INSERT INTO PRODUCTO VALUES ('CD052', '10', 'Arroz Blanco de Grano Largo (1 kg)', 2.99, 2.50,  '24681357', 'N');
INSERT INTO PRODUCTO VALUES ('CD053', '10', 'Frijoles Negros (500g)', 1.80, 1.40, '24681358', 'N');
INSERT INTO PRODUCTO VALUES ('CD054', '10', 'Lentejas Secas (750g)', 2.20, 1.90,  '24681359', 'N');
INSERT INTO PRODUCTO VALUES ('CD055', '10', 'Garbanzos (400g)', 1.50, 1.20,  '24681360', 'N');
INSERT INTO PRODUCTO VALUES ('CD056', '10', 'Quinoa Orgánica (300g)', 3.80, 3.20,  '24681361', 'N');

-- OFICINA
INSERT INTO PRODUCTO VALUES ('CD057', '12', 'Paquete de Bolígrafos de Gel (12 unidades)', 8.99, 7.50,  '13572468', 'S');
INSERT INTO PRODUCTO VALUES ('CD058', '12', 'Agenda Semanal de Cuero Sintético', 15.50, 12.80,  '13572469', 'S');
INSERT INTO PRODUCTO VALUES ('CD059', '12', 'Calculadora Científica de Bolsillo', 12.80, 10.50,  '13572470', 'N');
INSERT INTO PRODUCTO VALUES ('CD060', '12', 'Carpeta de Archivos de Plástico (Pack de 5)', 18.50, 16.20,  '13572471', 'S');
INSERT INTO PRODUCTO VALUES ('CD061', '12', 'Papel de Copia Blanco (500 hojas)', 6.50, 5.20,  '13572472', 'S');

-- MEDICINAS
INSERT INTO PRODUCTO VALUES ('CD062', '13', 'Analgésico para el Dolor de Cabeza (24 tabletas)', 9.80, 8.50,  '24680135', 'S');
INSERT INTO PRODUCTO VALUES ('CD063', '13', 'Antiséptico para Heridas (100 ml)', 5.50, 4.20,  '24680136', 'S');
INSERT INTO PRODUCTO VALUES ('CD064', '13', 'Jarabe para la Tos (150 ml)', 7.20, 6.00,  '24680137', 'S');
INSERT INTO PRODUCTO VALUES ('CD065', '13', 'Vitaminas y Minerales (30 cápsulas)', 12.90, 10.80,  '24680138', 'S');
INSERT INTO PRODUCTO VALUES ('CD066', '13', 'Termómetro Digital para Uso Oral y Axilar', 15.20, 12.50, '24680139', 'S');

-- DULCES
INSERT INTO PRODUCTO VALUES ('CD067', '14', 'Chocolate Negro 70% Cacao (Tableta de 100g)', 3.99, 3.20, '75315928', 'S');
INSERT INTO PRODUCTO VALUES ('CD068', '14', 'Gominolas con Sabor a Frutas (Bolsa de 200g)', 2.50, 2.00,  '75315929', 'S');
INSERT INTO PRODUCTO VALUES ('CD069', '14', 'Caramelos de Menta (Bote de 150 unidades)', 4.80, 3.80, '75315930', 'S');
INSERT INTO PRODUCTO VALUES ('CD070', '14', 'Chicles de Menta Sin Azúcar (Pack de 12)', 1.90, 1.50,  '75315931', 'S');
INSERT INTO PRODUCTO VALUES ('CD071', '14', 'Piruletas de Sabores Variados (Pack de 10)', 2.20, 1.80,  '75315932', 'S');

-- CABLES
INSERT INTO PRODUCTO VALUES ('CD072', '15', 'Cable HDMI de Alta Velocidad (2 metros)', 9.50, 7.80,  '36985214', 'S');
INSERT INTO PRODUCTO VALUES ('CD073', '15', 'Cable USB Tipo C a Tipo A (1 metro)', 6.80, 5.50,  '36985215', 'S');
INSERT INTO PRODUCTO VALUES ('CD074', '15', 'Cable de Carga Lightning para iPhone (2 metros)', 10.20, 8.50,  '36985216', 'S');
INSERT INTO PRODUCTO VALUES ('CD075', '15', 'Cable de Red Ethernet CAT6 (5 metros)', 12.50, 10.80,  '36985217', 'S');
INSERT INTO PRODUCTO VALUES ('CD076', '15', 'Cable de Audio Jack 3.5mm (1.5 metros)', 7.20, 5.90, '36985218', 'S');

-- MASCOTAS
INSERT INTO PRODUCTO VALUES ('CD077', '16', 'Juguete Mordedor para Perros (Tamaño Grande)', 8.99, 7.20,  '98745632', 'S');
INSERT INTO PRODUCTO VALUES ('CD078', '16', 'Arena para Gatos con Fragancia Lavanda (5 kg)', 12.50, 10.80,  '98745633', 'S');
INSERT INTO PRODUCTO VALUES ('CD079', '16', 'Comedero Automático para Mascotas', 25.80, 22.50,  '98745634', 'S');
INSERT INTO PRODUCTO VALUES ('CD080', '16', 'Rascador de Cartón para Gatos (Modelo Triangular)', 15.20, 12.80,  '98745635', 'S');
INSERT INTO PRODUCTO VALUES ('CD081', '16', 'Juguete Interactivo para Pájaros con Campana', 6.90, 5.50,  '98745636', 'S');

-- HERRAMIENTAS
INSERT INTO PRODUCTO VALUES ('CD082', '17', 'Juego de Destornilladores de Precisión (6 Piezas)', 14.99, 12.50,  '85236974', 'S');
INSERT INTO PRODUCTO VALUES ('CD083', '17', 'Martillo de Carpintero de Fibra de Vidrio (500g)', 18.50, 15.80,  '85236975', 'N');
INSERT INTO PRODUCTO VALUES ('CD084', '17', 'Taladro Inalámbrico con Batería de Litio (12V)', 65.80, 58.00,  '85236976', 'S');
INSERT INTO PRODUCTO VALUES ('CD085', '17', 'Sierra Circular Eléctrica (1800W)', 120.50, 110.00,  '85236977', 'S');
INSERT INTO PRODUCTO VALUES ('CD086', '17', 'Juego de Llaves Allen Hexagonales (10 Piezas)', 9.20, 7.80,  '85236978', 'N');


-- PLÁSTICOS
INSERT INTO PRODUCTO VALUES ('CD087', '18', 'Contenedor de Almacenamiento', 7.80, 6.50,  '36987410', 'S');
INSERT INTO PRODUCTO VALUES ('CD088', '18', 'Caja Organizadora de Plástico ', 14.50, 12.80,  '36987411', 'S');
INSERT INTO PRODUCTO VALUES ('CD089', '18', 'Bidón para Agua', 5.90, 4.50,  '36987412', 'S');
INSERT INTO PRODUCTO VALUES ('CD090', '18', 'Maceta de Plástico para Plantas', 9.20, 7.80,  '36987413', 'S');
INSERT INTO PRODUCTO VALUES ('CD091', '18', 'Tupperware Hermético', 12.99, 10.50,  '36987414', 'S');

-- MUEBLES
INSERT INTO PRODUCTO VALUES ('CD092', '19', 'Silla de Oficina ', 89.99, 80.00,  '98745632', 'S');
INSERT INTO PRODUCTO VALUES ('CD093', '19', 'Mesa de Centro', 120.50, 110.00,  '98745633', 'S');
INSERT INTO PRODUCTO VALUES ('CD094', '19', 'Sofá de Tela ', 550.80, 500.00,  '98745634', 'S');
INSERT INTO PRODUCTO VALUES ('CD095', '19', 'Cama Doble', 299.50, 280.00,  '98745635', 'S');
INSERT INTO PRODUCTO VALUES ('CD096', '19', 'Armario de Almacenaje ', 399.90, 350.00, '98745636', 'S');

-- JARDINERIA
INSERT INTO PRODUCTO VALUES ('CD097', '20', 'Set de Herramientas ', 32.99, 28.50,  '75315928', 'S');
INSERT INTO PRODUCTO VALUES ('CD098', '20', 'Manguera de Jardín ', 19.50, 16.80,  '75315929', 'S');
INSERT INTO PRODUCTO VALUES ('CD099', '20', 'Macetero de Cerámica )', 14.80, 12.50,  '75315930', 'S');
INSERT INTO PRODUCTO VALUES ('CD100', '20', 'Césped Artificial ', 49.90, 45.00, '75315931', 'S');
INSERT INTO PRODUCTO VALUES ('CD101', '20', 'Fertilizante Orgánico ', 8.20, 6.80,  '75315932', 'S');

-- TECNOLOGÍA
INSERT INTO PRODUCTO VALUES ('CD102', '21', 'Laptop Ultrabook 14" ', 899.99, 850.00,  '85236974', 'S');
INSERT INTO PRODUCTO VALUES ('CD103', '21', 'Smartphone Android ', 399.50, 380.00,  '85236975', 'S');
INSERT INTO PRODUCTO VALUES ('CD104', '21', 'Tableta Gráfica ', 69.80, 60.00, '85236976', 'S');
INSERT INTO PRODUCTO VALUES ('CD105', '21', 'Auriculares Inalámbricos', 129.90, 120.00, '85236977', 'S');
INSERT INTO PRODUCTO VALUES ('CD106', '21', 'Impresora Multifuncional ', 149.80, 140.00, '85236978', 'S');

INSERT INTO PRODUCTO VALUES ('CD027', '21', 'Auriculares Inalámbricos GAMER', 129.90, 120.00, '8544977', 'S');
INSERT INTO PRODUCTO VALUES ('CD028', '21', 'Impresora 3D ', 149.80, 140.00, '85244978', 'S');
--1,2,3,4,5,6,7,8,9,10

SELECT COUNT(*) AS total_tablas
FROM user_tables;

SELECT * FROM COMISION;