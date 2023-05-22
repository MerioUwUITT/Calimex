CREATE DATABASE Calimex;
USE Calimex; 
CREATE TABLE Categoria_producto(
	id_categoria_producto INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	nombre VARCHAR(50),
	descripcion VARCHAR(200)
);
CREATE TABLE Producto (
id_producto INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
id_categoria_producto INT NOT NULL,
nombre VARCHAR(50),
descripcion VARCHAR(100),
imagen INT,
precio DECIMAL(10,2),
activo BIT,
CONSTRAINT fk_id_categoria_producto FOREIGN KEY(id_categoria_producto) REFERENCES Categoria_Producto(id_categoria_producto)
);

CREATE TABLE Venta(
	id_venta INT PRIMARY KEY IDENTITY(1,1),
    fecha_venta DATE,
);
CREATE TABLE VentaProducto(
  id_venta int NOT NULL,
  id_producto int NOT NULL,
  cantidad int NOT NULL,
  CONSTRAINT pk_VentaProducto PRIMARY KEY(id_venta, id_producto),
  CONSTRAINT fk_VentaProducto_Venta FOREIGN KEY(id_venta)
    REFERENCES Venta(id_venta),
  CONSTRAINT fk_VentaProducto_Producto FOREIGN KEY(id_producto)
    REFERENCES Producto(id_producto)
);
INSERT INTO Categoria_producto (nombre, descripcion)
VALUES
('Electrónica', 'Productos electrónicos de todo tipo'),
('Hogar', 'Artículos para el hogar'),
('Ropa', 'Prendas de vestir y accesorios'),
('Comida', 'Alimentos y bebidas'),
('Juguetes', 'Juguetes y juegos para todas las edades'),
('Belleza', 'Productos de belleza y cuidado personal'),
('Mascotas', 'Productos para mascotas'),
('Deportes', 'Equipo deportivo y accesorios'),
('Automóvil', 'Productos para automóviles'),
('Libros', 'Libros y material de lectura');

INSERT INTO Producto (id_categoria_producto, nombre, descripcion, imagen, precio, activo)
VALUES
(1, 'Televisor LG 55 pulgadas', 'Televisor inteligente con resolución 4K', 001, 1999.99, 1),
(1, 'Laptop HP Envy', 'Laptop con procesador i7 y tarjeta gráfica dedicada', 002, 1799.99, 1),
(1, 'Smartphone Samsung Galaxy S21', 'Teléfono inteligente con 5G y cámara de alta calidad', 003, 1099.99, 1),
(2, 'Sofá de piel', 'Sofá de piel genuina con capacidad para 3 personas', 004, 2999.99, 1),
(2, 'Mesa de centro de madera', 'Mesa de centro de madera maciza con diseño moderno', 005, 499.99, 1),
(2, 'Juego de sábanas de algodón', 'Juego de sábanas de algodón egipcio con hilos de alta calidad', 006, 149.99, 1),
(3, 'Zapatos deportivos Nike', 'Zapatos para correr de alta calidad y comodidad', 007, 199.99, 1),
(3, 'Sombrero de ala ancha', 'Sombrero de moda con ala ancha para proteger del sol', 008, 39.99, 1),
(3, 'Bolso de cuero', 'Bolso de mano de cuero genuino y diseño elegante', 009, 299.99, 1),
(4, 'Cerveza artesanal IPA', 'Cerveza artesanal de estilo IPA con notas cítricas', 010, 4.99, 1),
(4, 'Vino tinto reserva', 'Vino tinto reserva con cuerpo y sabor intenso', 011, 29.99, 1),
(4, 'Agua mineral natural', 'Agua mineral natural sin gas de manantial', 012, 1.99, 1),
(5, 'Muñeco de acción Batman', 'Muñeco de acción articulado de Batman', 013, 19.99, 1),
(5, 'Puzzle de 1000 piezas', 'Puzzle de 1000 piezas con paisaje marino', 014, 14.99, 1),
(5, 'Set de pinturas al óleo', 'Set de pinturas al óleo con 24 colores y pinceles', 015, 39.99, 1),
(6, 'Crema hidratante Nivea', 'Crema hidratante para piel seca con vitamina E', 016, 9.99, 1),
(6, 'Loción corporal Dove', 'Loción corporal de nutrición profunda con karité', 017, 7.99, 1),
(6, 'Labial MAC', 'Labial de larga duración en tono rojo intenso', 018, 19.99, 1),
(7, 'Alimento para perros Pedigree', 'Comida para perros con sabor a carne y verduras', 019, 19.99, 1),
(7, 'Arena para gatos Tidy Cats', 'Arena para gatos con control de olores y fácil de limpiar', 020, 12.99, 1),
(7, 'Juguete para gato con plumas', 'Juguete interactivo para gato con plumas y sonido', 021, 5.99, 1),
(8, 'Pelota de fútbol Nike', 'Pelota de fútbol con diseño moderno y tecnología de precisión', 022, 39.99, 1),
(8, 'Raqueta de tenis Wilson', 'Raqueta de tenis con marco reforzado y grip cómodo', 023, 89.99, 1),
(8, 'Máquina trotadora Weslo', 'Máquina trotadora plegable con pantalla LCD', 024, 499.99, 1),
(9, 'Aceite sintético Mobil 1', 'Aceite sintético de alta calidad para motor de automóvil', 025, 49.99, 1),
(9, 'Set de llantas Pirelli', 'Set de llantas de alta performance para automóvil', 026, 999.99, 1),
(9, 'Batería de auto Bosch', 'Batería de alto rendimiento para automóvil', 027, 129.99, 1),
(10, 'Libro "Cien años de soledad"', 'Novela del escritor colombiano Gabriel García Márquez', 028, 14.99, 1),
(10, 'Diccionario Oxford', 'Diccionario en inglés de la reconocida editorial Oxford', 029, 29.99, 1),
(10, 'Revista National Geographic', 'Revista de divulgación científica y cultural', 030, 4.99, 1);