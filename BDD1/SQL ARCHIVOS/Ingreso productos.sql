--TODOS LOS PRODUCTOS ESTAN INGRESADOS
DESC PRODUCTO;

SELECT * FROM CATEGORIAS;

SELECT * FROM PRODUCTO;

-- LIMPIEZA
INSERT INTO PRODUCTO VALUES ('CD16', '01', 'Limpiador Multiusos FreshClean', 8.75, 7.40, 18, '12345686', 'S');
INSERT INTO PRODUCTO VALUES ('CD17', '01', 'Detergente en Gel ActiveMax', 10.20, 9.00, 22, '12345687', 'S');
INSERT INTO PRODUCTO VALUES ('CD18', '01', 'Desinfectante de Superficies GermKill', 6.50, 5.80, 20, '12345688', 'S');
INSERT INTO PRODUCTO VALUES ('CD19', '01', 'Esponja Abrasiva UltraScratch', 3.20, 2.50, 28, '12345689', 'S');
INSERT INTO PRODUCTO VALUES ('CD20', '01', 'Aromatizante en Spray FreshAir', 5.80, 4.90, 15, '12345690', 'S');

-- FRUTAS Y VERDURAS
INSERT INTO PRODUCTO VALUES ('CD21', '02', 'Peras Jugosas', 1.40, 1.10, 45, '201536', 'N');
INSERT INTO PRODUCTO VALUES ('CD22', '02', 'Uvas Frescas', 2.00, 1.60, 55, '201537', 'N');
INSERT INTO PRODUCTO VALUES ('CD23', '02', 'Naranjas de Temporada', 1.10, 0.90, 60, '201538', 'N');
INSERT INTO PRODUCTO VALUES ('CD24', '02', 'Pimientos Rojos', 1.70, 1.30, 40, '201539', 'N');
INSERT INTO PRODUCTO VALUES ('CD25', '02', 'Tomates Cherry', 1.30, 1.00, 50, '201540', 'N');

-- LICORES
INSERT INTO PRODUCTO VALUES ('CD31', '03', 'Gin Premium "Sapphire"', 28.50, 25.00, 10, '507028', 'S');
INSERT INTO PRODUCTO VALUES ('CD32', '03', 'Brandy Reserva "Don Pedro"', 22.80, 20.50, 15, '507029', 'S');
INSERT INTO PRODUCTO VALUES ('CD33', '03', 'Cerveza Artesanal "Golden Ale"', 4.20, 3.80, 20, '507030', 'S');
INSERT INTO PRODUCTO VALUES ('CD34', '03', 'Vodka de Frambuesa "Raspberry Burst"', 18.90, 16.50, 12, '507031', 'S');
INSERT INTO PRODUCTO VALUES ('CD35', '03', 'Tequila Blanco "El Charro"', 15.70, 13.80, 18, '507032', 'S');

-- ENLATADOS
INSERT INTO PRODUCTO VALUES ('CD46', '04', 'Atún en Agua (Lata de 200g)', 2.50, 2.00, 40, '753951', 'S');
INSERT INTO PRODUCTO VALUES ('CD47', '04', 'Maíz Dulce en Conserva (Lata de 400g)', 1.80, 1.50, 30, '753952', 'S');
INSERT INTO PRODUCTO VALUES ('CD48', '04', 'Sardinas en Aceite de Oliva (Lata de 150g)', 3.20, 2.80, 25, '753953', 'S');
INSERT INTO PRODUCTO VALUES ('CD49', '04', 'Champiñones Enteros en Lata (200g)', 1.90, 1.60, 35, '753954', 'S');
INSERT INTO PRODUCTO VALUES ('CD50', '04', 'Duraznos en Almíbar (Lata de 250g)', 2.10, 1.80, 28, '753955', 'S');


-- ASEO PERSONAL
INSERT INTO PRODUCTO VALUES ('CD36', '05', 'Champú Revitalizante "Silk & Shine"', 9.50, 8.20, 25, '654321', 'S');
INSERT INTO PRODUCTO VALUES ('CD37', '05', 'Acondicionador Nutritivo "Smooth & Soft"', 7.80, 6.50, 30, '654322', 'S');
INSERT INTO PRODUCTO VALUES ('CD38', '05', 'Crema Hidratante Corporal "Glowing Skin"', 11.20, 9.80, 20, '654323', 'S');
INSERT INTO PRODUCTO VALUES ('CD39', '05', 'Desodorante Antitranspirante "Fresh Day"', 4.90, 3.50, 35, '654324', 'S');
INSERT INTO PRODUCTO VALUES ('CD40', '05', 'Jabón Líquido Antibacterial "Pure Clean"', 6.30, 5.00, 28, '654325', 'S');

