
-- ###############################
-- ####### Creacion BBDD #########
-- ###############################

-- Crear base de datos (dia2_2)
create database dia2_2;
use dia2_2;

-- Tabla Persona
CREATE TABLE Persona (
    id_persona INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono VARCHAR(15) NOT NULL,
    poblacion VARCHAR(100) NOT NULL,
    provincia VARCHAR(100) NOT NULL,
    codigo_postal VARCHAR(10) NOT NULL,
    NIF VARCHAR(20) NOT NULL,
    numero_seguridad_social VARCHAR(20) NOT NULL
);

-- Tabla Médicos
CREATE TABLE Medicos (
    id_medico INT PRIMARY KEY,
    id_persona INT NOT NULL,
    numero_colegiado VARCHAR(20) NOT NULL,
    tipo ENUM('titular', 'interino', 'sustituto') NOT NULL,
    FOREIGN KEY (id_persona) REFERENCES Persona(id_persona)
);

-- Tabla Horarios
CREATE TABLE Horarios (
    id_horario INT PRIMARY KEY,
    id_medico INT NOT NULL,
    dia_semana ENUM('Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado', 'Domingo') NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    FOREIGN KEY (id_medico) REFERENCES Medicos(id_medico)
);

-- Tabla Sustituciones
CREATE TABLE Sustituciones (
    id_sustitucion INT PRIMARY KEY,
    id_medico_sustituto INT NOT NULL,
    fecha_alta DATE NOT NULL,
    fecha_baja DATE NOT NULL,
    FOREIGN KEY (id_medico_sustituto) REFERENCES Medicos(id_medico)
);

-- Tabla Empleados
CREATE TABLE Empleados (
    id_empleado INT PRIMARY KEY,
    id_persona INT NOT NULL,
    tipo_empleado ENUM('ATS', 'ATS de zona', 'auxiliar de enfermería', 'celador', 'administrativo') NOT NULL,
    FOREIGN KEY (id_persona) REFERENCES Persona(id_persona)
);

-- Tabla Vacaciones
CREATE TABLE Vacaciones (
    id_vacaciones INT PRIMARY KEY,
    id_empleado INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado)
);

-- Tabla Pacientes
CREATE TABLE Pacientes (
    id_paciente INT PRIMARY KEY,
    id_persona INT NOT NULL,
    id_medico_asignado INT NOT NULL,
    FOREIGN KEY (id_persona) REFERENCES Persona(id_persona),
    FOREIGN KEY (id_medico_asignado) REFERENCES Medicos(id_medico)
);

-- Insertar en la tabla Persona
INSERT INTO Persona (id_persona, nombre, direccion, telefono, poblacion, provincia, codigo_postal, NIF, numero_seguridad_social)
VALUES
(1, 'Juan Pérez', 'Calle Falsa 123', '123456789', 'Madrid', 'Madrid', '28001', '12345678A', '1234567890'),
(2, 'María García', 'Calle Real 456', '987654321', 'Barcelona', 'Barcelona', '08001', '87654321B', '0987654321'),
(3, 'Luis Martínez', 'Avenida Siempre Viva 789', '456789123', 'Valencia', 'Valencia', '46001', '23456789C', '2345678901'),
(4, 'Ana López', 'Calle Mayor 321', '321654987', 'Sevilla', 'Sevilla', '41001', '34567890D', '3456789012'),
(5, 'Carlos Sánchez', 'Plaza Central 111', '789123456', 'Zaragoza', 'Zaragoza', '50001', '45678901E', '4567890123'),
(6, 'Elena Fernández', 'Calle del Sol 222', '654987321', 'Málaga', 'Málaga', '29001', '56789012F', '5678901234'),
(7, 'Manuel Rodríguez', 'Calle Luna 333', '987321654', 'Bilbao', 'Bizkaia', '48001', '67890123G', '6789012345'),
(8, 'Laura Gómez', 'Calle Estrella 444', '123789456', 'Alicante', 'Alicante', '03001', '78901234H', '7890123456'),
(9, 'David Díaz', 'Calle Rayo 555', '456123789', 'Granada', 'Granada', '18001', '89012345I', '8901234567'),
(10, 'Lucía Torres', 'Calle Viento 666', '789456123', 'Córdoba', 'Córdoba', '14001', '90123456J', '9012345678'),
(11, 'Pablo Ramírez', 'Calle Trueno 777', '321987654', 'Valladolid', 'Valladolid', '47001', '01234567K', '0123456789'),
(12, 'Sofía Romero', 'Calle Relámpago 888', '654321987', 'Murcia', 'Murcia', '30001', '12345678L', '1234567891'),
(13, 'Miguel Alonso', 'Calle Tormenta 999', '987654123', 'Palma', 'Baleares', '07001', '23456789M', '2345678902'),
(14, 'Sara Navarro', 'Calle Nieve 1010', '321654789', 'Pamplona', 'Navarra', '31001', '34567890N', '3456789013'),
(15, 'Diego Ruiz', 'Calle Mar 1111', '456987123', 'Santander', 'Cantabria', '39001', '45678901O', '4567890124'),
(16, 'Clara Gil', 'Calle Solana 1212', '789123789', 'Burgos', 'Burgos', '09001', '56789012P', '5678901235'),
(17, 'Jorge Ortega', 'Calle Vega 1313', '123456321', 'Logroño', 'La Rioja', '26001', '67890123Q', '6789012346'),
(18, 'Marta Peña', 'Calle Laguna 1414', '987123456', 'León', 'León', '24001', '78901234R', '7890123457'),
(19, 'Andrés Castro', 'Calle Río 1515', '456789654', 'Salamanca', 'Salamanca', '37001', '89012345S', '8901234568'),
(20, 'Isabel Molina', 'Calle Marisma 1616', '789654123', 'Tenerife', 'Santa Cruz de Tenerife', '38001', '90123456T', '9012345679');

