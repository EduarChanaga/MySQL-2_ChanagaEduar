-- ############################
-- #### Ejercicios dia - 7 ####
-- ############################
use jardinería;
-- 1. Consulta para agrupar clientes de empleados responsables de ventas
SELECT c.nombre_cliente, c.telefono, c.ciudad, e.nombre AS nombre_responsable, e.apellido1 AS apellido_responsable, e.email
FROM cliente c
INNER JOIN empleado e ON c.codigo_empleado_rep_ventas = e.codigo_empleado
WHERE e.puesto = 'responsable de ventas';


-- Ejercicio 2: Pedidos entre fechas para clientes de Sotogrande
SELECT p.codigo_pedido, p.fecha_pedido, p.fecha_entrega, p.estado, p.comentarios, p.codigo_cliente
FROM pedido p
INNER JOIN cliente c ON p.codigo_cliente = c.codigo_cliente
WHERE p.fecha_pedido BETWEEN '2009-03-15' AND '2009-07-15'
AND c.ciudad = 'Sotogrande';


-- Ejercicio 3: Productos de la gama frutas del proveedor Frutas Talaveras S.A.
SELECT pr.codigo_producto, pr.nombre, pr.descripcion, pr.cantidad_en_stock,
       ROUND(pr.precio_venta * 0.9, 2) AS precio_con_descuento,
       SUM(dp.cantidad) AS cantidad_en_pedidos
FROM producto pr
INNER JOIN detalle_pedido dp ON pr.codigo_producto = dp.codigo_producto
INNER JOIN pedido p ON dp.codigo_pedido = p.codigo_pedido
WHERE pr.gama = 'frutas' AND pr.proveedor = 'Frutas Talaveras S.A.'
GROUP BY pr.codigo_producto;

-- Desarrollado por: Eduar Damian Chanaga Gonzalez  / id:1095581647