-- HOGAR
INSERT INTO PRODUCTO VALUES ('CD41', '06', 'Vela Aromática "Vanilla Dream"', 3.90, 3.20, 15, '987654', 'S');
INSERT INTO PRODUCTO VALUES ('CD42', '06', 'Almohadas de Plumón', 18.00, 15.50, 10, '987655', 'S');
INSERT INTO PRODUCTO VALUES ('CD43', '06', 'Cubiertos de Acero Inoxidable (Set de 24)', 32.50, 29.80, 8, '987656', 'S');
INSERT INTO PRODUCTO VALUES ('CD44', '06', 'Cojín Decorativo "Boho Chic"', 12.80, 10.90, 12, '987657', 'S');
INSERT INTO PRODUCTO VALUES ('CD45', '06', 'Cortinas Opacas "Midnight Black"', 22.90, 20.50, 7, '987658', 'S');
-- ROPA
INSERT INTO PRODUCTO VALUES ('CD51', '07', 'Camiseta de Algodón para Hombre (Talla M)', 15.99, 12.99, 50, '98765432', 'S');
INSERT INTO PRODUCTO VALUES ('CD52', '07', 'Vestido Casual de Verano (Talla L)', 25.50, 22.99, 40, '98765433', 'S');
INSERT INTO PRODUCTO VALUES ('CD53', '07', 'Sudadera con Capucha para Niños (Talla S)', 18.75, 15.80, 30, '98765434', 'S');
INSERT INTO PRODUCTO VALUES ('CD54', '07', 'Pantalones Vaqueros Slim Fit para Mujer (Talla 28)', 32.80, 28.50, 25, '98765435', 'S');
INSERT INTO PRODUCTO VALUES ('CD55', '07', 'Conjunto de Pijama de Franela (Talla XL)', 20.90, 18.50, 35, '98765436', 'S');

-- CALZADO
INSERT INTO PRODUCTO VALUES ('CD56', '08', 'Zapatillas Deportivas para Correr (Talla 9)', 49.99, 45.99, 20, '75395128', 'S');
INSERT INTO PRODUCTO VALUES ('CD57', '08', 'Botas de Cuero para Hombre (Talla 10)', 89.50, 80.00, 15, '75395129', 'S');
INSERT INTO PRODUCTO VALUES ('CD58', '08', 'Sandalias de Playa para Mujer (Talla 7)', 24.80, 21.50, 25, '75395130', 'S');
INSERT INTO PRODUCTO VALUES ('CD59', '08', 'Zapatos Formales de Cuero para Niños (Talla 4)', 34.90, 30.80, 18, '75395131', 'S');
INSERT INTO PRODUCTO VALUES ('CD60', '08', 'Zapatillas de Lona Unisex (Talla 8)', 29.50, 25.99, 22, '75395132', 'S');

-- JUGUETES
INSERT INTO PRODUCTO VALUES ('CD61', '09', 'Set de Bloques de Construcción (100 Piezas)', 29.99, 25.50, 40, '15935746', 'S');
INSERT INTO PRODUCTO VALUES ('CD62', '09', 'Muñeca Interactiva con Accesorios', 39.80, 35.00, 30, '15935747', 'S');
INSERT INTO PRODUCTO VALUES ('CD63', '09', 'Kit de Experimentos Científicos para Niños', 27.50, 23.99, 35, '15935748', 'S');
INSERT INTO PRODUCTO VALUES ('CD64', '09', 'Peluche de Animal de Gran Tamaño (Oso)', 18.90, 15.50, 25, '15935749', 'S');
INSERT INTO PRODUCTO VALUES ('CD65', '09', 'Puzzle de 1000 Piezas (Escena de Naturaleza)', 22.30, 19.80, 20, '15935750', 'S');

-- GRANOS SECOS
INSERT INTO PRODUCTO VALUES ('CD66', '10', 'Arroz Blanco de Grano Largo (1 kg)', 2.99, 2.50, 60, '24681357', 'N');
INSERT INTO PRODUCTO VALUES ('CD67', '10', 'Frijoles Negros (500g)', 1.80, 1.40, 40, '24681358', 'N');
INSERT INTO PRODUCTO VALUES ('CD68', '10', 'Lentejas Secas (750g)', 2.20, 1.90, 45, '24681359', 'N');
INSERT INTO PRODUCTO VALUES ('CD69', '10', 'Garbanzos (400g)', 1.50, 1.20, 50, '24681360', 'N');
INSERT INTO PRODUCTO VALUES ('CD70', '10', 'Quinoa Orgánica (300g)', 3.80, 3.20, 35, '24681361', 'N');

