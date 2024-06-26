-- ##########################################
-- ###### Creacion usuarios y permisos ######
-- ############### principales ##############
-- ##########################################

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

-- Guardar permisos
FLUSH PRIVILEGES;



-- Desarrollado por: Eduar Damian Chanaga Gonzalez / ID: 1095581647