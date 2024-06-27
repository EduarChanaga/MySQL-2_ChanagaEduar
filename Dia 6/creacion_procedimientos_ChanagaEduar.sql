-- ########################################
-- ###### Creacion de procedimientos ######
-- ############### Empleados ##############
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
in valor_alquiler_dia decimal(10,2),
in porcentaje_descuento decimal(5,2),
in valor_cotizado decimal (10,2),
in valor_pagado decimal (10,2)
)
begin
	INSERT INTO Alquiler (vehiculo_id, cliente_id, empleado_id, sucursal_salida_id, fecha_salida, sucursal_llegada_id, fecha_llegada, fecha_esperada_llegada, valor_alquiler_semana, valor_alquiler_dia, porcentaje_descuento, valor_cotizado, valor_pagado) VALUES
	(vehiculo_id, cliente_id, empleado_id, sucursal_salida_id, fecha_salida, sucursal_llegada_id, fecha_llegada, fecha_esperada_llegada, valor_alquiler_semana, valor_alquiler_dia, porcentaje_descuento, valor_cotizado, valor_pagado);
end //




-- ver vehiculos no alquilados

CREATE PROCEDURE VerVehiculosDisponiblesPorTipo(IN tipo_vehiculo_param VARCHAR(50))
BEGIN
    SELECT v.*
    FROM Vehiculo v
    LEFT JOIN Alquiler a ON v.id = a.vehiculo_id
    WHERE a.vehiculo_id IS NULL
    AND v.tipo_vehiculo = tipo_vehiculo_param;
END //



-- Agregar cliente nuevo
CREATE PROCEDURE agregar_cliente(
    IN p_cedula VARCHAR(20),
    IN p_nombres VARCHAR(50),
    IN p_apellidos VARCHAR(50),
    IN p_direccion VARCHAR(100),
    IN p_ciudad_residencia VARCHAR(50),
    IN p_celular VARCHAR(15),
    IN p_correo_electronico VARCHAR(50)
)
BEGIN
    -- Variable para guardar el ID del nuevo cliente
    DECLARE cliente_id INT;

    -- Insertar el cliente en la tabla Cliente
    INSERT INTO Cliente (cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico)
    VALUES (p_cedula, p_nombres, p_apellidos, p_direccion, p_ciudad_residencia, p_celular, p_correo_electronico);
END //


DELIMITER ;
-- Editar cliente
DELIMITER //

CREATE PROCEDURE modificar_cliente(
    IN cliente_id INT,
    IN nuevo_nombres VARCHAR(50),
    IN nuevo_apellidos VARCHAR(50),
    IN nueva_direccion VARCHAR(100),
    IN nueva_ciudad_residencia VARCHAR(50),
    IN nuevo_celular VARCHAR(15),
    IN nuevo_correo_electronico VARCHAR(50)
)
BEGIN
    UPDATE Cliente
    SET
        nombres = nuevo_nombres,
        apellidos = nuevo_apellidos,
        direccion = nueva_direccion,
        ciudad_residencia = nueva_ciudad_residencia,
        celular = nuevo_celular,
        correo_electronico = nuevo_correo_electronico
    WHERE id = cliente_id;
END //


DELIMITER //
-- Procedimiento para el evento que crea un backup de la tabla alquiler 
DELIMITER //
CREATE PROCEDURE sp_backup_alquiler()
BEGIN
    DECLARE backup_filename VARCHAR(255);
    SET backup_filename = CONCAT('alquiler_backup_', DATE_FORMAT(NOW(), '%Y%m%d%H%i%s'), '.sql');
    SET @backup_query = CONCAT('mysqldump -u your_username -pYourPassword your_database Alquiler > ', backup_filename);
    CALL sys_exec(@backup_query);
END //

drop procedure sp_backup_alquiler;
DELIMITER ;


DELIMITER ;







-- Desarrollado por: Eduar Damian Chanaga Gonzalez / ID: 1095581647