-- OFICINA
INSERT INTO PRODUCTO VALUES ('CD71', '12', 'Paquete de Bolígrafos de Gel (12 unidades)', 8.99, 7.50, 25, '13572468', 'S');
INSERT INTO PRODUCTO VALUES ('CD72', '12', 'Agenda Semanal de Cuero Sintético', 15.50, 12.80, 20, '13572469', 'S');
INSERT INTO PRODUCTO VALUES ('CD73', '12', 'Calculadora Científica de Bolsillo', 12.80, 10.50, 15, '13572470', 'S');
INSERT INTO PRODUCTO VALUES ('CD74', '12', 'Carpeta de Archivos de Plástico (Pack de 5)', 18.50, 16.20, 18, '13572471', 'S');
INSERT INTO PRODUCTO VALUES ('CD75', '12', 'Papel de Copia Blanco (500 hojas)', 6.50, 5.20, 30, '13572472', 'S');

-- MEDICINAS
INSERT INTO PRODUCTO VALUES ('CD76', '13', 'Analgésico para el Dolor de Cabeza (24 tabletas)', 9.80, 8.50, 40, '24680135', 'S');
INSERT INTO PRODUCTO VALUES ('CD77', '13', 'Antiséptico para Heridas (100 ml)', 5.50, 4.20, 35, '24680136', 'S');
INSERT INTO PRODUCTO VALUES ('CD78', '13', 'Jarabe para la Tos (150 ml)', 7.20, 6.00, 30, '24680137', 'S');
INSERT INTO PRODUCTO VALUES ('CD79', '13', 'Vitaminas y Minerales (30 cápsulas)', 12.90, 10.80, 25, '24680138', 'S');
INSERT INTO PRODUCTO VALUES ('CD80', '13', 'Termómetro Digital para Uso Oral y Axilar', 15.20, 12.50, 20, '24680139', 'S');

-- DULCES
INSERT INTO PRODUCTO VALUES ('CD81', '14', 'Chocolate Negro 70% Cacao (Tableta de 100g)', 3.99, 3.20, 45, '75315928', 'S');
INSERT INTO PRODUCTO VALUES ('CD82', '14', 'Gominolas con Sabor a Frutas (Bolsa de 200g)', 2.50, 2.00, 50, '75315929', 'S');
INSERT INTO PRODUCTO VALUES ('CD83', '14', 'Caramelos de Menta (Bote de 150 unidades)', 4.80, 3.80, 30, '75315930', 'S');
INSERT INTO PRODUCTO VALUES ('CD84', '14', 'Chicles de Menta Sin Azúcar (Pack de 12)', 1.90, 1.50, 40, '75315931', 'S');
INSERT INTO PRODUCTO VALUES ('CD85', '14', 'Piruletas de Sabores Variados (Pack de 10)', 2.20, 1.80, 35, '75315932', 'S');

-- CABLES
INSERT INTO PRODUCTO VALUES ('CD86', '15', 'Cable HDMI de Alta Velocidad (2 metros)', 9.50, 7.80, 25, '36985214', 'S');
INSERT INTO PRODUCTO VALUES ('CD87', '15', 'Cable USB Tipo C a Tipo A (1 metro)', 6.80, 5.50, 30, '36985215', 'S');
INSERT INTO PRODUCTO VALUES ('CD88', '15', 'Cable de Carga Lightning para iPhone (2 metros)', 10.20, 8.50, 20, '36985216', 'S');
INSERT INTO PRODUCTO VALUES ('CD89', '15', 'Cable de Red Ethernet CAT6 (5 metros)', 12.50, 10.80, 15, '36985217', 'S');
INSERT INTO PRODUCTO VALUES ('CD90', '15', 'Cable de Audio Jack 3.5mm (1.5 metros)', 7.20, 5.90, 25, '36985218', 'S');

-- MASCOTAS
INSERT INTO PRODUCTO VALUES ('CD91', '16', 'Juguete Mordedor para Perros (Tamaño Grande)', 8.99, 7.20, 40, '98745632', 'S');
INSERT INTO PRODUCTO VALUES ('CD92', '16', 'Arena para Gatos con Fragancia Lavanda (5 kg)', 12.50, 10.80, 30, '98745633', 'S');
INSERT INTO PRODUCTO VALUES ('CD93', '16', 'Comedero Automático para Mascotas', 25.80, 22.50, 20, '98745634', 'S');
INSERT INTO PRODUCTO VALUES ('CD94', '16', 'Rascador de Cartón para Gatos (Modelo Triangular)', 15.20, 12.80, 25, '98745635', 'S');
INSERT INTO PRODUCTO VALUES ('CD95', '16', 'Juguete Interactivo para Pájaros con Campana', 6.90, 5.50, 35, '98745636', 'S');

