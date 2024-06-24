-- ################################################
-- ## Consultas multitabla (Composición externa) ##
-- ################################################
use dia2_2;

DELIMITER //
-- 1. Devuelve un listado con todos los empleados junto con los datos de los
-- departamentos donde trabajan. Este listado también debe incluir los
-- empleados que no tienen ningún departamento asociado.
create procedure empleado_departamento_todos()
begin
	select e.id as id_empleado,	e.nombre as nombre_empleado,	d.id as id_departamento, d.nombre as Nombre_departamento, d.presupuesto as presupuesto_departamento,	d.gastos as gastos_departamento
	from empleado e
	left join departamento d on d.id = e.id_departamento;
	select * from empleado;
end //

-- 2. Devuelve un listado donde sólo aparezcan aquellos empleados que no
-- tienen ningún departamento asociado.
CREATE PROCEDURE empleados_sin_departamento()
begin
	select * 
	from empleado
	where id_departamento is null;
end //
-- 3. Devuelve un listado donde sólo aparezcan aquellos departamentos que no
-- tienen ningún empleado asociado.
create procedure departamento_sin_empleado()
begin
	select d.* 
	from departamento d
	left join empleado e on e.id_departamento = d.id
	where e.id_departamento is null;
END //

-- 4. Devuelve un listado con todos los empleados junto con los datos de los
-- departamentos donde trabajan. El listado debe incluir los empleados que no
-- tienen ningún departamento asociado y los departamentos que no tienen
-- ningún empleado asociado. Ordene el listado alfabéticamente por el
-- nombre del departamento.
create procedure todos_empleados_todos_departamentos()
begin
	SELECT e.id AS empleado_id, 
		   e.nombre AS empleado_nombre, 
		   e.apellido1, 
		   e.apellido2, 
		   d.id AS departamento_id, 
		   d.nombre AS departamento_nombre
	FROM empleado e
	LEFT JOIN departamento d ON e.id_departamento = d.id

	UNION

	SELECT e.id AS empleado_id, 
		   e.nombre AS empleado_nombre, 
		   e.apellido1, 
		   e.apellido2, 
		   d.id AS departamento_id, 
		   d.nombre AS departamento_nombre
	FROM empleado e
	RIGHT JOIN departamento d ON e.id_departamento = d.id

	ORDER BY departamento_nombre;
end //

-- 5. Devuelve un listado con los empleados que no tienen ningún departamento
-- asociado y los departamentos que no tienen ningún empleado asociado.
-- Ordene el listado alfabéticamente por el nombre del departamento.
-- Listado de empleados sin departamento y departamentos sin empleados
create procedure sin_empleado_sin_departamento()
begin
	SELECT e.id AS empleado_id, 
		   e.nif, 
		   e.nombre AS empleado_nombre, 
		   e.apellido1, 
		   e.apellido2, 
		   d.id AS departamento_id, 
		   d.nombre AS departamento_nombre, 
		   d.presupuesto, 
		   d.gastos
	FROM empleado e
	LEFT JOIN departamento d ON e.id_departamento = d.id
	WHERE e.id_departamento IS NULL

	UNION

	SELECT e.id AS empleado_id, 
		   e.nif, 
		   e.nombre AS empleado_nombre, 
		   e.apellido1, 
		   e.apellido2, 
		   d.id AS departamento_id, 
		   d.nombre AS departamento_nombre, 
		   d.presupuesto, 
		   d.gastos
	FROM empleado e
	RIGHT JOIN departamento d ON e.id_departamento = d.id
	WHERE e.id IS NULL

	ORDER BY departamento_nombre;
end //


-- Desarrollado por: Eduar Damian Chanaga Gonzalez / ID: 1095581647