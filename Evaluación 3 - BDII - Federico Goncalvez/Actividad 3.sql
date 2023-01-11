/* Atividade 3: Crie procedimentos armazenados para:
• Inserir dados nas duas tabelas.
• Atualizar dados em uma das tabelas.
• Eliminar os dados das duas tabelas (para isso crie um único procedimento
armazenado).*/

DELIMITER $$
CREATE PROCEDURE sp_agregar_usuario (
IN username VARCHAR(20),
IN password VARCHAR(50),
IN nombre VARCHAR(50),
IN apellido VARCHAR(50),
IN email VARCHAR(50)
)
BEGIN
INSERT INTO usuarios (username, password, nombre, apellido, email)
VALUES (username, password, nombre, apellido, email);
END $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE sp_agregar_compra (
IN fecha_compra DATETIME,
IN descripcion VARCHAR(250),
IN nombre_proveedor VARCHAR(50),
IN direccion_proveedor VARCHAR(50),
IN email_proveedor VARCHAR(50),
IN id_usuario INTEGER
)
BEGIN
IF EXISTS (SELECT id FROM usuarios WHERE usuarios.id = id_usuario) THEN
INSERT INTO compras (fecha_compra, descripcion, nombre_proveedor, direccion_proveedor, email_proveedor, id_usuario)
VALUES (fecha_compra, descripcion, nombre_proveedor, direccion_proveedor, email_proveedor, id_usuario);
END IF;
END $$
DELIMITER;

DELIMITER $$
CREATE PROCEDURE sp_actualizar_usuario (
IN id_usuario INTEGER,
IN username VARCHAR(20),
IN password VARCHAR(50),
IN nombre VARCHAR(50),
IN apellido VARCHAR(50),
IN email VARCHAR(50)
)
BEGIN
UPDATE usuarios
SET username = username,
password = password,
nombre = nombre,
apellido = apellido,
email = email
WHERE id = id_usuario;
END $$
DELIMITER;


DELIMITER $$
CREATE PROCEDURE sp_borrar_usuario_y_compras (IN id_usuario INTEGER)
BEGIN
IF EXISTS (SELECT id FROM usuarios WHERE usuarios.id = id_usuario) THEN

DELETE FROM compras WHERE compras.id_usuario = id_usuario;
DELETE FROM usuarios WHERE id_usuario = usuarios.id;

END IF;
END $$
DELIMITER ;

CALL sp_agregar_usuario('prueba', 'pass', 'testname', 'probar', 'pruebatest@gmailm.cm');

CALL sp_agregar_compra('2021-01-01 11:55:00', 'probar', 'test', 'calle test , ciudad prueba', 'prueba@test.com', 2);

CALL sp_actualizar_usuario(4, 'pasdasd', 'passasdwordd', 'persdaez', 'dsdasds', 'asdpepe.dsperez@gmail.com');

CALL sp_borrar_usuario_y_compras(1);