-- HERRAMIENTAS
INSERT INTO PRODUCTO VALUES ('CD96', '17', 'Juego de Destornilladores de Precisión (6 Piezas)', 14.99, 12.50, 30, '85236974', 'S');
INSERT INTO PRODUCTO VALUES ('CD97', '17', 'Martillo de Carpintero de Fibra de Vidrio (500g)', 18.50, 15.80, 25, '85236975', 'S');
INSERT INTO PRODUCTO VALUES ('CD98', '17', 'Taladro Inalámbrico con Batería de Litio (12V)', 65.80, 58.00, 15, '85236976', 'S');
INSERT INTO PRODUCTO VALUES ('CD99', '17', 'Sierra Circular Eléctrica (1800W)', 120.50, 110.00, 10, '85236977', 'S');
INSERT INTO PRODUCTO VALUES ('CD100', '17', 'Juego de Llaves Allen Hexagonales (10 Piezas)', 9.20, 7.80, 20, '85236978', 'S');

-- PLÁSTICOS
INSERT INTO PRODUCTO VALUES ('CD101', '18', 'Contenedor de Almacenamiento', 7.80, 6.50, 35, '36987410', 'S');
INSERT INTO PRODUCTO VALUES ('CD102', '18', 'Caja Organizadora de Plástico ', 14.50, 12.80, 25, '36987411', 'S');
INSERT INTO PRODUCTO VALUES ('CD103', '18', 'Bidón para Agua', 5.90, 4.50, 30, '36987412', 'S');
INSERT INTO PRODUCTO VALUES ('CD104', '18', 'Maceta de Plástico para Plantas', 9.20, 7.80, 20, '36987413', 'S');
INSERT INTO PRODUCTO VALUES ('CD105', '18', 'Tupperware Hermético', 12.99, 10.50, 28, '36987414', 'S');

-- MUEBLES
INSERT INTO PRODUCTO VALUES ('CD106', '19', 'Silla de Oficina ', 89.99, 80.00, 15, '98745632', 'S');
INSERT INTO PRODUCTO VALUES ('CD107', '19', 'Mesa de Centro', 120.50, 110.00, 10, '98745633', 'S');
INSERT INTO PRODUCTO VALUES ('CD108', '19', 'Sofá de Tela ', 550.80, 500.00, 8, '98745634', 'S');
INSERT INTO PRODUCTO VALUES ('CD109', '19', 'Cama Doble', 299.50, 280.00, 12, '98745635', 'S');
INSERT INTO PRODUCTO VALUES ('CD110', '19', 'Armario de Almacenaje ', 399.90, 350.00, 10, '98745636', 'S');

-- JARDINERIA
INSERT INTO PRODUCTO VALUES ('CD111', '20', 'Set de Herramientas ', 32.99, 28.50, 20, '75315928', 'S');
INSERT INTO PRODUCTO VALUES ('CD112', '20', 'Manguera de Jardín ', 19.50, 16.80, 25, '75315929', 'S');
INSERT INTO PRODUCTO VALUES ('CD113', '20', 'Macetero de Cerámica )', 14.80, 12.50, 30, '75315930', 'S');
INSERT INTO PRODUCTO VALUES ('CD114', '20', 'Césped Artificial ', 49.90, 45.00, 18, '75315931', 'S');
INSERT INTO PRODUCTO VALUES ('CD115', '20', 'Fertilizante Orgánico ', 8.20, 6.80, 22, '75315932', 'S');

-- TECNOLOGÍA
INSERT INTO PRODUCTO VALUES ('CD116', '21', 'Laptop Ultrabook 14" ', 899.99, 850.00, 10, '85236974', 'S');
INSERT INTO PRODUCTO VALUES ('CD117', '21', 'Smartphone Android ', 399.50, 380.00, 15, '85236975', 'S');
INSERT INTO PRODUCTO VALUES ('CD118', '21', 'Tableta Gráfica ', 69.80, 60.00, 20, '85236976', 'S');
INSERT INTO PRODUCTO VALUES ('CD119', '21', 'Auriculares Inalámbricos', 129.90, 120.00, 18, '85236977', 'S');
INSERT INTO PRODUCTO VALUES ('CD120', '21', 'Impresora Multifuncional ', 149.80, 140.00, 12, '85236978', 'S');
--1,2,3,4,5,6,7,8,9,10