-- base de datos psql

CREATE DATABASE techzone;
\c techzone

-- tabla proveedores 
CREATE TABLE proveedores (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    telefono VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(70) UNIQUE NOT NULL
);

-- tabla clientes
CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    email VARCHAR(70) UNIQUE NOT NULL,
    telefono VARCHAR(15) UNIQUE NOT NULL
);

-- tabla productos 
CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    proveedor_id INT NOT NULL,
    FOREIGN KEY (proveedor_id) REFERENCES proveedores(id)
);

--  tabla ventas 
CREATE TABLE ventas (
    id SERIAL PRIMARY KEY,
    cliente_id INT NOT NULL,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

--  tabla detalleVentas 
CREATE TABLE detalleVentas (
    id SERIAL PRIMARY KEY,
    venta_id INT NOT NULL,
    producto_id INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (venta_id) REFERENCES ventas(id),
    FOREIGN KEY (producto_id) REFERENCES productos(id)
);








