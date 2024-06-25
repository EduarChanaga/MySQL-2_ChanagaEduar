-- ########################################
-- ###### Creacion de procedimientos ######
-- ########################################
use alquiler;
DELIMITER //
-- Modificar datos de alquiler
CREATE PROCEDURE modificar_alquiler(
    IN p_vehiculo_id INT,
    IN p_cliente_id INT,
    IN p_empleado_id INT,
    IN p_sucursal_salida_id INT,
    IN p_fecha_salida DATE,
    IN p_sucursal_llegada_id INT,
    IN p_fecha_llegada DATE,
    IN p_fecha_esperada_llegada DATE,
    IN p_valor_alquiler_semana DECIMAL(10,2),
    IN p_valor_alquiler_dia DECIMAL(10,2),
    IN p_porcentaje_descuento DECIMAL(5,2),
    IN p_valor_pagado DECIMAL(10,2),
    IN p_id INT
)
BEGIN
    UPDATE Alquiler
    SET 
        vehiculo_id = p_vehiculo_id,
        cliente_id = p_cliente_id,
        empleado_id = p_empleado_id,
        sucursal_salida_id = p_sucursal_salida_id,
        fecha_salida = p_fecha_salida,
        sucursal_llegada_id = p_sucursal_llegada_id,
        fecha_llegada = p_fecha_llegada,
        fecha_esperada_llegada = p_fecha_esperada_llegada,
        valor_alquiler_semana = p_valor_alquiler_semana,
        valor_alquiler_dia = p_valor_alquiler_dia,
        porcentaje_descuento = p_porcentaje_descuento,
        valor_pagado = p_valor_pagado
    WHERE id = p_id;
END //



-- Ver datos de alquiler
create procedure ver_registros_alquiler()
begin
	select *
	from Alquiler;
end //



-- Consulta de disponibilidad de vehiculo
create procedure Consultar_disponibilidad_vehiculos(
    IN tipo_vehiculo_param VARCHAR(50),
    IN precio_min DECIMAL(10,2),
    IN precio_max DECIMAL(10,2),
    IN fecha_inicio DATE,
    IN fecha_fin DATE
)
BEGIN
    SELECT 
        V.id AS vehiculo_id,
        V.tipo_vehiculo,
        V.referencia,
        V.modelo,
        V.puertas,
        V.capacidad,
        V.sunroof,
        V.motor,
        V.color
    FROM Vehiculo V
	right join Alquiler A on vehiculo_id = V.id
    where V.tipo_vehiculo = tipo_vehiculo_param and
			A.fecha_salida = fecha_inicio and
            A.fecha_llegada = fecha_fin;

END //
-- Creacion de datos de alquiler
create procedure Agregar_Alquiler_nuevo(
in vehiculo_id int,
in cliente_id int,
in empleado_id int,
in sucursal_salida_id int,
in fecha_salida date,
in sucursal_llegada_id int,
in fecha_llegada date,
in fecha_esperada_llegada date,
in valor_alquiler_semana DECIMAL(10,2),
in valor_alquiler_dia decimal(10,2)
)
begin
	INSERT INTO Alquiler (vehiculo_id, cliente_id, empleado_id, sucursal_salida_id, fecha_salida, sucursal_llegada_id, fecha_llegada, fecha_esperada_llegada, valor_alquiler_semana, valor_alquiler_dia, porcentaje_descuento, valor_cotizado, valor_pagado) VALUES
	(1, 1, 1, 1, '2024-06-20', 2, '2024-06-27', '2024-06-27', 300.00, 50.00, 10.00, 450.00, 400.00);
end //
drop procedure Consultar_disponibilidad_vehiculos;

-- Desarrollado por: Eduar Damian Chanaga Gonzalez / ID: 1095581647