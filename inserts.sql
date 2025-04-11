-- inserción de datos en la tabla proveedores
INSERT INTO proveedores (nombre, direccion, telefono, email) VALUES
('RJ inc', 'Calle 111', '3235488545', 'rcinc@gmail.com'),
('HP', 'Avenida 222', '3115685423', 'hpindustries@gmail.com'),
('LENOVO', 'Carrera 333', '31455485156', 'lenovo@gmail.com'),
('LG', 'Diagonal 444', '32054554545', 'lg@gmail.com'),
('SAMSUNG', 'calle 555', '3504548456', 'samsung@gmail.com');
('CORSAIR', 'Avenida 64', '3134548226', 'corsair@gmail.com');
('RAZER', 'carrera 88', '3105486486', 'razer@gmail.com');
('REDRAGON', 'calle 69', '3225879646', 'redragon@gmail.com');
('LOGITECT', 'Avenida 65', '3165585667', 'logitect@gmail.com');
('ASUS', 'carrera 575', '3504548456', 'asus@gmail.com');
('MSI', 'calle 89', '3145548511', 'msi@gmail.com');
('INVIDIA', 'calle 25', '3214554884', 'invidia@gmail.com');
('AMD', 'carrera 26', '32254589354', 'amdfx@gmail.com');
('intel', 'carrera 26', '31589522544', 'intelcore@gmail.com');
('zotac', 'carrera 26', '3145586489', 'zotac@gmail.com');

-- inserción de datos en la tabla productos
INSERT INTO productos (nombre, categoria, precio, stock, proveedor_id) VALUES
('Laptop', 'Electrónica', 1500000, 10, 1),
('Mouse', 'Periféricos', 50000, 50, 2),
('Teclado', 'Periféricos', 70000, 30, 3),
('Monitor', 'Electrónica', 450000, 20, 4),
('Impresora', 'Oficina', 1200000, 15, 2),
('Auriculares', 'Periféricos', 80000, 25, 5),
('Cámara Web', 'Electrónica', 150000, 10, 6),
('Disco Duro', 'Almacenamiento', 300000, 40, 7),
('Memoria USB', 'Almacenamiento', 50000, 100, 8),
('Tarjeta Gráfica', 'Hardware', 2500000, 5, 9),
('Procesador', 'Hardware', 1200000, 8, 10),
('Placa Base', 'Hardware', 800000, 12, 11),
('Fuente de Poder', 'Hardware', 300000, 20, 12),
('Gabinete', 'Hardware', 400000, 15, 13),
('Disipador', 'Hardware', 50000, 50, 14);

-- inserción de datos en la tabla clientes
INSERT INTO clientes (nombre, apellido, direccion, email, telefono) VALUES
('Juan', 'Perez', 'Calle 123', 'juanperez@gmail.com', '3124567890'),
('Maria', 'Lopez', 'Avenida 456', 'marialopez@gamil.com', '3507654321'),
('Carlos', 'Gomez', 'Carrera 789', 'carlosgomez@gmail.com', '3222334455'),
('Ana', 'Martinez', 'calle 101', 'anamartinez@gmail.com', '3116778899'),
('Luis', 'Hernandez', 'calle 202', 'luishernandez@gmail.com', '3217889900'),
('Sofia', 'Ramirez', 'Calle 321', 'sofiaramirez@gmail.com', '3141231234'),
('Diego', 'Torres', 'Avenida 654', 'diegotorres@gmail.com', '3169879876'),
('Laura', 'Castro', 'Carrera 987', 'lauraastro@gmail.com', '3204564567'),
('Andres', 'Mendoza', 'calle 111', 'andresmendoza@gmail.com', '3217897890'),
('Camila', 'Ortiz', 'carrera 333', 'camilaortiz@gmail.com', '3213213210'),
('Jorge', 'Rios', 'Calle 555', 'jorgerios@gmail.com', '3206546543'),
('Valeria', 'Diaz', 'Avenida 777', 'valeriadiaz@gmail.com', '3146543210'),
('Sebastian', 'Morales', 'Carrera 888', 'sebastianmorales@gmail.com', '3159874560'),
('Paula', 'Vargas', 'calle 999', 'paulavargas@gmail.com', '3237891230'),
('Fernando', 'Cruz', 'calle 444', 'fernandocruz@gmail.com', '3201234560');

-- inserción de datos en la tabla ventas
INSERT INTO ventas (cliente_id, fecha) VALUES
(1, '2024-10-01 10:00:00'),
(2, '2024-10-02 11:30:00'),
(3, '2023-10-03 14:45:00'),
(4, '2023-10-04 16:20:00'),
(5, '2023-10-05 09:15:00'),
(6, '2024-10-06 14:10:00'),
(7, '2023-10-07 15:50:00'),
(8, '2024-10-08 12:25:00'),
(9, '2024-10-09 17:40:00'),
(10, '2023-10-10 08:30:00');

-- inserción de datos en la tabla detalleVentas
INSERT INTO detalleVentas (venta_id, producto_id, cantidad, precio_unitario) VALUES
(1, 1, 1, 1500000),
(1, 2, 2, 50000),
(2, 3, 1, 70000),
(2, 4, 1, 450000),
(3, 5, 1, 1200000),
(3, 6, 2, 80000),
(4, 7, 1, 150000),
(4, 8, 1, 300000),
(5, 9, 3, 50000),
(5, 10, 1, 2500000),
(6, 11, 1, 1200000),
(6, 12, 1, 800000),
(7, 13, 1, 300000),
(7, 14, 2, 400000),
(8, 15, 4, 50000),
(9, 1, 1, 1500000),
(9, 2, 1, 50000),
(10, 3, 2, 70000),
(10, 4, 1, 450000);