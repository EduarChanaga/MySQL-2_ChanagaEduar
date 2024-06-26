-- ##########################################
-- ###### Creacion usuarios y permisos ######
-- ############### principales ##############
-- ##########################################
-- eliminar usuarios
DROP USER 'empleado'@'%';
DROP USER 'cliente'@'%';

-- creacion de usuario empleado
CREATE USER 'empleado'@'%' IDENTIFIED BY 'empleado123';
-- entrar al usuario
-- mysql -u empleado -p
-- Permisos para la tabla vehiculo
GRANT SELECT ON alquiler.vehiculo TO 'empleado'@'%';

-- Permisos para la tabla alquiler
GRANT SELECT ON alquiler.alquiler to 'empleado'@'%';
GRANT UPDATE ON alquiler.alquiler to 'empleado'@'%';
GRANT INSERT ON alquiler.alquiler to 'empleado'@'%';

GRANT SELECT ON alquiler.cliente_log to 'empleado'@'%';
GRANT UPDATE ON alquiler.cliente_log to 'empleado'@'%';
GRANT INSERT ON alquiler.cliente_log to 'empleado'@'%';

-- permisos para que el empleado utilice los procedimientos
GRANT EXECUTE ON PROCEDURE alquiler.modificar_alquiler TO 'empleado'@'%';
GRANT EXECUTE ON PROCEDURE alquiler.ver_registros_alquiler TO 'empleado'@'%';
GRANT EXECUTE ON PROCEDURE alquiler.Consultar_disponibilidad_vehiculos TO 'empleado'@'%';
grant execute on procedure alquiler.Agregar_Alquiler_nuevo TO 'empleado'@'%';
grant execute on procedure alquiler.agregar_cliente TO 'empleado'@'%';


-- creacion de usuario cliente
CREATE USER 'cliente'@'%' IDENTIFIED BY 'cliente123';
-- entrar al usuario
-- mysql -u cliente -p

-- Permisos para la tabla alquiler
GRANT SELECT ON alquiler.alquiler TO 'cliente'@'%';

-- permisos para que el cliente utilice los procedimientos
GRANT EXECUTE ON PROCEDURE alquiler.ver_registros_alquiler TO 'cliente'@'%';
GRANT EXECUTE ON PROCEDURE alquiler.VerVehiculosDisponiblesPorTipo TO 'cliente'@'%';


-- Guardar permisos
FLUSH PRIVILEGES;



-- Desarrollado por: Eduar Damian Chanaga Gonzalez / ID: 1095581647