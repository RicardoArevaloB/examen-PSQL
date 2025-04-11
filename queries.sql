-- Listar los productos con stock menor a 5 unidades.
SELECT nombre, categoria, stock
FROM productos
WHERE stock < 5;

-- Calcular ventas totales de un mes específico.
SELECT DATE_TRUNC('month', fecha) AS mes, SUM(dv.cantidad * dv.precio_unitario) AS total_ventas
FROM ventas v
JOIN detalleVentas dv ON v.id = dv.venta_id
WHERE DATE_PART('month', fecha) = 10 AND DATE_PART('year', fecha) = 2023
GROUP BY mes;

-- Obtener el cliente con más compras realizadas.
SELECT c.nombre, c.apellido, COUNT(v.id) AS total_compras
FROM clientes c
JOIN ventas v ON c.id = v.cliente_id
GROUP BY c.id
ORDER BY total_compras DESC
LIMIT 1;

-- Listar los 5 productos más vendidos.
SELECT p.nombre, SUM(dv.cantidad) AS total_vendidos
FROM productos p
JOIN detalleVentas dv ON p.id = dv.producto_id
GROUP BY p.id
ORDER BY total_vendidos DESC
LIMIT 5;

-- Consultar ventas realizadas en un rango de fechas de tres días y un mes.
SELECT v.id AS venta_id, v.fecha, c.nombre AS cliente, c.apellido
FROM ventas v
JOIN clientes c ON v.cliente_id = c.id
WHERE v.fecha BETWEEN '2023-10-01' AND '2024-10-31';

-- Identificar clientes que no han comprado en los últimos 6 meses.
SELECT c.nombre, c.apellido, c.email
FROM clientes c
LEFT JOIN ventas v ON c.id = v.cliente_id AND v.fecha >= NOW() - INTERVAL '6 months'
WHERE v.id IS NULL;


