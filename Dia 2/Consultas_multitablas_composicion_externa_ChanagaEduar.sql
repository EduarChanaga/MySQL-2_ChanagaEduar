-- ####################################################
-- ################## Funciones #######################
-- #### Consultas multitabla (Composición interna) ####
-- ####################################################

use dia2_2;
-- 1. Devuelve un listado con los empleados y los datos de los departamentos
-- donde trabaja cada uno.
delimiter //
create procedure empleados_departamentos()
begin
	select e.*, d.nombre, d.presupuesto,d.gastos
	from empleado e
	join departamento d on e.id_departamento = d.id;
end //

-- 2. Devuelve un listado con los empleados y los datos de los departamentos
-- donde trabaja cada uno. Ordena el resultado, en primer lugar por el nombre
-- del departamento (en orden alfabético) y en segundo lugar por los apellidos
-- y el nombre de los empleados.
create procedure empleados_departamento_ordenado()
BEGIN
	select e.*, d.nombre, d.presupuesto,d.gastos
	from empleado e
	join departamento d on e.id_departamento = d.id
    order by d.nombre,e.nombre,e.apellido1,e.apellido2;
END //


-- 3. Devuelve un listado con el identificador y el nombre del departamento,
-- solamente de aquellos departamentos que tienen empleados.
create procedure departamento_con_empleados()
begin
	select distinct d.id,d.nombre
	from departamento d 
	left join empleado e on e.id_departamento = d.id
	where e.id_departamento is not null;
end //


-- 4. Devuelve un listado con el identificador, el nombre del departamento y el
-- valor del presupuesto actual del que dispone, solamente de aquellos
-- departamentos que tienen empleados. El valor del presupuesto actual lo
-- puede calcular restando al valor del presupuesto inicial
-- (columna presupuesto) el valor de los gastos que ha generado
-- (columna gastos).
create procedure presupuesto_departamento_con_empleados()
begin
	select distinct d.id,	d.nombre, (d.presupuesto-d.gastos) as presupuesto_disponible
	from departamento d 
	left join empleado e on e.id_departamento = d.id
	where e.id_departamento is not null;
end //

-- 5. Devuelve el nombre del departamento donde trabaja el empleado que tiene
-- el nif 38382980M.
create procedure departamento_empleado_38382980M()
begin
	select distinct d.nombre, e.nombre, e.nif
	from departamento d 
	left join empleado e on e.id_departamento = d.id
	where e.nif = '38382980M';
end //
  
-- 6. Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz
-- Santana.
create procedure departamento_empleado_peperuizsantana()
begin
	select distinct d.nombre as nombre_departamento, e.nombre, e.apellido1,e.apellido2
	from departamento d 
	left join empleado e on e.id_departamento = d.id
	where e.nombre = 'Pepe';
end //


-- 7. Devuelve un listado con los datos de los empleados que trabajan en el
-- departamento de I+D. Ordena el resultado alfabéticamente.
create procedure empleados_departamento_ID()
begin
	select e.*,	d.nombre as nombre_departamento
	from empleado e
	join departamento d on d.id = e.id_departamento
	where d.nombre = 'I+D'
    order by e.nombre;
end //

-- 8. Devuelve un listado con los datos de los empleados que trabajan en el
-- departamento de Sistemas, Contabilidad o I+D. Ordena el resultado
-- alfabéticamente.
create procedure empleados_departamento_s_c_ID()
begin
	select e.*,	d.nombre as nombre_departamento
	from empleado e
	join departamento d on d.id = e.id_departamento
	where d.nombre = 'I+D' or d.nombre = 'contabilidad' or d.nombre = 'sistemas'
    order by e.nombre;
end //

-- 9. Devuelve una lista con el nombre de los empleados que tienen los
-- departamentos que no tienen un presupuesto entre 100000 y 200000 euros.
create procedure empleado_departamento_presupuesto_100000_200000()
BEGIN
	select distinct e.nombre, d.nombre as nombre_departamento, d.presupuesto as presupuesto_departamento
	from departamento d 
	left join empleado e on e.id_departamento = d.id
	where d.presupuesto < 200000 and d.presupuesto > 100000;
END //


-- 10. Devuelve un listado con el nombre de los departamentos donde existe
-- algún empleado cuyo segundo apellido sea NULL. Tenga en cuenta que no
-- debe mostrar nombres de departamentos que estén repetidos.
create procedure departamento_apellido2_null()
BEGIN
select distinct d.nombre as nombre_departamento, e.nombre as nombre_empleado, e.apellido1,e.apellido2
	from departamento d 
	left join empleado e on e.id_departamento = d.id
	where e.nombre is not null and e.apellido1 is not null and e.apellido2 is null;
END //
-- Desarrollado por: Eduar Damian Chanaga Gonzalez / id:1095581647