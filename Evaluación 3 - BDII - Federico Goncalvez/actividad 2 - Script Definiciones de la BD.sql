/*Atividade 2: Crie o script de criação da base de dados (Nome Base: vendas), das tabelas e
demais objetos do banco de dados. */

CREATE DATABASE IF NOT EXISTS vendas;

CREATE TABLE IF NOT EXISTS usuarios (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(20) NOT NULL,
  password VARCHAR(50) NOT NULL,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  email VARCHAR(50)
);

INSERT INTO usuarios (username, password, nombre, apellido, email)
VALUES ('user1', 'pass1', 'Juan', 'fulano', 'fulano@gmail');
INSERT INTO usuarios (username, password, nombre, apellido, email)
VALUES ('user2', 'pass2', 'Pepe', 'mengano', 'mengano@gmail');


CREATE TABLE IF NOT EXISTS sesiones_usuarios (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  id_usuario INTEGER NOT NULL,
  login_time DATETIME NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

INSERT INTO sesiones_usuarios (id_usuario, login_time)
VALUES (1, NOW());
INSERT INTO sesiones_usuarios (id_usuario, login_time)
VALUES (1, NOW());
INSERT INTO sesiones_usuarios (id_usuario, login_time)
VALUES (2, NOW());


CREATE TABLE IF NOT EXISTS productos (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  precio FLOAT NOT NULL,
  stock INTEGER NOT NULL,
  descripcion VARCHAR(50),
  categoria VARCHAR(50)
);

INSERT INTO productos (nombre, precio, stock, descripcion, categoria)
VALUES ('monitor', 1000.50, 10, 'descripcion electronico', 'electronicos');
INSERT INTO productos (nombre, precio, stock, descripcion, categoria)
VALUES ('pc', 2000.50, 15, 'descripcion electronico', 'electronicos');
INSERT INTO productos (nombre, precio, stock, descripcion, categoria)
VALUES ('hosting', 3000.50, 2, 'descripcion otra', 'servicios');


CREATE TABLE IF NOT EXISTS historial_precios (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  id_producto INTEGER NOT NULL,
  precio FLOAT NOT NULL,
  inicio DATETIME NOT NULL,
  fin DATETIME NOT NULL,
  FOREIGN KEY (id_producto) REFERENCES productos(id)
);


CREATE TABLE IF NOT EXISTS compras (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  fecha_compra DATETIME NOT NULL,
  descripcion VARCHAR(250),
  nombre_proveedor VARCHAR(50) NOT NULL,
  direccion_proveedor VARCHAR(50) NOT NULL,
  email_proveedor VARCHAR(50) NOT NULL,
  id_usuario INTEGER NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

INSERT INTO compras (fecha_compra, descripcion, nombre_proveedor, direccion_proveedor, email_proveedor, id_usuario)
VALUES (NOW(), 'Compra electronicos', 'google', 'silicon valley', 'contacto@limpieza.com', 1);


CREATE TABLE  IF NOT EXISTS articulos_comprados (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  id_compra INTEGER NOT NULL,
  id_producto INTEGER NOT NULL,
  cantidad INTEGER NOT NULL,
  precio_compra DECIMAL(10,2) NOT NULL,
  descuento DECIMAL(10,2) DEFAULT 0,
  total DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (id_compra) REFERENCES compras(id),
  FOREIGN KEY (id_producto) REFERENCES productos(id)
);

INSERT INTO articulos_comprados (id_compra, id_producto, cantidad, precio_compra, descuento, total)
VALUES (1, 1, 10, 100.50, 0, 1005.00);


CREATE TABLE IF NOT EXISTS  clientes (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50) NOT NULL,
  direccion VARCHAR(50),
  email VARCHAR(50)
);

INSERT INTO clientes (nombre, direccion, email)
VALUES ('alguien', 'sarandi 123', 'asd@gma');
INSERT INTO clientes (nombre, direccion, email)
VALUES ('prueba', 'sarandi 123', 'asd@gma');


CREATE TABLE IF NOT EXISTS  ventas (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  fecha_venta DATETIME NOT NULL,
  total DECIMAL(10,2) NOT NULL,
  id_usuario INTEGER NOT NULL,
  id_cliente INTEGER NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
  FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

INSERT INTO ventas (fecha_venta, total, id_usuario, id_cliente)
VALUES (NOW(), 200.5, 1, 1);
INSERT INTO ventas (fecha_venta, total, id_usuario, id_cliente)
VALUES (NOW(), 200.5, 1, 2);

CREATE TABLE IF NOT EXISTS  articulos_vendidos (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  id_venta INTEGER NOT NULL,
  id_productos INTEGER NOT NULL,
  cantidad INTEGER NOT NULL,
  precio DECIMAL(10,2) NOT NULL,
  descuento DECIMAL(10,2) DEFAULT 0,
  total DECIMAL(10,2) NOT NULL,
  FOREIGN KEY (id_venta) REFERENCES ventas(id),
  FOREIGN KEY (id_productos) REFERENCES productos(id)
);

INSERT INTO articulos_vendidos (id_venta, id_productos, cantidad, precio, descuento, total)
VALUES (1, 2, 5, 5000.25, 0, 251.2);
INSERT INTO articulos_vendidos (id_venta, id_productos, cantidad, precio, descuento, total)
VALUES (1, 2, 5, 5000.25, 0, 251.2);
INSERT INTO articulos_vendidos (id_venta, id_productos, cantidad, precio, descuento, total)
VALUES (2, 1, 5, 52000.25, 0, 1251.2);
INSERT INTO articulos_vendidos (id_venta, id_productos, cantidad, precio, descuento, total)
VALUES (2, 1, 5, 52000.25, 0, 1251.2);
INSERT INTO articulos_vendidos (id_venta, id_productos, cantidad, precio, descuento, total)
VALUES (2, 1, 5, 52000.25, 0, 1251.2);