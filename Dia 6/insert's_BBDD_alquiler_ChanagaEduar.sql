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
(5, '8010123456', 'Sandra', 'Jiménez', 'Carrera 21 #16-26', 'Cartagena', '3201234567', 'sandra.jimenez@empresa.com');

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
('9010123456', 'David', 'Martínez', 'Carrera 22 #17-27', 'Cartagena', '3290123456', 'david.martinez@cliente.com'),
('9011234567', 'Sofía', 'Fernández', 'Calle 52 #34-44', 'Bogotá', '3202345678', 'sofia.fernandez@cliente.com'),
('9012345678', 'Pedro', 'López', 'Carrera 33 #45-55', 'Medellín', '3213456789', 'pedro.lopez@cliente.com'),
('9013456789', 'Camila', 'García', 'Avenida 7 #12-22', 'Cali', '3224567890', 'camila.garcia@cliente.com'),
('9014567890', 'José', 'Sánchez', 'Calle 53 #36-46', 'Barranquilla', '3235678901', 'jose.sanchez@cliente.com'),
('9015678901', 'Laura', 'Torres', 'Carrera 24 #19-29', 'Cartagena', '3246789012', 'laura.torres@cliente.com'),
('9016789012', 'Javier', 'Díaz', 'Calle 54 #37-47', 'Bogotá', '3257890123', 'javier.diaz@cliente.com'),
('9017890123', 'Valeria', 'Moreno', 'Carrera 35 #47-57', 'Medellín', '3268901234', 'valeria.moreno@cliente.com'),
('9018901234', 'Santiago', 'Romero', 'Avenida 8 #13-23', 'Cali', '3279012345', 'santiago.romero@cliente.com'),
('9019012345', 'Paula', 'Molina', 'Calle 55 #38-48', 'Barranquilla', '3280123456', 'paula.molina@cliente.com'),
('9020123456', 'Martín', 'Ortiz', 'Carrera 26 #21-31', 'Cartagena', '3291234567', 'martin.ortiz@cliente.com'),
('9021234567', 'Isabella', 'Pérez', 'Calle 56 #39-49', 'Bogotá', '3203456789', 'isabella.perez@cliente.com'),
('9022345678', 'Diego', 'Gutiérrez', 'Carrera 37 #49-59', 'Medellín', '3214567890', 'diego.gutierrez@cliente.com'),
('9023456789', 'Mónica', 'Jiménez', 'Avenida 9 #14-24', 'Cali', '3225678901', 'monica.jimenez@cliente.com'),
('9024567890', 'Andrés', 'Castro', 'Calle 57 #40-50', 'Barranquilla', '3236789012', 'andres.castro@cliente.com'),
('9025678901', 'Natalia', 'Vargas', 'Carrera 28 #23-33', 'Cartagena', '3247890123', 'natalia.vargas@cliente.com'),
('9026789012', 'Pablo', 'Mendoza', 'Calle 58 #41-51', 'Bogotá', '3258901234', 'pablo.mendoza@cliente.com'),
('9027890123', 'Daniela', 'Reyes', 'Carrera 39 #51-61', 'Medellín', '3269012345', 'daniela.reyes@cliente.com'),
('9028901234', 'Ricardo', 'Flores', 'Avenida 10 #15-25', 'Cali', '3270123456', 'ricardo.flores@cliente.com'),
('9029012345', 'Elena', 'Ramos', 'Calle 59 #42-52', 'Barranquilla', '3281234567', 'elena.ramos@cliente.com'),
('9030123456', 'Manuel', 'Acosta', 'Carrera 30 #25-35', 'Cartagena', '3292345678', 'manuel.acosta@cliente.com'),
('9031234567', 'Claudia', 'Román', 'Calle 60 #43-53', 'Bogotá', '3204567890', 'claudia.roman@cliente.com'),
('9032345678', 'Gustavo', 'Ibáñez', 'Carrera 41 #53-63', 'Medellín', '3215678901', 'gustavo.ibanez@cliente.com'),
('9033456789', 'Viviana', 'Parra', 'Avenida 11 #16-26', 'Cali', '3226789012', 'viviana.parra@cliente.com'),
('9034567890', 'Alberto', 'Campos', 'Calle 61 #44-54', 'Barranquilla', '3237890123', 'alberto.campos@cliente.com'),
('9035678901', 'Julia', 'Rojas', 'Carrera 32 #27-37', 'Cartagena', '3248901234', 'julia.rojas@cliente.com'),
('9036789012', 'Fernando', 'Peña', 'Calle 62 #45-55', 'Bogotá', '3259012345', 'fernando.pena@cliente.com'),
('9037890123', 'Silvia', 'Arias', 'Carrera 43 #55-65', 'Medellín', '3260123456', 'silvia.arias@cliente.com'),
('9038901234', 'Carlos', 'Vega', 'Avenida 12 #17-27', 'Cali', '3271234567', 'carlos.vega@cliente.com'),
('9039012345', 'Patricia', 'Navarro', 'Calle 63 #46-56', 'Barranquilla', '3282345678', 'patricia.navarro@cliente.com'),
('9040123456', 'Cristina', 'Suárez', 'Carrera 34 #29-39', 'Cartagena', '3293456789', 'cristina.suarez@cliente.com'),
('9041234567', 'Gabriel', 'Guerra', 'Calle 64 #47-57', 'Bogotá', '3205678901', 'gabriel.guerra@cliente.com'),
('9042345678', 'Beatriz', 'Salazar', 'Carrera 45 #57-67', 'Medellín', '3216789012', 'beatriz.salazar@cliente.com'),
('9043456789', 'Roberto', 'Luna', 'Avenida 13 #18-28', 'Cali', '3227890123', 'roberto.luna@cliente.com'),
('9044567890', 'Teresa', 'Escobar', 'Calle 65 #48-58', 'Barranquilla', '3238901234', 'teresa.escobar@cliente.com'),
('9045678901', 'Fabián', 'Aguilar', 'Carrera 36 #31-41', 'Cartagena', '3249012345', 'fabian.aguilar@cliente.com'),
('9046789012', 'Olga', 'Muñoz', 'Calle 66 #49-59', 'Bogotá', '3250123456', 'olga.munoz@cliente.com'),
('9047890123', 'Edgar', 'Cortés', 'Carrera 47 #59-69', 'Medellín', '3261234567', 'edgar.cortes@cliente.com'),
('9048901234', 'Marisol', 'López', 'Avenida 14 #19-29', 'Cali', '3272345678', 'marisol.lopez@cliente.com'),
('9049012345', 'Samuel', 'Valencia', 'Calle 67 #50-60', 'Barranquilla', '3283456789', 'samuel.valencia@cliente.com'),
('9050123456', 'Rosa', 'Cruz', 'Carrera 38 #33-43', 'Cartagena', '3294567890', 'rosa.cruz@cliente.com');

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
('Convertible', 'BCD890', 'Audi TT', 2020, 2, 2, 1, 'V6', 'Azul'),
('Convertible', '234RST', 'Mercedes-Benz SLK', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '567UVW', 'Volkswagen Passat', 2020, 4, 5, 0, 'V4', 'Blanco'),
('SUV', '890XYZ', 'Lexus RX', 2019, 4, 7, 1, 'V6', 'Negro'),
('Camioneta', '123123', 'Chevrolet Equinox', 2022, 4, 5, 0, 'V8', 'Azul'),
('Coupé', '456456', 'Ford Mustang Mach-E', 2020, 2, 4, 1, 'V8', 'Amarillo'),
('Convertible', '789789', 'Jaguar F-Type', 2021, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '012ABC', 'Toyota Camry', 2019, 4, 5, 0, 'V4', 'Negro'),
('SUV', '345DEF', 'Honda Pilot', 2020, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '678GHI', 'Ford Explorer', 2021, 4, 5, 0, 'V6', 'Plateado'),
('Coupé', '901JKL', 'Chevrolet Camaro', 2020, 2, 4, 1, 'V8', 'Amarillo'),
('Convertible', '234MNO', 'BMW Z4', 2021, 2, 2, 1, 'V6', 'Azul'),
('Sedán', '567PQR', 'Hyundai Elantra', 2019, 4, 5, 0, 'V4', 'Gris'),
('SUV', '890STU', 'Mazda CX-5', 2021, 4, 7, 1, 'V6', 'Negro'),
('Camioneta', '123VWX', 'Jeep Wrangler', 2020, 4, 5, 0, 'V8', 'Blanco'),
('Coupé', '456YZA', 'Audi A5', 2022, 2, 4, 1, 'V8', 'Rojo'),
('Convertible', '789BCD', 'Fiat 124 Spider', 2020, 2, 2, 1, 'V6', 'Amarillo'),
('Sedán', '012EFG', 'Nissan Versa', 2018, 4, 5, 0, 'V4', 'Azul'),
('SUV', '345HIJ', 'Kia Telluride', 2021, 4, 7, 1, 'V6', 'Negro'),
('Camioneta', '678KLM', 'Toyota Tacoma', 2020, 4, 5, 0, 'V6', 'Verde'),
('Coupé', '901NOP', 'Chevrolet Corvette', 2021, 2, 4, 1, 'V8', 'Rojo'),
('Convertible', '234QRS', 'Porsche 911', 2022, 2, 2, 1, 'V6', 'Plateado'),
('Sedán', '567TUV', 'Honda Civic', 2019, 4, 5, 0, 'V4', 'Negro'),
('SUV', '890WXY', 'Toyota Highlander', 2021, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '012ZAB', 'Nissan Pathfinder', 2020, 4, 5, 0, 'V8', 'Azul'),
('Coupé', '345CDE', 'BMW M4', 2021, 2, 4, 1, 'V8', 'Amarillo'),
('Convertible', '678FGH', 'Mercedes-Benz SLC', 2020, 2, 2, 1, 'V6', 'Negro'),
('Sedán', '901IJK', 'Volkswagen Jetta', 2018, 4, 5, 0, 'V4', 'Blanco'),
('SUV', '234LMN', 'Mazda CX-9', 2020, 4, 7, 1, 'V6', 'Gris'),
('Camioneta', '567OPQ', 'Ford Bronco', 2022, 4, 5, 0, 'V6', 'Negro'),
('Coupé', '890RST', 'Chevrolet Camaro', 2020, 2, 4, 1, 'V8', 'Azul'),
('Convertible', '123UVW', 'Audi TT RS', 2021, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '456XYZ', 'Toyota Avalon', 2019, 4, 5, 0, 'V4', 'Negro'),
('SUV', '789123', 'Honda HR-V', 2020, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '012234', 'Jeep Grand Cherokee', 2021, 4, 5, 0, 'V8', 'Negro'),
('Coupé', '345345', 'Ford Mustang', 2022, 2, 4, 1, 'V8', 'Amarillo'),
('Convertible', '678678', 'BMW Z4', 2020, 2, 2, 1, 'V6', 'Azul'),
('Sedán', '901901', 'Hyundai Sonata', 2018, 4, 5, 0, 'V4', 'Rojo'),
('SUV', '234234', 'Kia Sorento', 2021, 4, 7, 1, 'V6', 'Negro'),
('Camioneta', '567567', 'Chevrolet Suburban', 2020, 4, 5, 0, 'V8', 'Blanco'),
('Coupé', '890890', 'Mercedes-Benz C-Class', 2022, 2, 4, 1, 'V8', 'Plateado'),
('Convertible', '123123', 'Ferrari Portofino', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '456456', 'Nissan Altima', 2019, 4, 5, 0, 'V4', 'Azul'),
('SUV', '789789', 'Toyota Sequoia', 2020, 4, 7, 1, 'V6', 'Negro'),
('Camioneta', '012012', 'GMC Yukon', 2021, 4, 5, 0, 'V8', 'Blanco'),
('Coupé', '345345', 'Audi RS5', 2022, 2, 4, 1, 'V8', 'Amarillo'),
('Convertible', '678678', 'Jaguar F-Type', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '901901', 'Volkswagen Arteon', 2018, 4, 5, 0, 'V4', 'Negro'),
('SUV', '234234', 'Lexus RX', 2021, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '567KLM', 'Toyota 4Runner', 2020, 4, 5, 0, 'V6', 'Gris'),
('Coupé', '890NOP', 'Chevrolet Corvette Stingray', 2021, 2, 4, 1, 'V8', 'Rojo'),
('Convertible', '123QRS', 'Porsche Boxster', 2022, 2, 2, 1, 'V6', 'Plateado'),
('Sedán', '456TUV', 'Honda Accord', 2019, 4, 5, 0, 'V4', 'Negro'),
('SUV', '789WXY', 'Toyota 4Runner', 2021, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '012ZAB', 'Nissan Frontier', 2020, 4, 5, 0, 'V8', 'Azul'),
('Coupé', '345CDE', 'BMW M2', 2021, 2, 4, 1, 'V8', 'Amarillo'),
('Convertible', '678FGH', 'Mercedes-Benz SL', 2020, 2, 2, 1, 'V6', 'Negro'),
('Sedán', '901IJK', 'Volkswagen Passat', 2018, 4, 5, 0, 'V4', 'Blanco'),
('SUV', '234LMN', 'Mazda CX-30', 2020, 4, 7, 1, 'V6', 'Gris'),
('Camioneta', '567OPQ', 'Ford Expedition', 2022, 4, 5, 0, 'V6', 'Negro'),
('Coupé', '890RST', 'Chevrolet Corvette', 2020, 2, 4, 1, 'V8', 'Azul'),
('Convertible', '123UVW', 'Audi A3 Cabriolet', 2021, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '456XYZ', 'Toyota Avalon', 2019, 4, 5, 0, 'V4', 'Negro'),
('SUV', '789123', 'Honda CR-V', 2020, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '012234', 'Jeep Compass', 2021, 4, 5, 0, 'V8', 'Negro'),
('Coupé', '345345', 'Ford Mustang', 2022, 2, 4, 1, 'V8', 'Amarillo'),
('Convertible', '678678', 'BMW Z4', 2020, 2, 2, 1, 'V6', 'Azul'),
('Sedán', '901901', 'Hyundai Sonata', 2018, 4, 5, 0, 'V4', 'Rojo'),
('SUV', '234234', 'Kia Sportage', 2021, 4, 7, 1, 'V6', 'Negro'),
('Camioneta', '567567', 'Chevrolet Tahoe', 2020, 4, 5, 0, 'V8', 'Blanco'),
('Coupé', '890890', 'Mercedes-Benz CLA', 2022, 2, 4, 1, 'V8', 'Plateado'),
('Convertible', '123123', 'Ferrari 488 Spider', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '456456', 'Nissan Sentra', 2019, 4, 5, 0, 'V4', 'Azul'),
('SUV', '789789', 'Toyota RAV4', 2020, 4, 7, 1, 'V6', 'Negro'),
('Camioneta', '012012', 'GMC Terrain', 2021, 4, 5, 0, 'V8', 'Blanco'),
('Coupé', '345345', 'Audi RS5', 2022, 2, 4, 1, 'V8', 'Amarillo'),
('Convertible', '678678', 'Jaguar F-Type', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '901901', 'Volkswagen Arteon', 2018, 4, 5, 0, 'V4', 'Negro'),
('SUV', '234234', 'Lexus NX', 2021, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '890PQR', 'Toyota Land Cruiser', 2020, 4, 5, 0, 'V8', 'Negro'),
('Coupé', '234STU', 'Chevrolet Camaro SS', 2021, 2, 4, 1, 'V8', 'Rojo'),
('Convertible', '567VWX', 'BMW 4 Series', 2022, 2, 2, 1, 'V6', 'Blanco'),
('Sedán', '901YZA', 'Honda Accord', 2019, 4, 5, 0, 'V4', 'Gris'),
('SUV', '234BCD', 'Toyota Land Cruiser Prado', 2021, 4, 7, 1, 'V6', 'Negro'),
('Camioneta', '567EFG', 'Ford Explorer', 2020, 4, 5, 0, 'V8', 'Azul'),
('Coupé', '890HIJ', 'Mercedes-Benz AMG GT', 2021, 2, 4, 1, 'V8', 'Plateado'),
('Convertible', '123KLM', 'Audi A5 Cabriolet', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '456NOP', 'Toyota Camry', 2019, 4, 5, 0, 'V4', 'Negro'),
('SUV', '789QRS', 'Mazda CX-5', 2020, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '012TUV', 'Nissan Pathfinder', 2020, 4, 5, 0, 'V6', 'Gris'),
('Coupé', '345WXY', 'Ford Shelby GT500', 2021, 2, 4, 1, 'V8', 'Azul'),
('Convertible', '678ZAB', 'Porsche 911 Cabriolet', 2022, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '901CDE', 'Hyundai Sonata', 2018, 4, 5, 0, 'V4', 'Negro'),
('SUV', '234FGH', 'Kia Sorento', 2021, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '567IJK', 'Chevrolet Suburban', 2020, 4, 5, 0, 'V8', 'Negro'),
('Coupé', '890LMN', 'BMW M4', 2021, 2, 4, 1, 'V8', 'Plateado'),
('Convertible', '123OPQ', 'Audi A4 Cabriolet', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '456RST', 'Toyota Camry', 2019, 4, 5, 0, 'V4', 'Negro'),
('SUV', '789UVW', 'Honda Pilot', 2020, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '012XYZ', 'Ford Expedition', 2022, 4, 5, 0, 'V6', 'Gris'),
('Coupé', '345123', 'Chevrolet Camaro ZL1', 2020, 2, 4, 1, 'V8', 'Amarillo'),
('Convertible', '678234', 'Jaguar F-Type', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '901345', 'Volkswagen Jetta', 2018, 4, 5, 0, 'V4', 'Azul'),
('SUV', '234456', 'Mazda CX-9', 2021, 4, 7, 1, 'V6', 'Negro'),
('Camioneta', '567567', 'GMC Yukon', 2020, 4, 5, 0, 'V8', 'Blanco'),
('Coupé', '890678', 'Mercedes-Benz C-Class', 2022, 2, 4, 1, 'V8', 'Plateado'),
('Convertible', '123789', 'BMW Z4', 2020, 2, 2, 1, 'V6', 'Azul'),
('Sedán', '456890', 'Honda Civic', 2019, 4, 5, 0, 'V4', 'Negro'),
('SUV', '789901', 'Toyota Highlander', 2020, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '012234', 'Jeep Grand Cherokee', 2021, 4, 5, 0, 'V8', 'Negro'),
('Coupé', '345567', 'Audi TT RS', 2022, 2, 4, 1, 'V8', 'Amarillo'),
('Convertible', '678890', 'Ferrari Portofino', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '901123', 'Toyota Corolla', 2018, 4, 5, 0, 'V4', 'Negro'),
('SUV', '234456', 'Ford Escape', 2021, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '567789', 'Chevrolet Traverse', 2020, 4, 5, 0, 'V8', 'Azul'),
('Coupé', '890012', 'Lamborghini Huracán', 2021, 2, 4, 1, 'V10', 'Verde'),
('Convertible', '123345', 'Mercedes-Benz E-Class Cabriolet', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '456678', 'Hyundai Elantra', 2019, 4, 5, 0, 'V4', 'Azul'),
('SUV', '789901', 'Kia Telluride', 2020, 4, 7, 1, 'V6', 'Negro'),
('Camioneta', '012234', 'Nissan Armada', 2021, 4, 5, 0, 'V8', 'Blanco'),
('Coupé', '345789', 'Ford Mustang Mach-E', 2022, 2, 4, 1, 'Electric', 'Gris'),
('Convertible', '678012', 'Porsche Boxster', 2021, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '901234', 'Chevrolet Malibu', 2020, 4, 5, 0, 'V4', 'Negro'),
('SUV', '234567', 'Hyundai Santa Fe', 2021, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '567890', 'Toyota 4Runner', 2020, 4, 5, 0, 'V8', 'Azul'),
('Coupé', '890123', 'BMW M2', 2021, 2, 4, 1, 'V6', 'Plateado'),
('Convertible', '123456', 'Audi S5 Cabriolet', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '456789', 'Volkswagen Passat', 2019, 4, 5, 0, 'V4', 'Gris'),
('SUV', '789012', 'Mazda CX-30', 2020, 4, 7, 1, 'V6', 'Negro'),
('Camioneta', '012345', 'Ford Bronco', 2022, 4, 5, 0, 'V6', 'Verde'),
('Coupé', '345678', 'Chevrolet Corvette Stingray', 2020, 2, 4, 1, 'V8', 'Amarillo'),
('Convertible', '678901', 'Jaguar F-Type Convertible', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '901234', 'Toyota Yaris', 2018, 4, 5, 0, 'V4', 'Azul'),
('SUV', '234567', 'Honda CR-V', 2021, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '567890', 'GMC Acadia', 2020, 4, 5, 0, 'V8', 'Negro'),
('Coupé', '890123', 'Mercedes-Benz CLA-Class', 2022, 2, 4, 1, 'V8', 'Plateado'),
('Convertible', '123456', 'Ferrari 488 Spider', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '456789', 'Nissan Sentra', 2019, 4, 5, 0, 'V4', 'Negro'),
('SUV', '789012', 'Subaru Outback', 2020, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '012345', 'Jeep Wrangler', 2021, 4, 5, 0, 'V8', 'Negro'),
('Coupé', '345678', 'Audi RS5', 2022, 2, 4, 1, 'V8', 'Azul'),
('Convertible', '678901', 'BMW M4 Convertible', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '901234', 'Honda Accord', 2018, 4, 5, 0, 'V4', 'Negro'),
('SUV', '234567', 'Toyota Highlander', 2021, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '567890', 'Chevrolet Tahoe', 2020, 4, 5, 0, 'V8', 'Azul'),
('Coupé', '890123', 'Lamborghini Aventador', 2021, 2, 4, 1, 'V10', 'Verde'),
('Convertible', '123456', 'Mercedes-Benz E-Class Cabriolet', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '456789', 'Hyundai Elantra', 2019, 4, 5, 0, 'V4', 'Azul'),
('SUV', '789012', 'Kia Telluride', 2020, 4, 7, 1, 'V6', 'Negro'),
('Camioneta', '012345', 'Nissan Armada', 2021, 4, 5, 0, 'V8', 'Blanco'),
('Coupé', '345678', 'Ford Mustang Mach 1', 2022, 2, 4, 1, 'V8', 'Rojo'),
('Convertible', '678901', 'Porsche 718 Boxster', 2021, 2, 2, 1, 'V6', 'Gris'),
('Sedán', '901234', 'Chevrolet Cruze', 2020, 4, 5, 0, 'V4', 'Negro'),
('SUV', '234567', 'Hyundai Tucson', 2021, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '567890', 'Toyota Land Cruiser', 2020, 4, 5, 0, 'V8', 'Azul'),
('Coupé', '890123', 'BMW M3', 2021, 2, 4, 1, 'V6', 'Plateado'),
('Convertible', '123456', 'Audi A5 Cabriolet', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '456789', 'Volkswagen Arteon', 2019, 4, 5, 0, 'V4', 'Azul'),
('SUV', '789012', 'Mazda CX-5', 2020, 4, 7, 1, 'V6', 'Negro'),
('Camioneta', '012345', 'Ford Explorer', 2022, 4, 5, 0, 'V6', 'Verde'),
('Coupé', '345678', 'Chevrolet Camaro SS', 2020, 2, 4, 1, 'V8', 'Amarillo'),
('Convertible', '678901', 'Jaguar F-Type SVR', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '901234', 'Toyota Avalon', 2018, 4, 5, 0, 'V4', 'Negro'),
('SUV', '234567', 'Honda Passport', 2021, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '567890', 'GMC Terrain', 2020, 4, 5, 0, 'V8', 'Negro'),
('Coupé', '890123', 'Mercedes-Benz AMG GT', 2022, 2, 4, 1, 'V8', 'Plateado'),
('Convertible', '123456', 'Ferrari California', 2020, 2, 2, 1, 'V6', 'Rojo'),
('Sedán', '456789', 'Nissan Altima', 2019, 4, 5, 0, 'V4', 'Negro'),
('SUV', '789012', 'Subaru Forester', 2020, 4, 7, 1, 'V6', 'Blanco'),
('Camioneta', '012345', 'Jeep Grand Wagoneer', 2021, 4, 5, 0, 'V8', 'Negro');

