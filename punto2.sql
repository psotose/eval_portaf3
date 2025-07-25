-- Consultas SQL sobre el modelo de datos

-- Obtener todos los pedidos realizados por un cliente específico
SELECT p.id_pedido, p.fecha, p.monto
FROM Pedidos p
JOIN Clientes c ON p.id_cliente = c.id_cliente
WHERE c.nombre = 'Juan Pérez';

-- Listar todos los pedidos con nombre del cliente
SELECT p.id_pedido, p.fecha, p.monto, c.nombre
FROM Pedidos p
JOIN Clientes c ON p.id_cliente = c.id_cliente;

-- Calcular el total de dinero gastado por cada cliente
SELECT c.nombre, SUM(p.monto) AS total_gastado
FROM Pedidos p
JOIN Clientes c ON p.id_cliente = c.id_cliente
GROUP BY c.nombre;

-- Contar cuántos pedidos hizo cada cliente
SELECT c.nombre, COUNT(p.id_pedido) AS cantidad_pedidos
FROM Pedidos p
JOIN Clientes c ON p.id_cliente = c.id_cliente
GROUP BY c.nombre;

--  Obtener los pedidos realizados en una fecha específica
SELECT *
FROM Pedidos
WHERE fecha = '2025-07-24';

-- Filtrar clientes con al menos 2 pedidos
SELECT c.nombre, COUNT(p.id_pedido) AS cantidad
FROM Pedidos p
JOIN Clientes c ON p.id_cliente = c.id_cliente
GROUP BY c.nombre
HAVING COUNT(p.id_pedido) >= 2;
