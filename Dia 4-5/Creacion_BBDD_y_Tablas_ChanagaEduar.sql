-- ########################################
-- ###### Creacion de tablas y BBDD #######
-- ########################################

-- creacion de base de datos
create database alquiler;
use alquiler;
-- creacion de la tabla sucursal
CREATE TABLE sucursal (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ciudad VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    telefono_fijo VARCHAR(15),
    celular VARCHAR(15),
    correo_electronico VARCHAR(50)
);
-- creacion de la tabla empleado
CREATE TABLE Empleado (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sucursal_id INT,
    cedula VARCHAR(20) UNIQUE NOT NULL,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    ciudad_residencia VARCHAR(50) NOT NULL,
    celular VARCHAR(15),
    correo_electronico VARCHAR(50),
    FOREIGN KEY (sucursal_id) REFERENCES sucursal(id)
);
-- creacion de la tabla cliente
CREATE TABLE Cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cedula VARCHAR(20) UNIQUE NOT NULL,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    ciudad_residencia VARCHAR(50) NOT NULL,
    celular VARCHAR(15),
    correo_electronico VARCHAR(50)
);
-- creacion de la tabla vehiculo
CREATE TABLE Vehiculo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_vehiculo VARCHAR(50) NOT NULL,
    placa VARCHAR(10) NOT NULL,
    referencia VARCHAR(50) NOT NULL,
    modelo YEAR NOT NULL,
    puertas INT NOT NULL,
    capacidad INT NOT NULL,
    sunroof TINYINT,
    motor VARCHAR(50),
    color VARCHAR(20)
);
-- creacion de la tabla alquiler
CREATE TABLE Alquiler (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehiculo_id INT,
    cliente_id INT,
    empleado_id INT,
    sucursal_salida_id INT,
    fecha_salida DATE NOT NULL,
    sucursal_llegada_id INT,
    fecha_llegada DATE NOT NULL,
    fecha_esperada_llegada DATE NOT NULL,
    valor_alquiler_semana DECIMAL(10,2) NOT NULL,
    valor_alquiler_dia DECIMAL(10,2) NOT NULL,
    porcentaje_descuento DECIMAL(5,2),
    valor_cotizado DECIMAL(10,2) NOT NULL,
    valor_pagado DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (vehiculo_id) REFERENCES Vehiculo(id),
    FOREIGN KEY (cliente_id) REFERENCES Cliente(id),
    FOREIGN KEY (empleado_id) REFERENCES Empleado(id),
    FOREIGN KEY (sucursal_salida_id) REFERENCES sucursal(id),
    FOREIGN KEY (sucursal_llegada_id) REFERENCES sucursal(id)
);


-- Desarrollado por: Eduar Damian Chanaga Gonzalez / ID: 1095581647