-- Insertar un nuevo pedido asociado a un cliente
INSERT INTO Pedidos (fecha, monto, id_cliente)
VALUES ('2025-07-25', 320.50, 1);

--Actualizar la dirección de un cliente
UPDATE Clientes
SET direccion = 'Av. Pedro de Valdivia  742'
WHERE id_cliente = 1;

-- Eliminar un pedido que no fue procesado
DELETE FROM Pedidos
WHERE id_pedido = 10;