-- Insertando datos en la tabla Alquiler
INSERT INTO Alquiler (vehiculo_id, cliente_id, empleado_id, sucursal_salida_id, fecha_salida, sucursal_llegada_id, fecha_llegada, fecha_esperada_llegada, valor_alquiler_semana, valor_alquiler_dia, porcentaje_descuento, valor_cotizado, valor_pagado)
VALUES 
    (15, 7, 3, 2, '2024-06-25', 4, '2024-06-27', '2024-06-28', 300, 50, 10, 350, 350),
    (87, 25, 8, 3, '2024-06-26', 1, '2024-06-28', '2024-06-29', 250, 40, 5, 270, 270),
    (102, 10, 5, 4, '2024-06-27', 5, '2024-06-29', '2024-06-30', 350, 60, 15, 380, 380),
    (45, 30, 2, 1, '2024-06-28', 3, '2024-06-30', '2024-07-01', 280, 45, 8, 300, 300),
    (65, 15, 6, 5, '2024-06-29', 2, '2024-07-01', '2024-07-02', 320, 55, 12, 350, 350),
    (120, 40, 9, 3, '2024-06-30', 4, '2024-07-02', '2024-07-03', 300, 50, 10, 330, 330),
    (25, 5, 4, 4, '2024-07-01', 5, '2024-07-03', '2024-07-04', 350, 60, 15, 380, 380),
    (78, 20, 7, 2, '2024-07-02', 1, '2024-07-04', '2024-07-05', 250, 40, 5, 270, 270),
    (55, 35, 3, 1, '2024-07-03', 3, '2024-07-05', '2024-07-06', 280, 45, 8, 300, 300),
    (95, 45, 1, 5, '2024-07-04', 2, '2024-07-06', '2024-07-07', 320, 55, 12, 350, 350),
	(32, 12, 6, 3, '2024-07-01', 2, '2024-07-03', '2024-07-04', 300, 50, 10, 350, 350),
    (105, 18, 9, 4, '2024-07-02', 5, '2024-07-04', '2024-07-05', 250, 40, 5, 270, 270),
    (70, 28, 5, 2, '2024-07-03', 1, '2024-07-05', '2024-07-06', 350, 60, 15, 380, 380),
    (40, 8, 2, 1, '2024-07-04', 4, '2024-07-06', '2024-07-07', 280, 45, 8, 300, 300),
    (82, 22, 7, 5, '2024-07-05', 3, '2024-07-07', '2024-07-08', 320, 55, 12, 350, 350),
    (115, 38, 3, 3, '2024-07-06', 2, '2024-07-08', '2024-07-09', 300, 50, 10, 330, 330),
    (18, 2, 1, 4, '2024-07-07', 5, '2024-07-09', '2024-07-10', 350, 60, 15, 380, 380),
    (60, 32, 8, 1, '2024-07-08', 1, '2024-07-10', '2024-07-11', 250, 40, 5, 270, 270),
    (88, 42, 4, 5, '2024-07-09', 3, '2024-07-11', '2024-07-12', 280, 45, 8, 300, 300),
    (52, 14, 10, 2, '2024-07-10', 4, '2024-07-12', '2024-07-13', 320, 55, 12, 350, 350),
    (18, 7, 9, 3, '2024-07-21', 4, '2024-07-23', '2024-07-24', 280, 45, 8, 300, 300),
    (82, 33, 4, 2, '2024-07-22', 5, '2024-07-24', '2024-07-25', 320, 55, 12, 350, 350),
    (41, 12, 6, 1, '2024-07-23', 1, '2024-07-25', '2024-07-26', 300, 50, 10, 330, 330),
    (94, 27, 8, 4, '2024-07-24', 2, '2024-07-26', '2024-07-27', 350, 60, 15, 380, 380),
    (63, 42, 1, 5, '2024-07-25', 3, '2024-07-27', '2024-07-28', 250, 40, 5, 270, 270),
    (107, 3, 10, 2, '2024-07-26', 4, '2024-07-28', '2024-07-29', 300, 50, 10, 330, 330),
    (72, 22, 5, 3, '2024-07-27', 5, '2024-07-29', '2024-07-30', 280, 45, 8, 300, 300),
    (25, 37, 7, 4, '2024-07-28', 1, '2024-07-30', '2024-07-31', 320, 55, 12, 350, 350),
    (57, 15, 2, 1, '2024-07-29', 2, '2024-07-31', '2024-08-01', 300, 50, 10, 330, 330),
    (88, 31, 9, 3, '2024-07-30', 3, '2024-08-01', '2024-08-02', 350, 60, 15, 380, 380),
    (32, 5, 4, 2, '2024-07-31', 4, '2024-08-02', '2024-08-03', 250, 40, 5, 270, 270),
    (69, 20, 6, 5, '2024-08-01', 5, '2024-08-03', '2024-08-04', 280, 45, 8, 300, 300),
    (102, 35, 1, 4, '2024-08-02', 1, '2024-08-04', '2024-08-05', 320, 55, 12, 350, 350),
    (35, 10, 8, 3, '2024-08-03', 2, '2024-08-05', '2024-08-06', 300, 50, 10, 330, 330),
    (74, 25, 5, 1, '2024-08-04', 3, '2024-08-06', '2024-08-07', 350, 60, 15, 380, 380),
    (49, 40, 7, 2, '2024-08-05', 4, '2024-08-07', '2024-08-08', 250, 40, 5, 270, 270),
    (92, 18, 10, 5, '2024-08-06', 5, '2024-08-08', '2024-08-09', 280, 45, 8, 300, 300),
    (59, 30, 2, 4, '2024-08-07', 1, '2024-08-09', '2024-08-10', 320, 55, 12, 350, 350),
    (81, 50, 9, 3, '2024-08-08', 2, '2024-08-10', '2024-08-11', 300, 50, 10, 330, 330),
    (15, 2, 6, 1, '2024-08-09', 3, '2024-08-11', '2024-08-12', 350, 60, 15, 380, 380),
    (14, 8, 3, 1, '2024-08-10', 2, '2024-08-12', '2024-08-13', 300, 50, 10, 330, 330),
    (78, 45, 5, 2, '2024-08-11', 3, '2024-08-13', '2024-08-14', 350, 60, 15, 380, 380),
    (37, 14, 10, 3, '2024-08-12', 4, '2024-08-14', '2024-08-15', 250, 40, 5, 270, 270),
    (62, 29, 4, 4, '2024-08-13', 5, '2024-08-15', '2024-08-16', 280, 45, 8, 300, 300),
    (96, 38, 7, 5, '2024-08-14', 1, '2024-08-16', '2024-08-17', 320, 55, 12, 350, 350),
    (54, 17, 1, 1, '2024-08-15', 2, '2024-08-17', '2024-08-18', 300, 50, 10, 330, 330),
    (87, 36, 8, 2, '2024-08-16', 3, '2024-08-18', '2024-08-19', 350, 60, 15, 380, 380),
    (31, 6, 2, 3, '2024-08-17', 4, '2024-08-19', '2024-08-20', 250, 40, 5, 270, 270),
    (68, 23, 6, 4, '2024-08-18', 5, '2024-08-20', '2024-08-21', 280, 45, 8, 300, 300),
    (101, 34, 9, 5, '2024-08-19', 1, '2024-08-21', '2024-08-22', 320, 55, 12, 350, 350),
    (34, 9, 3, 1, '2024-08-20', 2, '2024-08-22', '2024-08-23', 300, 50, 10, 330, 330),
    (71, 21, 5, 2, '2024-08-21', 3, '2024-08-23', '2024-08-24', 350, 60, 15, 380, 380),
    (104, 39, 1, 3, '2024-08-22', 4, '2024-08-24', '2024-08-25', 250, 40, 5, 270, 270),
    (56, 13, 10, 4, '2024-08-23', 5, '2024-08-25', '2024-08-26', 280, 45, 8, 300, 300),
    (83, 32, 4, 5, '2024-08-24', 1, '2024-08-26', '2024-08-27', 320, 55, 12, 350, 350),
    (17, 4, 7, 1, '2024-08-25', 2, '2024-08-27', '2024-08-28', 300, 50, 10, 330, 330),
    (91, 19, 2, 2, '2024-08-26', 3, '2024-08-28', '2024-08-29', 350, 60, 15, 380, 380),
    (48, 41, 6, 3, '2024-08-27', 4, '2024-08-29', '2024-08-30', 250, 40, 5, 270, 270),
    (93, 24, 9, 4, '2024-08-28', 5, '2024-08-30', '2024-08-31', 280, 45, 8, 300, 300),
    (61, 16, 3, 5, '2024-08-29', 1, '2024-08-31', '2024-09-01', 320, 55, 12, 350, 350),
    (84, 46, 8, 1, '2024-08-30', 2, '2024-09-01', '2024-09-02', 300, 50, 10, 330, 330),
    (12, 6, 4, 1, '2024-09-01', 2, '2024-09-03', '2024-09-04', 280, 45, 8, 300, 300),
    (45, 25, 8, 2, '2024-09-02', 3, '2024-09-04', '2024-09-05', 320, 55, 12, 350, 350),
    (78, 36, 2, 3, '2024-09-03', 4, '2024-09-05', '2024-09-06', 300, 50, 10, 330, 330),
    (23, 11, 7, 4, '2024-09-04', 5, '2024-09-06', '2024-09-07', 350, 60, 15, 380, 380),
    (56, 31, 1, 5, '2024-09-05', 1, '2024-09-07', '2024-09-08', 250, 40, 5, 270, 270),
    (89, 42, 10, 1, '2024-09-06', 2, '2024-09-08', '2024-09-09', 280, 45, 8, 300, 300),
    (32, 18, 5, 2, '2024-09-07', 3, '2024-09-09', '2024-09-10', 320, 55, 12, 350, 350),
    (65, 28, 9, 3, '2024-09-08', 4, '2024-09-10', '2024-09-11', 300, 50, 10, 330, 330),
    (98, 37, 3, 4, '2024-09-09', 5, '2024-09-11', '2024-09-12', 350, 60, 15, 380, 380),
    (41, 14, 6, 5, '2024-09-10', 1, '2024-09-12', '2024-09-13', 250, 40, 5, 270, 270),
    (74, 23, 2, 1, '2024-09-11', 2, '2024-09-13', '2024-09-14', 280, 45, 8, 300, 300),
    (107, 33, 7, 2, '2024-09-12', 3, '2024-09-14', '2024-09-15', 320, 55, 12, 350, 350),
    (21, 8, 1, 3, '2024-09-13', 4, '2024-09-15', '2024-09-16', 300, 50, 10, 330, 330),
    (64, 27, 8, 4, '2024-09-14', 5, '2024-09-16', '2024-09-17', 350, 60, 15, 380, 380),
    (97, 36, 3, 5, '2024-09-15', 1, '2024-09-17', '2024-09-18', 250, 40, 5, 270, 270),
    (38, 13, 6, 1, '2024-09-16', 2, '2024-09-18', '2024-09-19', 280, 45, 8, 300, 300),
    (81, 22, 10, 2, '2024-09-17', 3, '2024-09-19', '2024-09-20', 320, 55, 12, 350, 350),
    (14, 7, 4, 3, '2024-09-18', 4, '2024-09-20', '2024-09-21', 300, 50, 10, 330, 330),
    (47, 26, 9, 4, '2024-09-19', 5, '2024-09-21', '2024-09-22', 350, 60, 15, 380, 380),
    (81, 32, 2, 5, '2024-09-20', 1, '2024-09-22', '2024-09-23', 250, 40, 5, 270, 270),
    (94, 41, 7, 1, '2024-09-21', 2, '2024-09-23', '2024-09-24', 280, 45, 8, 300, 300),
    (17, 9, 5, 3, '2024-09-22', 4, '2024-09-24', '2024-09-25', 300, 50, 10, 330, 330),
    (50, 29, 1, 4, '2024-09-23', 5, '2024-09-25', '2024-09-26', 350, 60, 15, 380, 380),
    (83, 38, 6, 5, '2024-09-24', 1, '2024-09-26', '2024-09-27', 250, 40, 5, 270, 270),
    (26, 15, 2, 1, '2024-09-25', 2, '2024-09-27', '2024-09-28', 280, 45, 8, 300, 300),
    (59, 34, 7, 2, '2024-09-26', 3, '2024-09-28', '2024-09-29', 320, 55, 12, 350, 350),
    (92, 43, 3, 3, '2024-09-27', 4, '2024-09-29', '2024-09-30', 300, 50, 10, 330, 330),
    (35, 19, 8, 4, '2024-09-28', 5, '2024-09-30', '2024-10-01', 350, 60, 15, 380, 380),
    (68, 30, 4, 5, '2024-09-29', 1, '2024-10-01', '2024-10-02', 250, 40, 5, 270, 270),
    (101, 39, 9, 1, '2024-09-30', 2, '2024-10-02', '2024-10-03', 280, 45, 8, 300, 300),
    (44, 12, 10, 2, '2024-10-01', 3, '2024-10-03', '2024-10-04', 320, 55, 12, 350, 350),
    (77, 24, 5, 3, '2024-10-02', 4, '2024-10-04', '2024-10-05', 300, 50, 10, 330, 330),
    (10, 6, 1, 4, '2024-10-03', 5, '2024-10-05', '2024-10-06', 350, 60, 15, 380, 380),
    (43, 16, 6, 5, '2024-10-04', 1, '2024-10-06', '2024-10-07', 250, 40, 5, 270, 270),
    (76, 35, 2, 1, '2024-10-05', 2, '2024-10-07', '2024-10-08', 280, 45, 8, 300, 300),
    (109, 44, 7, 2, '2024-10-06', 3, '2024-10-08', '2024-10-09', 320, 55, 12, 350, 350),
    (24, 20, 3, 3, '2024-10-07', 4, '2024-10-09', '2024-10-10', 300, 50, 10, 330, 330),
    (57, 10, 8, 4, '2024-10-08', 5, '2024-10-10', '2024-10-11', 350, 60, 15, 380, 380),
    (90, 31, 4, 5, '2024-10-09', 1, '2024-10-11', '2024-10-12', 250, 40, 5, 270, 270),
    (33, 40, 9, 1, '2024-10-10', 2, '2024-10-12', '2024-10-13', 280, 45, 8, 300, 300),
    (66, 13, 10, 2, '2024-10-11', 3, '2024-10-13', '2024-10-14', 320, 55, 12, 350, 350);


-- Desarrollado por: Eduar Damian Chanaga Gonzalez / ID: 1095581647