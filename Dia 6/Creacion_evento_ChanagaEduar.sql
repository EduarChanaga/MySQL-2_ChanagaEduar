-- #################################
-- ###### Creacion de eventos ######
-- #################################
-- evento para realizar un backup de la tabla alquiler cada 1 hora
DELIMITER //
create event if not exists weekly_cliente_backup
on schedule every 1 day
do
begin
	truncate table cliente_backup;
    insert into cliente_backup(id,cedula,nombres,apellidos,direccion,ciudad_residencia, celular, correo_electronico)
    select id,cedula,nombres,apellidos,direccion,ciudad_residencia, celular, correo_electronico from Cliente;
end //







-- Desarrollado por: Eduar Damian Chanaga Gonzalez / ID: 1095581647