-- Insertar en la tabla Médicos
INSERT INTO Medicos (id_medico, id_persona, numero_colegiado, tipo)
VALUES
(1, 1, 'COLEG12345', 'titular'),
(2, 3, 'COLEG67890', 'interino'),
(3, 5, 'COLEG11223', 'sustituto'),
(4, 7, 'COLEG44556', 'titular'),
(5, 9, 'COLEG77889', 'interino');

-- Insertar en la tabla Horarios
INSERT INTO Horarios (id_horario, id_medico, dia_semana, hora_inicio, hora_fin)
VALUES
(1, 1, 'Lunes', '08:00:00', '14:00:00'),
(2, 1, 'Martes', '08:00:00', '14:00:00'),
(3, 2, 'Miércoles', '09:00:00', '15:00:00'),
(4, 3, 'Jueves', '10:00:00', '16:00:00'),
(5, 4, 'Viernes', '11:00:00', '17:00:00'),
(6, 5, 'Sábado', '12:00:00', '18:00:00');

-- Insertar en la tabla Sustituciones
INSERT INTO Sustituciones (id_sustitucion, id_medico_sustituto, fecha_alta, fecha_baja)
VALUES
(1, 3, '2024-01-01', '2024-01-15'),
(2, 3, '2024-02-01', '2024-02-15');

-- Insertar en la tabla Empleados
INSERT INTO Empleados (id_empleado, id_persona, tipo_empleado)
VALUES
(1, 2, 'ATS'),
(2, 4, 'ATS de zona'),
(3, 6, 'auxiliar de enfermería'),
(4, 8, 'celador'),
(5, 10, 'administrativo');

-- Insertar en la tabla Vacaciones
INSERT INTO Vacaciones (id_vacaciones, id_empleado, fecha_inicio, fecha_fin)
VALUES
(1, 1, '2024-07-01', '2024-07-15'),
(2, 2, '2024-08-01', '2024-08-15'),
(3, 3, '2024-09-01', '2024-09-15'),
(4, 4, '2024-10-01', '2024-10-15'),
(5, 5, '2024-11-01', '2024-11-15');

-- Insertar en la tabla Pacientes
INSERT INTO Pacientes (id_paciente, id_persona, id_medico_asignado)
VALUES
(1, 11, 1),
(2, 12, 1),
(3, 13, 2),
(4, 14, 2),
(5, 15, 3),
(6, 16, 3),
(7, 17, 4),
(8, 18, 4),
(9, 19, 5),
(10, 20, 5);

-- Desarrollado por: Eduar Damian Chanaga Gonzalez  / ID: 1095581647