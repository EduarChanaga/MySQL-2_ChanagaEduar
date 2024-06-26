-- ################################
-- ##### Creacion de Trigger ######
-- ################################


-- ########################################## Triggers para guardar registros de acciones que "afectan la tabla alquiler en (alquiler_log)  ##########################################
-- Trigger guardar registro de inserts en la tabla de alquiler 
DELIMITER //
CREATE TRIGGER trg_log_alquiler_insert
AFTER INSERT ON Alquiler
FOR EACH ROW
BEGIN
    INSERT INTO Alquiler_Log (alquiler_id, tipo_accion, fecha_modificacion)
    VALUES (NEW.id, 'INSERT', CURRENT_TIMESTAMP);
END;
//
DELIMITER ;

-- Trigger para guardar registro de update de la tabla de alquiler
DELIMITER //
CREATE TRIGGER trg_log_alquiler_update
AFTER UPDATE ON Alquiler
FOR EACH ROW
BEGIN
    INSERT INTO Alquiler_Log (alquiler_id, tipo_accion, fecha_modificacion)
    VALUES (OLD.id, 'UPDATE', CURRENT_TIMESTAMP);
END;
//
DELIMITER ;

-- Trigger para guardar registro de delete de la tabla de alquiler
DELIMITER //
CREATE TRIGGER trg_log_alquiler_delete
AFTER DELETE ON Alquiler
FOR EACH ROW
BEGIN
    INSERT INTO Alquiler_Log (alquiler_id, tipo_accion, fecha_modificacion)
    VALUES (OLD.id, 'DELETE', CURRENT_TIMESTAMP);
END;
//
DELIMITER ;
-- ########################################## Triggers para guardar registros de acciones que "afectan la tabla cliente" en (cliente_log)  ##########################################
-- Trigger para guardar registro de inserts en la tabla de Cliente
DELIMITER //
CREATE TRIGGER trg_log_cliente_insert
AFTER INSERT ON Cliente
FOR EACH ROW
BEGIN
    INSERT INTO Cliente_Log (id_cliente, nombre_cliente, tipo_accion, fecha_modificacion)
    VALUES (NEW.id, CONCAT(NEW.nombres, ' ', NEW.apellidos), 'INSERT', CURRENT_TIMESTAMP);
END;
//
DELIMITER ;


-- Trigger para guardar registro de update de la tabla de Cliente
DELIMITER //
CREATE TRIGGER trg_log_cliente_update
AFTER UPDATE ON Cliente
FOR EACH ROW
BEGIN
    INSERT INTO Cliente_Log (id_cliente, nombre_cliente, tipo_accion, fecha_modificacion)
    VALUES (OLD.id, CONCAT(NEW.nombres, ' ', NEW.apellidos), 'UPDATE', CURRENT_TIMESTAMP);
END;
//
DELIMITER ;


-- Trigger para guardar registro de delete de la tabla de Cliente
DELIMITER //
CREATE TRIGGER trg_log_cliente_delete
AFTER DELETE ON Cliente
FOR EACH ROW
BEGIN
    INSERT INTO Cliente_Log (id_cliente, nombre_cliente, tipo_accion, fecha_modificacion)
    VALUES (OLD.id, CONCAT(OLD.nombres, ' ', OLD.apellidos), 'DELETE', CURRENT_TIMESTAMP);
END;
//
DELIMITER ;

