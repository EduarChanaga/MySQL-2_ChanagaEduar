-- ########################################
-- ### Insert's base de datos alquiler ####
-- ########################################
use alquiler;
-- Insertando datos en la tabla sucursal
INSERT INTO sucursal (ciudad, direccion, telefono_fijo, celular, correo_electronico) VALUES
('Bogotá', 'Calle 123 #45-67', '6012345678', '3001234567', 'sucursal1@empresa.com'),
('Medellín', 'Carrera 45 #67-89', '6045678901', '3012345678', 'sucursal2@empresa.com'),
('Cali', 'Avenida 5 #10-20', '6023456789', '3023456789', 'sucursal3@empresa.com'),
('Barranquilla', 'Calle 50 #30-40', '6056789012', '3034567890', 'sucursal4@empresa.com'),
('Cartagena', 'Carrera 20 #15-25', '6052345678', '3045678901', 'sucursal5@empresa.com');

-- Insertando datos en la tabla Empleado
INSERT INTO Empleado (sucursal_id, cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES
(1, '8001234567', 'Juan', 'Pérez', 'Calle 23 #45-67', 'Bogotá', '3112345678', 'juan.perez@empresa.com'),
(2, '8002345678', 'Ana', 'Gómez', 'Carrera 15 #20-30', 'Medellín', '3123456789', 'ana.gomez@empresa.com'),
(3, '8003456789', 'Luis', 'Ramírez', 'Avenida 10 #5-10', 'Cali', '3134567890', 'luis.ramirez@empresa.com'),
(4, '8004567890', 'Marta', 'López', 'Calle 50 #30-40', 'Barranquilla', '3145678901', 'marta.lopez@empresa.com'),
(5, '8005678901', 'Pedro', 'Martínez', 'Carrera 20 #15-25', 'Cartagena', '3156789012', 'pedro.martinez@empresa.com'),
(1, '8006789012', 'Laura', 'Hernández', 'Calle 24 #46-68', 'Bogotá', '3167890123', 'laura.hernandez@empresa.com'),
(2, '8007890123', 'Carlos', 'Fernández', 'Carrera 16 #21-31', 'Medellín', '3178901234', 'carlos.fernandez@empresa.com'),
(3, '8008901234', 'Diana', 'Torres', 'Avenida 11 #6-11', 'Cali', '3189012345', 'diana.torres@empresa.com'),
(4, '8009012345', 'Fernando', 'García', 'Calle 51 #31-41', 'Barranquilla', '3190123456', 'fernando.garcia@empresa.com'),
(5, '8010123456', 'Sandra', 'Jiménez', 'Carrera 21 #16-26', 'Cartagena', '3201234567', 'sandra.jimenez@empresa.com'),
(1, '1095581647', 'Eduar', 'Chanaga', 'Carrera 21 #57-26', 'bucaramanga', '3133950318', 'chanaga250@gmail.com');

-- Insertando datos en la tabla Cliente
INSERT INTO Cliente (cedula, nombres, apellidos, direccion, ciudad_residencia, celular, correo_electronico) VALUES
('9001234567', 'Carlos', 'López', 'Calle 45 #67-89', 'Bogotá', '3201234567', 'carlos.lopez@cliente.com'),
('9002345678', 'María', 'Martínez', 'Carrera 30 #40-50', 'Medellín', '3212345678', 'maria.martinez@cliente.com'),
('9003456789', 'Jorge', 'González', 'Avenida 5 #10-20', 'Cali', '3223456789', 'jorge.gonzalez@cliente.com'),
('9004567890', 'Lucía', 'Hernández', 'Calle 50 #30-40', 'Barranquilla', '3234567890', 'lucia.hernandez@cliente.com'),
('9005678901', 'Andrea', 'Rodríguez', 'Carrera 20 #15-25', 'Cartagena', '3245678901', 'andrea.rodriguez@cliente.com'),
('9006789012', 'Mario', 'Ríos', 'Calle 45 #67-90', 'Bogotá', '3256789012', 'mario.rios@cliente.com'),
('9007890123', 'Ana', 'Ruiz', 'Carrera 31 #41-51', 'Medellín', '3267890123', 'ana.ruiz@cliente.com'),
('9008901234', 'Luis', 'Ramírez', 'Avenida 6 #11-21', 'Cali', '3278901234', 'luis.ramirez@cliente.com'),
('9009012345', 'Carmen', 'Gómez', 'Calle 51 #32-42', 'Barranquilla', '3289012345', 'carmen.gomez@cliente.com'),
('9010123456', 'David', 'Martínez', 'Carrera 22 #17-27', 'Cartagena', '3290123456', 'david.martinez@cliente.com');

-- Insertando datos en la tabla Vehiculo
INSERT INTO Vehiculo (tipo_vehiculo, placa, referencia, modelo, puertas, capacidad, sunroof, motor, color) VALUES
('Sedán', 'ABC123', 'Toyota Corolla', 2020, 4, 5, 0, 'V4', 'Rojo'),
('SUV', 'DEF456', 'Honda CRV', 2021, 4, 7, 1, 'V6', 'Negro'),
('Camioneta', 'GHI789', 'Ford Ranger', 2019, 4, 5, 0, 'V6', 'Blanco'),
('Coupé', 'JKL012', 'Chevrolet Camaro', 2022, 2, 4, 1, 'V8', 'Amarillo'),
('Convertible', 'MNO345', 'BMW Z4', 2020, 2, 2, 1, 'V6', 'Azul'),
('Sedán', 'PQR678', 'Hyundai Elantra', 2018, 4, 5, 0, 'V4', 'Rojo'),
('SUV', 'STU901', 'Toyota RAV4', 2021, 4, 7, 1, 'V6', 'Negro'),
('Camioneta', 'VWX234', 'Chevrolet Silverado', 2019, 4, 5, 0, 'V8', 'Blanco'),
('Coupé', 'YZA567', 'Ford Mustang', 2022, 2, 4, 1, 'V8', 'Amarillo'),
('Convertible', 'BCD890', 'Audi TT', 2020, 2, 2, 1, 'V6', 'Azul');

-- Insertando datos en la tabla Alquiler
INSERT INTO Alquiler (vehiculo_id, cliente_id, empleado_id, sucursal_salida_id, fecha_salida, sucursal_llegada_id, fecha_llegada, fecha_esperada_llegada, valor_alquiler_semana, valor_alquiler_dia, porcentaje_descuento, valor_cotizado, valor_pagado) VALUES
(1, 1, 1, 1, '2024-06-20', 2, '2024-06-27', '2024-06-27', 300.00, 50.00, 10.00, 450.00, 400.00),
(2, 2, 2, 2, '2024-06-21', 1, '2024-06-28', '2024-06-28', 350.00, 60.00, 15.00, 500.00, 450.00),
(3, 3, 3, 3, '2024-06-22', 4, '2024-06-29', '2024-06-29', 400.00, 70.00, 20.00, 550.00, 500.00),
(4, 4, 4, 4, '2024-06-23', 5, '2024-06-30', '2024-06-30', 450.00, 80.00, 25.00, 600.00, 550.00),
(5, 5, 5, 5, '2024-06-24', 3, '2024-07-01', '2024-07-01', 500.00, 90.00, 30.00, 650.00, 600.00),
(6, 6, 6, 1, '2024-06-25', 2, '2024-07-02', '2024-07-02', 300.00, 50.00, 10.00, 450.00, 400.00),
(7, 7, 7, 2, '2024-06-26', 1, '2024-07-03', '2024-07-03', 350.00, 60.00, 15.00, 500.00, 450.00),
(8, 8, 8, 3, '2024-06-27', 4, '2024-07-04', '2024-07-04', 400.00, 70.00, 20.00, 550.00, 500.00),
(9, 9, 9, 4, '2024-06-28', 5, '2024-07-05', '2024-07-05', 450.00, 80.00, 25.00, 600.00, 550.00),
(10, 10, 10, 5, '2024-06-29', 3, '2024-07-06', '2024-07-06', 500.00, 90.00, 30.00, 650.00, 600.00);

select * from Alquiler;
-- Desarrollado por: Eduar Damian Chanaga Gonzalez / ID: 1095581647