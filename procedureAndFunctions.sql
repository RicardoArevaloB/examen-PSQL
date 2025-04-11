-- Crear función para validar si un cliente existe y devolver un mensaje
CREATE OR REPLACE FUNCTION validar_cliente_existe(cliente_id INT) RETURNS TEXT AS $$
DECLARE
    mensaje TEXT;
BEGIN
    IF EXISTS (
        SELECT 1
        FROM clientes
        WHERE id = cliente_id
    ) THEN
        mensaje := 'El cliente existe.';
    ELSE
        mensaje := 'El cliente no existe.';
    END IF;

    RETURN mensaje;
END;
$$ LANGUAGE plpgsql;

-- Ejemplo de uso
SELECT validar_cliente_existe_mensaje(5);

-- ---------------------------------------------------------------


-- Si no hay stock suficiente, Notificar por medio de un mensaje en consola usando RAISE.
CREATE OR REPLACE FUNCTION verificar_stock(producto_id INT, cantidad INT) RETURNS VOID AS $$
DECLARE
    stock_actual INT;
BEGIN
    SELECT stock INTO stock_actual FROM productos WHERE id = producto_id;

    IF stock_actual < cantidad THEN
        RAISE NOTICE 'No hay suficiente stock para el producto con ID %: Stock actual = %, Cantidad requerida = %', producto_id, stock_actual, cantidad;
    END IF;
END;
$$ LANGUAGE plpgsql;

-- uso del procedimiento
SELECT * FROM verificar_stock(1, 5); 
-- ---------------------------------------------------------------





CREATE OR REPLACE FUNCTION procesar_venta(cliente_id INT, producto_id INT, cantidad INT) 
RETURNS TEXT AS $$
DECLARE
    precio_unitario DECIMAL(10, 2);
    venta_id INT;
    stock_suficiente BOOLEAN;
BEGIN
    stock_suficiente := verificar_stock(producto_id, cantidad);
    IF NOT stock_suficiente THEN
        RETURN 'Stock insuficiente para procesar la venta.';
    END IF;
   
    SELECT precio INTO precio_unitario 
    FROM productos 
    WHERE id = producto_id;
    
    INSERT INTO ventas (cliente_id) 
    VALUES (cliente_id) 
    RETURNING id INTO venta_id;

    INSERT INTO detalleVentas (venta_id, producto_id, cantidad, precio_unitario) 
    VALUES (venta_id, producto_id, cantidad, precio_unitario);

    UPDATE productos 
    SET stock = stock - cantidad 
    WHERE id = producto_id;

    RETURN 'Venta procesada exitosamente.';
END;
$$ LANGUAGE plpgsql;

-- uso del procedimiento
SELECT * FROM procesar_venta(1, 1, 2);