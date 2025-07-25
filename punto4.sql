--  Crear una tabla para empleados
CREATE TABLE Empleados (
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    fecha_ingreso DATE NOT NULL
);

--  Agregar una nuevo campo (email)
ALTER TABLE Empleados
ADD COLUMN email VARCHAR(100);

-- Modificar el tipo de dato de una columna
ALTER TABLE Empleados
MODIFY COLUMN salario DECIMAL(12,2);

-- Eliminar un campo (email)
ALTER TABLE Empleados
DROP COLUMN email;

-- Eliminar una tabla completa
DROP TABLE Empleados;

-- Crear un índice para mejorar búsquedas
CREATE INDEX idx_nombre ON Empleados(nombre);
