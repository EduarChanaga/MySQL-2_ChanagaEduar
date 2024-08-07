-- ##############################
-- ## Base de datos jardineria ##
-- ##############################

-- crear base de datos
create database jardinería;
 
-- Usar base de datos
use jardinería;

-- Orden de creacion de tablas
-- 1. gama_producto
-- 2- Oficina
-- 3. Producto
-- 4. Empleado
-- 5. Cliente
-- 6. Pago
-- 7. Pedido
-- 8. Detalles_pedido


-- 1. Creacion de tabla (gama_producto)
create table gama_producto(
gama varchar(50) primary key,
descripcion_texto text,
descripcion_html text,
imagen varchar(256)
);
-- 2. Creacion de tabla (oficina)
create table oficina(
codigo_oficina varchar(10) primary key,
ciudad varchar(30) not null,
pais varchar(50) not null,
region varchar(50),
codigo_postal varchar(10) not null,
telefono varchar(20) not null,
linea_direccion1 varchar(50) not null, 
linea_direccion2 varchar(50)
);

-- 3. Creacion de tabla (producto)
create table producto(
codigo_producto varchar(15) primary key,
nombre varchar(70) not null,
gama varchar(50) not null,
foreign key(gama) references gama_producto(gama),
dimensiones varchar(25),
proveedor varchar(50),
descripcion text,
cantidad_en_stock smallint(6) not null,
precio_venta decimal(16,2) not null,
precio_proveedor decimal(15,2)
);

-- 4. Creacion de tabla (Empleado)
create table empleado(
codigo_empleado int(11) primary key,
nombre varchar(50) not null,
apellido1 varchar(50) not null,
apellido2 varchar(50),
extension varchar(10) not null,
email varchar(100) not null,
codigo_oficina varchar(10) not null,
foreign key(codigo_oficina) references oficina(codigo_oficina),
codigo_jefe int(11),
foreign key(codigo_jefe) references empleado(codigo_empleado),
puesto varchar(50)
);

-- 5. Creacion de tabla (cliente)
create table cliente(
codigo_cliente int(11) primary key,
nombre_cliente varchar(50) not null,
nombre_contacto varchar(30),
apellido_contacto varchar(30),
telefono varchar(15) not null,
tax varchar(15) not null,
linea_direccion1 varchar(50) not null,
linea_direccion2 varchar(50),
ciudad varchar(50) not null,
region varchar(50),
pais varchar(50),
codigo_postal varchar(10),
codigo_empleado_rep_ventas int(11),
foreign key(codigo_empleado_rep_ventas) references empleado(codigo_empleado),
limite_credito decimal(15,2)
);

-- 6. Creacion de tabla (pago)
create table pago(
codigo_cliente int(11),
foreign key(codigo_cliente) references cliente(codigo_cliente),
forma_pago varchar(40) not null,
id_transaccion varchar(50) primary key,
fecha_pago date not null,
total decimal(15,2) not null
);

-- 7. Creacion de tabla (pedido)
create table pedido(
codigo_pedido int(11) primary key,
fecha_pedido date not null,
fecha_esperada date not null,
fecha_entrega date,
estado varchar(15) not null,
comentarios text,
codigo_cliente int(11) not null,
foreign key(codigo_cliente) references cliente(codigo_cliente)
);

-- 8. Creacion de tabla (detalle_pedido)
create table detalle_pedido(
codigo_pedido int(11),
foreign key(codigo_pedido) references pedido(codigo_pedido),
codigo_producto varchar(15),
foreign key(codigo_producto) references producto(codigo_producto),
cantidad int(11) not null,
precio_unidad decimal(15,2) not null,
numero_linea smallint(6) not null
);

-- Desarrollado por: Eduar Damian Chanaga Gonzalez ID: 1095581647