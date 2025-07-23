CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE NOT NULL,
    monto DECIMAL(10,2) NOT NULL,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- La clave foránea id_cliente en Pedidos permite saber qué cliente realizó cada pedido, sin necesidad de duplicar los datos del cliente en cada pedido.
-- Consulta de ejemplo: Para obtener todos los pedidos con el nombre del cliente:

SELECT p.id_pedido, p.fecha, p.monto, c.nombre
FROM Pedidos p
JOIN Clientes c ON p.id_cliente = c.id_cliente;
