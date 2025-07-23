# Evaluación de portafolio

# PUNTO 1:
# Componentes básicos de una base de datos relacional

## **Tablas**
- Son estructuras que almacenan los datos organizados en **filas** y **columnas**.
- Cada tabla representa una **entidad** (por ejemplo, `Clientes` o `Pedidos`).

## **Registros (Filas)**
- Cada **fila** contiene un conjunto de datos relacionados que representan una **instancia de la entidad**.
- **Ejemplo:** En la tabla `Clientes`, un registro podría ser: Juan Pérez, juan@mail.com


## **Campos (Columnas)**
- Cada **columna** representa un **atributo** de la entidad.
- **Ejemplo:** En `Clientes`, los campos podrían ser: id_cliente, nombre, email


## **Clave primaria (PK – Primary Key)**
- Es un **campo (o conjunto de campos)** que **identifica de forma única** cada registro en la tabla.
- **Ejemplo:** `id_cliente` en la tabla `Clientes`.

## **Clave foránea (FK – Foreign Key)**
- Es un campo que **establece una relación** entre dos tablas, apuntando a la **clave primaria de otra tabla**.
- **Ejemplo:** En la tabla `Pedidos`, el campo `id_cliente` es una clave foránea que hace referencia a `Clientes(id_cliente)`.

# **Gestión y almacenamiento de datos**
- Cada tabla almacena los datos de forma estructurada, con cada **fila representando una instancia**.
- Las **relaciones entre tablas** se logran mediante las **claves primarias y foráneas**, evitando duplicar información.
- Este modelo facilita operaciones como **búsquedas, actualizaciones o eliminación de datos**, manteniendo la **integridad referencial**.

## Breve ejemplo en archivo punto1.sql

