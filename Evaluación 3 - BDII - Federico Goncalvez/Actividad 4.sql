/*Atividade 4:
• Crie uma visão (nome: vw_usuarios_atividade), que retorne o nome e o login do
usuário além das informações de todos os acessos ao sistema (data e hora).
• Crie um procedimento armazenado (nome: sp_retorna_produto_mais_vendido), que
retorne o valor total das vendas realizadas e as informações do produto mais vendido
para um determinado cliente. O procedimento armazenado deve receber como
parâmetro de entrada o código do cliente.*/

CREATE VIEW vw_usuarios_atividad AS
SELECT u.nombre, u.username, s.login_time as acceso
FROM usuarios u
INNER JOIN sesiones_usuarios s ON s.id_usuario = u.id;

SELECT * FROM vw_usuarios_atividad;

DELIMITER $$
CREATE PROCEDURE sp_retorna_produto_mais_vendido(IN id_cliente INTEGER)
BEGIN
  SELECT total.total_ventas as total, productos.nombre as nombre_producto, productos.precio as precio, clientes.nombre as nombre_cliente
  FROM (
    SELECT id_productos, SUM(total) AS total_ventas
    FROM articulos_vendidos
    WHERE id_venta IN (
      SELECT id FROM ventas WHERE id_cliente = id_cliente
    )
    GROUP BY id_productos
    ORDER BY total_ventas DESC
    LIMIT 1
  ) total
  INNER JOIN productos ON total.id_productos = productos.id
  INNER JOIN clientes ON clientes.id = id_cliente;
END $$
DELIMITER ;


CALL sp_retorna_produto_mais_vendido(2);

