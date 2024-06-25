-- ########################################
-- ######### Creacion de usuarios #########
-- ########################################
-- creacion del usuario empleado
CREATE USER 'empleado'@'%' IDENTIFIED BY 'empleado123';

-- revisar permisos
SHOW GRANTS FOR empleado;

-- eliminar usuario
DROP USER empleado;

-- Asignación de permisos al rol 'empleado'
GRANT SELECT ON alquiler.Vehiculo TO 'empleado'@'%';

GRANT INSERT ON alquiler.Alquiler TO 'empleado'@'%';
GRANT SELECT ON alquiler.Alquiler TO 'empleado'@'%';
GRANT UPDATE ON alquiler_Alquiler to 'empleado'@'%';


-- guardar cambios
FLUSH PRIVILEGES;
select * from Alquiler;

-- Desarrollado por: Eduar Damian Chanaga Gonzalez / ID: 1095581647