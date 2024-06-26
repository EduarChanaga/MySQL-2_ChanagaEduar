-- ########################################
-- ######### Call's de empleado ###########
-- ############## + permisos ##############
-- ########################################


-- ########################################
-- Modificar datos de la tabla alquiler
-- Asignar permiso al empleado para ejecutar este procedimiento
			GRANT EXECUTE ON PROCEDURE alquiler.modificar_alquiler TO 'empleado'@'%';
			-- Llamar procedimiento segun los datos a modificar
			CALL modificar_alquiler(
				10,       -- vehiculo_id
				10,       -- cliente_id
				10,       -- empleado_id
				5,       -- sucursal_salida_id
				'2024-06-25', -- fecha_salida (debes proporcionar la fecha en formato 'YYYY-MM-DD')
				5,       -- sucursal_llegada_id
				'2024-06-28', -- fecha_llegada (debes proporcionar la fecha en formato 'YYYY-MM-DD')
				'2024-06-30', -- fecha_esperada_llegada (debes proporcionar la fecha en formato 'YYYY-MM-DD')
				400.00,  -- valor_alquiler_semana
				50.00,   -- valor_alquiler_dia
				10.00,   -- porcentaje_descuento
				120.00,  -- valor_pagado
				10        -- id de registro a modificar
			);
-- ########################################
-- Ver registros de Alquiler
-- Asignar permiso al empleado para ejecutar este procedimiento
			GRANT EXECUTE ON PROCEDURE alquiler.ver_registros_alquiler TO 'empleado'@'%';
            -- llamar procedimiento para ver el registro guardado en alquiler
            call ver_registros_alquiler();
            
-- ########################################            
-- Disponibilidad vehiculo
-- asignar permiso al empleado para ejecutar este procedimiento
GRANT EXECUTE ON PROCEDURE alquiler.Consultar_disponibilidad_vehiculos TO 'empleado'@'%';
CALL Consultar_disponibilidad_vehiculos(
    'Sedán',-- Tipo de vehículo que se desea buscar
    300,   -- minimo a pagar
    500,	-- maximo a pagar
    '2024-06-20', -- fecha salida
    '2024-06-27' -- fecha inicio
);
      
    
select * from Alquiler;
select * from Vehiculo;
-- ########################################            
-- Agregar alquiler nuevo
-- asignar permiso al empleado para ejecutar este procedimiento
grant execute on procedure alquiler.Agregar_Alquiler_nuevo TO 'empleado'@'%';

-- Llamar procedimiento con sus respectivos parametros
call Agregar_Alquiler_nuevo(
0,   -- id del vehiculo para el alquiler
0,   -- id del cliente para el alquiler
0, -- id del empleado para el alquiler
0, -- id de la sucursal de la salida
'2024-06-29',  -- fecha de la salida
0,-- id de la sucursal de la llegada
'2024-07-01', -- fecha de la llegada
'2024-07-02', -- fecha esperada de la llegada
0, -- valor del alquiler de la semana
0, -- valor del alquiler al dia 
0, -- porcentaje de descuento
0, -- valor cotizado
0  -- valor pagado
)

